# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedCurvatureLimitAttempt02.Variant5c43aa253f6ee0791df83659a3b973abbb20a99b8c0d26a477c44aab19d66185

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a97d3e521564e4ddb60b3807b25d4aa0cd936c4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant5c43aa253f6ee0791df83659a3b973abbb20a99b8c0d26a477c44aab19d66185.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant5c43aa253f6ee0791df83659a3b973abbb20a99b8c0d26a477c44aab19d66185.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant5c43aa253f6ee0791df83659a3b973abbb20a99b8c0d26a477c44aab19d66185.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a97d3e521564e4ddb60b3807b25d4aa0cd936c4`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant5c43aa253f6ee0791df83659a3b973abbb20a99b8c0d26a477c44aab19d66185.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant5c43aa253f6ee0791df83659a3b973abbb20a99b8c0d26a477c44aab19d66185.lean.json)

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
| 1 | `theorem` | [correlation_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant5c43aa253f6ee0791df83659a3b973abbb20a99b8c0d26a477c44aab19d66185.lean/declarations/correlation-deriv-fixed-tendsto--41ad6d466631544a9d08fc00.md) | 28 | `result-track:41ad6d466631544a9d08fc008bba43506f316fbdce37b34b788f9394bfafd345` |
| 2 | `theorem` | [correlation_second_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant5c43aa253f6ee0791df83659a3b973abbb20a99b8c0d26a477c44aab19d66185.lean/declarations/correlation-second-deriv-fixed-tendsto--2d5aaaf6f0ef6c1031f48035.md) | 37 | `result-track:2d5aaaf6f0ef6c1031f4803533ca5e882f7936264ec5d6bea5b4dbb8f9f96429` |
| 3 | `theorem` | [critical_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant5c43aa253f6ee0791df83659a3b973abbb20a99b8c0d26a477c44aab19d66185.lean/declarations/critical-second-deriv--4673aee62b75afde2621ee70.md) | 47 | `result-track:4673aee62b75afde2621ee702b028d0cbec2bfc6911993f6fb86d693f9fe2547` |
| 4 | `theorem` | [criticalPrimeTest_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant5c43aa253f6ee0791df83659a3b973abbb20a99b8c0d26a477c44aab19d66185.lean/declarations/criticalprimetest-deriv-fixed-tendsto--f64237118725d132e5d46fb3.md) | 70 | `result-track:f64237118725d132e5d46fb324fa16b7b260619db922715d25a669510d487a9f` |
| 5 | `theorem` | [criticalPrimeTest_second_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant5c43aa253f6ee0791df83659a3b973abbb20a99b8c0d26a477c44aab19d66185.lean/declarations/criticalprimetest-second-deriv-fixed-tendsto--0e0bb5d6ae5c2f6e1ba9e5c6.md) | 86 | `result-track:0e0bb5d6ae5c2f6e1ba9e5c6066d9b9ac997061836c50ce09b99e7b88b0870e1` |
| 6 | `theorem` | [criticalPrimeTest_deriv_eventually_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant5c43aa253f6ee0791df83659a3b973abbb20a99b8c0d26a477c44aab19d66185.lean/declarations/criticalprimetest-deriv-eventually-pos--86598f0ff484e21262b26b9a.md) | 103 | `result-track:86598f0ff484e21262b26b9a67b65feaab18b6f8afbf49f0265df161050b22b0` |
| 7 | `theorem` | [paired_curvature_eq_neg_critical_of_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant5c43aa253f6ee0791df83659a3b973abbb20a99b8c0d26a477c44aab19d66185.lean/declarations/paired-curvature-eq-neg-critical-of-positive--025823cd4ff9e8e4c8dbdf38.md) | 110 | `result-track:025823cd4ff9e8e4c8dbdf38ad7238c6aeb335b40862d4681a529a4581adb478` |
| 8 | `theorem` | [paired_curvature_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant5c43aa253f6ee0791df83659a3b973abbb20a99b8c0d26a477c44aab19d66185.lean/declarations/paired-curvature-fixed-tendsto--3c896df617ff0960df17d502.md) | 126 | `result-track:3c896df617ff0960df17d502bf1a65a435330a463a0bad4d2b6c5b161e859ce8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
