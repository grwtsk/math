# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EstimateLogSamplingIntegrals.Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b08291b5be2bd6a3622f40b779d745cb4aacb5b3",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b08291b5be2bd6a3622f40b779d745cb4aacb5b3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean.json)

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
| 1 | `def` | [halfDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean/declarations/halfdensity--65edc3737a810ec12e5a684d.md) | 30 | `declaration-track:65edc3737a810ec12e5a684d584ea930a2e0f1e3a1e99f86edbafb41a3ea9209` |
| 2 | `def` | [logHalfDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean/declarations/loghalfdensity--95c2fd878a1cb929e96f9c7d.md) | 34 | `declaration-track:95c2fd878a1cb929e96f9c7dd1b38f13343c6ee8427edcf21438044dca5062be` |
| 3 | `theorem` | [exponential_half_mass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean/declarations/exponential-half-mass--1f8ddc0c66a1f280c400b471.md) | 37 | `result-track:1f8ddc0c66a1f280c400b471fb9d7acb4f837d67f658a3b9ae69a2e5d167eebd` |
| 4 | `theorem` | [exponential_half_first_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean/declarations/exponential-half-first-moment--8bd9ba75abe7dd5a045bec73.md) | 45 | `result-track:8bd9ba75abe7dd5a045bec736300c3aabdffe4ee38dc3e53d4342e76342a2b37` |
| 5 | `theorem` | [exp_mul_halfDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean/declarations/exp-mul-halfdensity--faab7e87cefab5e659fece61.md) | 58 | `result-track:faab7e87cefab5e659fece614517324dff65348f9bf1299604e32b66d067477a` |
| 6 | `theorem` | [exp_mul_logHalfDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean/declarations/exp-mul-loghalfdensity--8aaf0f189291f6b0dd1973e9.md) | 65 | `result-track:8aaf0f189291f6b0dd1973e9c974c26ac02fbb4dc0e6a32f1e31f511c182559d` |
| 7 | `theorem` | [halfDensity_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean/declarations/halfdensity-integral--26ebea9bc3bb7715268d2d7c.md) | 76 | `result-track:26ebea9bc3bb7715268d2d7c37c7354cd94acb8c1535a7d63c7e6a51f856bed4` |
| 8 | `theorem` | [logHalfDensity_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean/declarations/loghalfdensity-integral--692576cd6be7bd2fa3fd5e70.md) | 96 | `result-track:692576cd6be7bd2fa3fd5e70180e078d64ccb7987a97076f732cf5af116bed17` |
| 9 | `theorem` | [halfDensity_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean/declarations/halfdensity-integrableon--e0928ca9b6d1540927ec48df.md) | 116 | `result-track:e0928ca9b6d1540927ec48df3c4d5d1e3e33e235a6db549ac5de3e43ee270540` |
| 10 | `theorem` | [logHalfDensity_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean/declarations/loghalfdensity-integrableon--127679f12ec10049e9656c37.md) | 122 | `result-track:127679f12ec10049e9656c370bfd19c1fe820fe91ae8a8b7d74c3488899b763b` |
| 11 | `theorem` | [logSamplingDerivativeMajorant_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean/declarations/logsamplingderivativemajorant-eq--45988cd2c5e86ea75abb8715.md) | 128 | `result-track:45988cd2c5e86ea75abb871515860a8f2feccb4feefe68cfafa628f5f4b7aa68` |
| 12 | `theorem` | [logSamplingDerivativeMajorant_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean/declarations/logsamplingderivativemajorant-integrableon--b942afe2e6eb3939e524c5f2.md) | 138 | `result-track:b942afe2e6eb3939e524c5f262e7e3d8500e7c50f2ab6d7a7522dc9840c4f790` |
| 13 | `theorem` | [logSamplingDerivativeMajorant_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean/declarations/logsamplingderivativemajorant-integral--f234688e2b8fcf700f7faff1.md) | 155 | `result-track:f234688e2b8fcf700f7faff15e823c088b5c19a0048dc5a70b5efca80b9bb9a6` |
| 14 | `theorem` | [logSamplingDerivative_continuousOn_Ioi_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean/declarations/logsamplingderivative-continuouson-ioi-one--2a0cb64647bd706ff0791a98.md) | 177 | `result-track:2a0cb64647bd706ff0791a98dc2e2bae80821a542b740693e7d22bd968d15121` |
| 15 | `theorem` | [integral_abs_logSamplingDerivative_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean/declarations/integral-abs-logsamplingderivative-le--3a9edf02a259c48b6fb5b055.md) | 194 | `result-track:3a9edf02a259c48b6fb5b055f00a1f8cb96927533bcddc0c90f2e9d441b6418b` |
| 16 | `def` | [LogSamplingIntegralCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean/declarations/logsamplingintegralcheckpoint--8ee39fff4334a0ac3ddcf3ce.md) | 241 | `declaration-track:8ee39fff4334a0ac3ddcf3ceb83c6b7f9b981c173984dad7e17d5241d9c8cfb4` |
| 17 | `theorem` | [log_sampling_integral_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant3dfa69511513cd0dbcd2eae0a97084200d48d36ea1d22f6079cf3d1b36dee563.lean/declarations/log-sampling-integral-checkpoint--1f4b765a0c6f4725b937ffb5.md) | 259 | `result-track:1f4b765a0c6f4725b937ffb542ec32e12a541b7f4cf538d96229a504d07898bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
