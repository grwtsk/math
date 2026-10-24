# GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoEvenSummandChamber

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `854d11ec51383abb3f3e4ca03c207e40bca2964c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](declarations/instance--820c90452bd53b1970ff45ce.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Chamber](declarations/chamber--ef6a005c2c01261506dad285.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [chamber_iff](declarations/chamber-iff--3946c975a7b9a52d0dcf7646.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Chamber.m_pos](declarations/chamber-m-pos--d0a0318a3b6ed0bf28b2cda4.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Chamber.product_cast](declarations/chamber-product-cast--d74e13fe72106f4d5f0d104c.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Chamber.c_odd](declarations/chamber-c-odd--453aa9e11fc82a8741356b11.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [disjoint_previous](declarations/disjoint-previous--a062e5dc60f85e536867f8d4.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [of_even_a](declarations/of-even-a--f822dc5a4aebb889f4816ef2.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [of_even_b](declarations/of-even-b--24bda5caaefbb5a35a4b593d.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [integralModel](declarations/integralmodel--5866855f7c6be4ad6bf5c262.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [changedCurve](declarations/changedcurve--35a17b23ea08bf02f02f19ec.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance--b8b3885156a425a29c036e9d.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [integralModel_baseChange](declarations/integralmodel-basechange--ebf9b3b8355f013d1ef52204.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [changedCurve_j](declarations/changedcurve-j--3f71f3afbf34d5274f69fc38.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [c4_scaling](declarations/c4-scaling--c62805b3b6d429675795fb0b.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [delta_as_square](declarations/delta-as-square--c94a4c2b51b1d21108e07135.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [delta_scaling](declarations/delta-scaling--a254df439896b4d399f8ca2f.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [localModel](declarations/localmodel--49771c05364b01c2b855d0bc.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [localModel_baseChange](declarations/localmodel-basechange--58bd9cc54d1cbf3d8acba7ea.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [local_c4_unit](declarations/local-c4-unit--dd94361b639076e824b80c48.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [local_delta_unit_iff](declarations/local-delta-unit-iff--5fd36cd41fe600c2d27e5e53.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [minimal_at_two](declarations/minimal-at-two--fa145a2b8c164c01b5e3fa89.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [good_at_two](declarations/good-at-two--cb3a011e41527aff461ee679.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [multiplicative_at_two](declarations/multiplicative-at-two--bf39d5daa2b6fc876f0b52bb.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [good_iff](declarations/good-iff--fd2a09909bf6e71a56d16d9b.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [multiplicative_iff](declarations/multiplicative-iff--9aa98a020bea4f3833de0438.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [multiplicative_iff_32_dvd](declarations/multiplicative-iff-32-dvd--4fdd87cdc539819f051b6823.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [good_iff_not_32_dvd](declarations/good-iff-not-32-dvd--e9fc462abe792a706fac57f0.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [not_additive_at_two](declarations/not-additive-at-two--b536ad49bd8840a517f8ffa7.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [depth_two_zero](declarations/depth-two-zero--870bc462b4bb62eb5cb7e3b6.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [delta_natAbs](declarations/delta-natabs--1e89419966f13c44e3f531e8.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [minimal_delta_depth](declarations/minimal-delta-depth--33d968763f879756c216908f.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [source_product_depth](declarations/source-product-depth--bfbdbbc2018048da557d588b.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [minimal_depth_balance](declarations/minimal-depth-balance--ba201b0301ddfb726e6e2ddb.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [marked_j_agrees](declarations/marked-j-agrees--d74c799e264553d0357a44ae.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [evenASource](declarations/evenasource--be7c41e4b7ef0ea20bd099d0.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [evenAChamber](declarations/evenachamber--2b54c32f2750612f30fd6d46.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [first_family_delta](declarations/first-family-delta--9e13a6d5606ed3e4bfccdbd8.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [second_family_delta](declarations/second-family-delta--be48c39d2be7c4ad9945e757.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
