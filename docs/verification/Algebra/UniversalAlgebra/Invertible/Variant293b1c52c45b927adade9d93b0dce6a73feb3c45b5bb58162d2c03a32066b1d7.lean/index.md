# Verification target: GRWTSK.Algebra.UniversalAlgebra.Invertible.Variant293b1c52c45b927adade9d93b0dce6a73feb3c45b5bb58162d2c03a32066b1d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "516e20eb221c59e53ce66c47901bbd84a6b68dca",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Invertible/Variant293b1c52c45b927adade9d93b0dce6a73feb3c45b5bb58162d2c03a32066b1d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variant293b1c52c45b927adade9d93b0dce6a73feb3c45b5bb58162d2c03a32066b1d7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variant293b1c52c45b927adade9d93b0dce6a73feb3c45b5bb58162d2c03a32066b1d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `516e20eb221c59e53ce66c47901bbd84a6b68dca`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Invertible/Variant293b1c52c45b927adade9d93b0dce6a73feb3c45b5bb58162d2c03a32066b1d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Invertible/Variant293b1c52c45b927adade9d93b0dce6a73feb3c45b5bb58162d2c03a32066b1d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Invertible` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [invOf_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variant293b1c52c45b927adade9d93b0dce6a73feb3c45b5bb58162d2c03a32066b1d7.lean/declarations/invof-pos--7b0e4d2f32009858d7ba08a7.md) | 21 | `result-track:7b0e4d2f32009858d7ba08a7e84ad0abfe9c1cec1cbcfa070001fa9b536148da` |
| 2 | `theorem` | [invOf_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variant293b1c52c45b927adade9d93b0dce6a73feb3c45b5bb58162d2c03a32066b1d7.lean/declarations/invof-nonpos--f4c6e616ee961f592a4804f1.md) | 27 | `result-track:f4c6e616ee961f592a4804f123997838cedbab8a838919e13e797d670cad0446` |
| 3 | `theorem` | [invOf_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variant293b1c52c45b927adade9d93b0dce6a73feb3c45b5bb58162d2c03a32066b1d7.lean/declarations/invof-nonneg--1bd3efb27a59b7d35a2f8ea7.md) | 31 | `result-track:1bd3efb27a59b7d35a2f8ea7bb0c830f94339d8a8849e705a6580c6bc6b8cf7b` |
| 4 | `theorem` | [invOf_lt_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variant293b1c52c45b927adade9d93b0dce6a73feb3c45b5bb58162d2c03a32066b1d7.lean/declarations/invof-lt-zero--18b537210922cd9d9a32a283.md) | 37 | `result-track:18b537210922cd9d9a32a283a8c4d4e1ce203c7ef832ccb6c206f374efa1d281` |
| 5 | `theorem` | [invOf_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variant293b1c52c45b927adade9d93b0dce6a73feb3c45b5bb58162d2c03a32066b1d7.lean/declarations/invof-le-one--ba84aa946d308817bcffab95.md) | 41 | `result-track:ba84aa946d308817bcffab954dbb5f3d1a25fbe96758e027f7f5b827bc1e68fa` |
| 6 | `theorem` | [pos_invOf_of_invertible_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Invertible/Variant293b1c52c45b927adade9d93b0dce6a73feb3c45b5bb58162d2c03a32066b1d7.lean/declarations/pos-invof-of-invertible-cast--e534ebc0b08eeeeb1643c767.md) | 45 | `result-track:e534ebc0b08eeeeb1643c76777526c6e942f43bf65bc2663d593877a8682e2f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
