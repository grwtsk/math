# Verification target: GRWTSK.NumberTheory.Chebyshev.CanonicalTentScaledEvaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e04f41137d2a85cc2490c9bc9d2c815b0d8a212b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/CanonicalTentScaledEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentScaledEvaluation.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentScaledEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e04f41137d2a85cc2490c9bc9d2c815b0d8a212b`.

Source path: `GRWTSK/NumberTheory/Chebyshev/CanonicalTentScaledEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/CanonicalTentScaledEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.ScaledLogPowerEvaluation`](../../../../mathematics/Analysis/ComplexAnalysis/ScaledLogPowerEvaluation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CanonicalTentPrimeCriterion`](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scaledHead](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentScaledEvaluation.lean/declarations/scaledhead--6683a28efe11b372e08fa171.md) | 30 | `declaration-track:6683a28efe11b372e08fa171cef4b00844cf11cfdcd70011b8bac54737430060` |
| 2 | `def` | [scaledHeadError](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentScaledEvaluation.lean/declarations/scaledheaderror--082f203a739ea705c39352a7.md) | 35 | `declaration-track:082f203a739ea705c39352a7209faf76881cb9b80603e06c995e95bb1bb82bf1` |
| 3 | `theorem` | [norm_head_sub_scaled_le](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentScaledEvaluation.lean/declarations/norm-head-sub-scaled-le--451ce2f08ea39fea95591c22.md) | 41 | `result-track:451ce2f08ea39fea95591c22c3380d50b0f256e7be46b7ba862af15d0384cc9b` |
| 4 | `theorem` | [scaledHeadError_nonneg](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentScaledEvaluation.lean/declarations/scaledheaderror-nonneg--5e2c675adb10c240375059ff.md) | 61 | `result-track:5e2c675adb10c240375059ff9c42374fd3c996d2cfe5b7bd854bb960640acf9c` |
| 5 | `theorem` | [norm_head_sub_rounded_le](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentScaledEvaluation.lean/declarations/norm-head-sub-rounded-le--8ee9a692e199c9fd2e2c07ff.md) | 67 | `result-track:8ee9a692e199c9fd2e2c07ffea265e5b5902c39d7c8024968a07785caf7e86ca` |
| 6 | `theorem` | [prime_in_square_of_scaled_inputs](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentScaledEvaluation.lean/declarations/prime-in-square-of-scaled-inputs--f676a42e964d2637f5479171.md) | 82 | `result-track:f676a42e964d2637f547917117a2cd294d4770bcb27bef9d8e2343c6908cf0c1` |
| 7 | `theorem` | [prime_in_square_of_rounded_scaled_inputs](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentScaledEvaluation.lean/declarations/prime-in-square-of-rounded-scaled-inputs--396c1efcbaa05e9453380654.md) | 92 | `result-track:396c1efcbaa05e9453380654af7e6a5e25a451f05dc806bd35fdbf87e9fb2bf9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
