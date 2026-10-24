# GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoSemistableChamber

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea647742e9dad74403d5bec536369d8f621bc282`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](declarations/instance--25cbbfddbe1f7343a80fd519.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Chamber](declarations/chamber--f253ae68f7c666dcc5ee811e.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [chamber_iff](declarations/chamber-iff--9e6861aa72ca725fc8e1939a.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Chamber.n_pos](declarations/chamber-n-pos--dda0ae578a239ebe7e95c7b5.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Chamber.a_odd](declarations/chamber-a-odd--1420ab88bbe25d3861feea5e.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Chamber.b_odd](declarations/chamber-b-odd--8c9bc530e0dbab7faa11c64f.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Chamber.a_cast](declarations/chamber-a-cast--21faf9883da6cceb7728871a.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Chamber.b_cast](declarations/chamber-b-cast--95fae27e0e95d45c3aae215e.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [integralModel](declarations/integralmodel--c2ca1ac94bba38c4a5bdfa4d.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [changedCurve](declarations/changedcurve--7eeab0ce0057f1d1fc6ffc20.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance--9df152d26a2a8d70d55fc4e4.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [integralModel_baseChange](declarations/integralmodel-basechange--c17856a2fb7824d9e484a551.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [changedCurve_j](declarations/changedcurve-j--c376fdc12ce1717b90fd1f38.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [c4_scaling](declarations/c4-scaling--257598c69606ec8ef8e719b7.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [delta_as_square](declarations/delta-as-square--a04356fbcd02e443eabebe10.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [delta_scaling](declarations/delta-scaling--c9eff8da276778f291773998.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [localModel](declarations/localmodel--575aa6f2401cff1a61a42902.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [localModel_baseChange](declarations/localmodel-basechange--f6c9b1fdf52d1619b98d4e44.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [local_c4_unit](declarations/local-c4-unit--2564f2d2ad53793f07b879d6.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [local_delta_unit_iff](declarations/local-delta-unit-iff--791da48f4e6ed53383a8aa22.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [minimal_at_two](declarations/minimal-at-two--37f57f3d39577237f24b1f1d.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [good_at_two](declarations/good-at-two--fe5bb8bdd5439067210c4a58.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [multiplicative_at_two](declarations/multiplicative-at-two--078de112b2af805977447f38.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [good_iff](declarations/good-iff--fc37887472589dff6f4246c9.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [multiplicative_iff](declarations/multiplicative-iff--82ad6085ffc5116236f911a5.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [multiplicative_iff_32_dvd](declarations/multiplicative-iff-32-dvd--c7da53f9b20cea9378981dda.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [good_iff_not_32_dvd](declarations/good-iff-not-32-dvd--b4ab369a361e2cf7e390f371.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [not_additive_at_two](declarations/not-additive-at-two--01921b5f1930a4e4f4536ca5.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [depth_two_zero](declarations/depth-two-zero--f9ab94cba11462718fd9a9df.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [delta_natAbs](declarations/delta-natabs--b737a96620c4b493737b9258.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [minimal_delta_depth](declarations/minimal-delta-depth--119f66cd9fd673754eaec0bb.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [source_c_depth](declarations/source-c-depth--84aea61c3332a8b42ac62c06.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [minimal_depth_balance](declarations/minimal-depth-balance--038fca6694c57f2325dcdeb9.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [marked_j_agrees](declarations/marked-j-agrees--152580e9224531c3054e7c7a.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [unitChamber](declarations/unitchamber--e1ea151bebe9ee4c7069afdb.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [first_family_delta](declarations/first-family-delta--acefff5f68d6df0d33f962e8.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [second_family_delta](declarations/second-family-delta--9fc93d5e6dff0d2cd9dfc9ae.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
