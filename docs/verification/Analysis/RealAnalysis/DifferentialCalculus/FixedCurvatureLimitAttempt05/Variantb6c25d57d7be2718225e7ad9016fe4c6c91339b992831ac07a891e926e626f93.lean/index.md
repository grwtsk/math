# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedCurvatureLimitAttempt05.Variantb6c25d57d7be2718225e7ad9016fe4c6c91339b992831ac07a891e926e626f93

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14c1e1b2599c20928fa5ae59f4172a55d7fa8d5b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantb6c25d57d7be2718225e7ad9016fe4c6c91339b992831ac07a891e926e626f93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantb6c25d57d7be2718225e7ad9016fe4c6c91339b992831ac07a891e926e626f93.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantb6c25d57d7be2718225e7ad9016fe4c6c91339b992831ac07a891e926e626f93.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14c1e1b2599c20928fa5ae59f4172a55d7fa8d5b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantb6c25d57d7be2718225e7ad9016fe4c6c91339b992831ac07a891e926e626f93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantb6c25d57d7be2718225e7ad9016fe4c6c91339b992831ac07a891e926e626f93.lean.json)

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
| 1 | `theorem` | [correlation_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantb6c25d57d7be2718225e7ad9016fe4c6c91339b992831ac07a891e926e626f93.lean/declarations/correlation-deriv-fixed-tendsto--187fa92b84c19b1062f8c570.md) | 28 | `result-track:187fa92b84c19b1062f8c570c77031901962817636fecdea3d0a472743e990c8` |
| 2 | `theorem` | [correlation_second_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantb6c25d57d7be2718225e7ad9016fe4c6c91339b992831ac07a891e926e626f93.lean/declarations/correlation-second-deriv-fixed-tendsto--0d6f374672544e5e23edb4a1.md) | 37 | `result-track:0d6f374672544e5e23edb4a1204f1c6c939932e9d7f30f7665b7ac9274e02ea3` |
| 3 | `theorem` | [critical_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantb6c25d57d7be2718225e7ad9016fe4c6c91339b992831ac07a891e926e626f93.lean/declarations/critical-second-deriv--2022bec92cf306f9ac83b9ed.md) | 48 | `result-track:2022bec92cf306f9ac83b9ed77cd03421fb34b1564c2f4cccebef24cafac6a09` |
| 4 | `theorem` | [criticalPrimeTest_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantb6c25d57d7be2718225e7ad9016fe4c6c91339b992831ac07a891e926e626f93.lean/declarations/criticalprimetest-deriv-fixed-tendsto--0e427f0b001a3ace09293f3a.md) | 71 | `result-track:0e427f0b001a3ace09293f3a59e652c7112899f3acc1771c99b6ba3c2539f3f5` |
| 5 | `theorem` | [criticalPrimeTest_second_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantb6c25d57d7be2718225e7ad9016fe4c6c91339b992831ac07a891e926e626f93.lean/declarations/criticalprimetest-second-deriv-fixed-tendsto--c9baea91f2baf96b5c49455c.md) | 86 | `result-track:c9baea91f2baf96b5c49455c59f1d533fa14c626ce7c6e10a79164c8c33b37a2` |
| 6 | `theorem` | [criticalPrimeTest_deriv_eventually_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantb6c25d57d7be2718225e7ad9016fe4c6c91339b992831ac07a891e926e626f93.lean/declarations/criticalprimetest-deriv-eventually-pos--45ad437dbe9d5dc085386f57.md) | 102 | `result-track:45ad437dbe9d5dc085386f5735c411b240a3e94bce03bc8284080a99a0180197` |
| 7 | `theorem` | [paired_curvature_eq_neg_critical_of_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantb6c25d57d7be2718225e7ad9016fe4c6c91339b992831ac07a891e926e626f93.lean/declarations/paired-curvature-eq-neg-critical-of-positive--f922016654d78f703da2ea9d.md) | 109 | `result-track:f922016654d78f703da2ea9debb9ef2465dcec9777be08fc9c57a2a12c04e428` |
| 8 | `theorem` | [paired_curvature_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantb6c25d57d7be2718225e7ad9016fe4c6c91339b992831ac07a891e926e626f93.lean/declarations/paired-curvature-fixed-tendsto--e37af9430cddfb139f56b738.md) | 125 | `result-track:e37af9430cddfb139f56b7382fd135b356399fdf79b73a88292eb3bbe39d7db1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
