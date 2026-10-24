# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallyFullyFaithful.Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dc9b5db19e40df7a395a0cacd093a7806d21efb",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dc9b5db19e40df7a395a0cacd093a7806d21efb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.LocallySurjective` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Functor.imageSieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean/declarations/functor-imagesieve--49586d0bd0c48289154bbb46.md) | 43 | `declaration-track:49586d0bd0c48289154bbb467f6637a888994eaf857206cdf84380d1bb7c7b8f` |
| 2 | `lemma` | [Functor.imageSieve_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean/declarations/functor-imagesieve-map--02c5279b79893c93903de9e2.md) | 50 | `result-track:02c5279b79893c93903de9e2c612e4d30728e94bde428f7193749c70d7a27686` |
| 3 | `def` | [Sieve.equalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean/declarations/sieve-equalizer--d3b856219c760c86d317c574.md) | 57 | `declaration-track:d3b856219c760c86d317c574a39628aefaea4c387c7229fa0cd0eb20b29c12b5` |
| 4 | `lemma` | [Sieve.equalizer_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean/declarations/sieve-equalizer-self--0e018c7b8f545dfe1649f89e.md) | 62 | `result-track:0e018c7b8f545dfe1649f89e8bb0275005ee0d27ca1fa00e5de459f27a61a228` |
| 5 | `lemma` | [Sieve.equalizer_eq_equalizerSieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean/declarations/sieve-equalizer-eq-equalizersieve--d78664a77be7d979bb1df99b.md) | 65 | `result-track:d78664a77be7d979bb1df99be5dcd501a2b3f4d963a7ea87a82379c2d2736468` |
| 6 | `lemma` | [Functor.imageSieve_eq_imageSieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean/declarations/functor-imagesieve-eq-imagesieve--29c847b627d7c512ac2b21a2.md) | 69 | `result-track:29c847b627d7c512ac2b21a2577b82c92842bdeeb55e5f047ac8aaa74a13d63d` |
| 7 | `class` | [IsLocallyFull](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean/declarations/islocallyfull--cbae728594a1a8aa551fa932.md) | 82 | `declaration-track:cbae728594a1a8aa551fa93238ebdb7b1fb2675bb36d6ac5c4611d6df7155fe3` |
| 8 | `class` | [IsLocallyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean/declarations/islocallyfaithful--56eb06dafb7d0bb431b82961.md) | 91 | `declaration-track:56eb06dafb7d0bb431b82961f91cb40f6bd8a22987221abcdd3cb6f4c543e100` |
| 9 | `lemma` | [functorPushforward_imageSieve_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean/declarations/functorpushforward-imagesieve-mem--ccf59e18370a399f5d2c4b7d.md) | 95 | `result-track:ccf59e18370a399f5d2c4b7ddd1aabb1e260c2d6ce5233676ce88a02fe9ebff3` |
| 10 | `lemma` | [functorPushforward_equalizer_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean/declarations/functorpushforward-equalizer-mem--c97dfe24c6f3f64f9d37adc2.md) | 99 | `result-track:c97dfe24c6f3f64f9d37adc22e4a1d1f359fc3defdbe3e2bb916405a99d39adf` |
| 11 | `theorem` | [IsLocallyFull.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean/declarations/islocallyfull-ext--e449eb7037b7de71a3b1d229.md) | 107 | `result-track:e449eb7037b7de71a3b1d229dacf556ba010000599bc840d87b6849c3b54c586` |
| 12 | `theorem` | [IsLocallyFaithful.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean/declarations/islocallyfaithful-ext--db691cb943ff57b7f841e5f8.md) | 117 | `result-track:db691cb943ff57b7f841e5f8c85c5d6e66f14adf49889fc63958733aa27646ec` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean/declarations/instance--5ee776bd0a165ebb43f32a52.md) | 127 | `declaration-track:5ee776bd0a165ebb43f32a526251de6655cb39e692ab5bd7d2d64887dc07f4b3` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyFullyFaithful/Variant78ddb160565f8cca990c54103089d2837b4ada4c7b6df561dd3e4787c4cc0102.lean/declarations/instance--1fa31b6f831ab3e1b62e9a02.md) | 132 | `declaration-track:1fa31b6f831ab3e1b62e9a0220ee593f40d83ef837e5095d39f149228803f5df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
