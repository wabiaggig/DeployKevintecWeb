# Usamos un servidor Tomcat oficial con Java
FROM tomcat:9.0-jdk1.8-corretto

# Limpiamos la carpeta por defecto de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiamos tu archivo WAR a la carpeta de despliegue
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Exponemos el puerto
EXPOSE 8080

# Arrancamos Tomcat Server
CMD ["catalina.sh", "run"]