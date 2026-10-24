# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DayFunctor.Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f4f446197a455f01cf0f2b98301d65a7f064991",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f4f446197a455f01cf0f2b98301d65a7f064991`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean.json)

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
| 1 | `structure` | [DayFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/dayfunctor--6fbd12d29f95ec0e6dc2e1bd.md) | 40 | `declaration-track:6fbd12d29f95ec0e6dc2e1bd4dc8b30a71a171fd46713a480284d2defa839151` |
| 2 | `lemma` | [mk_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/mk-functor--e1389da0d45c41515e11941c.md) | 54 | `result-track:e1389da0d45c41515e11941c6bea835fa24366a2a8cda50834f2a1eba4c155da` |
| 3 | `lemma` | [functor_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/functor-mk--df1a572bed888aabc93e5fb0.md) | 57 | `result-track:df1a572bed888aabc93e5fb0fefbbbafda32f1169b05d40492b8fee7dd7e4bef` |
| 4 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/hom--f36f5ede400b3753004ce825.md) | 61 | `declaration-track:f36f5ede400b3753004ce8252f0d78805d7e6a76f2da38ebcddf263c4793ec0d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/instance--b0c57cd76146e798e6d1c2ad.md) | 66 | `declaration-track:b0c57cd76146e798e6d1c2ada2b105ecda47f78d27d6d7724c50938e8e5d8ee3` |
| 6 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/hom-ext--b29f436aadcd54d0a61a0620.md) | 72 | `result-track:b29f436aadcd54d0a61a06203547a0a819cbf200349cbc6389657e1342507b1d` |
| 7 | `def` | [equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/equiv--c6b7ec34c1f72b08ddcf9146.md) | 82 | `declaration-track:c6b7ec34c1f72b08ddcf914605a4fb0aef13a7e3cd6e38c2dac6178a6e0eaccb` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/instance--be7f53d205c17f073d703898.md) | 114 | `declaration-track:be7f53d205c17f073d703898222fa1a2d9a078e03c565c2ac933cee57d27d4c9` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/instance--eea5d5c19598532c04f271e5.md) | 122 | `declaration-track:eea5d5c19598532c04f271e545e9c8504ebadb6d30484d46a078e0b66ba05a38` |
| 10 | `def` | [η](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/anonymous--1a48ca3f69d586bca682017b.md) | 131 | `declaration-track:1a48ca3f69d586bca682017b5fc79e43f6284578920442e0566a7e16bfe74245` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/instance--96405474eec65955d2013f43.md) | 137 | `declaration-track:96405474eec65955d2013f43bb29aad2b92b106c172bac9db0d8efab4d0b8ed3` |
| 12 | `theorem` | [tensor_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/tensor-hom-ext--bcce1d99504349fb22019ea7.md) | 141 | `result-track:bcce1d99504349fb22019ea710b34e07a74a6a88fe563855f1a34f0d8c68572a` |
| 13 | `def` | [tensorDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/tensordesc--bef37b07f29f52ffc0f2f707.md) | 154 | `declaration-track:bef37b07f29f52ffc0f2f70716226fc731ba28189d04f0729410fa68bd8d620d` |
| 14 | `lemma` | [η_comp_tensorDec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/comp-tensordec--20b6543f1a806af0711b4b62.md) | 159 | `result-track:20b6543f1a806af0711b4b62a25383f4fd9465e961295b3b8a4573008ee258e8` |
| 15 | `lemma` | [η_comp_tensorDesc_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/comp-tensordesc-app--ce9d1562a1428115101137fe.md) | 165 | `result-track:ce9d1562a1428115101137feecbaff382cfca8da607685be8674f540c5ab4cba` |
| 16 | `def` | [isoPointwiseLeftKanExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/isopointwiseleftkanextension--92cc14de72619347598f00be.md) | 172 | `declaration-track:92cc14de72619347598f00be78a105186af7aa38742a24d0b530f4c9381328d4` |
| 17 | `lemma` | [η_comp_isoPointwiseLeftKanExtension_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/comp-isopointwiseleftkanextension-hom--9c5e73253888e1fa09552604.md) | 181 | `result-track:9c5e73253888e1fa09552604ad4a85ba66fdaf49c21c99d69213d538a8e321a7` |
| 18 | `lemma` | [ι_comp_isoPointwiseLeftKanExtension_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/comp-isopointwiseleftkanextension-inv--2525cd5fb5d392ac6f854c16.md) | 194 | `result-track:2525cd5fb5d392ac6f854c1673059f215803474537a3e656aebaae87d8fc505d` |
| 19 | `def` | [ν](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/anonymous--e044e3be8276b428226ee750.md) | 205 | `declaration-track:e044e3be8276b428226ee75051a32e94c9ff09e547269a539af169a294015bdb` |
| 20 | `def` | [νNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/nattrans--01b643021f73fefe482730cf.md) | 212 | `declaration-track:01b643021f73fefe482730cf64778f8840e567a26eedad911e81cb10939ed150` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/instance--e5e1e3bb44c34e92d5e8a168.md) | 218 | `declaration-track:e5e1e3bb44c34e92d5e8a1683997b76d96c080c8b1abde3ed2e0781def0f3d42` |
| 22 | `lemma` | [unit_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/unit-hom-ext--1badce450e6597625304a626.md) | 221 | `result-track:1badce450e6597625304a626019995bc59cb438f90fbba8f02426a9ba80e0d2e` |
| 23 | `def` | [unitDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/unitdesc--dad2024fb5f1d69c4158837b.md) | 233 | `declaration-track:dad2024fb5f1d69c4158837b79c1efa1fa0560319843a0175edefa60d6d9d017` |
| 24 | `lemma` | [ν_comp_unitDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DayFunctor/Variantdf584f46171e0274092cbf2fc365cb35dc169c3bfbcdab1dc609703211880929.lean/declarations/comp-unitdesc--2910879666a774aa61fa3072.md) | 240 | `result-track:2910879666a774aa61fa3072c4b07c11c93c125a12567ec82711ad953284245a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
