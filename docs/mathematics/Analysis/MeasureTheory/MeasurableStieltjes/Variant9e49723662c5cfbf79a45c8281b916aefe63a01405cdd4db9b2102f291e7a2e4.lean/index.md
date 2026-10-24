# GRWTSK.Analysis.MeasureTheory.MeasurableStieltjes.Variant9e49723662c5cfbf79a45c8281b916aefe63a01405cdd4db9b2102f291e7a2e4

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 48 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant9e49723662c5cfbf79a45c8281b916aefe63a01405cdd4db9b2102f291e7a2e4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2a2ff9cea7566e0c24d4464f6e329f6e8577e89`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/MeasureTheory/MeasurableStieltjes/Variant9e49723662c5cfbf79a45c8281b916aefe63a01405cdd4db9b2102f291e7a2e4.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [StieltjesFunction.measurable_measure](declarations/stieltjesfunction-measurable-measure--07194d9dd465441d66ca8fc5.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [IsRatStieltjesPoint](declarations/isratstieltjespoint--14a4eb68baef92763fe9a5de.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [isRatStieltjesPoint_unit_prod_iff](declarations/isratstieltjespoint-unit-prod-iff--9ebe71481504e9d60c8fff2b.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [measurableSet_isRatStieltjesPoint](declarations/measurableset-isratstieltjespoint--03aeba7e9651a04ffccfc5b2.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [IsRatStieltjesPoint.ite](declarations/isratstieltjespoint-ite--1f8bb494d861e877c6973d80.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [IsMeasurableRatCDF](declarations/ismeasurableratcdf--bcc02d75b43b0ad696acf03c.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [IsMeasurableRatCDF.nonneg](declarations/ismeasurableratcdf-nonneg--c1aefeae9f23ac4c66a6e1f1.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [IsMeasurableRatCDF.le_one](declarations/ismeasurableratcdf-le-one--5e9d058f4841adcf225b47cc.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [IsMeasurableRatCDF.tendsto_atTop_one](declarations/ismeasurableratcdf-tendsto-attop-one--6faf9136c94985378bbdaa5d.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [IsMeasurableRatCDF.tendsto_atBot_zero](declarations/ismeasurableratcdf-tendsto-atbot-zero--67dcba1a50f3a0de39b5d26c.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [IsMeasurableRatCDF.iInf_rat_gt_eq](declarations/ismeasurableratcdf-iinf-rat-gt-eq--32311ced78302c33c19ae7ea.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [defaultRatCDF](declarations/defaultratcdf--3f5a373052fc4c7f1cadfab2.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [monotone_defaultRatCDF](declarations/monotone-defaultratcdf--121a56ebddc2336444993084.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [defaultRatCDF_nonneg](declarations/defaultratcdf-nonneg--9de30633d40bf31b2d335626.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [defaultRatCDF_le_one](declarations/defaultratcdf-le-one--14af78ccd7f07ab60463bf1d.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [tendsto_defaultRatCDF_atTop](declarations/tendsto-defaultratcdf-attop--f72971bf50b6eb7301c6c3bf.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [tendsto_defaultRatCDF_atBot](declarations/tendsto-defaultratcdf-atbot--15969893441096f738e442af.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [iInf_rat_gt_defaultRatCDF](declarations/iinf-rat-gt-defaultratcdf--d1f6b7cb947c4128650faa2a.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [isRatStieltjesPoint_defaultRatCDF](declarations/isratstieltjespoint-defaultratcdf--884e1b8cdb2f4355dd3ea961.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [IsMeasurableRatCDF_defaultRatCDF](declarations/ismeasurableratcdf-defaultratcdf--14d1995401dd0e9affc0fbc9.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [toRatCDF](declarations/toratcdf--b24affaa7a830b2d2f7fad6e.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [toRatCDF_of_isRatStieltjesPoint](declarations/toratcdf-of-isratstieltjespoint--04515a64d0b545596bdc5bce.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [toRatCDF_unit_prod](declarations/toratcdf-unit-prod--48e18c40fa20e9cf2d9bbae4.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [measurable_toRatCDF](declarations/measurable-toratcdf--d1e46e70c29c00837377b1e5.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [isMeasurableRatCDF_toRatCDF](declarations/ismeasurableratcdf-toratcdf--768b2c4f3eb035fa510d5cb0.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [IsMeasurableRatCDF.stieltjesFunctionAux_def'](declarations/ismeasurableratcdf-stieltjesfunctionaux-def--cdf70cced06d9a3b0de212d7.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [IsMeasurableRatCDF.stieltjesFunctionAux_unit_prod](declarations/ismeasurableratcdf-stieltjesfunctionaux-unit-prod--38d443644871bdf7364fab6c.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [IsMeasurableRatCDF.stieltjesFunctionAux_eq](declarations/ismeasurableratcdf-stieltjesfunctionaux-eq--f39c6581362fe76c78a746be.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [IsMeasurableRatCDF.stieltjesFunctionAux_nonneg](declarations/ismeasurableratcdf-stieltjesfunctionaux-nonneg--a4b0ba37a291450437fed095.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [IsMeasurableRatCDF.monotone_stieltjesFunctionAux](declarations/ismeasurableratcdf-monotone-stieltjesfunctionaux--fa8218901c9a021dd64e0556.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [IsMeasurableRatCDF.continuousWithinAt_stieltjesFunctionAux_Ici](declarations/ismeasurableratcdf-continuouswithinat-stieltjesfunctionaux-ici--1702909af3b4f34ea9a1e96f.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [IsMeasurableRatCDF.stieltjesFunction](declarations/ismeasurableratcdf-stieltjesfunction--10dbfb071bf01de0e3ff6c45.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [IsMeasurableRatCDF.stieltjesFunction_eq](declarations/ismeasurableratcdf-stieltjesfunction-eq--196bc04772a400cfaecc8a5c.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [IsMeasurableRatCDF.stieltjesFunction_nonneg](declarations/ismeasurableratcdf-stieltjesfunction-nonneg--1e36b6398a476609dee5a6ec.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [IsMeasurableRatCDF.stieltjesFunction_le_one](declarations/ismeasurableratcdf-stieltjesfunction-le-one--b8210031c492ee95d06c61b4.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [IsMeasurableRatCDF.tendsto_stieltjesFunction_atBot](declarations/ismeasurableratcdf-tendsto-stieltjesfunction-atbot--b33a93d808c7258a1b5eda5f.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [IsMeasurableRatCDF.tendsto_stieltjesFunction_atTop](declarations/ismeasurableratcdf-tendsto-stieltjesfunction-attop--07d6002830b332f141dc0e74.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [IsMeasurableRatCDF.measurable_stieltjesFunction](declarations/ismeasurableratcdf-measurable-stieltjesfunction--ef001e8a2cf237360b27dc4b.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [IsMeasurableRatCDF.stronglyMeasurable_stieltjesFunction](declarations/ismeasurableratcdf-stronglymeasurable-stieltjesfunction--ceae4e5a47a9e634b2773da9.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [IsMeasurableRatCDF.measure_stieltjesFunction_Iic](declarations/ismeasurableratcdf-measure-stieltjesfunction-iic--f6884e01f4ecd07fb65ac95c.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [IsMeasurableRatCDF.measure_stieltjesFunction_univ](declarations/ismeasurableratcdf-measure-stieltjesfunction-univ--afb084057b921f4a894b7e82.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [IsMeasurableRatCDF.instIsProbabilityMeasure_stieltjesFunction](declarations/ismeasurableratcdf-instisprobabilitymeasure-stieltjesfunction--cab05772f59b32373b0d7d59.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [IsMeasurableRatCDF.measurable_measure_stieltjesFunction](declarations/ismeasurableratcdf-measurable-measure-stieltjesfunction--8ac11c43c7d6bbd07bfa86aa.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [stieltjesOfMeasurableRat](declarations/stieltjesofmeasurablerat--7249cb9b303da3bfd1699aad.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [stieltjesOfMeasurableRat_eq](declarations/stieltjesofmeasurablerat-eq--aa4099dce04a17f4d66d7773.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [stieltjesOfMeasurableRat_unit_prod](declarations/stieltjesofmeasurablerat-unit-prod--430eb9b9e4dc1599be25826b.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [stieltjesOfMeasurableRat_nonneg](declarations/stieltjesofmeasurablerat-nonneg--86d6ebff7f9d8d9fae92662d.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [stieltjesOfMeasurableRat_le_one](declarations/stieltjesofmeasurablerat-le-one--7e82b03a6e66a00fb434911c.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [tendsto_stieltjesOfMeasurableRat_atBot](declarations/tendsto-stieltjesofmeasurablerat-atbot--56adfff318ca772c7a4c8339.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [tendsto_stieltjesOfMeasurableRat_atTop](declarations/tendsto-stieltjesofmeasurablerat-attop--d32661481b5e6927a6119959.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [measurable_stieltjesOfMeasurableRat](declarations/measurable-stieltjesofmeasurablerat--52a60a2acceaabfbc6e03172.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [stronglyMeasurable_stieltjesOfMeasurableRat](declarations/stronglymeasurable-stieltjesofmeasurablerat--6094608f5e310c2e35aa6970.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [measure_stieltjesOfMeasurableRat_Iic](declarations/measure-stieltjesofmeasurablerat-iic--418f83d78c65975bc7386c19.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [measure_stieltjesOfMeasurableRat_univ](declarations/measure-stieltjesofmeasurablerat-univ--7ed5e4781e7c8889d5b41b71.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [instIsProbabilityMeasure_stieltjesOfMeasurableRat](declarations/instisprobabilitymeasure-stieltjesofmeasurablerat--57e5c912043c4d147fdd96fe.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [measurable_measure_stieltjesOfMeasurableRat](declarations/measurable-measure-stieltjesofmeasurablerat--33852f748b205de63ec44225.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
