# GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyQuadraticJet

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**22 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98bafa6013820f49daa306e1dda04dd52056bec8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyQuadraticJet.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FreyQuadraticJetRing](declarations/freyquadraticjetring--0f95b3524fb34e3c200a48fe.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [freyJetParameter](declarations/freyjetparameter--6a609a48f43bcbaa257db604.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [freyJetParameter_cube](declarations/freyjetparameter-cube--7573d3ebaa4c06f55a035530.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [freyJetParameter_ne_zero](declarations/freyjetparameter-ne-zero--ef2673aee5df87e55abdff3d.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [freyJetParameter_sq_ne_zero](declarations/freyjetparameter-sq-ne-zero--1268b1d3c9b8e93db97c17f1.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [PrimitiveAdditiveTriple.freyPortRoot](declarations/primitiveadditivetriple-freyportroot--1d3da0eeb157c058c4e38a31.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [PrimitiveAdditiveTriple.freyPortRoot_matches_point](declarations/primitiveadditivetriple-freyportroot-matches-point--e60bf22150c02dcd61cd7717.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [PrimitiveAdditiveTriple.freyPortJacobian](declarations/primitiveadditivetriple-freyportjacobian--71205b23602742be770d9da9.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [PrimitiveAdditiveTriple.freyPortJacobian_values](declarations/primitiveadditivetriple-freyportjacobian-values--640bb23af1c6f4ab2165148d.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [PrimitiveAdditiveTriple.freyPortRoot_cubic](declarations/primitiveadditivetriple-freyportroot-cubic--202fac8975692c7848d4f822.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [PrimitiveAdditiveTriple.freyPortJacobian_derivative](declarations/primitiveadditivetriple-freyportjacobian-derivative--ed861924fe88d8e20bec4a98.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [PrimitiveAdditiveTriple.freyPortJacobian_ne_zero](declarations/primitiveadditivetriple-freyportjacobian-ne-zero--5878632b2747d1508d038690.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [PrimitiveAdditiveTriple.freyPortJacobian_dvd_product](declarations/primitiveadditivetriple-freyportjacobian-dvd-product--a93c9610ac1b9242aecd0995.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [frey_nilpotent_quadratic_curve](declarations/frey-nilpotent-quadratic-curve--bd220f5a022efe95b5c08674.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [PrimitiveAdditiveTriple.freyQuadraticX](declarations/primitiveadditivetriple-freyquadraticx--8a3e3e9a3d03162094c9ba44.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [PrimitiveAdditiveTriple.freyQuadraticX_cubic](declarations/primitiveadditivetriple-freyquadraticx-cubic--11d027614f0287d3eb84b6ca.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [PrimitiveAdditiveTriple.freyQuadraticJet_equation](declarations/primitiveadditivetriple-freyquadraticjet-equation--57f31a3c478b3d7dcf2915b0.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [PrimitiveAdditiveTriple.freyPlaneJetCoefficients](declarations/primitiveadditivetriple-freyplanejetcoefficients--66c3beaf1b2b4dc227219d5f.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [PrimitiveAdditiveTriple.freyPlaneJet_expansion](declarations/primitiveadditivetriple-freyplanejet-expansion--5441cfe73307a8156e1a824b.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [PrimitiveAdditiveTriple.frey_x_jet](declarations/primitiveadditivetriple-frey-x-jet--092c17e3074ca184591fe344.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [PrimitiveAdditiveTriple.frey_y_jet](declarations/primitiveadditivetriple-frey-y-jet--423acc76441875aa51099258.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [PrimitiveAdditiveTriple.frey_exists_unit_jet_port](declarations/primitiveadditivetriple-frey-exists-unit-jet-port--c11709c10facd6856b49d46b.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
