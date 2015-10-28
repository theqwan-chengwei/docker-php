FROM ubuntu:14.04.3
MAINTAINER ChengWei <chengwei@theqwan.com>

RUN apt-get update \
    && apt-get install -y curl imagemagick php5 php5-cli php5-cgi php5-mysql php5-gd php5-curl php5-mcrypt php5-fpm php-apc php-pear php5-json php5-imagick \
    && apt-get purge -y --auto-remove \
    && rm -r /var/lib/apt/lists/* \

CMD ["/bin/bash"]