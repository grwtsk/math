# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EstimateLogSamplingIntegrals.Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1f83afc5ad9baf9645a93c0fbd44cdd9cef2484",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1f83afc5ad9baf9645a93c0fbd44cdd9cef2484`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean.json)

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
| 1 | `def` | [halfDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean/declarations/halfdensity--a87d789affcbcb45da259c54.md) | 36 | `declaration-track:a87d789affcbcb45da259c54faf0b21c05de52d3eacca58912718910dc7fa32a` |
| 2 | `def` | [logHalfDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean/declarations/loghalfdensity--21bfee7f21832e69504f7640.md) | 39 | `declaration-track:21bfee7f21832e69504f7640e84df0f6aec61703af3c4df188bb7fb0999068c4` |
| 3 | `theorem` | [exponential_half_mass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean/declarations/exponential-half-mass--5e73ca2c282b3941f51725c2.md) | 42 | `result-track:5e73ca2c282b3941f51725c2c3f0efc92eaf9ae697c40b6a7eef5b08d9eab915` |
| 4 | `theorem` | [exponential_half_first_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean/declarations/exponential-half-first-moment--91f09344dd3e8bde798d3e6f.md) | 50 | `result-track:91f09344dd3e8bde798d3e6f7949c84c1afcb06e05cf54ed41ce29eb567867e3` |
| 5 | `theorem` | [exp_mul_halfDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean/declarations/exp-mul-halfdensity--181ce6445b9db4ebb4a033c9.md) | 62 | `result-track:181ce6445b9db4ebb4a033c96063146513d9bbe5b37ba4ab954bce66bba2c1c6` |
| 6 | `theorem` | [exp_mul_logHalfDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean/declarations/exp-mul-loghalfdensity--71f7c15fbce39b31732dd67f.md) | 70 | `result-track:71f7c15fbce39b31732dd67fc6bb51c0509e3e7ac608b189cd1592f801e34994` |
| 7 | `theorem` | [halfDensity_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean/declarations/halfdensity-integral--80e99636beafa8d79141b882.md) | 81 | `result-track:80e99636beafa8d79141b8823c7b35d0a4fc0a0ec3df04dc0c60170e483d06d9` |
| 8 | `theorem` | [logHalfDensity_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean/declarations/loghalfdensity-integral--7d3366d43db1c408655e5e55.md) | 101 | `result-track:7d3366d43db1c408655e5e55fc78a1809f637d6fe70d14cd9993a5634fb4b6b9` |
| 9 | `theorem` | [halfDensity_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean/declarations/halfdensity-integrableon--0052fc1e56e7856939a69b7b.md) | 121 | `result-track:0052fc1e56e7856939a69b7bbf691a42803f9b0795d3b2c43684a2658c71bd0e` |
| 10 | `theorem` | [logHalfDensity_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean/declarations/loghalfdensity-integrableon--4b6ccbfe02f3bbfa966ee8ee.md) | 127 | `result-track:4b6ccbfe02f3bbfa966ee8ee37d8157abc2b14181e09359ec502805a42d82183` |
| 11 | `theorem` | [logSamplingDerivativeMajorant_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean/declarations/logsamplingderivativemajorant-eq--be4b9b7c2f40e44bfccce03f.md) | 133 | `result-track:be4b9b7c2f40e44bfccce03fbf123b6d099960317407a4277089590ff3802196` |
| 12 | `theorem` | [logSamplingDerivativeMajorant_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean/declarations/logsamplingderivativemajorant-integrableon--13085f347ccadc5fea73f482.md) | 143 | `result-track:13085f347ccadc5fea73f4823a8a8393f9d33a3239905e4a50d6912dd142e92e` |
| 13 | `theorem` | [logSamplingDerivativeMajorant_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean/declarations/logsamplingderivativemajorant-integral--a319f277c3ebd8c5ec09bc26.md) | 161 | `result-track:a319f277c3ebd8c5ec09bc26f9e54873c983d4eae24a034297353f6186e0cdeb` |
| 14 | `theorem` | [logSamplingDerivative_continuousOn_Ioi_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean/declarations/logsamplingderivative-continuouson-ioi-one--331b01471024b3b097087d24.md) | 183 | `result-track:331b01471024b3b097087d2493f76ae9fc24cd7a4b5ef2df44706b6e51912296` |
| 15 | `theorem` | [integral_abs_logSamplingDerivative_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean/declarations/integral-abs-logsamplingderivative-le--50c0b576327542f14090b32f.md) | 201 | `result-track:50c0b576327542f14090b32fc6dc3e042f4ddef878b1a60f538da11d10f249b6` |
| 16 | `def` | [LogSamplingIntegralCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean/declarations/logsamplingintegralcheckpoint--5aaa31157631a20ec7a37531.md) | 246 | `declaration-track:5aaa31157631a20ec7a375312e33a01c9c876a4e923fec48658458bf4f973eb2` |
| 17 | `theorem` | [log_sampling_integral_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant925236ad7f4fa5a1e8fd9e784d807c6f66c14726c3d32534d542b44557a3a3fb.lean/declarations/log-sampling-integral-checkpoint--c45a0233974d89afede1f79f.md) | 264 | `result-track:c45a0233974d89afede1f79f3cedf37f2b86ded219892117d09ba847f39e451b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
