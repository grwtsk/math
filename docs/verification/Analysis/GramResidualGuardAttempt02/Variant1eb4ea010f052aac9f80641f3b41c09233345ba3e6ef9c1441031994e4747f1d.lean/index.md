# Verification target: GRWTSK.Analysis.GramResidualGuardAttempt02.Variant1eb4ea010f052aac9f80641f3b41c09233345ba3e6ef9c1441031994e4747f1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a78ad52a1195b87e24af3f3daff282b2322afb3",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/GramResidualGuardAttempt02/Variant1eb4ea010f052aac9f80641f3b41c09233345ba3e6ef9c1441031994e4747f1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Variant1eb4ea010f052aac9f80641f3b41c09233345ba3e6ef9c1441031994e4747f1d.lean/index.md) · [Full source](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Variant1eb4ea010f052aac9f80641f3b41c09233345ba3e6ef9c1441031994e4747f1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a78ad52a1195b87e24af3f3daff282b2322afb3`.

Source path: `GRWTSK/Analysis/GramResidualGuardAttempt02/Variant1eb4ea010f052aac9f80641f3b41c09233345ba3e6ef9c1441031994e4747f1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/GramResidualGuardAttempt02/Variant1eb4ea010f052aac9f80641f3b41c09233345ba3e6ef9c1441031994e4747f1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Rayleigh` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Hermitian` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quadratic_difference_abs_le](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Variant1eb4ea010f052aac9f80641f3b41c09233345ba3e6ef9c1441031994e4747f1d.lean/declarations/quadratic-difference-abs-le--98ce08c8734b36c456de1303.md) | 26 | `result-track:98ce08c8734b36c456de13039ca6857d9e760096cc1f7fd612cd72098082c498` |
| 2 | `theorem` | [positive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Variant1eb4ea010f052aac9f80641f3b41c09233345ba3e6ef9c1441031994e4747f1d.lean/declarations/positive-approximation-lower--ee2edeaff1387a4a454368d8.md) | 39 | `result-track:ee2edeaff1387a4a454368d84ea309518145a251928a23df1510f0b4ebe43d68` |
| 3 | `theorem` | [coercive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Variant1eb4ea010f052aac9f80641f3b41c09233345ba3e6ef9c1441031994e4747f1d.lean/declarations/coercive-approximation-lower--449fb2c9a7853e8fb2f80d9c.md) | 47 | `result-track:449fb2c9a7853e8fb2f80d9c4caaca86d63899c0b2af6bf8fbb0fe076a52b2c4` |
| 4 | `theorem` | [positive_of_coercive_residual](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Variant1eb4ea010f052aac9f80641f3b41c09233345ba3e6ef9c1441031994e4747f1d.lean/declarations/positive-of-coercive-residual--5f56c7c81e3e4b5a2f9dd2c1.md) | 55 | `result-track:5f56c7c81e3e4b5a2f9dd2c1017692da623a2ef0942df60b096a9513d456e6b1` |
| 5 | `theorem` | [positive_of_arbitrary_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Variant1eb4ea010f052aac9f80641f3b41c09233345ba3e6ef9c1441031994e4747f1d.lean/declarations/positive-of-arbitrary-precision--47e3d194056c7d459cc7ff50.md) | 63 | `result-track:47e3d194056c7d459cc7ff50d52feadf8d435e0094552dd0d3b012a0fad27c7c` |
| 6 | `theorem` | [gram_residual_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Variant1eb4ea010f052aac9f80641f3b41c09233345ba3e6ef9c1441031994e4747f1d.lean/declarations/gram-residual-lower--856c78a3eed846b8d53c2832.md) | 85 | `result-track:856c78a3eed846b8d53c283262d1665cdcb33b469268f4f8becc8aadd5babf0c` |
| 7 | `theorem` | [positive_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Variant1eb4ea010f052aac9f80641f3b41c09233345ba3e6ef9c1441031994e4747f1d.lean/declarations/positive-of-arbitrary-gram-precision--57ec5d6df5b22fcb85228a40.md) | 94 | `result-track:57ec5d6df5b22fcb85228a40359e4e9feb6be54a373e547de0511d0e64f9d0d5` |
| 8 | `def` | [positiveDistance](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Variant1eb4ea010f052aac9f80641f3b41c09233345ba3e6ef9c1441031994e4747f1d.lean/declarations/positivedistance--7eec49f8efe7571b76a0a2a8.md) | 104 | `declaration-track:7eec49f8efe7571b76a0a2a8c939baa246c8005003ea9c8cd9b81504acdb0d44` |
| 9 | `theorem` | [negative_rayleigh_le_norm](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Variant1eb4ea010f052aac9f80641f3b41c09233345ba3e6ef9c1441031994e4747f1d.lean/declarations/negative-rayleigh-le-norm--7839dca0d7765418cd95afa9.md) | 107 | `result-track:7839dca0d7765418cd95afa94c180e11e69814ed5d6a8ba14a6a25ec8997c068` |
| 10 | `theorem` | [negative_rayleigh_distance_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Variant1eb4ea010f052aac9f80641f3b41c09233345ba3e6ef9c1441031994e4747f1d.lean/declarations/negative-rayleigh-distance-lower--fdcb63697a0319e53eddd685.md) | 119 | `result-track:fdcb63697a0319e53eddd68547b7ef6897dbcd4becea90042cabc3e6795472aa` |
| 11 | `theorem` | [positiveDistance_eq_zero_iff](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Variant1eb4ea010f052aac9f80641f3b41c09233345ba3e6ef9c1441031994e4747f1d.lean/declarations/positivedistance-eq-zero-iff--5f71ad21e7419f2a89d62df4.md) | 129 | `result-track:5f71ad21e7419f2a89d62df40ab5d2488162d6a2893dcea814046251d3982206` |
| 12 | `def` | [matrixOperator](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Variant1eb4ea010f052aac9f80641f3b41c09233345ba3e6ef9c1441031994e4747f1d.lean/declarations/matrixoperator--91c6e180e9986b93de3e7fe2.md) | 150 | `declaration-track:91c6e180e9986b93de3e7fe23ba62f6868ace598082ac7e30d2cf4589549a02e` |
| 13 | `theorem` | [matrixOperator_positive_iff](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Variant1eb4ea010f052aac9f80641f3b41c09233345ba3e6ef9c1441031994e4747f1d.lean/declarations/matrixoperator-positive-iff--9e4d9193f97181dfbd8fa4d1.md) | 153 | `result-track:9e4d9193f97181dfbd8fa4d1aaa7abea8e58c3ed0db70ce8371de7405535df1d` |
| 14 | `theorem` | [matrix_posSemidef_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt02/Variant1eb4ea010f052aac9f80641f3b41c09233345ba3e6ef9c1441031994e4747f1d.lean/declarations/matrix-possemidef-of-arbitrary-gram-precision--cba569b8d8d58fb21b811d6b.md) | 158 | `result-track:cba569b8d8d58fb21b811d6b28ab2d99d98dd59abb9cd48d854da24cc1caa358` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
