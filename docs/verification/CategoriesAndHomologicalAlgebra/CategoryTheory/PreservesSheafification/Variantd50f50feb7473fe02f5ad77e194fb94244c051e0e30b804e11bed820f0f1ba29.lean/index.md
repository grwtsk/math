# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesSheafification.Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7aeff8fcbdbf847393b0e4687885552b15c1774f",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7aeff8fcbdbf847393b0e4687885552b15c1774f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Localization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.CompatibleSheafification` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Whiskering` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreservesSheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/declarations/preservessheafification--0696d99bee4793c62e5bff8a.md) | 57 | `declaration-track:0696d99bee4793c62e5bff8a94a8cb5e8b3b6604134801fa6202032d36a82ccc` |
| 2 | `lemma` | [W_of_preservesSheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/declarations/w-of-preservessheafification--56e732ee1f6cc216fe1c28ec.md) | 62 | `result-track:56e732ee1f6cc216fe1c28ecc92061f470d267eea50ea4331fa26c34d69fbae0` |
| 3 | `lemma` | [W_isInvertedBy_whiskeringRight_presheafToSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/declarations/w-isinvertedby-whiskeringright-presheaftosheaf--e8fe9303bad742913d01ae04.md) | 69 | `result-track:e8fe9303bad742913d01ae042f967233ddc2ff9d03c51a90926afea47ddfebf0` |
| 4 | `abbrev` | [Sheaf.composeAndSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/declarations/sheaf-composeandsheafify--b8ded1ea208de003142237ff.md) | 84 | `declaration-track:b8ded1ea208de003142237ff52cc3841209de232861fc1df5726da9761e0fe40` |
| 5 | `def` | [toPresheafToSheafCompComposeAndSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/declarations/topresheaftosheafcompcomposeandsheafify--0b87eae57b130fa7d289d7cc.md) | 93 | `declaration-track:0b87eae57b130fa7d289d7ccf2eef891074b5b1c56d76a1a1fae2014e4c5985a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/declarations/instance--c655e2477d0e1df8fab8949a.md) | 101 | `declaration-track:c655e2477d0e1df8fab8949a637de7e8cbd00627b5cb5c24816ef0f8cd363c96` |
| 7 | `def` | [presheafToSheafCompComposeAndSheafifyIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/declarations/presheaftosheafcompcomposeandsheafifyiso--ee533cd1b56c8f55e90c1d2a.md) | 111 | `declaration-track:ee533cd1b56c8f55e90c1d2a886e34cdc859073ad562525269e54e109e87f69c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/declarations/instance--088ea6c63ca94ab904c4d4d6.md) | 116 | `declaration-track:088ea6c63ca94ab904c4d4d6b81ca8725400a7f9a79975bcb8d0cf8f67fb1ee4` |
| 9 | `lemma` | [GrothendieckTopology.preservesSheafification_iff_of_adjunctions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/declarations/grothendiecktopology-preservessheafification-iff-of-adjunctions--46b8a4da2f32d7bece101407.md) | 127 | `result-track:46b8a4da2f32d7bece101407b7b28a9d60dd0fef7722c8db95745406ef388090` |
| 10 | `def` | [sheafComposeNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/declarations/sheafcomposenattrans--093479dfcf40569065ca6ab1.md) | 156 | `declaration-track:093479dfcf40569065ca6ab1ca861f2c4a4dabc504a2611ee7032f85db3ea8c3` |
| 11 | `lemma` | [sheafComposeNatTrans_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/declarations/sheafcomposenattrans-fac--3b3042523be084b9db6c8014.md) | 168 | `result-track:3b3042523be084b9db6c8014b1ffd0edc17f266d2f56332c8e24f4d24eba316e` |
| 12 | `lemma` | [sheafComposeNatTrans_app_uniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/declarations/sheafcomposenattrans-app-uniq--a81d9df254c1bbf4cb55cef0.md) | 175 | `result-track:a81d9df254c1bbf4cb55cef0cae9219bd080730fd56a86a3c0dd47b92a702896` |
| 13 | `lemma` | [GrothendieckTopology.preservesSheafification_iff_of_adjunctions_of_hasSheafCompose](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/declarations/grothendiecktopology-preservessheafification-iff-of-adjunctions-of-hassh--b13a8dc55494b75794c1403c.md) | 186 | `result-track:b13a8dc55494b75794c1403cbcea2b82fb19e1bbbbdbc76e285a435ab082cb0c` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/declarations/instance--402b330cbb3e53c602426f46.md) | 198 | `declaration-track:402b330cbb3e53c602426f4663545bbf5dbd1380d4ef4d2fc2afe68a2b4a9795` |
| 15 | `def` | [sheafComposeNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/declarations/sheafcomposenatiso--803b1fc5a774f4a1860b6261.md) | 206 | `declaration-track:803b1fc5a774f4a1860b6261fbdfd950c5022bb7658433cf8f7d5efd3274e6a4` |
| 16 | `def` | [sheafifyComposeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/declarations/sheafifycomposeiso--f882b0aaa926614db876fec0.md) | 221 | `declaration-track:f882b0aaa926614db876fec00e11395c6bc71f7150c15cd8796da9b02ffc3f0f` |
| 17 | `lemma` | [sheafComposeIso_hom_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/declarations/sheafcomposeiso-hom-fac--0d6792d46d0acc66fe89d6d9.md) | 227 | `result-track:0d6792d46d0acc66fe89d6d98e7ff5c3dba7275c47c767c80881358a29a99cb4` |
| 18 | `lemma` | [sheafComposeIso_inv_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/declarations/sheafcomposeiso-inv-fac--95369cbbea553d2125b1f845.md) | 233 | `result-track:95369cbbea553d2125b1f84521d8b2287db2847eddf97b22ed98db1122e8e98b` |
| 19 | `lemma` | [sheafToPresheaf_map_sheafComposeNatTrans_eq_sheafifyCompIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/declarations/sheaftopresheaf-map-sheafcomposenattrans-eq-sheafifycompiso-inv--8be9ca3740d7486193e83a1a.md) | 260 | `result-track:8be9ca3740d7486193e83a1a15bf480739d085c5d7ce542cf581194596669946` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/declarations/instance--cf41bf151440dc176c9720f9.md) | 273 | `declaration-track:cf41bf151440dc176c9720f9c37458c6316e396cac9ae6d5e469650647f7f7eb` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/declarations/instance--649b7fc40c00e80f151ec5d3.md) | 279 | `declaration-track:649b7fc40c00e80f151ec5d314477ebfb3b0196152fec16be27adc864023a211` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/declarations/instance--dbccf8477ee09cb3e55f87bd.md) | 282 | `declaration-track:dbccf8477ee09cb3e55f87bd92d7ad70516f38aab9c7a59f921c40d9deda33e2` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantd50f50feb7473fe02f5ad77e194fb94244c051e0e30b804e11bed820f0f1ba29.lean/declarations/example--901f9521ffbe9f50ce554a24.md) | 290 | `declaration-track:901f9521ffbe9f50ce554a249543549da7ac0c74ec1db4a647634e94931a5443` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
