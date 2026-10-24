# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ColimitsOver.Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b03377d4b45ff784031d97243abc82352ecb9aa0",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b03377d4b45ff784031d97243abc82352ecb9aa0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ColimitGluingData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/declarations/colimitgluingdata--8c1944c8cebb173d5029b76a.md) | 44 | `declaration-track:8c1944c8cebb173d5029b76a5ce227ef7eda33c210bbbf04c73e13e59f73d59b` |
| 2 | `def` | [trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/declarations/trans--aaa8e3b77a9909d8470d6ab0.md) | 60 | `declaration-track:aaa8e3b77a9909d8470d6ab0c8e1343f11865fe907d91bad48aa447854290f12` |
| 3 | `def` | [transitionCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/declarations/transitioncocone--966022b8e47755e0c6dd319a.md) | 69 | `declaration-track:966022b8e47755e0c6dd319aef57291760fced2fe046bda0973e5c196f40b62d` |
| 4 | `def` | [transitionMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/declarations/transitionmap--76a606754038dc8e3645f4b8.md) | 76 | `declaration-track:76a606754038dc8e3645f4b814ca22e2de6877f7b2ef26feae51dafd252fa08b` |
| 5 | `lemma` | [cocone_ι_transitionMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/declarations/cocone-transitionmap--a510e182c2422f1cc07e1d36.md) | 82 | `result-track:a510e182c2422f1cc07e1d3616b906500f0b73fd94191fcc396bc766cf47693f` |
| 6 | `lemma` | [transitionMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/declarations/transitionmap-id--fd1acf35686f2e977cd2c16e.md) | 89 | `result-track:fd1acf35686f2e977cd2c16e4a760e1b131f8ad71a02bca250660ae0b45b8881` |
| 7 | `lemma` | [transitionMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/declarations/transitionmap-comp--e9a0dc1c0dcf0c11aafcacce.md) | 99 | `result-track:e9a0dc1c0dcf0c11aafcacce27f7ea8e110df5ed6c81acc1c1bd6cc0c4ed71dc` |
| 8 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/declarations/functor--c5c346b9bfb4b7e5ad397eff.md) | 111 | `declaration-track:c5c346b9bfb4b7e5ad397eff5241468b02e031d8d26b44fca47b6ba697754947` |
| 9 | `lemma` | [isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/declarations/ispullback--b74f92690e308a327a2635c5.md) | 119 | `result-track:b74f92690e308a327a2635c5f0a008a13dde2c3e2c3109e9459f0a1d173d66ef` |
| 10 | `def` | [relativeGluingData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/declarations/relativegluingdata--853dee7fb56e0d807ddecbf1.md) | 152 | `declaration-track:853dee7fb56e0d807ddecbf1c9e19af1c1635abbe498d86d90240dbc536ef033` |
| 11 | `def` | [glued](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/declarations/glued--d33ce92ded2e8eb9c2537fff.md) | 161 | `declaration-track:d33ce92ded2e8eb9c2537fffc656f04342537800e06144453ff4529e63ba1824` |
| 12 | `def` | [pullbackGluedIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/declarations/pullbackgluediso--bc7fe235f7c8af0af14102c1.md) | 173 | `declaration-track:bc7fe235f7c8af0af14102c197840f034538fd69c72fbb942fd47850617f6958` |
| 13 | `lemma` | [pullbackGluedIso_inv_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/declarations/pullbackgluediso-inv-fst--e2347967d2b36abb67077d50.md) | 180 | `result-track:e2347967d2b36abb67077d5019762b1b90726f9b7f0160b4237ece32ea811b67` |
| 14 | `lemma` | [pullbackGluedIso_inv_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/declarations/pullbackgluediso-inv-snd--e6d1b8544a10e4d1b69ed2d7.md) | 187 | `result-track:e6d1b8544a10e4d1b69ed2d73ae8ad7dc2cc7635af82dcb1a2ea626df79dd38f` |
| 15 | `def` | [gluedCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/declarations/gluedcocone--d34c2eb8f7b17516e2c5cef1.md) | 195 | `declaration-track:d34c2eb8f7b17516e2c5cef1b7da9b8e4443a28ffd4c45a4cc1d2bb0df16db6a` |
| 16 | `lemma` | [fst_gluedCocone_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/declarations/fst-gluedcocone--9bc45d8fba35b327cc453bb2.md) | 221 | `result-track:9bc45d8fba35b327cc453bb29c9210c3d61241eaa048428eea5e6c8afac5a2c3` |
| 17 | `def` | [isColimitGluedCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/declarations/iscolimitgluedcocone--bf4c1cd62262a0f54e19e108.md) | 234 | `declaration-track:bf4c1cd62262a0f54e19e108fa9f350fb2b9eb61abd9d2c4539fb474535135d0` |
| 18 | `lemma` | [hasColimit_of_locallyDirected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/declarations/hascolimit-of-locallydirected--62bf87c8f9e61bdfbb7de4f7.md) | 290 | `result-track:62bf87c8f9e61bdfbb7de4f77c35c3ccc3c99b22859304856fb61ea472837bd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
