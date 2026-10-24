# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant09b483abc27de06fc07a28affee08c7803ef062d12efb4160dc06590be51bd7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6e118116e654108e8fd19dfab1d49995ace38b3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant09b483abc27de06fc07a28affee08c7803ef062d12efb4160dc06590be51bd7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant09b483abc27de06fc07a28affee08c7803ef062d12efb4160dc06590be51bd7e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant09b483abc27de06fc07a28affee08c7803ef062d12efb4160dc06590be51bd7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6e118116e654108e8fd19dfab1d49995ace38b3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant09b483abc27de06fc07a28affee08c7803ef062d12efb4160dc06590be51bd7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant09b483abc27de06fc07a28affee08c7803ef062d12efb4160dc06590be51bd7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateKernelMoments` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSampling` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Integral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TwoMomentProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant09b483abc27de06fc07a28affee08c7803ef062d12efb4160dc06590be51bd7e.lean/declarations/twomomentprofile--ed9c95f8dfe5870b0fb3c210.md) | 48 | `declaration-track:ed9c95f8dfe5870b0fb3c210a04045ab891254bb156d3c3acc6b7572b6c0b23d` |
| 2 | `def` | [shiftedMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant09b483abc27de06fc07a28affee08c7803ef062d12efb4160dc06590be51bd7e.lean/declarations/shiftedmomentintegrand--34217d01b99f22fec8a2b800.md) | 55 | `declaration-track:34217d01b99f22fec8a2b80034a8ffb0a7f13f691732a02f2662b117a6964052` |
| 3 | `def` | [reflectedMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant09b483abc27de06fc07a28affee08c7803ef062d12efb4160dc06590be51bd7e.lean/declarations/reflectedmomentintegrand--599852534992511898f4b2af.md) | 59 | `declaration-track:599852534992511898f4b2afcf061913a3f041bf0a231ce77a4baf727b1cfef0` |
| 4 | `theorem` | [weighted_zero_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant09b483abc27de06fc07a28affee08c7803ef062d12efb4160dc06590be51bd7e.lean/declarations/weighted-zero-integrable--ae155a77ae7bac80e09450c7.md) | 62 | `result-track:ae155a77ae7bac80e09450c74e022326c320bc9373e9855d315d5e3048d32e84` |
| 5 | `theorem` | [weighted_first_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant09b483abc27de06fc07a28affee08c7803ef062d12efb4160dc06590be51bd7e.lean/declarations/weighted-first-integrable--92a5a0c19b79dd3f3894748f.md) | 70 | `result-track:92a5a0c19b79dd3f3894748f6b9f8d165cd63dd6e3d959e878cc5efee32fcc84` |
| 6 | `theorem` | [shiftedMomentIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant09b483abc27de06fc07a28affee08c7803ef062d12efb4160dc06590be51bd7e.lean/declarations/shiftedmomentintegrand-integrable--6248d4461849507391db30f2.md) | 79 | `result-track:6248d4461849507391db30f28bbecac67dc7ee16fb105ebefeb33837505c29c6` |
| 7 | `theorem` | [reflectedMomentIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant09b483abc27de06fc07a28affee08c7803ef062d12efb4160dc06590be51bd7e.lean/declarations/reflectedmomentintegrand-integrable--538e56fa8d63ac805f1dbf63.md) | 99 | `result-track:538e56fa8d63ac805f1dbf63967d9b1c949caaf8b37b56c9925a7b64656f1d90` |
| 8 | `theorem` | [shiftedMoment_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant09b483abc27de06fc07a28affee08c7803ef062d12efb4160dc06590be51bd7e.lean/declarations/shiftedmoment-integral-zero--c04d10a2b079d2c9e6f9c81c.md) | 120 | `result-track:c04d10a2b079d2c9e6f9c81c69e0248b2a7556f668bbc0130da05102dcfec665` |
| 9 | `theorem` | [reflectedMoment_eq_neg_negativeHalf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant09b483abc27de06fc07a28affee08c7803ef062d12efb4160dc06590be51bd7e.lean/declarations/reflectedmoment-eq-neg-negativehalf--efc35625caa74fef8f67b207.md) | 178 | `result-track:efc35625caa74fef8f67b20785812f0509e70dbab0f1621bb43dc81ea5d5df42` |
| 10 | `theorem` | [two_moment_reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant09b483abc27de06fc07a28affee08c7803ef062d12efb4160dc06590be51bd7e.lean/declarations/two-moment-reflection--0ffaf753741ea8636f355967.md) | 199 | `result-track:0ffaf753741ea8636f3559670573e43fefc889dd16caa75d681c0f108cf3acb8` |
| 11 | `theorem` | [sourceCorrelation_twoMomentProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant09b483abc27de06fc07a28affee08c7803ef062d12efb4160dc06590be51bd7e.lean/declarations/sourcecorrelation-twomomentprofile--6982433064138dfd33b55de7.md) | 218 | `result-track:6982433064138dfd33b55de7fd4ce7dbf07f71f82e8537462a1e5a85c7a5183a` |
| 12 | `theorem` | [derivativeProfile_twoMomentProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant09b483abc27de06fc07a28affee08c7803ef062d12efb4160dc06590be51bd7e.lean/declarations/derivativeprofile-twomomentprofile--4d7223d404d79a7ab70a92f5.md) | 235 | `result-track:4d7223d404d79a7ab70a92f5cd4de594e7c4df70aa1ba0cbba714e47f28663a2` |
| 13 | `theorem` | [sourceCorrelation_reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant09b483abc27de06fc07a28affee08c7803ef062d12efb4160dc06590be51bd7e.lean/declarations/sourcecorrelation-reflection--3cb2738615a9aeb9d55e4090.md) | 266 | `result-track:3cb2738615a9aeb9d55e40902db88cb2536949418c4c9c28d369e7d75bd8a63b` |
| 14 | `theorem` | [derivativeProfile_reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant09b483abc27de06fc07a28affee08c7803ef062d12efb4160dc06590be51bd7e.lean/declarations/derivativeprofile-reflection--4f1a3e0d8f1f6f85967ddd55.md) | 278 | `result-track:4f1a3e0d8f1f6f85967ddd55ce845910977b5aab4742c586022f3797759d4ac8` |
| 15 | `def` | [MomentReflectionCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant09b483abc27de06fc07a28affee08c7803ef062d12efb4160dc06590be51bd7e.lean/declarations/momentreflectioncheckpoint--fec6a6775c0fa728187daecc.md) | 292 | `declaration-track:fec6a6775c0fa728187daecc8578874f4f34afe753b29c3314785621156f9183` |
| 16 | `theorem` | [moment_reflection_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant09b483abc27de06fc07a28affee08c7803ef062d12efb4160dc06590be51bd7e.lean/declarations/moment-reflection-checkpoint--510ad3f35eb3630bbb4e2c25.md) | 308 | `result-track:510ad3f35eb3630bbb4e2c252be8e51ace75434ad10c3d06fe5a26ae9e82f840` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
