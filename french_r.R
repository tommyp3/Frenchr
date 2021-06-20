unwanted_array = list(    'Š'='S', 'š'='s', 'Ž'='Z', 'ž'='z', 'À'='A', 'Á'='A', 'Â'='A', 'Ã'='A', 'Ä'='A', 'Å'='A', 'Æ'='A', 'Ç'='C', 'È'='E', 'É'='E',
                          'Ê'='E', 'Ë'='E', 'Ì'='I', 'Í'='I', 'Î'='I', 'Ï'='I', 'Ñ'='N', 'Ò'='O', 'Ó'='O', 'Ô'='O', 'Õ'='O', 'Ö'='O', 'Ø'='O', 'Ù'='U',
                          'Ú'='U', 'Û'='U', 'Ü'='U', 'Ý'='Y', 'Þ'='B', 'ß'='Ss', 'à'='a', 'á'='a', 'â'='a', 'ã'='a', 'ä'='a', 'å'='a', 'æ'='a', 'ç'='c',
                          'è'='e', 'é'='e', 'ê'='e', 'ë'='e', 'ì'='i', 'í'='i', 'î'='i', 'ï'='i', 'ð'='o', 'ñ'='n', 'ò'='o', 'ó'='o', 'ô'='o', 'õ'='o',
                          'ö'='o', 'ø'='o', 'ù'='u', 'ú'='u', 'û'='u', 'ý'='y', 'ý'='y', 'þ'='b', 'ÿ'='y' )
url_swap <- function(x){
  
  x <- gsubfn(paste(names(unwanted_array),collapse='|'), unwanted_array,x)
  
  dict <- paste0("https://www.collinsdictionary.com/sounds/hwd_sounds/fr_",x,".mp3")
  goog <- paste0("https://www.google.com/search?q=",x,"&hl=fr&tbm=isch&sxsrf=ALeKk01MMODJKTX55lS1VbKW2ewQQ0kdHA%3A1623900950333&source=hp&biw=1536&bih=731&ei=FsPKYLDWEcXy-gSWmpX4Bw&oq=&gs_lcp=CgNpbWcQARgAMgcIIxDqAhAnMgcIIxDqAhAnMgcIIxDqAhAnMgcIIxDqAhAnMgcIIxDqAhAnMgcIIxDqAhAnMgcIIxDqAhAnMgcIIxDqAhAnMgcIIxDqAhAnMgcIIxDqAhAnUABYAGC8a2gCcAB4AIABAIgBAJIBAJgBAKoBC2d3cy13aXotaW1nsAEK&sclient=img")
  
  
  browseURL(dict, browser = getOption("browser"), encodeIfNeeded = FALSE)
  browseURL(goog, browser = getOption("browser"), encodeIfNeeded = FALSE)
}

url_swap("pomme")
