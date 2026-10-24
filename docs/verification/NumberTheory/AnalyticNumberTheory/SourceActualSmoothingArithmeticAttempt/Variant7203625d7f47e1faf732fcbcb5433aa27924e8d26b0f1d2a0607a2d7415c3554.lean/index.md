# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceActualSmoothingArithmeticAttempt.Variant7203625d7f47e1faf732fcbcb5433aa27924e8d26b0f1d2a0607a2d7415c3554

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5cadc507e88165965924aa6c7b51c2e3f36f80c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant7203625d7f47e1faf732fcbcb5433aa27924e8d26b0f1d2a0607a2d7415c3554.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant7203625d7f47e1faf732fcbcb5433aa27924e8d26b0f1d2a0607a2d7415c3554.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant7203625d7f47e1faf732fcbcb5433aa27924e8d26b0f1d2a0607a2d7415c3554.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5cadc507e88165965924aa6c7b51c2e3f36f80c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant7203625d7f47e1faf732fcbcb5433aa27924e8d26b0f1d2a0607a2d7415c3554.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant7203625d7f47e1faf732fcbcb5433aa27924e8d26b0f1d2a0607a2d7415c3554.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualClosedXiSignedMoment` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualSmoothingCompanion](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant7203625d7f47e1faf732fcbcb5433aa27924e8d26b0f1d2a0607a2d7415c3554.lean/declarations/actualsmoothingcompanion--86d34fdb2635bdc0cc8911eb.md) | 29 | `declaration-track:86d34fdb2635bdc0cc8911eb53abf7025ec0d89bda23b7145206c80ed59e29dc` |
| 2 | `theorem` | [actual_gamma_boundary_bounds](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant7203625d7f47e1faf732fcbcb5433aa27924e8d26b0f1d2a0607a2d7415c3554.lean/declarations/actual-gamma-boundary-bounds--f6023c329c9517550a2f0672.md) | 34 | `result-track:f6023c329c9517550a2f0672d6371fa4864ab3eb35c43537560bc7f3721a6b71` |
| 3 | `theorem` | [actual_moment_eq_residual_add_companion](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant7203625d7f47e1faf732fcbcb5433aa27924e8d26b0f1d2a0607a2d7415c3554.lean/declarations/actual-moment-eq-residual-add-companion--60dfef3b66543685649e2894.md) | 66 | `result-track:60dfef3b66543685649e289403bfa425b74d27789083014c6516d16ae4259e45` |
| 4 | `theorem` | [actual_moment_eq_boundary_sub_Mangoldt_work](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant7203625d7f47e1faf732fcbcb5433aa27924e8d26b0f1d2a0607a2d7415c3554.lean/declarations/actual-moment-eq-boundary-sub-mangoldt-work--8dd9922ccbc5e8d8f422a7de.md) | 79 | `result-track:8dd9922ccbc5e8d8f422a7dea61eacb1ffe502abe59a415321235418dfcaf086` |
| 5 | `theorem` | [actual_smoothing_companion_bounds](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant7203625d7f47e1faf732fcbcb5433aa27924e8d26b0f1d2a0607a2d7415c3554.lean/declarations/actual-smoothing-companion-bounds--2279f8b8b884a621941e3db0.md) | 89 | `result-track:2279f8b8b884a621941e3db0a94a656fbf4d2e1385b747a0373d712af23a943f` |
| 6 | `theorem` | [actual_moment_residual_comparison](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant7203625d7f47e1faf732fcbcb5433aa27924e8d26b0f1d2a0607a2d7415c3554.lean/declarations/actual-moment-residual-comparison--4af387d1f7afc1243a9bd953.md) | 102 | `result-track:4af387d1f7afc1243a9bd95324509fab4804d83f0b7bcc759734050ba41f11e3` |
| 7 | `def` | [actualCenteredMangoldtWork](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant7203625d7f47e1faf732fcbcb5433aa27924e8d26b0f1d2a0607a2d7415c3554.lean/declarations/actualcenteredmangoldtwork--31a1f34f09c245213f819b21.md) | 112 | `declaration-track:31a1f34f09c245213f819b21a0ef76e733d7af0b36fa86802cbc662cd4fbee32` |
| 8 | `theorem` | [actual_moment_eq_neg_centered_Mangoldt_work](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant7203625d7f47e1faf732fcbcb5433aa27924e8d26b0f1d2a0607a2d7415c3554.lean/declarations/actual-moment-eq-neg-centered-mangoldt-work--8c723cc0793462d3793121f9.md) | 117 | `result-track:8c723cc0793462d3793121f9b510756450c2756519d19e2502a3fa930c5f3baf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
