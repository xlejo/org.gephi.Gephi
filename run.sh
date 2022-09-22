#!/bin/sh
set -x

/app/platform/lib/nbexec \
	--jdkhome /app/jre \
	--clusters /app/gephi:/app/extra:/app/platform: \
	--userdir $XDG_DATA_HOME \
	--cachedir $XDG_CACHE_HOME \
	--branding gephi \
	-J-Dsun.java2d.metal=true \
	-J-Dsun.java2d.noddraw=true \
	-J-Dnetbeans.indexing.noFileRefresh=true \
	-J-Dplugin.manager.check.interval=NEVER \
	-J--add-opens=java.desktop/javax.swing=ALL-UNNAMED \
	-J--add-opens=java.base/java.nio=ALL-UNNAMED \
	-J--add-exports=java.desktop/sun.awt=ALL-UNNAMED
