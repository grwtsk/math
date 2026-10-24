# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EstimateMomentReflection.Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e687c9a37f0fae803590a86d53b71e8c9a5a458",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e687c9a37f0fae803590a86d53b71e8c9a5a458`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSampling` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Integral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TwoMomentProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean/declarations/twomomentprofile--c93febc2c1bfca4af61c7bc2.md) | 44 | `declaration-track:c93febc2c1bfca4af61c7bc2e9f0619637a5cfd41dfa19bb76ef9de7a93d7b6b` |
| 2 | `def` | [shiftedMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean/declarations/shiftedmomentintegrand--ecac5f19a9165efe301e8fa6.md) | 50 | `declaration-track:ecac5f19a9165efe301e8fa65ecdcbaa07b38d9a40bbd99ad0dcc5a499a3184a` |
| 3 | `def` | [reflectedMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean/declarations/reflectedmomentintegrand--121bd21700dd8fcf82349b6a.md) | 53 | `declaration-track:121bd21700dd8fcf82349b6a7ed38be1b1fb3fc445906fb7bc4d9617520ca9b2` |
| 4 | `theorem` | [weighted_zero_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean/declarations/weighted-zero-integrable--c67b319967da5ad9b4a44039.md) | 56 | `result-track:c67b319967da5ad9b4a44039ed83f5f93f1bc5828c5ac03412332f621fb67230` |
| 5 | `theorem` | [weighted_first_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean/declarations/weighted-first-integrable--6684bb7e65596fd07e86b3d1.md) | 63 | `result-track:6684bb7e65596fd07e86b3d1e4f57457a06e516a109199a91453dd127720d9ea` |
| 6 | `theorem` | [shiftedMomentIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean/declarations/shiftedmomentintegrand-integrable--dc653c2249136c16c438c765.md) | 71 | `result-track:dc653c2249136c16c438c7658395d90dfec93aa5951686628416fe3424fa4687` |
| 7 | `theorem` | [reflectedMomentIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean/declarations/reflectedmomentintegrand-integrable--3415a828aead77f28332e681.md) | 90 | `result-track:3415a828aead77f28332e681b2e8bd7a697c2942e7e2305034da95343d0d851b` |
| 8 | `theorem` | [shiftedMoment_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean/declarations/shiftedmoment-integral-zero--998d92c955157dc5b6bf85e4.md) | 110 | `result-track:998d92c955157dc5b6bf85e4d9b90236a48399fc1a84a6c4b31ec2babca71fea` |
| 9 | `theorem` | [reflectedMoment_eq_neg_negativeHalf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean/declarations/reflectedmoment-eq-neg-negativehalf--f06efe11b0b7b3fdb8a53b21.md) | 163 | `result-track:f06efe11b0b7b3fdb8a53b219a2ef0af76c8404852d15f2971603a289a5be911` |
| 10 | `theorem` | [two_moment_reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean/declarations/two-moment-reflection--2a74753a4ee54ebc41eb771a.md) | 189 | `result-track:2a74753a4ee54ebc41eb771a1beb4ef0b6fe6a08a451f321c8a2408e8586f02c` |
| 11 | `theorem` | [sourceCorrelation_twoMomentProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean/declarations/sourcecorrelation-twomomentprofile--b530ac0ccde929ba4d4c367e.md) | 208 | `result-track:b530ac0ccde929ba4d4c367e68c503c41dc40a0168c58687da1081821ea617cf` |
| 12 | `theorem` | [derivativeProfile_twoMomentProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean/declarations/derivativeprofile-twomomentprofile--46807f1423baeb3cf4b7adc6.md) | 225 | `result-track:46807f1423baeb3cf4b7adc666b528e46ead8bc20a3493fcde7a724ba4627b8f` |
| 13 | `theorem` | [sourceCorrelation_reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean/declarations/sourcecorrelation-reflection--2752536b821bbc487b8cb66c.md) | 256 | `result-track:2752536b821bbc487b8cb66c14dd0a7e87027370e6a77a2f12bcab496e1bba42` |
| 14 | `theorem` | [derivativeProfile_reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean/declarations/derivativeprofile-reflection--bdc3c3e7addee20eab3ec056.md) | 268 | `result-track:bdc3c3e7addee20eab3ec0561dbd411004853083a12a7d49a81d68178da86529` |
| 15 | `def` | [MomentReflectionCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean/declarations/momentreflectioncheckpoint--c423e8291d8d5e44df6511fc.md) | 280 | `declaration-track:c423e8291d8d5e44df6511fcf0ebfdd99bf395c741561bc35492e20e6091ccb4` |
| 16 | `theorem` | [moment_reflection_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variant8d459234a6a297ae48306c41b498bba9f25f5bea7c7543c1bb20bdd84f540f16.lean/declarations/moment-reflection-checkpoint--bc7c2395c5952de538c01ea0.md) | 296 | `result-track:bc7c2395c5952de538c01ea0c81f8849aee5a81544e5ff510045291d7510ec97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
