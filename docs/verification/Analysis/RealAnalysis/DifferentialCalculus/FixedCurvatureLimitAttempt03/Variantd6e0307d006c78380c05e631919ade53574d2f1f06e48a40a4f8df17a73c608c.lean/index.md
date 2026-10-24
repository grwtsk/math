# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedCurvatureLimitAttempt03.Variantd6e0307d006c78380c05e631919ade53574d2f1f06e48a40a4f8df17a73c608c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b3330556ae43193d5900c134af75a2c098f3297",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variantd6e0307d006c78380c05e631919ade53574d2f1f06e48a40a4f8df17a73c608c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variantd6e0307d006c78380c05e631919ade53574d2f1f06e48a40a4f8df17a73c608c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variantd6e0307d006c78380c05e631919ade53574d2f1f06e48a40a4f8df17a73c608c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b3330556ae43193d5900c134af75a2c098f3297`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variantd6e0307d006c78380c05e631919ade53574d2f1f06e48a40a4f8df17a73c608c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variantd6e0307d006c78380c05e631919ade53574d2f1f06e48a40a4f8df17a73c608c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalSecondAbel` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtNorm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [correlation_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variantd6e0307d006c78380c05e631919ade53574d2f1f06e48a40a4f8df17a73c608c.lean/declarations/correlation-deriv-fixed-tendsto--146b86a1593262514e9b814b.md) | 28 | `result-track:146b86a1593262514e9b814bc5d958918bb891622a858dfb4e72e6171094862f` |
| 2 | `theorem` | [correlation_second_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variantd6e0307d006c78380c05e631919ade53574d2f1f06e48a40a4f8df17a73c608c.lean/declarations/correlation-second-deriv-fixed-tendsto--3f6f49dee36e07440522da53.md) | 37 | `result-track:3f6f49dee36e07440522da5336434161044ef53c4b541849c137d0ae4fbbc80c` |
| 3 | `theorem` | [critical_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variantd6e0307d006c78380c05e631919ade53574d2f1f06e48a40a4f8df17a73c608c.lean/declarations/critical-second-deriv--f5c22a44583b90725301f82b.md) | 48 | `result-track:f5c22a44583b90725301f82ba7ffe248629e24da0f6d9f2b7ad103c499eb5e28` |
| 4 | `theorem` | [criticalPrimeTest_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variantd6e0307d006c78380c05e631919ade53574d2f1f06e48a40a4f8df17a73c608c.lean/declarations/criticalprimetest-deriv-fixed-tendsto--a105045972ee7da21ee20841.md) | 71 | `result-track:a105045972ee7da21ee208417c6b91e471c337af89989932087f781544bb07f5` |
| 5 | `theorem` | [criticalPrimeTest_second_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variantd6e0307d006c78380c05e631919ade53574d2f1f06e48a40a4f8df17a73c608c.lean/declarations/criticalprimetest-second-deriv-fixed-tendsto--71b65b16b7b1554a6dafe9cf.md) | 86 | `result-track:71b65b16b7b1554a6dafe9cff254c84a7295538fb7517e59ad11e48a13860e2d` |
| 6 | `theorem` | [criticalPrimeTest_deriv_eventually_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variantd6e0307d006c78380c05e631919ade53574d2f1f06e48a40a4f8df17a73c608c.lean/declarations/criticalprimetest-deriv-eventually-pos--6efbd8ca85d3001ed61215d8.md) | 102 | `result-track:6efbd8ca85d3001ed61215d8b4c24cf65e4dca3b057a39edd34dad6d578cfd69` |
| 7 | `theorem` | [paired_curvature_eq_neg_critical_of_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variantd6e0307d006c78380c05e631919ade53574d2f1f06e48a40a4f8df17a73c608c.lean/declarations/paired-curvature-eq-neg-critical-of-positive--bb84c55c0d52e2673bc17449.md) | 109 | `result-track:bb84c55c0d52e2673bc1744987d01222843c90aa8e8f6ef8b0a241bbef77ebf0` |
| 8 | `theorem` | [paired_curvature_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variantd6e0307d006c78380c05e631919ade53574d2f1f06e48a40a4f8df17a73c608c.lean/declarations/paired-curvature-fixed-tendsto--2d40f6346e1e74bbe5188e96.md) | 125 | `result-track:2d40f6346e1e74bbe5188e96060d57fd2251996caf774059ae1c091e3ca469d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
