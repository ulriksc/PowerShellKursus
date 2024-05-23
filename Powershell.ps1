#---------- Hent en dato  ---------------
$datoen = Get-Date
$datoen
#------------------------------------------


#---------- Hent fejl Array ---------------
$Error[0]
#------------------------------------------

´
#---------- Update hjælp ---------------
Update-Help
#------------------------------------------


#---------- Hent Powershell moduler men pas på!! ---------------
https://www.powershellgallery.com/packages/NuGet/1.3.3
#------------------------------------------

#----------- Få hjælp uden nettet
Get-Help about_
Get-Help about_profiles
#------------------------------------------

# ---------------- Hash Tabeller --------------------------------------------------------------------

$hashtable = @{"key1"= "Value1"; "key2"= "Value2"}

$hashtable.GetType()

$hashtable | Get-Member

$hashtable.Count

$hashtable.Keys

$hashtable.key0
$hashtable.key1

$hashtable.Add("key3","dgsg")

$hashtable.key3


#----------------


$HashAD = @{}
$hashtable.GetType()
$name = "server1"
$IP = "10.20.132.123"
$HashAD[$name] = $IP

$name = "server2"
$IP = "12.230.12.103"
$HashAD[$name] = $IP

$HashAD.Count
$HashAD

#----------------

$HashPerson = @{}
$HashPerson.GetType()
$name = "Karl Otto"
$Telefon = "40611532"
$HashPerson[$Telefon] = $name

$name = "Ole Bente"
$Telefon = "52301238"
$HashPerson[$Telefon] = $name

$name = "Jacob Jacobsen"
$Telefon = "42611534"
$HashPerson[$Telefon] = $name

$HashPerson.Add("30441723", "Lone Jensen")

$HashPerson.Count
$HashPerson

$HashPerson.Remove("42611534")










#---------------- Splatting -------------------------------------------------------------------------
help copy-item -ShowWindow


#----------------------
$CompParam= @{}
$Path = "C:\halloj\Herfra\flytmig.txt"
#$Include = "usc"
$Destination = "C:\halloj\Hertil"

$CompParam["Path"] = $Path
#$CompParam["Include"] = $Include
$CompParam["Destination"] = $Destination


#------------------

$CompParam= @{
Path = "C:\halloj\Herfra\*"
#Include = "*.txt"
Destination = "C:\halloj\Hertil"
}


$CompParam.Remove("Include")
$CompParam.Clear

#---------------- Overewrite eller ændre Hash???-----------
$CompParam["Include"] = "*.txt"
Copy-Item @CompParam -Include "*.txt"

Copy-Item @CompParam -Recurse
#----------------------








#------------ OnPrem Gallery ----------------------------------------------------------------------
# internt Nuget galleri
# i KMD har vi 2 PS servere


# dette er den path hvor moduler ligges
$env:PSModulePath
$env:PSModulePath = $env:PSModulePath + "c:........."
# foldere når man bruger install moduke

#------- 4 forskellige muligheder for start powershell script der køres på f.eks en bruger logger på
https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-7.4

Get-Help about_
Get-Help about_profiles

-scope user

dir c:
$sdf = Read-Host

Import-Module -Scope Global
