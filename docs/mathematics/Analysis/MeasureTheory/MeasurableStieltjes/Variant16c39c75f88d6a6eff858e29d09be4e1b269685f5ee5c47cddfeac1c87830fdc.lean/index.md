# GRWTSK.Analysis.MeasureTheory.MeasurableStieltjes.Variant16c39c75f88d6a6eff858e29d09be4e1b269685f5ee5c47cddfeac1c87830fdc

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 48 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant16c39c75f88d6a6eff858e29d09be4e1b269685f5ee5c47cddfeac1c87830fdc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e73bd687c636dd9b9bed90056a339a400e2080d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/MeasureTheory/MeasurableStieltjes/Variant16c39c75f88d6a6eff858e29d09be4e1b269685f5ee5c47cddfeac1c87830fdc.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [StieltjesFunction.measurable_measure](declarations/stieltjesfunction-measurable-measure--5734d84c35c3640e5294ef1d.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [IsRatStieltjesPoint](declarations/isratstieltjespoint--3972d12e9379a92896f2f26b.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [isRatStieltjesPoint_unit_prod_iff](declarations/isratstieltjespoint-unit-prod-iff--fdc298b1510de82ae6ee8de7.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [measurableSet_isRatStieltjesPoint](declarations/measurableset-isratstieltjespoint--885faf4c399a7b031a71e121.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [IsRatStieltjesPoint.ite](declarations/isratstieltjespoint-ite--4c8527e7493cec09623feafb.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [IsMeasurableRatCDF](declarations/ismeasurableratcdf--88edb2e068f659e4a57f856f.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [IsMeasurableRatCDF.nonneg](declarations/ismeasurableratcdf-nonneg--a2082f09630e3291c0eff707.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [IsMeasurableRatCDF.le_one](declarations/ismeasurableratcdf-le-one--3da1936315198585fb031c40.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [IsMeasurableRatCDF.tendsto_atTop_one](declarations/ismeasurableratcdf-tendsto-attop-one--26b52fe15bacdb10834ecce6.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [IsMeasurableRatCDF.tendsto_atBot_zero](declarations/ismeasurableratcdf-tendsto-atbot-zero--cf8e4a5084eb6a5660655242.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [IsMeasurableRatCDF.iInf_rat_gt_eq](declarations/ismeasurableratcdf-iinf-rat-gt-eq--37a1d05b5553202161548e07.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [defaultRatCDF](declarations/defaultratcdf--04f3c2259ccbb26793b8bc3d.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [monotone_defaultRatCDF](declarations/monotone-defaultratcdf--a4250ddb5582e5e4ac4a3322.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [defaultRatCDF_nonneg](declarations/defaultratcdf-nonneg--9f9c19d51e4df7f8c6e49e27.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [defaultRatCDF_le_one](declarations/defaultratcdf-le-one--ad7cd1e4ad47cb39f26ad033.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [tendsto_defaultRatCDF_atTop](declarations/tendsto-defaultratcdf-attop--53cc672e07ce7a38f439ec1d.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [tendsto_defaultRatCDF_atBot](declarations/tendsto-defaultratcdf-atbot--122c143393f3f95e36752750.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [iInf_rat_gt_defaultRatCDF](declarations/iinf-rat-gt-defaultratcdf--ba048fc81b153e6bb61d2073.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [isRatStieltjesPoint_defaultRatCDF](declarations/isratstieltjespoint-defaultratcdf--e6debab1dd84ef0fe45e5ace.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [IsMeasurableRatCDF_defaultRatCDF](declarations/ismeasurableratcdf-defaultratcdf--5f2e6d86dbf80a47d4150d70.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [toRatCDF](declarations/toratcdf--c389c939d580d66fc9c612c6.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [toRatCDF_of_isRatStieltjesPoint](declarations/toratcdf-of-isratstieltjespoint--c3c5b47f73ac01727b9575af.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [toRatCDF_unit_prod](declarations/toratcdf-unit-prod--0fecd806b19621d29689f1bd.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [measurable_toRatCDF](declarations/measurable-toratcdf--b282b49cc60261c1af2b2bd0.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [isMeasurableRatCDF_toRatCDF](declarations/ismeasurableratcdf-toratcdf--f463fb719e13fd8ab9e1a39a.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [IsMeasurableRatCDF.stieltjesFunctionAux_def'](declarations/ismeasurableratcdf-stieltjesfunctionaux-def--aee3862f9824fb9f9cb89188.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [IsMeasurableRatCDF.stieltjesFunctionAux_unit_prod](declarations/ismeasurableratcdf-stieltjesfunctionaux-unit-prod--1ae5fa17ea768932f548e533.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [IsMeasurableRatCDF.stieltjesFunctionAux_eq](declarations/ismeasurableratcdf-stieltjesfunctionaux-eq--f0964b2f819ab64baf87706e.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [IsMeasurableRatCDF.stieltjesFunctionAux_nonneg](declarations/ismeasurableratcdf-stieltjesfunctionaux-nonneg--4273b00f76474c102bdd2b6a.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [IsMeasurableRatCDF.monotone_stieltjesFunctionAux](declarations/ismeasurableratcdf-monotone-stieltjesfunctionaux--255014f0857c547536974b4d.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [IsMeasurableRatCDF.continuousWithinAt_stieltjesFunctionAux_Ici](declarations/ismeasurableratcdf-continuouswithinat-stieltjesfunctionaux-ici--cecbcb53ffdfd1c441e2a29e.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [IsMeasurableRatCDF.stieltjesFunction](declarations/ismeasurableratcdf-stieltjesfunction--8a2ae29039bfaa16fefa4b0d.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [IsMeasurableRatCDF.stieltjesFunction_eq](declarations/ismeasurableratcdf-stieltjesfunction-eq--896418e4c7ea980ca0d6c8e6.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [IsMeasurableRatCDF.stieltjesFunction_nonneg](declarations/ismeasurableratcdf-stieltjesfunction-nonneg--7e949af41f23768257f55bd7.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [IsMeasurableRatCDF.stieltjesFunction_le_one](declarations/ismeasurableratcdf-stieltjesfunction-le-one--eaf0bfd6e6980e31934727c3.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [IsMeasurableRatCDF.tendsto_stieltjesFunction_atBot](declarations/ismeasurableratcdf-tendsto-stieltjesfunction-atbot--c0fd0c727f77cf7faa3f0e1d.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [IsMeasurableRatCDF.tendsto_stieltjesFunction_atTop](declarations/ismeasurableratcdf-tendsto-stieltjesfunction-attop--13eff59a184f30e5abe408c8.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [IsMeasurableRatCDF.measurable_stieltjesFunction](declarations/ismeasurableratcdf-measurable-stieltjesfunction--37c1105f266ce1fe8d83b0aa.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [IsMeasurableRatCDF.stronglyMeasurable_stieltjesFunction](declarations/ismeasurableratcdf-stronglymeasurable-stieltjesfunction--8881d322d6cbe858729097ac.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [IsMeasurableRatCDF.measure_stieltjesFunction_Iic](declarations/ismeasurableratcdf-measure-stieltjesfunction-iic--381cd1e6cfd9c16af57f3c33.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [IsMeasurableRatCDF.measure_stieltjesFunction_univ](declarations/ismeasurableratcdf-measure-stieltjesfunction-univ--6a7bc3ec97b1f17e508e7383.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [IsMeasurableRatCDF.instIsProbabilityMeasure_stieltjesFunction](declarations/ismeasurableratcdf-instisprobabilitymeasure-stieltjesfunction--72dcba5264d42f176780354c.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [IsMeasurableRatCDF.measurable_measure_stieltjesFunction](declarations/ismeasurableratcdf-measurable-measure-stieltjesfunction--40c951f3df5c87077be06028.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [stieltjesOfMeasurableRat](declarations/stieltjesofmeasurablerat--13eaa9bf42c83fbe88b5d979.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [stieltjesOfMeasurableRat_eq](declarations/stieltjesofmeasurablerat-eq--962d5f8c7db7587812958418.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [stieltjesOfMeasurableRat_unit_prod](declarations/stieltjesofmeasurablerat-unit-prod--0898a1f66a4401488205f638.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [stieltjesOfMeasurableRat_nonneg](declarations/stieltjesofmeasurablerat-nonneg--569f63d654027da0d49c2a98.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [stieltjesOfMeasurableRat_le_one](declarations/stieltjesofmeasurablerat-le-one--472d744c8802ff54030a5cd6.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [tendsto_stieltjesOfMeasurableRat_atBot](declarations/tendsto-stieltjesofmeasurablerat-atbot--ad7c467a2b96ca897da56a22.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [tendsto_stieltjesOfMeasurableRat_atTop](declarations/tendsto-stieltjesofmeasurablerat-attop--3d4855c2698ea2a0cdc153c0.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [measurable_stieltjesOfMeasurableRat](declarations/measurable-stieltjesofmeasurablerat--424aea8b370451583a9f8628.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [stronglyMeasurable_stieltjesOfMeasurableRat](declarations/stronglymeasurable-stieltjesofmeasurablerat--210431e0b6c75796a1c6ef90.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [measure_stieltjesOfMeasurableRat_Iic](declarations/measure-stieltjesofmeasurablerat-iic--e55f507ca979536dbb3e06f5.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [measure_stieltjesOfMeasurableRat_univ](declarations/measure-stieltjesofmeasurablerat-univ--c397f7048aad462a5de511c2.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [instIsProbabilityMeasure_stieltjesOfMeasurableRat](declarations/instisprobabilitymeasure-stieltjesofmeasurablerat--cce9cae27e7e7acf92a19dbc.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [measurable_measure_stieltjesOfMeasurableRat](declarations/measurable-measure-stieltjesofmeasurablerat--0ef638e4f708f44798dfd985.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
