# Verification target: GRWTSK.Analysis.MeasureTheory.2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows.Variantcbd58e1233927bab72a5bad0b21d3a3c6deb5b93fbd47b4e08a0adb0fa023630

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "783a52d45f80b2991faa017adbe28c519a283698",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variantcbd58e1233927bab72a5bad0b21d3a3c6deb5b93fbd47b4e08a0adb0fa023630.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variantcbd58e1233927bab72a5bad0b21d3a3c6deb5b93fbd47b4e08a0adb0fa023630.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variantcbd58e1233927bab72a5bad0b21d3a3c6deb5b93fbd47b4e08a0adb0fa023630.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `783a52d45f80b2991faa017adbe28c519a283698`.

Source path: `GRWTSK/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variantcbd58e1233927bab72a5bad0b21d3a3c6deb5b93fbd47b4e08a0adb0fa023630.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variantcbd58e1233927bab72a5bad0b21d3a3c6deb5b93fbd47b4e08a0adb0fa023630.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCubicUpperLogMoments` — import line 6; external provider; requires a separately pinned dependency.
- `SourceCubicSamplingRemainder` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cubicLogModelDerivative_measurable](../../../../../mathematics/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variantcbd58e1233927bab72a5bad0b21d3a3c6deb5b93fbd47b4e08a0adb0fa023630.lean/declarations/cubiclogmodelderivative-measurable--53e6deff89ba06e28e48d2a1.md) | 37 | `result-track:53e6deff89ba06e28e48d2a1c48fcb31ffc85fa60a1f1dd1c5056fce5456393d` |
| 2 | `theorem` | [actual_cubic_log_derivative_error_le_majorant](../../../../../mathematics/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variantcbd58e1233927bab72a5bad0b21d3a3c6deb5b93fbd47b4e08a0adb0fa023630.lean/declarations/actual-cubic-log-derivative-error-le-majorant--c268c94ae50f53cac381655b.md) | 51 | `result-track:c268c94ae50f53cac381655b51d716fb0d96b0c2d082bc40af0c7e0ad931373d` |
| 3 | `theorem` | [actual_cubic_log_derivative_error_integrable](../../../../../mathematics/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variantcbd58e1233927bab72a5bad0b21d3a3c6deb5b93fbd47b4e08a0adb0fa023630.lean/declarations/actual-cubic-log-derivative-error-integrable--8c9df1e8ea41f4876f295e1e.md) | 61 | `result-track:8c9df1e8ea41f4876f295e1efb919e07284e17a5ae252f1995dab359afad3295` |
| 4 | `def` | [cubicCenteredLogErrorRow](../../../../../mathematics/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variantcbd58e1233927bab72a5bad0b21d3a3c6deb5b93fbd47b4e08a0adb0fa023630.lean/declarations/cubiccenteredlogerrorrow--b3b052dfe1a23df79c35de4f.md) | 72 | `declaration-track:b3b052dfe1a23df79c35de4fcb5e1a3444b1f34f85a11c519db69c3f359c28ad` |
| 5 | `theorem` | [actual_cubic_centered_row_integrable](../../../../../mathematics/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variantcbd58e1233927bab72a5bad0b21d3a3c6deb5b93fbd47b4e08a0adb0fa023630.lean/declarations/actual-cubic-centered-row-integrable--3bc4f127e24b3d8068007542.md) | 76 | `result-track:3bc4f127e24b3d8068007542984ef095bf3e5226a5b92a8b2191a3b11bfd7fe7` |
| 6 | `theorem` | [actual_cubic_centered_row_abs_le](../../../../../mathematics/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variantcbd58e1233927bab72a5bad0b21d3a3c6deb5b93fbd47b4e08a0adb0fa023630.lean/declarations/actual-cubic-centered-row-abs-le--5e3970749bfd0bb728f276e7.md) | 84 | `result-track:5e3970749bfd0bb728f276e75105127343055ba4ad04f2808dfc3a63367edd0a` |
| 7 | `theorem` | [actual_cubic_short_divisor_sum_abs_le](../../../../../mathematics/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variantcbd58e1233927bab72a5bad0b21d3a3c6deb5b93fbd47b4e08a0adb0fa023630.lean/declarations/actual-cubic-short-divisor-sum-abs-le--10e4eb40a7fd4635a1384a89.md) | 91 | `result-track:10e4eb40a7fd4635a1384a89e6ad892eed83a81493931ade6b1aa36bfd68b568` |
| 8 | `theorem` | [actual_cubic_full_divisor_sum_eq_short_add_complement](../../../../../mathematics/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variantcbd58e1233927bab72a5bad0b21d3a3c6deb5b93fbd47b4e08a0adb0fa023630.lean/declarations/actual-cubic-full-divisor-sum-eq-short-add-complement--e485483a751839c42f606220.md) | 102 | `result-track:e485483a751839c42f606220454901071eb37ad82fe9b72486f0cb7e57402c82` |
| 9 | `theorem` | [actual_cubic_full_divisor_sum_abs_le_short_budget_add_complement](../../../../../mathematics/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variantcbd58e1233927bab72a5bad0b21d3a3c6deb5b93fbd47b4e08a0adb0fa023630.lean/declarations/actual-cubic-full-divisor-sum-abs-le-short-budget-add-complement--7e4a9637a780d55906c4a4a9.md) | 126 | `result-track:7e4a9637a780d55906c4a4a96d04f9c1df3ef803b13073b28d41b2103a7c9fa1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
