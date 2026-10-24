# GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassSecondJet

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5995cf8be35a9b679171d7c5fe31ef4fbe0fbd19`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [jetIdeal](declarations/jetideal--69c16b23e1c4feaeaa2eb7b5.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Jet2](declarations/jet2--d726d92848822eadb1a780e4.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [jetMap](declarations/jetmap--a2add5f1ff72a2f27247f4cb.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [scalar](declarations/scalar--4ca1759ec41ef09e17bb85ac.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [normalPolynomial](declarations/normalpolynomial--bceb7dcce62dde37bd016027.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [jet](declarations/jet--9e3de03c5ac5f491ec33b292.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [jetMap_zero_iff](declarations/jetmap-zero-iff--5dc16c6523f538d02a92067c.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [jetMap_eq_iff](declarations/jetmap-eq-iff--04a091ab45ea5888929fd1b5.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [normal_form](declarations/normal-form--74e83c40cd86271022abde48.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [jet_eq_iff](declarations/jet-eq-iff--d71cb8ed32075943f0221c58.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [exists_normal_form](declarations/exists-normal-form--e7420fab3c6c1107cec34202.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [epsilon](declarations/epsilon--c5c64ce060f4e288851acf19.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [epsilon_cube](declarations/epsilon-cube--6423f3fe1fa5cbe68dd1be33.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [epsilon_square_ne_zero](declarations/epsilon-square-ne-zero--e7135d8533323a14eb9a6708.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [dualEval](declarations/dualeval--967c6a254b6d366ba00b2d43.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [dualEval_cube](declarations/dualeval-cube--7112c7fd153a89218836ae66.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [truncate](declarations/truncate--8b70e0da0d2e4d9301d6806e.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [truncate_jet](declarations/truncate-jet--ed3087722d30acdc66702829.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [truncate_fiber](declarations/truncate-fiber--59f43d30326c0fb1c5da6c2a.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [truncate_surjective](declarations/truncate-surjective--7c1f7871405712e3e182d624.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [HasVerticalLift](declarations/hasverticallift--17a11757ee97f962edf00705.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [model](declarations/model--50a96518ad677371d2f08047.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [arcPolynomial](declarations/arcpolynomial--199c80101a32f296ed630c2b.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [residual](declarations/residual--6a586bc078883bb76de8fd60.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [residual_expansion](declarations/residual-expansion--a53c00f90f2f6c864b5af992.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [residual_coefficients](declarations/residual-coefficients--9718f8d6788417683a18c442.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mapped_residual](declarations/mapped-residual--61802a650a2f16fb0249031c.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [equation_iff](declarations/equation-iff--4dc24f15e1842852bc2110b1.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [vertical_lift_iff_unit](declarations/vertical-lift-iff-unit--96a2b25b23373a1d6b0e95b9.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [vertical_node_residual](declarations/vertical-node-residual--0835eef250f250b7210164c3.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [no_vertical_lift_at_node](declarations/no-vertical-lift-at-node--c2b2655526b81561ef4fd346.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [vertical_field_coefficient](declarations/vertical-field-coefficient--3028f9989f46f85267a41379.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [reciprocal_clearing_iff](declarations/reciprocal-clearing-iff--c7964adf39ed59e840d15589.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [binary_tangent_test](declarations/binary-tangent-test--9146eb2738bf3bcd84a2ee80.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [binary_node_directions](declarations/binary-node-directions--36285a63365d1dd6a7a71103.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
