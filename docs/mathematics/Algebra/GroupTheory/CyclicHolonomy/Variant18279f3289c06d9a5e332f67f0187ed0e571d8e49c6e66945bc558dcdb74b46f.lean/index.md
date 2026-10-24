# GRWTSK.Algebra.GroupTheory.CyclicHolonomy.Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `989d07e0c603630d71731d4f8fbe68d981372162`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GroupTheory/CyclicHolonomy/Variant18279f3289c06d9a5e332f67f0187ed0e571d8e49c6e66945bc558dcdb74b46f.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [cycleLength](declarations/cyclelength--4ab7d1885722e252976c7a81.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [cycleLength_pos](declarations/cyclelength-pos--c138137aea3a7586cb16e645.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [card_coverPhase](declarations/card-coverphase--ddedeebbe336e42715377981.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [advance](declarations/advance--1da2d50f0dac6681898ae4d3.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [successor_iterate_eq_advance](declarations/successor-iterate-eq-advance--450cdb78654e89c5352f9f74.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [advance_zero](declarations/advance-zero--3e812741ee9d1ee0f064935e.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [advance_one](declarations/advance-one--221e96a7f4e824a842ac2546.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [advance_succ](declarations/advance-succ--3c48b571dcd1b02ec497be15.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [advance_successor](declarations/advance-successor--85b9eb4c7a4ed54a6f568071.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [advance_add](declarations/advance-add--1301413a5dc801cd3788c2c5.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [advance_cycle](declarations/advance-cycle--a3f92f6ab9c878e12564460f.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [advance_mod_cycle](declarations/advance-mod-cycle--6217b710f3d442e211d644ca.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [advance_half](declarations/advance-half--54a50a6ee1f82991a19db96f.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [forwardProduct_add](declarations/forwardproduct-add--52ac94611e1a0a42f44edacd.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [forwardProduct_one](declarations/forwardproduct-one--64f189077a1946aa3272c721.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [monodromy](declarations/monodromy--d806c0cf09becf75af2ac3a8.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [forwardProduct_cycle_add](declarations/forwardproduct-cycle-add--47706470bfb64a74d0ba4434.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [holonomyGroupAt](declarations/holonomygroupat--bcfc2540cd8b680545ca5bd3.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mem_holonomyGroupAt_iff](declarations/mem-holonomygroupat-iff--c7273a1079c6dccf0e9b77ad.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [StepsInSubgroup](declarations/stepsinsubgroup--b86ad4f3c61c77ad8eba0eb5.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [forwardProduct_mem_subgroup](declarations/forwardproduct-mem-subgroup--29266a361634582d49f791bb.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [monodromy_mem_subgroup](declarations/monodromy-mem-subgroup--0f89f155b3c2a44284d3c244.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [transport_intertwines_monodromy](declarations/transport-intertwines-monodromy--8291c8836cca9501456a94fc.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [monodromy_advance_eq_conjugate](declarations/monodromy-advance-eq-conjugate--07b8b606ea771352712b1c6e.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [monodromy_successor_eq_conjugate](declarations/monodromy-successor-eq-conjugate--5782b60bbff31aaa6643c251.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [monodromy_successor_mem_of_mem_normalizer](declarations/monodromy-successor-mem-of-mem-normalizer--2ce06cf1500b52da852944c1.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [monodromy_successor_mem_of_normal](declarations/monodromy-successor-mem-of-normal--3e7be6bd826f3245878653f8.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [ClosesAfterCircuit](declarations/closesaftercircuit--4f6d1fdf6239d2e2e6cd42f3.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [closesAfterCircuit_iff_monodromy_fixed](declarations/closesaftercircuit-iff-monodromy-fixed--bb7109b8da988bc8c81fc905.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [IsParallelSection](declarations/isparallelsection--d191e91d05eb8162c646f9a8.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [forwardProduct_apply_of_isParallelSection](declarations/forwardproduct-apply-of-isparallelsection--8fd8668c16fe83e1e34aad81.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [isParallelSection_closesAfterCircuit](declarations/isparallelsection-closesaftercircuit--bcc53b08088fa6869a2d8b61.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [halfTransport](declarations/halftransport--0370d9d8dbdac2f0632fb917.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [monodromy_eq_halfTransport_trans_self](declarations/monodromy-eq-halftransport-trans-self--8fb836d8076ffffedc6b8bf2.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [PathDecomposition](declarations/pathdecomposition--a408cd3e96d9dd9df6c3f170.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [decomposeSteps](declarations/decomposesteps--b5e1cd3d324de1242525aeb7.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [decomposeSteps_recompose](declarations/decomposesteps-recompose--00ecac16a05468d8b3782352.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [forwardProduct_laps_add](declarations/forwardproduct-laps-add--9b2d564f0caf04a36b8dc749.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [forwardProduct_decomposition](declarations/forwardproduct-decomposition--dfacfa276a80a60a3bf1734a.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `abbrev` | [OneLapIndex](declarations/onelapindex--0a6092534b6be9079536ef9d.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [oneLapStart](declarations/onelapstart--bfdca7df93723611df3ac62e.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [oneLapEnd](declarations/onelapend--af259239c8f4c2ebfdfc2191.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [oneLapPhase](declarations/onelapphase--e84ad340f3631cf0d30fded4.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [oneLapProduct](declarations/onelapproduct--6f4e3f4c801d2b142066ea94.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [oneLapPhase_start](declarations/onelapphase-start--333a071b9f68557cb49f8c43.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [oneLapPhase_end](declarations/onelapphase-end--a665a6e393dbb6a0afc90934.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [oneLapProduct_start](declarations/onelapproduct-start--e82302bae430615a4c282ab8.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [oneLapProduct_end](declarations/onelapproduct-end--dc4e35e50fe49aae795b138d.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
