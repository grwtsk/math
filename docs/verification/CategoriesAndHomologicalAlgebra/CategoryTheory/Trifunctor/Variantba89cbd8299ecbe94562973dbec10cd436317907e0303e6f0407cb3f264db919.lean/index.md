# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Trifunctor.Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0504a1fb1fcf1a3508e54bde8e5b5d6ba04628ce",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0504a1fb1fcf1a3508e54bde8e5b5d6ba04628ce`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.GradedObject.Bifunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Trifunctor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapTrifunctorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/maptrifunctorobj--ad85cf933b7b2e915bb4f74c.md) | 41 | `declaration-track:ad85cf933b7b2e915bb4f74cbd65afe3ff92f2fdfe37aff3e58f432e0bd084cc` |
| 2 | `def` | [mapTrifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/maptrifunctor--3be3f29bf820bd77178ae8c0.md) | 54 | `declaration-track:3be3f29bf820bd77178ae8c0b5eb687044ae73c62e93f0751bc87689371f69e8` |
| 3 | `def` | [mapTrifunctorMapNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/maptrifunctormapnattrans--3600f48e8a4a09b08c1ad1eb.md) | 76 | `declaration-track:3600f48e8a4a09b08c1ad1ebda53a9d5f439f34be4a8970d0b195d9ab858f173` |
| 4 | `def` | [mapTrifunctorMapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/maptrifunctormapiso--1d9d82a11a40a39872279b91.md) | 93 | `declaration-track:1d9d82a11a40a39872279b91180b4da5bc5f6fc2dd2385d61e367b2013910eed` |
| 5 | `def` | [mapTrifunctorMapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/maptrifunctormapobj--3736f136cc88151a9990db6e.md) | 117 | `declaration-track:3736f136cc88151a9990db6e236f4ee2a89edfe145098c318d9542a7e0f4403e` |
| 6 | `def` | [ιMapTrifunctorMapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/maptrifunctormapobj--5d97f39c50cdf520c20ae007.md) | 126 | `declaration-track:5d97f39c50cdf520c20ae007a7aa5f2a42aee11872cc5e60813aa05e45899af5` |
| 7 | `def` | [mapTrifunctorMapMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/maptrifunctormapmap--f75e5b18f3222cd4ae4a51b8.md) | 134 | `declaration-track:f75e5b18f3222cd4ae4a51b8a22b69edc8dfa47f3d6993859a5e8951dc3ade60` |
| 8 | `lemma` | [ι_mapTrifunctorMapMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/maptrifunctormapmap--62d45a71d264d445f08e915f.md) | 145 | `result-track:62d45a71d264d445f08e915fc7f379a7db6678ccad543e4b62e6756255d1a79e` |
| 9 | `lemma` | [mapTrifunctorMapObj_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/maptrifunctormapobj-ext--18b4a17c4a5d45ebbb994cdb.md) | 162 | `result-track:18b4a17c4a5d45ebbb994cdb2d5babbf59d26a2673513f3225a613e6dc3e186b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/instance--349bbe14df275893e0f4c108.md) | 173 | `declaration-track:349bbe14df275893e0f4c108e7f4ef6749132e770a7dfbc829ff22a954bec353` |
| 11 | `def` | [mapTrifunctorMapFunctorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/maptrifunctormapfunctorobj--d84e808d5568fcbed7813390.md) | 182 | `declaration-track:d84e808d5568fcbed7813390fc2cf8d32aa5458e5e47e26389593b5151afae92` |
| 12 | `def` | [mapTrifunctorMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/maptrifunctormap--52a6493febf63a9c5240a162.md) | 222 | `declaration-track:52a6493febf63a9c5240a1621634e84a34a7d142547a4182217345a17bfe54c8` |
| 13 | `structure` | [BifunctorComp₁₂IndexData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/bifunctorcomp-indexdata--55a1d6d86088da5e789f87a0.md) | 255 | `declaration-track:55a1d6d86088da5e789f87a08df666a6f2a756818e7f79c1f9b536e514987dd7` |
| 14 | `abbrev` | [HasGoodTrifunctor₁₂Obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/hasgoodtrifunctor-obj--90b0a1c6a2f8b2656d9ef6db.md) | 272 | `declaration-track:90b0a1c6a2f8b2656d9ef6db83f7d48810d346110f36255ad0d4bd66aba084e8` |
| 15 | `def` | [ιMapBifunctor₁₂BifunctorMapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/mapbifunctor-bifunctormapobj--fe0f9114dc17b0c9d6bb4f06.md) | 283 | `declaration-track:fe0f9114dc17b0c9d6bb4f0693828384c5e0e3e9bf7e39eedf5cb4f150f06151` |
| 16 | `lemma` | [ιMapBifunctor₁₂BifunctorMapObj_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/mapbifunctor-bifunctormapobj-eq--2f83aac36dbd59b8957581cc.md) | 292 | `result-track:2f83aac36dbd59b8957581cc18fdfe060fc1658ab9dcc8b1172df64374af4b2f` |
| 17 | `def` | [cofan₃MapBifunctor₁₂BifunctorMapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/cofan-mapbifunctor-bifunctormapobj--949501a5315a270cf7f1b91d.md) | 302 | `declaration-track:949501a5315a270cf7f1b91defd6d37fdfb1a02e51515bb4e4dc84e5b978b5de` |
| 18 | `def` | [isColimitCofan₃MapBifunctor₁₂BifunctorMapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/iscolimitcofan-mapbifunctor-bifunctormapobj--823839eef130df382be6469d.md) | 313 | `declaration-track:823839eef130df382be6469d24e7399b1711e41699ae8140fd948367e8f137b7` |
| 19 | `lemma` | [HasGoodTrifunctor₁₂Obj.hasMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/hasgoodtrifunctor-obj-hasmap--3fb4327ecaea4d7af67d5521.md) | 353 | `result-track:3fb4327ecaea4d7af67d55210f7a33089384d6162327a5766e47ff5e199fd9da` |
| 20 | `def` | [mapBifunctorComp₁₂MapObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/mapbifunctorcomp-mapobjiso--7abd847fb8123a8a99854ddc.md) | 364 | `declaration-track:7abd847fb8123a8a99854ddc58735a627718231ef78242eef22e829b4cbe59c4` |
| 21 | `lemma` | [ι_mapBifunctorComp₁₂MapObjIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/mapbifunctorcomp-mapobjiso-hom--c325cc004ab3adf6b3fd319a.md) | 371 | `result-track:c325cc004ab3adf6b3fd319ae0086144d91dbf57c8fb0525fc9b755931807071` |
| 22 | `lemma` | [ι_mapBifunctorComp₁₂MapObjIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/mapbifunctorcomp-mapobjiso-inv--3a9d77a24aa2f98963347b67.md) | 380 | `result-track:3a9d77a24aa2f98963347b67cb632af1b0d35b0cc83f321be71a0539696bdb9b` |
| 23 | `lemma` | [mapBifunctor₁₂BifunctorMapObj_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/mapbifunctor-bifunctormapobj-ext--1fb16e5424e41b7b7736d23b.md) | 394 | `result-track:1fb16e5424e41b7b7736d23bb57772c14d4d7a9bf1ff488e97751b30de5a412b` |
| 24 | `def` | [mapBifunctor₁₂BifunctorDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/mapbifunctor-bifunctordesc--37719af558bb00a6fbd7fe3c.md) | 410 | `declaration-track:37719af558bb00a6fbd7fe3cd1388e4f9459375b2e0391b994c47c634e5509e2` |
| 25 | `lemma` | [ι_mapBifunctor₁₂BifunctorDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/mapbifunctor-bifunctordesc--00be61e51f67ca4cbef1071c.md) | 416 | `result-track:00be61e51f67ca4cbef1071cb98d6e41eede83d5decaf9170ed558b46fd2f482` |
| 26 | `structure` | [BifunctorComp₂₃IndexData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/bifunctorcomp-indexdata--007aed9dfcb21b1ee1b485fa.md) | 435 | `declaration-track:007aed9dfcb21b1ee1b485fab0f95b41ce4f16581a6e96c03b54ab55f178170d` |
| 27 | `abbrev` | [HasGoodTrifunctor₂₃Obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/hasgoodtrifunctor-obj--fbacc8a4cbabb318d0f32257.md) | 452 | `declaration-track:fbacc8a4cbabb318d0f32257c2dcd6662a3d985e819c86df8322c30013b554d8` |
| 28 | `def` | [ιMapBifunctorBifunctor₂₃MapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/mapbifunctorbifunctor-mapobj--71ce0d0099a9a64bb87a72d5.md) | 462 | `declaration-track:71ce0d0099a9a64bb87a72d5e28cb148e7c9726954c2aef1044eeeb13531339a` |
| 29 | `lemma` | [ιMapBifunctorBifunctor₂₃MapObj_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/mapbifunctorbifunctor-mapobj-eq--8d1dccf8355234070cbefc92.md) | 471 | `result-track:8d1dccf8355234070cbefc927c5acefc7b97c86a6c3f48de451e843fd3ef1be1` |
| 30 | `def` | [cofan₃MapBifunctorBifunctor₂₃MapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/cofan-mapbifunctorbifunctor-mapobj--eebab566b6c13cfb99dc3490.md) | 481 | `declaration-track:eebab566b6c13cfb99dc3490027e856ea73a0a18a3cf3df88e800be43037f3c8` |
| 31 | `def` | [isColimitCofan₃MapBifunctorBifunctor₂₃MapObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/iscolimitcofan-mapbifunctorbifunctor-mapobj--5fbbca9ee4d61d980f91e472.md) | 492 | `declaration-track:5fbbca9ee4d61d980f91e47279dae2bac6ea117dc9bc69f8fa03a6d5672c5e8c` |
| 32 | `lemma` | [HasGoodTrifunctor₂₃Obj.hasMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/hasgoodtrifunctor-obj-hasmap--153e6d02d980af2c7101677f.md) | 531 | `result-track:153e6d02d980af2c7101677f74210c7cb3eba1f68a2126ff4f81bea85d3b19a5` |
| 33 | `def` | [mapBifunctorComp₂₃MapObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/mapbifunctorcomp-mapobjiso--4a26594b16f71c90370ee961.md) | 542 | `declaration-track:4a26594b16f71c90370ee961d34cf19f7ed0a6c1643c2a7604cc43467825ac0f` |
| 34 | `lemma` | [ι_mapBifunctorComp₂₃MapObjIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/mapbifunctorcomp-mapobjiso-hom--f9295ae41514a7e2727267de.md) | 549 | `result-track:f9295ae41514a7e2727267de660e2e8ea9b4f829a82ee9beeac785e74b9e4dbd` |
| 35 | `lemma` | [ι_mapBifunctorComp₂₃MapObjIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/mapbifunctorcomp-mapobjiso-inv--c7530e1c7529ddf5e86b9602.md) | 558 | `result-track:c7530e1c7529ddf5e86b9602ae02d1703172893752eb5fc5ef7215734648b489` |
| 36 | `lemma` | [mapBifunctorBifunctor₂₃MapObj_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/mapbifunctorbifunctor-mapobj-ext--ad5caabd0c25b2947d5badeb.md) | 572 | `result-track:ad5caabd0c25b2947d5badebf2c5b1132daf2e0834bba15beae44baba05a4e4d` |
| 37 | `def` | [mapBifunctorBifunctor₂₃Desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/mapbifunctorbifunctor-desc--7f176e9587f177f9027293b9.md) | 589 | `declaration-track:7f176e9587f177f9027293b9276947baad108a34f6f41356508c1cb6ba8084eb` |
| 38 | `lemma` | [ι_mapBifunctorBifunctor₂₃Desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/declarations/mapbifunctorbifunctor-desc--bd9908338eba90ed0baba0ee.md) | 595 | `result-track:bd9908338eba90ed0baba0eeccc4b7ff7ab6cfcc729ba3eac8cddee0a9333148` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
