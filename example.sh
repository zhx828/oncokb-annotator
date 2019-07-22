#!/usr/bin/env bash
#IMAF="data/example_maf.txt"
#OMAF="data/example_maf.oncokb.txt"
#IF="data/example_fusions.txt"
#OF="data/example_fusions.oncokb.txt"
#ICNA="data/example_cna.txt"
#OCNA="data/example_cna.oncokb.txt"
#IC="data/example_clinical.txt"
#OC="data/example_clinical.oncokb.txt"
#OCPDF="data/example_clinical.oncokb.pdf"

IMAF="data/debyani/maf.txt"
OMAF="data/debyani/maf.oncokb.txt"
IF="data/debyani/fusions.txt"
OF="data/debyani/fusions.oncokb.txt"
ICNA="data/debyani/cna.txt"
OCNA="data/debyani/cna.oncokb.txt"
IC="data/debyani/clinical.txt"
OC="data/debyani/clinical.oncokb.txt"
OCPDF="data/debyani/clinical.oncokb.pdf"

#python MafAnnotator.py -i $IMAF -o $OMAF -c $IC -u http://localhost:8080/oncokb-public
#python FusionAnnotator.py -i $IF -o $OF -c $IC -u http://localhost:8080/oncokb-public
#python CnaAnnotator.py -i $ICNA -o $OCNA -c $IC -u http://localhost:8080/oncokb-public
#python ClinicalDataAnnotator.py -i $IC -o $OC -a $OMAF,$OCNA,$OF
#python OncoKBPlots.py -i $OC -o data/debyani/therapeutic.oncokb.pdf -c ONCOTREE_CODE -t therapeutic #-n 10
python OncoKBPlots.py -i $OC -o data/debyani/diagnostic.oncokb.pdf -c ONCOTREE_CODE -t diagnostic -n 5 #-n 10
python OncoKBPlots.py -i $OC -o data/debyani/prognostic.oncokb.pdf -c ONCOTREE_CODE -t prognostic -n 5 #-n 10
#python OncoKBPlots.py -i $OC -o data/debyani/diagnostic.oncokb.ONCOTREE_CODE.pdf -c ONCOTREE_CODE -l LEVEL_Dx1,LEVEL_Dx2,LEVEL_Dx3 #-n 10
#python OncoKBPlots.py -i $OC -o data/debyani/prognostic.oncokb.ONCOTREE_CODE.pdf -c ONCOTREE_CODE -l LEVEL_Px1,LEVEL_Px2,LEVEL_Px3 #-n 10
