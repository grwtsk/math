# GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalCover

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8448980c5c8be5b8a0bbfddcb687e6d2f8ee535d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Rectangle](declarations/rectangle--2ab32947cee0aa9a97767092.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [WellFormed](declarations/wellformed--7ba76577417158b4896a9c6c.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance--364cfda0524e16a760b3a0e5.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [west](declarations/west--c7ec2e86a186898362dd945c.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [east](declarations/east--664e8062d24fab66d1e0b324.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [south](declarations/south--c93921e2e5f77c99636af2b5.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [north](declarations/north--d2070d971bcb73e78468b04d.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [Disk](declarations/disk--fcec287ca4f10a4fe82c884c.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [realReach](declarations/realreach--9e89ea2b41b747c2c9b4799d.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [imagReach](declarations/imagreach--6e5a2b873c3a43ae12d76807.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [ContainsBox](declarations/containsbox--9293f8ab200e239b790a91e0.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance--e38a8219a007b0c94b831686.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `inductive` | [Tree](declarations/tree--4a27e3033d0ff0ff34aedda8.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [check](declarations/check--1c3659a2c3f5e137cc1c828a.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [leafCount](declarations/leafcount--68472f13e9f58ef1aced7f05.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [Rectangle.carrier](declarations/rectangle-carrier--e33db00ad8b13d0dd39dff07.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Disk.center](declarations/disk-center--a6f5549ffb0f468cfe0e066d.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Disk.carrier](declarations/disk-carrier--73ad6e9bd58cfebe2fc3369e.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [Rectangle.carrier_nonempty](declarations/rectangle-carrier-nonempty--b802635e82d6c44bea124104.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [abs_sub_le_endpoint_max](declarations/abs-sub-le-endpoint-max--8c97480a3fd778e1001cb312.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Disk.containsBox_sound](declarations/disk-containsbox-sound--5e66352b5fe3a8eff2dfdbc8.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Rectangle.west_east_union](declarations/rectangle-west-east-union--b3ceb242eb33d462a9d74acc.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Rectangle.south_north_union](declarations/rectangle-south-north-union--ffaf8931a7c4e6e16a89fa7b.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [check_wellFormed](declarations/check-wellformed--3b43fda69a4d05012ba7890e.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [check_covers](declarations/check-covers--9be972da557590a428a319f7.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [count_pos_of_check](declarations/count-pos-of-check--0270a9b12522b40afeec52bc.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [toFiniteVariationCover](declarations/tofinitevariationcover--49d87c3f5030548bc5b8c9e9.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [toTargetCover](declarations/totargetcover--70240833b5eb5b790d7aa2a5.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [not_check_of_uncovered](declarations/not-check-of-uncovered--24ee10735a748e3fcdb37381.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [not_check_of_source_zero](declarations/not-check-of-source-zero--087173996d22e6673e4aec03.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
