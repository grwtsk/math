# Verification target: GRWTSK.Algebra.Integral.Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47e77b2089ede885a91aba69854889b8618910d1",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47e77b2089ede885a91aba69854889b8618910d1`.

Source path: `GRWTSK/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Lifts` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.MonoidLocalization` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.LocalRing` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integer` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.NonZeroDivisors` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coeffIntegerNormalization](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/coeffintegernormalization--de08a40c32ea59d476159bb2.md) | 56 | `declaration-track:de08a40c32ea59d476159bb29fb0b71b0f1330f5afd8f297a8aa07fc42c09205` |
| 2 | `theorem` | [coeffIntegerNormalization_of_not_mem_support](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/coeffintegernormalization-of-not-mem-support--24baedf1d1e16c88c8cc6586.md) | 64 | `result-track:24baedf1d1e16c88c8cc658628b9df2d573bb51902c1bc50f27796d281085e09` |
| 3 | `theorem` | [coeffIntegerNormalization_mem_support](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/coeffintegernormalization-mem-support--1d34ece658ff9b4f1089cbb0.md) | 70 | `result-track:1d34ece658ff9b4f1089cbb00fe57494b455c1e25dab3612940c4f8228b2f439` |
| 4 | `def` | [integerNormalization](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/integernormalization--7a7d8ef1d6cc6fe7b5f72316.md) | 78 | `declaration-track:7a7d8ef1d6cc6fe7b5f72316b1fc43a59a118e0901a3d87a6c200b4da1bf5c4e` |
| 5 | `theorem` | [integerNormalization_coeff](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/integernormalization-coeff--9d19b5445da9a4afd8cf71a7.md) | 83 | `result-track:9d19b5445da9a4afd8cf71a717957762833e2646b3d9c63b3e9fe61c3b6671cf` |
| 6 | `theorem` | [integerNormalization_spec](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/integernormalization-spec--8a4624b1c78ca52ed8200887.md) | 89 | `result-track:8a4624b1c78ca52ed82008872833da1368f172b7930adf2430e9913c3103dcb9` |
| 7 | `theorem` | [integerNormalization_map_to_map](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/integernormalization-map-to-map--71d6f204d25f8a0b0f8b758a.md) | 105 | `result-track:71d6f204d25f8a0b0f8b758a7dead0273548af2960ae22af38327a5ff224e3c6` |
| 8 | `theorem` | [integerNormalization_eval₂_eq_zero](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/integernormalization-eval-eq-zero--3ed5b086173f4add167c1db6.md) | 116 | `result-track:3ed5b086173f4add167c1db6e6bc3eab2987dfc9a9f81b5289e1ba533f8168f8` |
| 9 | `theorem` | [integerNormalization_aeval_eq_zero](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/integernormalization-aeval-eq-zero--ee28f2852c59e4f99ba3d443.md) | 123 | `result-track:ee28f2852c59e4f99ba3d443a7ae0294d1e29a0d6ce2e1627e7e88bc514ff38b` |
| 10 | `theorem` | [integerNormalization_eq_zero_iff](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/integernormalization-eq-zero-iff--c0e1f65a73a7768dd5da1826.md) | 140 | `result-track:c0e1f65a73a7768dd5da1826141eee83bdc5b5da9742ce12b848ea0cfe1c2e6f` |
| 11 | `theorem` | [isAlgebraic_iff](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/isalgebraic-iff--78336888653a9527cae5cb40.md) | 160 | `result-track:78336888653a9527cae5cb40ca39087e8f13a8bd8c7c6c9be140cb959f7d2748` |
| 12 | `theorem` | [comap_isAlgebraic_iff](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/comap-isalgebraic-iff--35baf41a0cc399c6adc73f59.md) | 177 | `result-track:35baf41a0cc399c6adc73f591716294c377e6f811d83ba6a8f50de68ade66073` |
| 13 | `theorem` | [RingHom.isIntegralElem_localization_at_leadingCoeff](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/ringhom-isintegralelem-localization-at-leadingcoeff--9976e921862aa84650142221.md) | 198 | `result-track:9976e921862aa84650142221be7f88395ad217689e9f09aa4225d22207bf684f` |
| 14 | `theorem` | [is_integral_localization_at_leadingCoeff](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/is-integral-localization-at-leadingcoeff--9315356d24571977669ea7a4.md) | 220 | `result-track:9315356d24571977669ea7a459538718679506e23a0fa7bd656f3afdfcaf03be` |
| 15 | `theorem` | [isIntegral_localization](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/isintegral-localization--f5a0a6fb39c45f7fd24ddedc.md) | 236 | `result-track:f5a0a6fb39c45f7fd24ddedc53f7ef865942248bc7c6fbb3fb8f966f96d0e778` |
| 16 | `theorem` | [isIntegral_localization'](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/isintegral-localization--7387217b35ee3bfff0afb6d6.md) | 257 | `result-track:7387217b35ee3bfff0afb6d63ac6760644be35a517dee436c7a9e8ba6bbe9832` |
| 17 | `theorem` | [IsLocalization.scaleRoots_commonDenom_mem_lifts](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/islocalization-scaleroots-commondenom-mem-lifts--80b28eb6e28ebfc887580967.md) | 271 | `result-track:80b28eb6e28ebfc887580967efa58e869575c2eba91c1738883c05c765b551d3` |
| 18 | `theorem` | [IsIntegral.exists_multiple_integral_of_isLocalization](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/isintegral-exists-multiple-integral-of-islocalization--196210cc7cb4038ca8571809.md) | 294 | `result-track:196210cc7cb4038ca8571809ca698663e6b1ba8a53c7bd43244a508d838c9a85` |
| 19 | `theorem` | [isFractionRing_of_algebraic](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/isfractionring-of-algebraic--7d0cdf0f107d299c7c7cdf66.md) | 330 | `result-track:7d0cdf0f107d299c7c7cdf66178afbcae44fbbdedc648cd396eed273482a8984` |
| 20 | `theorem` | [isFractionRing_of_finite_extension](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/isfractionring-of-finite-extension--9cc0f3f3daf1c1310c567b74.md) | 354 | `result-track:9cc0f3f3daf1c1310c567b7402e480ea7e66bde3a762a2fc51684706a6bc5255` |
| 21 | `theorem` | [isFractionRing_of_algebraic](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/isfractionring-of-algebraic--a9a693a017d3e7c50165b7fc.md) | 373 | `result-track:a9a693a017d3e7c50165b7fc151dd6b91e6e11d0d2275e31b83f93a6469d4f22` |
| 22 | `theorem` | [isFractionRing_of_finite_extension](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/isfractionring-of-finite-extension--415142c3c18deb63e4fdb351.md) | 382 | `result-track:415142c3c18deb63e4fdb35187d627622e6132f446e86a038eacd779e5a326a2` |
| 23 | `theorem` | [isAlgebraic_iff'](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/isalgebraic-iff--f983e565f60072d085de5e5e.md) | 394 | `result-track:f983e565f60072d085de5e5e320b7813a8fc73b4f72833f6a8e9fc762b430f72` |
| 24 | `theorem` | [ideal_span_singleton_map_subset](../../../../mathematics/Algebra/Integral/Variant40689d8aeb71d1b5e99da616ee014b1eb2481bc389a72c9065b06407fa082f6a.lean/declarations/ideal-span-singleton-map-subset--d0eb49bae73cd3215a4f5988.md) | 442 | `result-track:d0eb49bae73cd3215a4f59887355b40c271956df9598625e9b3ba08e207ba2f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
