# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pointwise.Variantd9adbc7b5fa696f1f1bb4e8ccb9a31e8c263196d23b91c8b0e6265e31cb92bbb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c91c6b8f604a7e382c48d9888153ff03a0fe8bf",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pointwise/Variantd9adbc7b5fa696f1f1bb4e8ccb9a31e8c263196d23b91c8b0e6265e31cb92bbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantd9adbc7b5fa696f1f1bb4e8ccb9a31e8c263196d23b91c8b0e6265e31cb92bbb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantd9adbc7b5fa696f1f1bb4e8ccb9a31e8c263196d23b91c8b0e6265e31cb92bbb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c91c6b8f604a7e382c48d9888153ff03a0fe8bf`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pointwise/Variantd9adbc7b5fa696f1f1bb4e8ccb9a31e8c263196d23b91c8b0e6265e31cb92bbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pointwise/Variantd9adbc7b5fa696f1f1bb4e8ccb9a31e8c263196d23b91c8b0e6265e31cb92bbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Unbundled.OrderIso` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.OrderIso` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_Ioo](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantd9adbc7b5fa696f1f1bb4e8ccb9a31e8c263196d23b91c8b0e6265e31cb92bbb.lean/declarations/smul-ioo--dde1b43cbcc8114a38bd1c73.md) | 35 | `result-track:dde1b43cbcc8114a38bd1c73a4f4d5a3bd07df68d547ae86cb11aad71cad3145` |
| 2 | `theorem` | [smul_Icc](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantd9adbc7b5fa696f1f1bb4e8ccb9a31e8c263196d23b91c8b0e6265e31cb92bbb.lean/declarations/smul-icc--6530d23f06b5ce93d601e491.md) | 36 | `result-track:6530d23f06b5ce93d601e4913f4e8777006b83c38d10ee3ac340ca88216546a5` |
| 3 | `theorem` | [smul_Ico](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantd9adbc7b5fa696f1f1bb4e8ccb9a31e8c263196d23b91c8b0e6265e31cb92bbb.lean/declarations/smul-ico--2656d49f01a3767a338b677e.md) | 37 | `result-track:2656d49f01a3767a338b677e0552b7c3dff8cb57aad3dab5009587d5852d8de8` |
| 4 | `theorem` | [smul_Ioc](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantd9adbc7b5fa696f1f1bb4e8ccb9a31e8c263196d23b91c8b0e6265e31cb92bbb.lean/declarations/smul-ioc--30256dea366d7a4a5d28c7b7.md) | 38 | `result-track:30256dea366d7a4a5d28c7b727b2ba4bbf4d6af836cc5c597de72247215d0592` |
| 5 | `theorem` | [smul_Ioi](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantd9adbc7b5fa696f1f1bb4e8ccb9a31e8c263196d23b91c8b0e6265e31cb92bbb.lean/declarations/smul-ioi--0b4dd74eafc00b9281484b09.md) | 39 | `result-track:0b4dd74eafc00b9281484b09fd2c41827c405714040a19d994af74fbef07eb9a` |
| 6 | `theorem` | [smul_Iio](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantd9adbc7b5fa696f1f1bb4e8ccb9a31e8c263196d23b91c8b0e6265e31cb92bbb.lean/declarations/smul-iio--4a561582e3264bc77d356f8e.md) | 40 | `result-track:4a561582e3264bc77d356f8e0dc87499a0692cd889d2d99cab428bf370d8417c` |
| 7 | `theorem` | [smul_Ici](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantd9adbc7b5fa696f1f1bb4e8ccb9a31e8c263196d23b91c8b0e6265e31cb92bbb.lean/declarations/smul-ici--3dae29705b5ff486831c43fb.md) | 41 | `result-track:3dae29705b5ff486831c43fbba3eb9c3f6a603f2c3a8024193a0edf380d76854` |
| 8 | `theorem` | [smul_Iic](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantd9adbc7b5fa696f1f1bb4e8ccb9a31e8c263196d23b91c8b0e6265e31cb92bbb.lean/declarations/smul-iic--cd04e3760e00570e50e96407.md) | 42 | `result-track:cd04e3760e00570e50e9640728e9d682c14a22973c4c2a48c1f6b7ed8e3916e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
