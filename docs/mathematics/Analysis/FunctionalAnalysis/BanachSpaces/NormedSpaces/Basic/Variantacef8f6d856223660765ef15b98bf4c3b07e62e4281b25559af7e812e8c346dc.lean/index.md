# GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Basic.Variantacef8f6d856223660765ef15b98bf4c3b07e62e4281b25559af7e812e8c346dc

[Complete source index](../../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**94 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantacef8f6d856223660765ef15b98bf4c3b07e62e4281b25559af7e812e8c346dc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `343df2571d6445e1c6b7188fdfe11dda639d55be`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variantacef8f6d856223660765ef15b98bf4c3b07e62e4281b25559af7e812e8c346dc.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [NormedSpace](declarations/normedspace--8b9fd27211ea9cbf3d017d20.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance--92922c140b8878d3b863a352.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [NormedSpace.toIsBoundedSMul](declarations/normedspace-toisboundedsmul--84f3fb7120df334f07e1075a.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [NormedField.toNormedSpace](declarations/normedfield-tonormedspace--5678f5c5b2513e09c832e380.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [norm_zsmul](declarations/norm-zsmul--7faa3fa893c92e2bc4f65e6f.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [norm_intCast_eq_abs_mul_norm_one](declarations/norm-intcast-eq-abs-mul-norm-one--29c2e68951cbdf9e55d47e7a.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [norm_natCast_eq_mul_norm_one](declarations/norm-natcast-eq-mul-norm-one--0a60b7a4e9313ae55693e794.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [norm_natCast](declarations/norm-natcast--de8c1fb20889916942d48ccb.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [eventually_nhds_norm_smul_sub_lt](declarations/eventually-nhds-norm-smul-sub-lt--9e47f4fceaf3b490c17ba5d3.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Filter.Tendsto.zero_smul_isBoundedUnder_le](declarations/filter-tendsto-zero-smul-isboundedunder-le--766edb06c481aaf137528957.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Filter.IsBoundedUnder.smul_tendsto_zero](declarations/filter-isboundedunder-smul-tendsto-zero--0adebe047521070e0abe0064.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [NormedSpace.discreteTopology_zmultiples](declarations/normedspace-discretetopology-zmultiples--5e344df4a579450cd18d37c1.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [Metric.diam_sphere_eq](declarations/metric-diam-sphere-eq--c0cea9b501da48846018789a.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [Metric.diam_closedBall_eq](declarations/metric-diam-closedball-eq--fd8041740f3505f2fd774873.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [Metric.diam_ball_eq](declarations/metric-diam-ball-eq--5bfda165da50703241874491.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [ULift.normedSpace](declarations/ulift-normedspace--b8bbd33d18f9e22f6a5f078a.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [Prod.normedSpace](declarations/prod-normedspace--8fb3e153cbbad49e0451f0fd.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [Pi.normedSpace](declarations/pi-normedspace--5cf35aed91365bdd043de3d1.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [SeparationQuotient.instNormedSpace](declarations/separationquotient-instnormedspace--480f476a0bd5f845e94917a6.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [MulOpposite.instNormedSpace](declarations/mulopposite-instnormedspace--5170cbbc64d4ff4f34f1ebe5.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [Submodule.normedSpace](declarations/submodule-normedspace--f8b06051ad8ad2a01ca21bba.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [ClosedSubmodule.normedSpace](declarations/closedsubmodule-normedspace--85cb9a7122c78019ff21f1fd.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance--1cce836aa25e900e21f08b15.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `abbrev` | [NormedSpace.induced](declarations/normedspace-induced--e6b6344ea4152a797f84349c.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [NormedSpace.exists_lt_norm](declarations/normedspace-exists-lt-norm--8fe493dcecb4688d18b730ca.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [NormedSpace.unbounded_univ](declarations/normedspace-unbounded-univ--ef700f7eae4e258513e5f71f.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [NormedSpace.cobounded_neBot](declarations/normedspace-cobounded-nebot--ccddb258f8390d63e51968ce.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance--9ab464eeaea5da07897794ff.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance--a797d85e3d025e7ef5b042ee.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance--56d9e5c8544f90af71898469.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [NormedSpace.noncompactSpace](declarations/normedspace-noncompactspace--6bf206abba8f000306eeb921.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance--63421d2053e62afa16e44169.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance--cfa5344c233fd7f972acda6f.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `class` | [NormedAlgebra](declarations/normedalgebra--94e8ae5f2d4f7dfc7aec51d7.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance--25722f06894ef8684e9b8639.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [norm_algebraMap](declarations/norm-algebramap--328700a8ab58d93d95381b48.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [nnnorm_algebraMap](declarations/nnnorm-algebramap--cea5575f5e02393ea6878455.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [enorm_algebraMap](declarations/enorm-algebramap--95cd28eca0a95587686b44eb.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [dist_algebraMap](declarations/dist-algebramap--751205312613f470df3668b9.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [norm_algebraMap'](declarations/norm-algebramap--064133d54b3fc4e0a7f852c2.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Algebra.norm_smul_one_eq_norm](declarations/algebra-norm-smul-one-eq-norm--ccd257078d4d017a546f50e4.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [nnnorm_algebraMap'](declarations/nnnorm-algebramap--9f71b96518ae9a6602fd5bbe.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [enorm_algebraMap'](declarations/enorm-algebramap--99a9ee59aecbcacbe329e480.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [dist_algebraMap'](declarations/dist-algebramap--6b636ffb1e533e41f47dbc64.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [norm_algebraMap_nnreal](declarations/norm-algebramap-nnreal--9876ba8226f57e8e0872aa23.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [nnnorm_algebraMap_nnreal](declarations/nnnorm-algebramap-nnreal--423ff5efcdbfc2cdb8e09282.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [tendsto_algebraMap_cobounded](declarations/tendsto-algebramap-cobounded--21c739f59d060d671f2c4859.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [algebraMap_isometry](declarations/algebramap-isometry--b4666690f4d9743d7b696df6.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [NormedAlgebra.id](declarations/normedalgebra-id--ee0dc0410cae482b7ee314f7.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [normedAlgebraRat](declarations/normedalgebrarat--121aaf4d4b7542cb93d0acce.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [PUnit.normedAlgebra](declarations/punit-normedalgebra--9b78469c5839d2665ecc4698.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance--cefc843343cb80b3f1bcddf8.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [Prod.normedAlgebra](declarations/prod-normedalgebra--eb8aae05f2d73781a17b441d.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [Pi.normedAlgebra](declarations/pi-normedalgebra--bc7bd08cb0fbe57e8dd10868.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [SeparationQuotient.instNormedAlgebra](declarations/separationquotient-instnormedalgebra--90e85ba94bc81750c9ebe4f7.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [MulOpposite.instNormedAlgebra](declarations/mulopposite-instnormedalgebra--02c6c7f64affa7a0008e3c9e.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `abbrev` | [NormedAlgebra.induced](declarations/normedalgebra-induced--104ad51938738473afdea921.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [Subalgebra.toNormedAlgebra](declarations/subalgebra-tonormedalgebra--bc903111334663c4b72356f7.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance--ea0f34d381ac5c2cc056fbb7.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance--55ed32db453f3cb54a7fd104.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [(anonymous)](declarations/instance--5148c40a16f662b0aab6dcc3.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance--34156c425ae658fb62bd60c9.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance--7a2b97ad682c1c7c1e0d8e38.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [(anonymous)](declarations/instance--64e770e75f87f1545a20d872.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance--90fc7c3121b7c0dc7d52c179.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance--debaf2bf74f1f2792a89af9c.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [(anonymous)](declarations/instance--618b2e64624243e435581c8b.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance--0c2aed08685bb9d3f59b1b98.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [(anonymous)](declarations/instance--64d43139357f5b6bf20f3ff3.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [NormedSpace.restrictScalars](declarations/normedspace-restrictscalars--0117ffd49e921e67fda47686.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [NormedSpace.restrictScalars_eq](declarations/normedspace-restrictscalars-eq--8021834dd7b845075701f441.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [RestrictScalars.normedSpace](declarations/restrictscalars-normedspace--2934acc6895d28e6398ce722.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [Module.RestrictScalars.normedSpaceOrig](declarations/module-restrictscalars-normedspaceorig--c3e0ea7b07abb0510eb95bea.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [NormedAlgebra.restrictScalars](declarations/normedalgebra-restrictscalars--2b66e20c38f77b545efed095.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [RestrictScalars.normedAlgebra](declarations/restrictscalars-normedalgebra--9aef3d1e5847060ec31ea7d4.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [Module.RestrictScalars.normedAlgebraOrig](declarations/module-restrictscalars-normedalgebraorig--c88ba204da9b63b2dac20155.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `structure` | [SeminormedSpace.Core](declarations/seminormedspace-core--7fad2e792efb9179026ca812.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `abbrev` | [PseudoMetricSpace.ofSeminormedSpaceCore](declarations/pseudometricspace-ofseminormedspacecore--81522c75f1c5b8d255cb334d.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `abbrev` | [PseudoEMetricSpace.ofSeminormedSpaceCore](declarations/pseudoemetricspace-ofseminormedspacecore--9b31308e0e9bb7269285ec9a.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `abbrev` | [PseudoMetricSpace.ofSeminormedSpaceCoreReplaceUniformity](declarations/pseudometricspace-ofseminormedspacecorereplaceuniformity--f1c2d1deced51b5ceb584585.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `abbrev` | [PseudoMetricSpace.ofSeminormedSpaceCoreReplaceTopology](declarations/pseudometricspace-ofseminormedspacecorereplacetopology--65b3a1c84cb5fb828dfa7dda.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `abbrev` | [PseudoMetricSpace.ofSeminormedSpaceCoreReplaceAll](declarations/pseudometricspace-ofseminormedspacecorereplaceall--57f890cd7d9b8855eed3fccd.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `abbrev` | [SeminormedAddCommGroup.ofCore](declarations/seminormedaddcommgroup-ofcore--b5c5ce766458689147e82c23.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `abbrev` | [SeminormedAddCommGroup.ofCoreReplaceUniformity](declarations/seminormedaddcommgroup-ofcorereplaceuniformity--45a7d7d1b927e49e8e6cf5b2.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `abbrev` | [SeminormedAddCommGroup.ofCoreReplaceTopology](declarations/seminormedaddcommgroup-ofcorereplacetopology--6324514bbdbccc69c909c978.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `abbrev` | [SeminormedAddCommGroup.ofCoreReplaceAll](declarations/seminormedaddcommgroup-ofcorereplaceall--3bc9ba197181d0b3e8e1f5a1.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `structure` | [NormedSpace.Core](declarations/normedspace-core--59d09f7f35254780db340c25.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `abbrev` | [NormedAddCommGroup.ofCore](declarations/normedaddcommgroup-ofcore--de39a12d4111bbf38681e1c8.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `abbrev` | [NormedAddCommGroup.ofCoreReplaceUniformity](declarations/normedaddcommgroup-ofcorereplaceuniformity--fc3638ebf42fee58d270695b.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `abbrev` | [NormedAddCommGroup.ofCoreReplaceTopology](declarations/normedaddcommgroup-ofcorereplacetopology--8ac1d1fb0fa9748bc09816d4.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `abbrev` | [NormedAddCommGroup.ofCoreReplaceAll](declarations/normedaddcommgroup-ofcorereplaceall--15f4f5a98bca3a469c3ff908.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `abbrev` | [NormedSpace.ofCore](declarations/normedspace-ofcore--72834ae8a0f882b28c0beaca.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `lemma` | [AddMonoidHom.continuous_of_isBounded_nhds_zero](declarations/addmonoidhom-continuous-of-isbounded-nhds-zero--144def35db42a29754eb5ad4.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `abbrev` | [IsUnital.toNormedAlgebra](declarations/isunital-tonormedalgebra--5c29fcfcd4f56c5e7196d271.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
