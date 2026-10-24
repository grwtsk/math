# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EstimateLogSamplingIntegrals.Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "863df8875532dc674778c02d469904cff6fe8bd2",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `863df8875532dc674778c02d469904cff6fe8bd2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSampling` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean/declarations/halfdensity--5db1c680465ad17a2ca4fcac.md) | 38 | `declaration-track:5db1c680465ad17a2ca4fcac957ab67e03f4b1698223ed2b559a77f22327a552` |
| 2 | `def` | [logHalfDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean/declarations/loghalfdensity--9b96eb3cc829a1da09be8a65.md) | 42 | `declaration-track:9b96eb3cc829a1da09be8a659a94bb51c413b89b86a2952b05d2998860e2b1d6` |
| 3 | `theorem` | [exponential_half_mass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean/declarations/exponential-half-mass--39b963607d7b0115b5cbb2a2.md) | 45 | `result-track:39b963607d7b0115b5cbb2a255a0dcc1520591e900d304aeb4bb7cda8df407dd` |
| 4 | `theorem` | [exponential_half_first_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean/declarations/exponential-half-first-moment--418ad385a59013db9025243e.md) | 53 | `result-track:418ad385a59013db9025243eba8f7bd135b526cd62a678cd2136b665ebb35cc1` |
| 5 | `theorem` | [exp_mul_halfDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean/declarations/exp-mul-halfdensity--b9cf5b8cdce7ab2485a2230b.md) | 66 | `result-track:b9cf5b8cdce7ab2485a2230b43ba283f3036d15884e2d8f190cec9c6658bbe27` |
| 6 | `theorem` | [exp_mul_logHalfDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean/declarations/exp-mul-loghalfdensity--dd5bab22d6a8159d3d7b4dd6.md) | 73 | `result-track:dd5bab22d6a8159d3d7b4dd6b0a96704e371e22148040f5ab7b72b7def1c6f0e` |
| 7 | `theorem` | [halfDensity_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean/declarations/halfdensity-integral--b8f3b264269ab635d25a37bc.md) | 84 | `result-track:b8f3b264269ab635d25a37bc1910665744919b187722c723d00b60fb1c1824d9` |
| 8 | `theorem` | [logHalfDensity_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean/declarations/loghalfdensity-integral--13ba4f21e4c7db0c9319ace9.md) | 104 | `result-track:13ba4f21e4c7db0c9319ace92a023d13cf19c247429e93c6d19267a12992a713` |
| 9 | `theorem` | [halfDensity_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean/declarations/halfdensity-integrableon--717883b4cd5a0b284fcfe538.md) | 124 | `result-track:717883b4cd5a0b284fcfe538b38f6a2a31af15ca25ae5612c6a1ec55afc39de4` |
| 10 | `theorem` | [logHalfDensity_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean/declarations/loghalfdensity-integrableon--e522a23c6fd0ccaf1dacac89.md) | 130 | `result-track:e522a23c6fd0ccaf1dacac89de123f99bf639f52b68f0da842753e3604cd24f6` |
| 11 | `theorem` | [logSamplingDerivativeMajorant_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean/declarations/logsamplingderivativemajorant-eq--a8b0491c287bf0fea8f32ad8.md) | 136 | `result-track:a8b0491c287bf0fea8f32ad864f74b682e25ae94a2d534dc9161511ba6e3ef86` |
| 12 | `theorem` | [logSamplingDerivativeMajorant_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean/declarations/logsamplingderivativemajorant-integrableon--d274a54bc6ea0805df1f7c55.md) | 146 | `result-track:d274a54bc6ea0805df1f7c556abf76a11d605e1c08518f0904d3a22aadb7ce9b` |
| 13 | `theorem` | [logSamplingDerivativeMajorant_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean/declarations/logsamplingderivativemajorant-integral--76111dcd9323511061ac29a7.md) | 163 | `result-track:76111dcd9323511061ac29a75e95206fe0d2dcd338fccb790160cc7c53555b2a` |
| 14 | `theorem` | [logSamplingDerivative_continuousOn_Ioi_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean/declarations/logsamplingderivative-continuouson-ioi-one--eab7eb4bf1a42744e2b09e19.md) | 185 | `result-track:eab7eb4bf1a42744e2b09e19934daf518fc1b4120b949b842cbf3a56e86c1b56` |
| 15 | `theorem` | [integral_abs_logSamplingDerivative_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean/declarations/integral-abs-logsamplingderivative-le--abc2c313cef19299a6c2b04a.md) | 202 | `result-track:abc2c313cef19299a6c2b04a8e09e444eece484bbe536ab7161b2e2c02d8be85` |
| 16 | `def` | [LogSamplingIntegralCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean/declarations/logsamplingintegralcheckpoint--2955ea4036ef62a4a4b8c019.md) | 249 | `declaration-track:2955ea4036ef62a4a4b8c019a93666d0bf992208fb1252d790d47d1b7dc1b59b` |
| 17 | `theorem` | [log_sampling_integral_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant8aeab17314fab33d02d29edeea62e45bde4ba510ed5270f4f3a2904f3e0f4338.lean/declarations/log-sampling-integral-checkpoint--40595bfdff655b6a722a1ff7.md) | 267 | `result-track:40595bfdff655b6a722a1ff79a80d07c61c751a7e980a29bf4445594cf020707` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
