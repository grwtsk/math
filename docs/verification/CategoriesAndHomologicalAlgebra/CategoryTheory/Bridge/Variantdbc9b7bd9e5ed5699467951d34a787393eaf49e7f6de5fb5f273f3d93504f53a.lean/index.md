# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bridge.Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3925a2ccf091f8e84837a09ced796486e718897",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3925a2ccf091f8e84837a09ced796486e718897`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Logic.Category.Hom` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CategoricalBridgeEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean/declarations/categoricalbridgeequivalence--ea75103108c0cf40544af7df.md) | 15 | `declaration-track:ea75103108c0cf40544af7df22a595f6b5d286ddcb5ee3f200efdb0843726ff2` |
| 2 | `theorem` | [CategoricalBridgeEquivalence.object_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean/declarations/categoricalbridgeequivalence-object-injective--efe41385f139247cc82e940e.md) | 41 | `result-track:efe41385f139247cc82e940e41cf09d60365d77482b56a064ec7e051756a6abb` |
| 3 | `theorem` | [CategoricalBridgeEquivalence.object_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean/declarations/categoricalbridgeequivalence-object-surjective--1ebecd0e939137d977101a3c.md) | 52 | `result-track:1ebecd0e939137d977101a3c63bce5d570ee44f4e63d8f0595d5433b08c05049` |
| 4 | `theorem` | [CategoricalBridgeEquivalence.object_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean/declarations/categoricalbridgeequivalence-object-bijective--d76e99e19bedbf30eb6b2824.md) | 59 | `result-track:d76e99e19bedbf30eb6b2824e4afb7250dbe658ca9103e9fa05143afa7482816` |
| 5 | `theorem` | [CategoricalBridgeEquivalence.morphism_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean/declarations/categoricalbridgeequivalence-morphism-injective--0c2b2c7d30e1ccac559c708b.md) | 66 | `result-track:0c2b2c7d30e1ccac559c708b79b66db55d9fc0e78183442b87d53d62d7c289b0` |
| 6 | `theorem` | [CategoricalBridgeEquivalence.morphism_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean/declarations/categoricalbridgeequivalence-morphism-surjective--60194fb4db05301b1a79c070.md) | 74 | `result-track:60194fb4db05301b1a79c070c143a6b39f4e29b2e76bdd1dd7ce17d6191a0b6e` |
| 7 | `structure` | [LayerCategories](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean/declarations/layercategories--21603c013a99e366131fb82a.md) | 82 | `declaration-track:21603c013a99e366131fb82a83bdee3d4c6051c7fcd8e1cdecec542acfaa6b01` |
| 8 | `structure` | [LayerObjectRoundTrips](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean/declarations/layerobjectroundtrips--95fb7d8d52e2ab829e050e02.md) | 107 | `declaration-track:95fb7d8d52e2ab829e050e028b2584bd5126b89f64a5005d1785305af2d891d6` |
| 9 | `structure` | [LayerHomRoundTrips](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean/declarations/layerhomroundtrips--e08c16658ace28f82dfdb027.md) | 133 | `declaration-track:e08c16658ace28f82dfdb0278296984578ecef46838eeb6c34331dd1cc3945cb` |
| 10 | `structure` | [LayerCategoryEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean/declarations/layercategoryequivalence--db2b7a27e44efd98195f3fe8.md) | 143 | `declaration-track:db2b7a27e44efd98195f3fe883d4bd6d3eaf7ef016d4ace16ecdea67bc8388e2` |
| 11 | `def` | [LayerCategoryEquivalence.logicToWisdom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean/declarations/layercategoryequivalence-logictowisdom--169fef96058e01c08abe6cf8.md) | 153 | `declaration-track:169fef96058e01c08abe6cf8309a02128d5dd9e2f21e4f89efe51af23337042a` |
| 12 | `def` | [LayerCategoryEquivalence.wisdomToLogic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean/declarations/layercategoryequivalence-wisdomtologic--6fad274594dde5519c04d924.md) | 177 | `declaration-track:6fad274594dde5519c04d924340c8ea7e2469e3e6c467dea54878949bf174f55` |
| 13 | `theorem` | [LayerCategoryEquivalence.logic_wisdom_object_round_trip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean/declarations/layercategoryequivalence-logic-wisdom-object-round-trip--b5e9c7744aaaf01aefbbdae3.md) | 201 | `result-track:b5e9c7744aaaf01aefbbdae3a5ce2e1719c13689b95702b0398f289e27962af3` |
| 14 | `theorem` | [LayerCategoryEquivalence.wisdom_logic_object_round_trip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean/declarations/layercategoryequivalence-wisdom-logic-object-round-trip--0521b1142db3b24d09057bf6.md) | 213 | `result-track:0521b1142db3b24d09057bf67b83681b92691ea63f93be18f565482f2c635c11` |
| 15 | `theorem` | [LayerCategoryEquivalence.logicToWisdom_object_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bridge/Variantdbc9b7bd9e5ed5699467951d34a787393eaf49e7f6de5fb5f273f3d93504f53a.lean/declarations/layercategoryequivalence-logictowisdom-object-bijective--853ac831126db1f731e398fb.md) | 225 | `result-track:853ac831126db1f731e398fb210b3c5586ae174d2be51393730d6717a94c3da9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
