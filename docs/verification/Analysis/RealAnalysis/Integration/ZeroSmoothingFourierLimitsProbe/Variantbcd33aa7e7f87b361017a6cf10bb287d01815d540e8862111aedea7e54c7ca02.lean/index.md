# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothingFourierLimitsProbe.Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "454ae8e58815f814e2757dfb894ad1659fa5f695",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `454ae8e58815f814e2757dfb894ad1659fa5f695`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ZeroLogarithmicNormProbe` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingTransform` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceFourier_smoothed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/declarations/sourcefourier-smoothed--14079203723df41be319a820.md) | 23 | `result-track:14079203723df41be319a8205bace236df975d90d402c1ca7bc38b838d92e22d` |
| 2 | `theorem` | [multiplier_norm_le_one_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/declarations/multiplier-norm-le-one-fourier--190dc22dc023dcd280674f5c.md) | 28 | `result-track:190dc22dc023dcd280674f5c88604e8a99abaaa9b312e8a13d40d95b9144c3ba` |
| 3 | `theorem` | [sourceFourier_smoothed_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/declarations/sourcefourier-smoothed-norm-le--60b8c39d464fa527cadbfd2e.md) | 32 | `result-track:60b8c39d464fa527cadbfd2e933a17544748a342cc9ba43aa0966c16a9c17898` |
| 4 | `theorem` | [sourceFourier_smoothed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/declarations/sourcefourier-smoothed-tendsto--57595795dcc7b99032eb5725.md) | 38 | `result-track:57595795dcc7b99032eb5725449e955ff4eb715bab96a7bb8fa1c71cf158490f` |
| 5 | `theorem` | [sourceFourier_testError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/declarations/sourcefourier-testerror--9343ff38784f042cc8758741.md) | 47 | `result-track:9343ff38784f042cc87587416160d928f20b43b50407b660cb4e11de1883ac46` |
| 6 | `theorem` | [sourceFourier_testError_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/declarations/sourcefourier-testerror-norm-le--41bd7c0c7d80b4b9c52b5cce.md) | 55 | `result-track:41bd7c0c7d80b4b9c52b5ccece8a85511fa5a7d5920edecd18bd2ceddc170a69` |
| 7 | `theorem` | [sourceFourier_testError_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/declarations/sourcefourier-testerror-tendsto--b3967ed2ed5bc823ab4e6acd.md) | 66 | `result-track:b3967ed2ed5bc823ab4e6acdf6e2580bf1a1e153f46346810b04e02f2107db6b` |
| 8 | `theorem` | [sourceFourier_testError_normSq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/declarations/sourcefourier-testerror-normsq-le--770b21f5fab379ea9d834548.md) | 76 | `result-track:770b21f5fab379ea9d83454832d3e4a1592f0779975f895a80411acedea1319d` |
| 9 | `theorem` | [actualTest_logarithmic_domain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/declarations/actualtest-logarithmic-domain--71251644fc1f4fe34f316787.md) | 84 | `result-track:71251644fc1f4fe34f316787bcf2666d63ae8af03e7a61d732d908c5287d63bb` |
| 10 | `theorem` | [smoothedTest_logarithmic_domain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/declarations/smoothedtest-logarithmic-domain--998f0f0fd391c7370342702c.md) | 92 | `result-track:998f0f0fd391c7370342702c54618bff8e9280c82814b239e1e6de773efe2d7d` |
| 11 | `theorem` | [logarithmicWeight_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/declarations/logarithmicweight-continuous--4b17125f9e8a7d7892e22223.md) | 107 | `result-track:4b17125f9e8a7d7892e22223f61d2021801627c13cc32a3ce3c9d7354a617d6e` |
| 12 | `theorem` | [actual_logarithmic_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/declarations/actual-logarithmic-integrand-integrable--bffa7489edbe5eb0c347e731.md) | 112 | `result-track:bffa7489edbe5eb0c347e7314f8b560b103603e9142c7eb2d081eb2340f9c624` |
| 13 | `theorem` | [error_logarithmic_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/declarations/error-logarithmic-integrand-integrable--19da2aaeaa23f5d6f459d3cc.md) | 118 | `result-track:19da2aaeaa23f5d6f459d3cc524c022bb10ba01da6c89f8f4b78576cd5cbf23e` |
| 14 | `theorem` | [error_rawLogarithmicEnergy_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/declarations/error-rawlogarithmicenergy-tendsto-zero--a0f3bafeefab813fb9cec4b5.md) | 136 | `result-track:a0f3bafeefab813fb9cec4b55f7877c70e9c28b949ca3556eb260a2ce3bcaf6c` |
| 15 | `theorem` | [error_sourceLogarithmicEnergy_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/declarations/error-sourcelogarithmicenergy-tendsto-zero--87928fe25ea879ec8a379551.md) | 163 | `result-track:87928fe25ea879ec8a379551d0209211c9812584054f1caf2c4066da3aa224f0` |
| 16 | `theorem` | [error_sourceLogarithmicNorm_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/declarations/error-sourcelogarithmicnorm-tendsto-zero--9fdb3219f1e5cef4181146f1.md) | 171 | `result-track:9fdb3219f1e5cef4181146f1c54ca12ca4744bc4b64034eb2f1204578677e52d` |
| 17 | `theorem` | [actual_archimedean_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/declarations/actual-archimedean-integrable--5725766e883bd40fb61f8bc5.md) | 180 | `result-track:5725766e883bd40fb61f8bc5ad9b342eebbf84728d99802ee2068717607552dd` |
| 18 | `theorem` | [smoothed_archimedean_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/declarations/smoothed-archimedean-integrable--06fd3b1b47db23b59f586f99.md) | 186 | `result-track:06fd3b1b47db23b59f586f9968d1143d23a13396d555cdf34a1a2ccaae9766d6` |
| 19 | `theorem` | [sourceFourier_smoothed_normSq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/declarations/sourcefourier-smoothed-normsq-le--80a73b82ea33648d2890fced.md) | 193 | `result-track:80a73b82ea33648d2890fcedb71b2e80eec0d2e17f5fe27e99866381bb107bac` |
| 20 | `theorem` | [archimedean_integral_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variantbcd33aa7e7f87b361017a6cf10bb287d01815d540e8862111aedea7e54c7ca02.lean/declarations/archimedean-integral-tendsto--19fec0dc683f606045da3208.md) | 200 | `result-track:19fec0dc683f606045da3208f37493213b66f544483cd5e55e22ffb3ff7a4b36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
