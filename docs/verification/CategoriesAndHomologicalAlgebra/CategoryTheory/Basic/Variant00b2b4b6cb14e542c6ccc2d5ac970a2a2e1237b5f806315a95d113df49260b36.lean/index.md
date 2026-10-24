# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b212f27853154d34f4bf2084c6eb6a8933e0d90",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b212f27853154d34f4bf2084c6eb6a8933e0d90`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.CoverLifting` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.CoverPreserving` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LocallyFullyFaithful` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Presieve.CoverByImageStructure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/presieve-coverbyimagestructure--023a2939533302fce4d74e48.md) | 51 | `declaration-track:023a2939533302fce4d74e48aa37ab226713c1a2909a12a8c169664765f1e8be` |
| 2 | `def` | [Presieve.coverByImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/presieve-coverbyimage--68ad07b0712c964de9f8de4a.md) | 64 | `declaration-track:68ad07b0712c964de9f8de4a4e8b6f066415ecbd8c8c693cc5eec8e91e4d0b96` |
| 3 | `def` | [Sieve.coverByImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/sieve-coverbyimage--ee786079f5d0efc7f0551fe5.md) | 70 | `declaration-track:ee786079f5d0efc7f0551fe5a38ecb09dc5323af0172e7b907232b815495bd80` |
| 4 | `theorem` | [Presieve.in_coverByImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/presieve-in-coverbyimage--7a28377748e03ede614c9a79.md) | 74 | `result-track:7a28377748e03ede614c9a79c17adaf34db7002dfc44e6d4a173e4e26e2722f2` |
| 5 | `class` | [Functor.IsCoverDense](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/functor-iscoverdense--1b9e3425efd4dc68ec6f77a4.md) | 83 | `declaration-track:1b9e3425efd4dc68ec6f77a4a9fa30fdb068b55bab6d05fc3cb54b0aaa6d6012` |
| 6 | `lemma` | [Functor.is_cover_of_isCoverDense](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/functor-is-cover-of-iscoverdense--2410f5ed3ad32ce1610624b3.md) | 86 | `result-track:2410f5ed3ad32ce1610624b38212b6f3194fa9e4b30d575c653fb52f1ebb73b3` |
| 7 | `lemma` | [Functor.isCoverDense_of_generate_singleton_functor_π_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/functor-iscoverdense-of-generate-singleton-functor-mem--58f22214c783e213f9ec983c.md) | 90 | `result-track:58f22214c783e213f9ec983c597320d9468b53956b9fe4799de8e51817c11c40` |
| 8 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/ext--3cda46949304e1bc75dd5c9d.md) | 113 | `result-track:3cda46949304e1bc75dd5c9d469046062eba6990bcfc22eeb637772ad579af37` |
| 9 | `theorem` | [functorPullback_pushforward_covering](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/functorpullback-pushforward-covering--56c833a09c2fec6e20b44052.md) | 122 | `result-track:56c833a09c2fec6e20b44052c87fa61d11aa0def21330ec706405c6f35086860` |
| 10 | `def` | [homOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/homover--27f3947c9440d32bbaeb4794.md) | 136 | `declaration-track:27f3947c9440d32bbaeb479432a273088e22d39c7d10ee8e6cd5d26ed0951273` |
| 11 | `def` | [isoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/isoover--956b15c8075afcbdb28fb240.md) | 144 | `declaration-track:956b15c8075afcbdb28fb24076ad61be273f99b08c929423a779499b458b810a` |
| 12 | `theorem` | [sheaf_eq_amalgamation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/sheaf-eq-amalgamation--378aa470d80e1c872f86dd50.md) | 148 | `result-track:378aa470d80e1c872f86dd50975ffb8b6234fbb79697aa7dc59460ed8ef437ff` |
| 13 | `theorem` | [naturality_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/naturality-apply--95aa337c7904354bec0a9686.md) | 157 | `result-track:95aa337c7904354bec0a9686848afeb44b56df2aea2bda7730f080f5c1012fcb` |
| 14 | `theorem` | [naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/naturality--2a24a679b8bffd220d581ba6.md) | 166 | `result-track:2a24a679b8bffd220d581ba6a67f668e9b35662eb86702a4a53b8d3473cabef5` |
| 15 | `def` | [pushforwardFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/pushforwardfamily--6785ad377fb5ad45b2709f15.md) | 172 | `declaration-track:6785ad377fb5ad45b2709f15a95c0fee10f7398c6df9e44708e9a4237ffd1f6d` |
| 16 | `theorem` | [pushforwardFamily_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/pushforwardfamily-def--dd0a8e3bb9f8bf386ed9ad06.md) | 176 | `result-track:dd0a8e3bb9f8bf386ed9ad06f83973197343ec9599db6e2c3230a61a4d5a7c4a` |
| 17 | `theorem` | [pushforwardFamily_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/pushforwardfamily-apply--d9967e5c571b49ea325c2c95.md) | 181 | `result-track:d9967e5c571b49ea325c2c95fb352e97d9b43802c81d1c965acc0027103b6bbb` |
| 18 | `theorem` | [pushforwardFamily_compatible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/pushforwardfamily-compatible--9001d9a6468d88a371271920.md) | 192 | `result-track:9001d9a6468d88a371271920bbeea631e145dcc80cb9eab8f5c4222c4a05f33f` |
| 19 | `def` | [appHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/apphom--648aeb14c0e361ffc3dddbe1.md) | 210 | `declaration-track:648aeb14c0e361ffc3dddbe1e586e645d31f314fc75794d07d7409a7f65674e8` |
| 20 | `theorem` | [appHom_restrict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/apphom-restrict--3417b7a08ca49ffa34de8d10.md) | 216 | `result-track:3417b7a08ca49ffa34de8d10e84bdf16ae706fa26c5c0d8196c0e41364d2b81c` |
| 21 | `theorem` | [appHom_valid_glue](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/apphom-valid-glue--7cb3b27268582f2e402d2d35.md) | 223 | `result-track:7cb3b27268582f2e402d2d35be051982c2a5648915088b6c5d79005ddadd0980` |
| 22 | `def` | [appIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/appiso--2248a71a6ce02be858d0c8e3.md) | 232 | `declaration-track:2248a71a6ce02be858d0c8e35f7ffc4b155fcfbbf25a37897e41850ae8d7a5fe` |
| 23 | `def` | [presheafHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/presheafhom--132bac66d647e8eba97e3c7e.md) | 253 | `declaration-track:132bac66d647e8eba97e3c7e3e0f81d50600f84dfa9602c9e46103aaba37b217` |
| 24 | `def` | [presheafIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/presheafiso--9c9850abdeae3f49a1daca37.md) | 267 | `declaration-track:9c9850abdeae3f49a1daca376d99f60ae6784f528b29925d3b8e37b99629d48d` |
| 25 | `def` | [sheafIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/sheafiso--68ed6769e8b90ad7cfdd6f63.md) | 277 | `declaration-track:68ed6769e8b90ad7cfdd6f63bce35b5ad5b18423b285c170633f8e9b7801abb3` |
| 26 | `def` | [sheafCoyonedaHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/sheafcoyonedahom--d4bb97505a8545db5498cbc0.md) | 296 | `declaration-track:d4bb97505a8545db5498cbc05ec9d4dd3ccb902ac171a41acde2ee0f489e2ec8` |
| 27 | `def` | [sheafYonedaHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/sheafyonedahom--99a7adf9646c5cb6f341e597.md) | 323 | `declaration-track:99a7adf9646c5cb6f341e597546b39bce5c7aba5993d9b82bcdf170710a3788f` |
| 28 | `def` | [sheafHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/sheafhom--bf6a81525e434b579b894588.md) | 338 | `declaration-track:bf6a81525e434b579b894588b179c6857f13e279d6a248a91b4fbd746c9e0702` |
| 29 | `def` | [presheafIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/presheafiso--152a9fea6369bb877bc2dbe4.md) | 349 | `declaration-track:152a9fea6369bb877bc2dbe488666450f239a23c9c121962171d1873e287098e` |
| 30 | `def` | [sheafIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/sheafiso--b5b1ac8b3bbc07b95bd062f4.md) | 368 | `declaration-track:b5b1ac8b3bbc07b95bd062f405cb832c70e3292e607bf015cb683b7e2c57c304` |
| 31 | `theorem` | [sheafHom_restrict_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/sheafhom-restrict-eq--3eac7707b2fb3e08b3eca406.md) | 379 | `result-track:3eac7707b2fb3e08b3eca406c5b4b43ca22280d06f6d2d3f989beceda054f124` |
| 32 | `theorem` | [sheafHom_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/sheafhom-eq--5a0cffdd2b1b85b782a045cd.md) | 408 | `result-track:5a0cffdd2b1b85b782a045cdc5566069eb75256197a74b25ed4a2a60d5ad8709` |
| 33 | `def` | [restrictHomEquivHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/restricthomequivhom--e76dcd7ef6b370c85b23e15f.md) | 427 | `declaration-track:e76dcd7ef6b370c85b23e15fd1e5e0fd95d5fc5ab3e3ef722188210d211a7fe3` |
| 34 | `theorem` | [iso_of_restrict_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/iso-of-restrict-iso--80a5e795025727f94d0bb684.md) | 436 | `result-track:80a5e795025727f94d0bb684df2c9539639db294141493d7afaa433c65b0cc48` |
| 35 | `lemma` | [compatiblePreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/compatiblepreserving--3de45ee569d3b2824b07825b.md) | 445 | `result-track:3de45ee569d3b2824b07825beff721555e87c5a42751ac12aeeb51dfc8a17f60` |
| 36 | `lemma` | [isContinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/iscontinuous--53ce808450017fdb0ba38fd5.md) | 458 | `result-track:53ce808450017fdb0ba38fd5c3125d44384b791cf82c5653c8603c2d1ac59c7e` |
| 37 | `instance` | [full_sheafPushforwardContinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/full-sheafpushforwardcontinuous--3c749cf6a64b0bd14716e7cd.md) | 461 | `declaration-track:3c749cf6a64b0bd14716e7cd56a35f0d663c3485880fd30435f718aeb5bec2aa` |
| 38 | `instance` | [faithful_sheafPushforwardContinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/faithful-sheafpushforwardcontinuous--ca6d952dd6dc6071a8a731d2.md) | 465 | `declaration-track:ca6d952dd6dc6071a8a731d29edba735d89c3af8aaeb6da226071d5280dab3ee` |
| 39 | `lemma` | [whiskerLeft_obj_map_bijective_of_isCoverDense](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/whiskerleft-obj-map-bijective-of-iscoverdense--60c09a46143b1aeb3e649dee.md) | 478 | `result-track:60c09a46143b1aeb3e649dee10c4219d385d0c92fc1c353311b5f860b9f68e67` |
| 40 | `class` | [IsDenseSubsite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/isdensesubsite--45ba7a544e1ef38435eb472f.md) | 489 | `declaration-track:45ba7a544e1ef38435eb472fa96d953de6c54858b27ef953eb52b1c6afccb7db` |
| 41 | `lemma` | [functorPushforward_mem_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/functorpushforward-mem-iff--7430831f76765378a02a8cae.md) | 495 | `result-track:7430831f76765378a02a8caec8931f436b2117ed2da4b188f09db1c2f3188df2` |
| 42 | `lemma` | [isCoverDense](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/iscoverdense--526ca1d18f5323105aa40520.md) | 504 | `result-track:526ca1d18f5323105aa4052016f50439b8046079ebaa1f1badceb5dd4a12ba90` |
| 43 | `lemma` | [isLocallyFull](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/islocallyfull--4854118d6c4700e27c84484f.md) | 505 | `result-track:4854118d6c4700e27c84484f427c8c6b45741e61cb98ef947c36818c8c4e6972` |
| 44 | `lemma` | [isLocallyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/islocallyfaithful--07cfde347b9c572cc2a4243b.md) | 506 | `result-track:07cfde347b9c572cc2a4243bf5ed0b0fc55af2b316f2a5d06807e43107fea7ce` |
| 45 | `lemma` | [coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/coverpreserving--69c619a834fd30f24f26b93e.md) | 508 | `result-track:69c619a834fd30f24f26b93e365f743ab9477d02248bae2d26dfc476193bb9e0` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/instance--15f7c985fd91a01d362aa623.md) | 511 | `declaration-track:15f7c985fd91a01d362aa623904b61c47e265a402a5b00b7d934d1d5750a05be` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/instance--a31fea00dff7f13150d92947.md) | 517 | `declaration-track:a31fea00dff7f13150d92947299a7e0f33e3cf24507f42000e0d9c01ebd1ef23` |
| 48 | `instance` | [full_sheafPushforwardContinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/full-sheafpushforwardcontinuous--af559dcb986105d7260b92c6.md) | 524 | `declaration-track:af559dcb986105d7260b92c64a75ccc4e958b2777c3b8a7abf3e2d1c658047d4` |
| 49 | `instance` | [faithful_sheafPushforwardContinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/faithful-sheafpushforwardcontinuous--e5c3c1677c1c33b33a5e7a48.md) | 530 | `declaration-track:e5c3c1677c1c33b33a5e7a48ae03824c9897505311a50d4e12989fec370a79a4` |
| 50 | `lemma` | [imageSieve_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/imagesieve-mem--1571a82782c1b612384e1b1b.md) | 536 | `result-track:1571a82782c1b612384e1b1b3b90ea9f30a41486e52433423414c26cf646feb3` |
| 51 | `lemma` | [equalizer_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/declarations/equalizer-mem--39458c8acee2466ed2041f35.md) | 541 | `result-track:39458c8acee2466ed2041f358f9efee6de80c15a06315dc941c22b788aa4717b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
