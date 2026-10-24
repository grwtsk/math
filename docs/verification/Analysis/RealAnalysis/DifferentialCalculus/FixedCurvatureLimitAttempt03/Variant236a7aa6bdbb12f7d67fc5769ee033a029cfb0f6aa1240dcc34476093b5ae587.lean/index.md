# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedCurvatureLimitAttempt03.Variant236a7aa6bdbb12f7d67fc5769ee033a029cfb0f6aa1240dcc34476093b5ae587

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c9cd2335ac8a3acb11e1463667e97a56dcd2c9c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variant236a7aa6bdbb12f7d67fc5769ee033a029cfb0f6aa1240dcc34476093b5ae587.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variant236a7aa6bdbb12f7d67fc5769ee033a029cfb0f6aa1240dcc34476093b5ae587.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variant236a7aa6bdbb12f7d67fc5769ee033a029cfb0f6aa1240dcc34476093b5ae587.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c9cd2335ac8a3acb11e1463667e97a56dcd2c9c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variant236a7aa6bdbb12f7d67fc5769ee033a029cfb0f6aa1240dcc34476093b5ae587.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variant236a7aa6bdbb12f7d67fc5769ee033a029cfb0f6aa1240dcc34476093b5ae587.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalSecondAbel` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtNorm` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [correlation_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variant236a7aa6bdbb12f7d67fc5769ee033a029cfb0f6aa1240dcc34476093b5ae587.lean/declarations/correlation-deriv-fixed-tendsto--f570c314cd3734999501fcb1.md) | 20 | `result-track:f570c314cd3734999501fcb16ddb3bb281e7f6c955f0c2d760396757fed2f535` |
| 2 | `theorem` | [correlation_second_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variant236a7aa6bdbb12f7d67fc5769ee033a029cfb0f6aa1240dcc34476093b5ae587.lean/declarations/correlation-second-deriv-fixed-tendsto--ac3389980cb26312e07501f1.md) | 29 | `result-track:ac3389980cb26312e07501f12388e9c4853e85697e4f0cd8668aa8a43c3acb31` |
| 3 | `theorem` | [critical_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variant236a7aa6bdbb12f7d67fc5769ee033a029cfb0f6aa1240dcc34476093b5ae587.lean/declarations/critical-second-deriv--4d82f1d4d56adee4ba1e20bc.md) | 40 | `result-track:4d82f1d4d56adee4ba1e20bc61fbe1217378d938858dfce64762c079e71dee3d` |
| 4 | `theorem` | [criticalPrimeTest_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variant236a7aa6bdbb12f7d67fc5769ee033a029cfb0f6aa1240dcc34476093b5ae587.lean/declarations/criticalprimetest-deriv-fixed-tendsto--35abcb9f37ff1b27c2fcf01a.md) | 63 | `result-track:35abcb9f37ff1b27c2fcf01a1bac3726a36495a03c82cc6ab432cf4ee344282c` |
| 5 | `theorem` | [criticalPrimeTest_second_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variant236a7aa6bdbb12f7d67fc5769ee033a029cfb0f6aa1240dcc34476093b5ae587.lean/declarations/criticalprimetest-second-deriv-fixed-tendsto--76b97d7f354f85303cc58e4a.md) | 78 | `result-track:76b97d7f354f85303cc58e4ae43052b5b86b9187cb8be46f72e8fb42e823c989` |
| 6 | `theorem` | [criticalPrimeTest_deriv_eventually_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variant236a7aa6bdbb12f7d67fc5769ee033a029cfb0f6aa1240dcc34476093b5ae587.lean/declarations/criticalprimetest-deriv-eventually-pos--4abcfe0d59880e5ac41d040f.md) | 94 | `result-track:4abcfe0d59880e5ac41d040f157869fb3ed370b8fe33ec33659dfaed97659009` |
| 7 | `theorem` | [paired_curvature_eq_neg_critical_of_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variant236a7aa6bdbb12f7d67fc5769ee033a029cfb0f6aa1240dcc34476093b5ae587.lean/declarations/paired-curvature-eq-neg-critical-of-positive--3a00aa37d1ec80aaa2b1c2b8.md) | 101 | `result-track:3a00aa37d1ec80aaa2b1c2b8136bbc8d685a81ae8d390625e24b0fe6dbb23063` |
| 8 | `theorem` | [paired_curvature_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variant236a7aa6bdbb12f7d67fc5769ee033a029cfb0f6aa1240dcc34476093b5ae587.lean/declarations/paired-curvature-fixed-tendsto--9d53b38cef88dd0c6aff03b7.md) | 117 | `result-track:9d53b38cef88dd0c6aff03b7debfb94044b3521061f61581e0f8b366a2fe0de0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
