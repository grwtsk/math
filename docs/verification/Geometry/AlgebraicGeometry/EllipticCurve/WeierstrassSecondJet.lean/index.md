# Verification target: GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassSecondJet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5995cf8be35a9b679171d7c5fe31ef4fbe0fbd19",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5995cf8be35a9b679171d7c5fe31ef4fbe0fbd19`.

Source path: `GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.RingTheory.QuadraticCollisionOrder`](../../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.AlgebraicGeometry.EllipticCurve.Affine.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Div` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jetIdeal](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/jetideal--69c16b23e1c4feaeaa2eb7b5.md) | 29 | `declaration-track:69c16b23e1c4feaeaa2eb7b5ac121cb6dfba5ae784866df362785d28f63c3f4b` |
| 2 | `abbrev` | [Jet2](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/jet2--d726d92848822eadb1a780e4.md) | 30 | `declaration-track:d726d92848822eadb1a780e48c309aa1f6319891914c57852b3c1fe722f6cc07` |
| 3 | `def` | [jetMap](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/jetmap--a2add5f1ff72a2f27247f4cb.md) | 32 | `declaration-track:a2add5f1ff72a2f27247f4cb15011a2870bf6d8af451d56a87bf5a0e5837cbee` |
| 4 | `def` | [scalar](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/scalar--4ca1759ec41ef09e17bb85ac.md) | 33 | `declaration-track:4ca1759ec41ef09e17bb85acb2ac59338aa04fe3dab120b09bafdcf62dc830e3` |
| 5 | `def` | [normalPolynomial](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/normalpolynomial--bceb7dcce62dde37bd016027.md) | 35 | `declaration-track:bceb7dcce62dde37bd016027ddfbc08f354c5786ce359e469f37ab4f886b0f43` |
| 6 | `def` | [jet](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/jet--9e3de03c5ac5f491ec33b292.md) | 36 | `declaration-track:9e3de03c5ac5f491ec33b29289897ba78b1b807817b4fd1c905fa8be4baa90a8` |
| 7 | `theorem` | [jetMap_zero_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/jetmap-zero-iff--5dc16c6523f538d02a92067c.md) | 38 | `result-track:5dc16c6523f538d02a92067cf64b7b847af5e5385d520b7d2a320187e9c89701` |
| 8 | `theorem` | [jetMap_eq_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/jetmap-eq-iff--04a091ab45ea5888929fd1b5.md) | 43 | `result-track:04a091ab45ea5888929fd1b5a32c5e899fdfb69390b705aa4c7fafb509b50282` |
| 9 | `theorem` | [normal_form](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/normal-form--74e83c40cd86271022abde48.md) | 48 | `result-track:74e83c40cd86271022abde481c73a3f038713acf0fdd4131cb895719f25e3fff` |
| 10 | `theorem` | [jet_eq_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/jet-eq-iff--d71cb8ed32075943f0221c58.md) | 54 | `result-track:d71cb8ed32075943f0221c58c1a6c08ed17d01f9f6eb8cf4d6a315ed8e8ad0bf` |
| 11 | `theorem` | [exists_normal_form](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/exists-normal-form--e7420fab3c6c1107cec34202.md) | 66 | `result-track:e7420fab3c6c1107cec34202355f938afdd10efba021010e11228f2ff5f119aa` |
| 12 | `def` | [epsilon](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/epsilon--c5c64ce060f4e288851acf19.md) | 70 | `declaration-track:c5c64ce060f4e288851acf1960ef38d4b027031a0936ff316577e471e58848cf` |
| 13 | `theorem` | [epsilon_cube](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/epsilon-cube--6423f3fe1fa5cbe68dd1be33.md) | 72 | `result-track:6423f3fe1fa5cbe68dd1be33d1bca3d727e5e354684ab1fa151e7f0b3298f27a` |
| 14 | `theorem` | [epsilon_square_ne_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/epsilon-square-ne-zero--e7135d8533323a14eb9a6708.md) | 77 | `result-track:e7135d8533323a14eb9a67089a46b321ff5b3d9f57971d2cce4a375898b4e134` |
| 15 | `def` | [dualEval](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/dualeval--967c6a254b6d366ba00b2d43.md) | 85 | `declaration-track:967c6a254b6d366ba00b2d43b39f059f21494effac0f7c4b60f03864e202d0d8` |
| 16 | `theorem` | [dualEval_cube](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/dualeval-cube--7112c7fd153a89218836ae66.md) | 88 | `result-track:7112c7fd153a89218836ae664f28f4b5b507f813c76be0bc295c0dffc71ba16b` |
| 17 | `def` | [truncate](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/truncate--8b70e0da0d2e4d9301d6806e.md) | 92 | `declaration-track:8b70e0da0d2e4d9301d6806e15559f694054eabca927683cb8f15c4a15932b46` |
| 18 | `theorem` | [truncate_jet](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/truncate-jet--ed3087722d30acdc66702829.md) | 98 | `result-track:ed3087722d30acdc6670282974a26a4fec66b016262e7eb89ef48a290e609ae3` |
| 19 | `theorem` | [truncate_fiber](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/truncate-fiber--59f43d30326c0fb1c5da6c2a.md) | 103 | `result-track:59f43d30326c0fb1c5da6c2af6777822dde786467383949d2db99c85463c8a80` |
| 20 | `theorem` | [truncate_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/truncate-surjective--7c1f7871405712e3e182d624.md) | 117 | `result-track:7c1f7871405712e3e182d624752d3b07de23edbf2462994ebceeb175e6e793de` |
| 21 | `def` | [HasVerticalLift](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/hasverticallift--17a11757ee97f962edf00705.md) | 122 | `declaration-track:17a11757ee97f962edf00705abe3ebcb4a93a0d97a2c017a0a12389b46a06ee8` |
| 22 | `def` | [model](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/model--50a96518ad677371d2f08047.md) | 127 | `declaration-track:50a96518ad677371d2f08047b75e59f989bf95ce5189e79925f2f5b9145dba02` |
| 23 | `def` | [arcPolynomial](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/arcpolynomial--199c80101a32f296ed630c2b.md) | 134 | `declaration-track:199c80101a32f296ed630c2b28a5b6c1f29813509a690cf03f655862fc9cdd74` |
| 24 | `def` | [residual](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/residual--6a586bc078883bb76de8fd60.md) | 136 | `declaration-track:6a586bc078883bb76de8fd6079f01fbe7b7c576071ce014fb677761be5f81516` |
| 25 | `theorem` | [residual_expansion](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/residual-expansion--a53c00f90f2f6c864b5af992.md) | 141 | `result-track:a53c00f90f2f6c864b5af992a87d51d5d95ec3236cc2dcde06d2231c9c33374f` |
| 26 | `theorem` | [residual_coefficients](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/residual-coefficients--9718f8d6788417683a18c442.md) | 151 | `result-track:9718f8d6788417683a18c442c3d71628d2b529078e27e44d936e53f8fab81d1c` |
| 27 | `theorem` | [mapped_residual](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/mapped-residual--61802a650a2f16fb0249031c.md) | 159 | `result-track:61802a650a2f16fb0249031cbd49abd1053085178c1be0c1d84f6fd28ae4b935` |
| 28 | `theorem` | [equation_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/equation-iff--4dc24f15e1842852bc2110b1.md) | 167 | `result-track:4dc24f15e1842852bc2110b1b69aab7f9c177a8866181684b7311c0cf27acc3a` |
| 29 | `theorem` | [vertical_lift_iff_unit](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/vertical-lift-iff-unit--96a2b25b23373a1d6b0e95b9.md) | 190 | `result-track:96a2b25b23373a1d6b0e95b903ed5802802cf610ebe2b107448dd9306c83dc30` |
| 30 | `theorem` | [vertical_node_residual](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/vertical-node-residual--0835eef250f250b7210164c3.md) | 208 | `result-track:0835eef250f250b7210164c3c504e3544145aa6e391e17b9a5b520a21b124e1a` |
| 31 | `theorem` | [no_vertical_lift_at_node](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/no-vertical-lift-at-node--c2b2655526b81561ef4fd346.md) | 217 | `result-track:c2b2655526b81561ef4fd34639713bc2659b761fa1e16554f28ae71671a93dc4` |
| 32 | `theorem` | [vertical_field_coefficient](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/vertical-field-coefficient--3028f9989f46f85267a41379.md) | 223 | `result-track:3028f9989f46f85267a413790dcb0d539b2f85da779fcff5db166c33e5f7f1e1` |
| 33 | `theorem` | [reciprocal_clearing_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/reciprocal-clearing-iff--c7964adf39ed59e840d15589.md) | 238 | `result-track:c7964adf39ed59e840d15589e059bc37fa088169ad8d3bb63c509baa6c0164a9` |
| 34 | `theorem` | [binary_tangent_test](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/binary-tangent-test--9146eb2738bf3bcd84a2ee80.md) | 252 | `result-track:9146eb2738bf3bcd84a2ee80c99ee61bd5ef6ab84108017fc1924abfa2454a0f` |
| 35 | `theorem` | [binary_node_directions](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/declarations/binary-node-directions--36285a63365d1dd6a7a71103.md) | 258 | `result-track:36285a63365d1dd6a7a7110320dfe5fed82b840da15cb0f167a246b980653e0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
