FROM tiangolo/nginx-rtmp

COPY nginx.conf /etc/nginx/nginx.conf
RUN chmod 0444 /etc/nginx/nginx.conf

RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install stunnel

COPY stunnel.conf /etc/stunnel/stunnel.conf
RUN chmod 0444 /etc/stunnel/stunnel.conf
