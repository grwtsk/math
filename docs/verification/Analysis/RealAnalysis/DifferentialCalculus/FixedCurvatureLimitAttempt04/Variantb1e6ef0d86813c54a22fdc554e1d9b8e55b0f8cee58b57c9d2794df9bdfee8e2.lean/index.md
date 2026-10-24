# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedCurvatureLimitAttempt04.Variantb1e6ef0d86813c54a22fdc554e1d9b8e55b0f8cee58b57c9d2794df9bdfee8e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8db3529f300e8e41bddd7538d88197ed999a807",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variantb1e6ef0d86813c54a22fdc554e1d9b8e55b0f8cee58b57c9d2794df9bdfee8e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variantb1e6ef0d86813c54a22fdc554e1d9b8e55b0f8cee58b57c9d2794df9bdfee8e2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variantb1e6ef0d86813c54a22fdc554e1d9b8e55b0f8cee58b57c9d2794df9bdfee8e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8db3529f300e8e41bddd7538d88197ed999a807`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variantb1e6ef0d86813c54a22fdc554e1d9b8e55b0f8cee58b57c9d2794df9bdfee8e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variantb1e6ef0d86813c54a22fdc554e1d9b8e55b0f8cee58b57c9d2794df9bdfee8e2.lean.json)

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
| 1 | `theorem` | [correlation_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variantb1e6ef0d86813c54a22fdc554e1d9b8e55b0f8cee58b57c9d2794df9bdfee8e2.lean/declarations/correlation-deriv-fixed-tendsto--edd69cf459d5dea1e8fedda4.md) | 28 | `result-track:edd69cf459d5dea1e8fedda439a59c9673791e78844f2ece5b3a57ff9734ba97` |
| 2 | `theorem` | [correlation_second_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variantb1e6ef0d86813c54a22fdc554e1d9b8e55b0f8cee58b57c9d2794df9bdfee8e2.lean/declarations/correlation-second-deriv-fixed-tendsto--e682c97af8dcd498e6e12dc8.md) | 37 | `result-track:e682c97af8dcd498e6e12dc86f15120fd90ac5cc99e9fcafb6b255145aaaf3ad` |
| 3 | `theorem` | [critical_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variantb1e6ef0d86813c54a22fdc554e1d9b8e55b0f8cee58b57c9d2794df9bdfee8e2.lean/declarations/critical-second-deriv--03dd97405e176a9a4123b2a1.md) | 48 | `result-track:03dd97405e176a9a4123b2a18c93ad2671c071f45e8f807688a28ef0c8602c8f` |
| 4 | `theorem` | [criticalPrimeTest_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variantb1e6ef0d86813c54a22fdc554e1d9b8e55b0f8cee58b57c9d2794df9bdfee8e2.lean/declarations/criticalprimetest-deriv-fixed-tendsto--66581dc2753ca36558042af8.md) | 71 | `result-track:66581dc2753ca36558042af8b7e69c009b18bfbc10dbd2ab4a6e6bccc22247d6` |
| 5 | `theorem` | [criticalPrimeTest_second_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variantb1e6ef0d86813c54a22fdc554e1d9b8e55b0f8cee58b57c9d2794df9bdfee8e2.lean/declarations/criticalprimetest-second-deriv-fixed-tendsto--bc858e4b6b4c71a0362fdbd0.md) | 86 | `result-track:bc858e4b6b4c71a0362fdbd0b1d43aba234312344a1c04739d1f50ddf0ed103a` |
| 6 | `theorem` | [criticalPrimeTest_deriv_eventually_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variantb1e6ef0d86813c54a22fdc554e1d9b8e55b0f8cee58b57c9d2794df9bdfee8e2.lean/declarations/criticalprimetest-deriv-eventually-pos--08ff4ddb8ccf956170e36e82.md) | 102 | `result-track:08ff4ddb8ccf956170e36e82f4172a6d0d84fe855d2cb2ba9cbc33960841f9c7` |
| 7 | `theorem` | [paired_curvature_eq_neg_critical_of_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variantb1e6ef0d86813c54a22fdc554e1d9b8e55b0f8cee58b57c9d2794df9bdfee8e2.lean/declarations/paired-curvature-eq-neg-critical-of-positive--e2c20d1e206a14fcb4884e50.md) | 109 | `result-track:e2c20d1e206a14fcb4884e50565c43b6af46c595a42c9c5074e5bf35430fcb26` |
| 8 | `theorem` | [paired_curvature_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variantb1e6ef0d86813c54a22fdc554e1d9b8e55b0f8cee58b57c9d2794df9bdfee8e2.lean/declarations/paired-curvature-fixed-tendsto--24e78f36a1db0bc798d32350.md) | 125 | `result-track:24e78f36a1db0bc798d32350b4d925521a45c1f6bf03cd87f99e1020f32c0440` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
