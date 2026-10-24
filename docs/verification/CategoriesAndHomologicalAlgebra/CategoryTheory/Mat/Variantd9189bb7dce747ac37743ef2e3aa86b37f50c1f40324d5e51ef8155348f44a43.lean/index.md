# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Mat.Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a77d14ea5c8f7d49dfc10fd4287318f10059ea0",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a77d14ea5c8f7d49dfc10fd4287318f10059ea0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Biproducts` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.DMatrix` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.FintypeCat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.SingleObj` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Opposites` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Mat_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/mat--b235534909fb1f4e772c2015.md) | 67 | `declaration-track:b235534909fb1f4e772c20159fc2126645aa38f2e2b4904957b2a107ca78cff9` |
| 2 | `def` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/hom--3901e362bf4c1c38737015df.md) | 82 | `declaration-track:3901e362bf4c1c38737015dfa7ae6a867baaad6637056444fee368d4955bff78` |
| 3 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/id--ac040e7c91f470edf7a3f957.md) | 90 | `declaration-track:ac040e7c91f470edf7a3f957f430f691db6ae0be103a8685ccd370bc942592c8` |
| 4 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/comp--2a350d91d36e3e898aff8399.md) | 95 | `declaration-track:2a350d91d36e3e898aff83997a9275e477bfc802bdb134fde0dfc3f1594c5591` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/instance--aad6204bbff82245e951ca11.md) | 106 | `declaration-track:aad6204bbff82245e951ca11facfa657d1539daad956f2432991212fe7b45828` |
| 6 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/hom-ext--0a7243a032060f25720662e9.md) | 121 | `result-track:0a7243a032060f25720662e9cafb038262c348ee55c47bd3fb82632f28828c26` |
| 7 | `theorem` | [id_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/id-def--e9bb7735ec043d43242fb87d.md) | 124 | `result-track:e9bb7735ec043d43242fb87d4cb05e56037e7faa9a8d7043b9f7e25a43073b0d` |
| 8 | `theorem` | [id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/id-apply--f20b44684568544f1e478637.md) | 130 | `result-track:f20b44684568544f1e478637c8c880b38ebda1e6334bc7643303bd2dcf7ce626` |
| 9 | `theorem` | [id_apply_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/id-apply-self--29584c9e7e74613667d430ba.md) | 137 | `result-track:29584c9e7e74613667d430baa0b24fafda5a916840e87d1132c7bff9326b4a17` |
| 10 | `theorem` | [id_apply_of_ne](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/id-apply-of-ne--3f6703942ab4fee6c3b046f3.md) | 142 | `result-track:3f6703942ab4fee6c3b046f3259e9b8457f3823ebad3216efb4d636af8df54d9` |
| 11 | `theorem` | [comp_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/comp-def--06092ac726e51a5083db352e.md) | 147 | `result-track:06092ac726e51a5083db352efe0d86bb6b762f0ab6c547c05813a297952bea3c` |
| 12 | `theorem` | [comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/comp-apply--462eee68af910bf6310d34b3.md) | 154 | `result-track:462eee68af910bf6310d34b3c3758bfd29d88e83d5dbf6f91428ade6fca90cb2` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/instance--09db38a5e75e92e62f904dcb.md) | 160 | `declaration-track:09db38a5e75e92e62f904dcbc2aaa8f5a8d3493e3f36c847c94ef6c55005578b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/instance--a4bb5cedfb2d164bf8ecdbe7.md) | 167 | `declaration-track:a4bb5cedfb2d164bf8ecdbe7584d828f9f6850505948fa1aef7402c1684dfe75` |
| 15 | `theorem` | [add_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/add-apply--497993dfdfb60fc4c511722f.md) | 172 | `result-track:497993dfdfb60fc4c511722ffe2a70fa097eb61628e2cf8bed08a64ea3310bcb` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/instance--a158b0e0b108cbf8bd76b035.md) | 177 | `declaration-track:a158b0e0b108cbf8bd76b035bd5114dc3d1ca9596f89d316da1d457329ba330d` |
| 17 | `instance` | [hasFiniteBiproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/hasfinitebiproducts--18476e0c2f880dc4bef122d4.md) | 190 | `declaration-track:18476e0c2f880dc4bef122d4a2101c2aa3a10bf2599f1f504d0d77260f8d1841` |
| 18 | `def` | [mapMat_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/mapmat--1388ab767a6a524ca0646b7b.md) | 270 | `declaration-track:1388ab767a6a524ca0646b7b73d67e40b87809e7ab33041d3e2a47a73166c151` |
| 19 | `def` | [mapMatId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/mapmatid--c7ec992c08c9ab45d75834f5.md) | 279 | `declaration-track:c7ec992c08c9ab45d75834f5f245306c3deb409c0d24c08a63336015505bfa87` |
| 20 | `def` | [mapMatComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/mapmatcomp--d0304c9584f266c020da3ecc.md) | 290 | `declaration-track:d0304c9584f266c020da3ecc23f3afe194519b68f6ef71ae6d1edcb8903af292` |
| 21 | `def` | [embedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/embedding--b796dc9baf75a17d7001e0f1.md) | 306 | `declaration-track:b796dc9baf75a17d7001e0f1035551751a02e658dbddca41251edf0fd4990c4e` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/instance--d359118f835ad027dfa04e00.md) | 316 | `declaration-track:d359118f835ad027dfa04e00f71fcbd48a750e4645a3fb1f2075b588bc03bd7b` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/instance--9ef63f44637c73d89733b64d.md) | 319 | `declaration-track:9ef63f44637c73d89733b64d98bf16cf8fcd43c0448b6b435d8e376a493c4581` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/instance--5d9bdbd854bf2b25c27c2fec.md) | 321 | `declaration-track:5d9bdbd854bf2b25c27c2fec6ba1f23e2e843823a799eec5dd3f1265e1ef149f` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/instance--5bf4b90105a61e815a9b7b02.md) | 325 | `declaration-track:5bf4b90105a61e815a9b7b024d09d627c2f9ffd39510d12656324d6fe56dfd94` |
| 26 | `def` | [isoBiproductEmbedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/isobiproductembedding--c0d069b0b0db561d3077168d.md) | 335 | `declaration-track:c0d069b0b0db561d3077168d30e1db702ba5d1eec158f2381accb8809f0ff340` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/instance--2f58938ffe54d01ef1a6f750.md) | 370 | `declaration-track:2f58938ffe54d01ef1a6f750ebfbce48202f301246f95934b225d13c529e717b` |
| 28 | `def` | [additiveObjIsoBiproduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/additiveobjisobiproduct--72885a2f7f780a9812b91875.md) | 378 | `declaration-track:72885a2f7f780a9812b918750a30a09c68da437819b5c040f3b3d17de1ff2265` |
| 29 | `lemma` | [additiveObjIsoBiproduct_hom_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/additiveobjisobiproduct-hom--2e9cefb3a6e95ccc86ed8820.md) | 385 | `result-track:2e9cefb3a6e95ccc86ed8820b6ae4d6c328e843e038da06d1b90965b1bf2349c` |
| 30 | `lemma` | [ι_additiveObjIsoBiproduct_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/additiveobjisobiproduct-inv--6632bb0ba0845d4c9c413e46.md) | 394 | `result-track:6632bb0ba0845d4c9c413e4658dbb69b805c7f21056d3cefb7039811dc3d57e8` |
| 31 | `theorem` | [additiveObjIsoBiproduct_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/additiveobjisobiproduct-naturality--8c3d1f91c3b9242f5251b2a5.md) | 403 | `result-track:8c3d1f91c3b9242f5251b2a5f3807094d512c003da34937d92652a7d6ecbd99f` |
| 32 | `theorem` | [additiveObjIsoBiproduct_naturality'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/additiveobjisobiproduct-naturality--080fd3ff71e4ddc6e068fe68.md) | 422 | `result-track:080fd3ff71e4ddc6e068fe6849441bcc83926c0bf1a0130ddd8d065c4c53ef66` |
| 33 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/lift--8b34c88014bf78a450b7d1b6.md) | 436 | `declaration-track:8b34c88014bf78a450b7d1b63fa69a2e7b12a694031c14d3520ba3b08e287306` |
| 34 | `instance` | [lift_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/lift-additive--0df740edb67b37cecb5297d8.md) | 448 | `declaration-track:0df740edb67b37cecb5297d8ea67d77859e888ef218b997b2bcff4f2fde6c49c` |
| 35 | `def` | [embeddingLiftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/embeddingliftiso--d494d36c39d9cf721af3fd21.md) | 454 | `declaration-track:d494d36c39d9cf721af3fd21feab3dd0ea07826d21ac7356d4a4da064935aa43` |
| 36 | `def` | [liftUnique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/liftunique--f429ca88136eb430048f8829.md) | 464 | `declaration-track:f429ca88136eb430048f88291585f7f9b7df708a0344bb52c60014642e698a36` |
| 37 | `def` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/ext--97451b6ba75fa882711eed7f.md) | 491 | `declaration-track:97451b6ba75fa882711eed7ff7a5ad180944858e091e57e9e3da3d2c04351141` |
| 38 | `def` | [equivalenceSelfOfHasFiniteBiproductsAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/equivalenceselfofhasfinitebiproductsaux--2837f79e2a0becd2b6ee279f.md) | 499 | `declaration-track:2837f79e2a0becd2b6ee279fce1a65e0e34449011f98b2e937c9817332b585c7` |
| 39 | `def` | [equivalenceSelfOfHasFiniteBiproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/equivalenceselfofhasfinitebiproducts--71b26df07f156b0083006317.md) | 513 | `declaration-track:71b26df07f156b008300631751986f7e1990c266d45fc0f72a169826c66dc580` |
| 40 | `theorem` | [equivalenceSelfOfHasFiniteBiproducts_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/equivalenceselfofhasfinitebiproducts-functor--61014030fb9cb9aee7dcdfd0.md) | 524 | `result-track:61014030fb9cb9aee7dcdfd044809454b4d57eb84a2a6782c2f84a4f9eb3959f` |
| 41 | `theorem` | [equivalenceSelfOfHasFiniteBiproducts_inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/equivalenceselfofhasfinitebiproducts-inverse--86e6517e6d98219fdb6ca8be.md) | 532 | `result-track:86e6517e6d98219fdb6ca8be02747c2988aed583f386121221a6faaccf8a1728` |
| 42 | `def` | [Mat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/mat--1b701564b49e04d26aa6926c.md) | 546 | `declaration-track:1b701564b49e04d26aa6926cb6ff86a4a3ed88c32288c6434c3120e8ffd89153` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/instance--78f219a1df7763ba0c650856.md) | 551 | `declaration-track:78f219a1df7763ba0c650856c85c5add439be9edc4ba4f6e424f257b7db1463d` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/instance--ec766f205251ec8980ba9b9b.md) | 555 | `declaration-track:ec766f205251ec8980ba9b9b2d80a35cfde300b7ee99c23338e62bf9336fb65c` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/instance--f3f74311f197e490eb9e4bf6.md) | 560 | `declaration-track:f3f74311f197e490eb9e4bf6316a5647316d2c0d188e9922da1841ddf21a19ca` |
| 46 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/hom-ext--05f7b2c174e861b369b0d056.md) | 575 | `result-track:05f7b2c174e861b369b0d05683553c4f44956ae29d4e1cb19b342f6561d6b640` |
| 47 | `theorem` | [id_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/id-def--81b138a9561ec0bd76954e89.md) | 580 | `result-track:81b138a9561ec0bd76954e89ee03e2c55ea8d17c6b77bf7217b55fb5d9164fae` |
| 48 | `theorem` | [id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/id-apply--18e6847367d2da10102c37c7.md) | 585 | `result-track:18e6847367d2da10102c37c7eb1a9cf8a888189126d721f4fac53fd22a414788` |
| 49 | `theorem` | [id_apply_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/id-apply-self--25530fdc1c3b5a4b4d8e46cf.md) | 591 | `result-track:25530fdc1c3b5a4b4d8e46cf9c1191fdeb05ccfe2e62d7e5cf242c99adefab3b` |
| 50 | `theorem` | [id_apply_of_ne](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/id-apply-of-ne--0cd450021cd096b1f30803bc.md) | 596 | `result-track:0cd450021cd096b1f30803bc7e0f90096f979698f11155eaaf128976fba2cc12` |
| 51 | `theorem` | [comp_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/comp-def--ae778b56767e86e42f63c87d.md) | 601 | `result-track:ae778b56767e86e42f63c87d2102b1f10b43e4c3b3cf34a46de661d6b54ff9ba` |
| 52 | `theorem` | [comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/comp-apply--b0bfb0484e0e215a5b6e322a.md) | 608 | `result-track:b0bfb0484e0e215a5b6e322a928361908c383066f15e5112622b4bd9c5d231d0` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/instance--18d954cf27e4426d3a28cbf3.md) | 614 | `declaration-track:18d954cf27e4426d3a28cbf3b7f7943a1d4f241baed6442736aa3db451c58911` |
| 54 | `def` | [equivalenceSingleObjInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/equivalencesingleobjinverse--e7d7d9d6fae8398c2d7fbd28.md) | 625 | `declaration-track:e7d7d9d6fae8398c2d7fbd28068f643001d2cb2bdef835cd33c5960f5e0a1cc5` |
| 55 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/instance--9b75414807d53a909aa20eb6.md) | 640 | `declaration-track:9b75414807d53a909aa20eb6fbaad664f5176ffe8ce8db5c665653f9c186eae5` |
| 56 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/instance--b2e66c9c5eb76582d4f1eeab.md) | 646 | `declaration-track:b2e66c9c5eb76582d4f1eeabdba2673e4e110f384f1ed0ab3c12287af638ec22` |
| 57 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/instance--e605f34db5bda8724e6c86a8.md) | 649 | `declaration-track:e605f34db5bda8724e6c86a849b2171f975d90d1a461793e77cf3a09fc9a679f` |
| 58 | `def` | [equivalenceSingleObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/equivalencesingleobj--60eda2e7d74fc78229f136d1.md) | 656 | `declaration-track:60eda2e7d74fc78229f136d1bd0ab1ffb58439dbeb9dc48fe8512b0f9cf4886f` |
| 59 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/instance--9ba7395e0d5f8a5a1ece77fc.md) | 663 | `declaration-track:9ba7395e0d5f8a5a1ece77fc9e5cbbfc737978d15840481c2dc103d30b419d90` |
| 60 | `theorem` | [add_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/add-apply--6b4f73af90d5ea9a4bb0f7dc.md) | 671 | `result-track:6b4f73af90d5ea9a4bb0f7dc56147b360873ca1853a721ef3738ec8cc2cbf057` |
| 61 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Mat/Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43.lean/declarations/instance--823f44ee45ef6c2f34ace065.md) | 676 | `declaration-track:823f44ee45ef6c2f34ace065896ae668394f0a3173e39dfad074814d4a9fcf77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
