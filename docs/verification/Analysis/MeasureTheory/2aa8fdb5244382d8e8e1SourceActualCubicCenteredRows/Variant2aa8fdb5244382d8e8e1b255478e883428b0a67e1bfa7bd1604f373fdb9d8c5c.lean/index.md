# Verification target: GRWTSK.Analysis.MeasureTheory.2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows.Variant2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46c4a2060349d15af67f9afe1a273a728c8283f8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variant2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variant2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variant2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46c4a2060349d15af67f9afe1a273a728c8283f8`.

Source path: `GRWTSK/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variant2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variant2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCubicUpperLogMoments` — import line 1; external provider; requires a separately pinned dependency.
- `SourceCubicSamplingRemainder` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cubicLogModelDerivative_measurable](../../../../../mathematics/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variant2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c.lean/declarations/cubiclogmodelderivative-measurable--7d445bc7668fbb6ea20ec141.md) | 29 | `result-track:7d445bc7668fbb6ea20ec1410a5600f4cb2441cd913371ed88e020e7dd92c2d1` |
| 2 | `theorem` | [actual_cubic_log_derivative_error_le_majorant](../../../../../mathematics/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variant2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c.lean/declarations/actual-cubic-log-derivative-error-le-majorant--6e01558b5b058242dd6a1c11.md) | 43 | `result-track:6e01558b5b058242dd6a1c110dd5235ebb58e7e50c567d3bc87240197255471a` |
| 3 | `theorem` | [actual_cubic_log_derivative_error_integrable](../../../../../mathematics/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variant2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c.lean/declarations/actual-cubic-log-derivative-error-integrable--e037421b9becbcd1d1f84d03.md) | 53 | `result-track:e037421b9becbcd1d1f84d03eb6bf3880ac339f157f813e97e853eb41155ab04` |
| 4 | `def` | [cubicCenteredLogErrorRow](../../../../../mathematics/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variant2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c.lean/declarations/cubiccenteredlogerrorrow--6463bc4b6b42dfa7d17f46de.md) | 64 | `declaration-track:6463bc4b6b42dfa7d17f46de23d147beb1658429b57004adc8242a2d659c5b27` |
| 5 | `theorem` | [actual_cubic_centered_row_integrable](../../../../../mathematics/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variant2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c.lean/declarations/actual-cubic-centered-row-integrable--18c29affbad03a31e14f2fa0.md) | 68 | `result-track:18c29affbad03a31e14f2fa0d68fab438315720fd5084ebaee45d1948433dc13` |
| 6 | `theorem` | [actual_cubic_centered_row_abs_le](../../../../../mathematics/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variant2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c.lean/declarations/actual-cubic-centered-row-abs-le--debfeac582c3561d908eb81d.md) | 76 | `result-track:debfeac582c3561d908eb81d7b5b774d25612e57c9204c9e3788b98081d227f9` |
| 7 | `theorem` | [actual_cubic_short_divisor_sum_abs_le](../../../../../mathematics/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variant2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c.lean/declarations/actual-cubic-short-divisor-sum-abs-le--36a3da567850cf9ddb8b10b0.md) | 83 | `result-track:36a3da567850cf9ddb8b10b023863d51b79abc253cce9fc978bc196e11ffb89b` |
| 8 | `theorem` | [actual_cubic_full_divisor_sum_eq_short_add_complement](../../../../../mathematics/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variant2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c.lean/declarations/actual-cubic-full-divisor-sum-eq-short-add-complement--7d7ea1a79d49b1feed3174d5.md) | 94 | `result-track:7d7ea1a79d49b1feed3174d5419d699c1be4d7a8f06b254d45b538f2bd24ef77` |
| 9 | `theorem` | [actual_cubic_full_divisor_sum_abs_le_short_budget_add_complement](../../../../../mathematics/Analysis/MeasureTheory/2aa8fdb5244382d8e8e1SourceActualCubicCenteredRows/Variant2aa8fdb5244382d8e8e1b255478e883428b0a67e1bfa7bd1604f373fdb9d8c5c.lean/declarations/actual-cubic-full-divisor-sum-abs-le-short-budget-add-complement--d8bb1815ca2b6b8e46727d7a.md) | 118 | `result-track:d8bb1815ca2b6b8e46727d7a8606d0e36ca5b5580c8f63ce24de5f253b78ba3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
