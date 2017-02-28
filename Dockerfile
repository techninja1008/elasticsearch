FROM docker.elastic.co/elasticsearch/elasticsearch:5.2.1

USER root

ADD entry.sh /entry.sh
RUN chmod 777 /entry.sh

ENV xpack.security.enabled=false

USER elasticsearch
ENTRYPOINT ["/entry.sh", "/usr/share/elasticsearch/bin/es-docker"]