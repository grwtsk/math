# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl.Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c7b4cd04c51b8e46062599a379f6c6613880cf1",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c7b4cd04c51b8e46062599a379f6c6613880cf1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSampling` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/declarations/halfdensity--cee3eb29a96192b36e426ba7.md) | 29 | `declaration-track:cee3eb29a96192b36e426ba72116e5b654454d54ac8ebefa5fe2ab1e463b423c` |
| 2 | `def` | [logHalfDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/declarations/loghalfdensity--b75e591e5e9c1d23ec1fc61a.md) | 32 | `declaration-track:b75e591e5e9c1d23ec1fc61a1dbe76e3be2b00d53a679fd7bf1d35ca5fc702b5` |
| 3 | `theorem` | [exponential_half_mass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/declarations/exponential-half-mass--ae5fe874bb359c4eb4576735.md) | 35 | `result-track:ae5fe874bb359c4eb4576735eb7ca61a5de9ebda0952943b74a6363cfd6133af` |
| 4 | `theorem` | [exponential_half_first_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/declarations/exponential-half-first-moment--9bca02e24967ee7c201a946f.md) | 43 | `result-track:9bca02e24967ee7c201a946f4857a545eaae63e3a1bc6bf67339f5990e267afc` |
| 5 | `theorem` | [exp_mul_halfDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/declarations/exp-mul-halfdensity--ab4267d5486b43660c3f6373.md) | 56 | `result-track:ab4267d5486b43660c3f637303ca349dba4aa163ef7ca646efce4f2e9f5791ea` |
| 6 | `theorem` | [exp_mul_logHalfDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/declarations/exp-mul-loghalfdensity--b724c7f267806d86b0c53e9e.md) | 63 | `result-track:b724c7f267806d86b0c53e9ef0d3a084c520dcb913742a03bd7da95de4a809fb` |
| 7 | `theorem` | [halfDensity_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/declarations/halfdensity-integral--e0fe2dfe99cd915c45dd0563.md) | 74 | `result-track:e0fe2dfe99cd915c45dd05637d1307aab25a9601442b7ec34b0df6d800c8b549` |
| 8 | `theorem` | [logHalfDensity_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/declarations/loghalfdensity-integral--1dd224ec67fe756ce945402c.md) | 94 | `result-track:1dd224ec67fe756ce945402c148aeb38954c324d496326ab608ffccdf9b37497` |
| 9 | `theorem` | [halfDensity_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/declarations/halfdensity-integrableon--4e59639744124421c35c89b2.md) | 114 | `result-track:4e59639744124421c35c89b285fc957dbc903ce577ab5337c22571acb285301a` |
| 10 | `theorem` | [logHalfDensity_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/declarations/loghalfdensity-integrableon--c3a4da1845632db2f0b1f745.md) | 120 | `result-track:c3a4da1845632db2f0b1f74586a44ce0103d1b857f1fb42c07265a4158d5d209` |
| 11 | `theorem` | [logSamplingDerivativeMajorant_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/declarations/logsamplingderivativemajorant-eq--f1f34dd57fdd411a7efdfff6.md) | 126 | `result-track:f1f34dd57fdd411a7efdfff67f382df90189a8571844ffd948113ce9383bc959` |
| 12 | `theorem` | [logSamplingDerivativeMajorant_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/declarations/logsamplingderivativemajorant-integrableon--b3fac9766368cc788137b76c.md) | 136 | `result-track:b3fac9766368cc788137b76c548c5c0be6b7b094703c38f42d3ab3e20dafe9aa` |
| 13 | `theorem` | [logSamplingDerivativeMajorant_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/declarations/logsamplingderivativemajorant-integral--33593f5b4cf21ce4adf2021a.md) | 153 | `result-track:33593f5b4cf21ce4adf2021aab79d222021e080e49e49fcda602bdcc1b19332f` |
| 14 | `theorem` | [logSamplingDerivative_continuousOn_Ioi_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/declarations/logsamplingderivative-continuouson-ioi-one--0f9fd568ffafa22fa7b19d29.md) | 175 | `result-track:0f9fd568ffafa22fa7b19d29194cfed9c4f5da60539d49fa0fcae6e2e8268bc7` |
| 15 | `theorem` | [integral_abs_logSamplingDerivative_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/declarations/integral-abs-logsamplingderivative-le--b8b5c4302544c6e017c86630.md) | 192 | `result-track:b8b5c4302544c6e017c86630b1a824a76a8557153cb0b300835c421d1f8f6f39` |
| 16 | `def` | [LogSamplingIntegralCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/declarations/logsamplingintegralcheckpoint--31240afab07f704b590b2ad6.md) | 237 | `declaration-track:31240afab07f704b590b2ad6873cb2b9bca96999ac7b12e4e39341e12f159d48` |
| 17 | `theorem` | [log_sampling_integral_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75bEstimateLogSampl/Variant709ff12f92fb2600503cdf66f32cfcbf8b291a7a4971faec6785c1d60cfee75b.lean/declarations/log-sampling-integral-checkpoint--b549bbe3e3a658fce03f7276.md) | 255 | `result-track:b549bbe3e3a658fce03f7276ff6003866950b3cce1fc23a82f37aefdb3291500` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
