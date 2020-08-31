FROM alpine

LABEL maintainer Leo Chen <leo_chen@mail.chungyo.net>

RUN apk --update add git less openssh curl bind-tools vim zsh

RUN  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

RUN rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

CMD ["zsh"]