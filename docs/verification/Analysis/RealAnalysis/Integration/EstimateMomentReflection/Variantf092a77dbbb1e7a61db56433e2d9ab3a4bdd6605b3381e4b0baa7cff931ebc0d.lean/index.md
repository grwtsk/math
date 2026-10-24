# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EstimateMomentReflection.Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4241bed57dd60a5012d3809e24bc8d2b8d2e7c9d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4241bed57dd60a5012d3809e24bc8d2b8d2e7c9d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSampling` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Integral` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TwoMomentProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean/declarations/twomomentprofile--916203e1603b90b325b66fb5.md) | 39 | `declaration-track:916203e1603b90b325b66fb5d8c58fc05cd7039dad1f384fc65c142f365b3256` |
| 2 | `def` | [shiftedMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean/declarations/shiftedmomentintegrand--4b350777bc1efe0a403d3092.md) | 46 | `declaration-track:4b350777bc1efe0a403d3092ee7d7e4f4e3e7e8130a5d42279bec6aaf424b4e5` |
| 3 | `def` | [reflectedMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean/declarations/reflectedmomentintegrand--38f9b864962c40174fe7da69.md) | 50 | `declaration-track:38f9b864962c40174fe7da698cee1a6cdc9b6ecf9c5e726b9ac5946424f5083c` |
| 4 | `theorem` | [weighted_zero_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean/declarations/weighted-zero-integrable--7d9f7152f6100b90743e603a.md) | 53 | `result-track:7d9f7152f6100b90743e603a458a2802c95c27388686224439c1f2c09ec52c19` |
| 5 | `theorem` | [weighted_first_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean/declarations/weighted-first-integrable--4200ab7bae8e209a9e869039.md) | 61 | `result-track:4200ab7bae8e209a9e8690394111a36307dbb7b95cb3409f3425dabb73837b55` |
| 6 | `theorem` | [shiftedMomentIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean/declarations/shiftedmomentintegrand-integrable--317b04657e5195df1c208726.md) | 70 | `result-track:317b04657e5195df1c208726e94c6794eb1c792e1454926d33efc590e4f2aa49` |
| 7 | `theorem` | [reflectedMomentIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean/declarations/reflectedmomentintegrand-integrable--0796e963f80b9e287dc51e0c.md) | 90 | `result-track:0796e963f80b9e287dc51e0ce7c77145e1c5598926bdfa4f79a94c651b046a2f` |
| 8 | `theorem` | [shiftedMoment_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean/declarations/shiftedmoment-integral-zero--35d2e725b686f4ca57191845.md) | 111 | `result-track:35d2e725b686f4ca5719184527a8b4ff3b22608e63f38b1f8b35bd829e54cfe9` |
| 9 | `theorem` | [reflectedMoment_eq_neg_negativeHalf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean/declarations/reflectedmoment-eq-neg-negativehalf--19427771ba7eae43a0a9de60.md) | 169 | `result-track:19427771ba7eae43a0a9de60396092a609ebf72dd0bc78e2788d559251f42c5c` |
| 10 | `theorem` | [two_moment_reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean/declarations/two-moment-reflection--5f95078945457bdba5b3e71f.md) | 190 | `result-track:5f95078945457bdba5b3e71fdf9de7343435c5be3445f325215a5b64f404e657` |
| 11 | `theorem` | [sourceCorrelation_twoMomentProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean/declarations/sourcecorrelation-twomomentprofile--96b2f36f456512bbe8c2fc42.md) | 209 | `result-track:96b2f36f456512bbe8c2fc42d89162b8265e88883508d8582fa78b84e5a1f344` |
| 12 | `theorem` | [derivativeProfile_twoMomentProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean/declarations/derivativeprofile-twomomentprofile--6a0aba2ca722651d4b57cafe.md) | 226 | `result-track:6a0aba2ca722651d4b57cafe865650aca3c34d062693cf92eeecec3fa2ca3e3a` |
| 13 | `theorem` | [sourceCorrelation_reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean/declarations/sourcecorrelation-reflection--38e9c1b954895006dfda849a.md) | 257 | `result-track:38e9c1b954895006dfda849a6862655e2db69b0a7bb80f718bd8c4d9732aae1c` |
| 14 | `theorem` | [derivativeProfile_reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean/declarations/derivativeprofile-reflection--7e4f84469d7d391e94a2a54c.md) | 269 | `result-track:7e4f84469d7d391e94a2a54cc4f0d2ec0c18767c6a174f3ddc8910cf37bc5635` |
| 15 | `def` | [MomentReflectionCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean/declarations/momentreflectioncheckpoint--d47e6544ee23b1c7f8be32f6.md) | 283 | `declaration-track:d47e6544ee23b1c7f8be32f67dee0e358750920a6e99d295e4a07e8582a48452` |
| 16 | `theorem` | [moment_reflection_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean/declarations/moment-reflection-checkpoint--671ec06094f4e59f19ff5dfa.md) | 299 | `result-track:671ec06094f4e59f19ff5dfa206a6aa16f3a30185aa084a784ddd9868387e4a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
