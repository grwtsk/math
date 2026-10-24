# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Resolution.Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b851f511d01f5bf1304bf2d9362845e482de08ae",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b851f511d01f5bf1304bf2d9362845e482de08ae`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Projective` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.ExtraDegeneracy` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Ext` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Ring` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.Rep` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Free` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso.Balanced` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actionDiagonalSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/actiondiagonalsucc--2ad36acedc0659f8833fc2d7.md) | 106 | `declaration-track:2ad36acedc0659f8833fc2d762022d93152c451b7132bcf1bb0e057e8170576b` |
| 2 | `theorem` | [actionDiagonalSucc_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/actiondiagonalsucc-hom-apply--7311da429816d8b843afc2d4.md) | 118 | `result-track:7311da429816d8b843afc2d421cfb066d4640bf4e5f85ac1e3e3430f247294df` |
| 3 | `theorem` | [actionDiagonalSucc_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/actiondiagonalsucc-inv-apply--cf6fa8be2b0e1c8974ab351c.md) | 137 | `result-track:cf6fa8be2b0e1c8974ab351c492073a8107a8849768390a22cde44f76a109a03` |
| 4 | `def` | [diagonalSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/diagonalsucc--a7b915b2166f73432c3153fb.md) | 176 | `declaration-track:a7b915b2166f73432c3153fb003732b0fae81b6aa32d3efd2bb5d0503107e2c9` |
| 5 | `theorem` | [diagonalSucc_hom_single](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/diagonalsucc-hom-single--084d310223e8c409d42e2ae5.md) | 184 | `result-track:084d310223e8c409d42e2ae55438bf5326e032c7ae342e6ae658f52efd778082` |
| 6 | `theorem` | [diagonalSucc_inv_single_single](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/diagonalsucc-inv-single-single--ceb083def17e1c9860629373.md) | 194 | `result-track:ceb083def17e1c9860629373a884633f88e99e7d3b1750e1e1b89ac80ccdf545` |
| 7 | `theorem` | [diagonalSucc_inv_single_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/diagonalsucc-inv-single-left--db32a705f4098b2f3570c538.md) | 214 | `result-track:db32a705f4098b2f3570c53810fb86b8f23b28b4500f2b9bd503fd407d7d907a` |
| 8 | `theorem` | [diagonalSucc_inv_single_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/diagonalsucc-inv-single-right--40b57e16f729c4541a6cba23.md) | 225 | `result-track:40b57e16f729c4541a6cba23d467cecd0732021f40ed9036d22981f337d57e10` |
| 9 | `def` | [ofMulActionBasisAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/ofmulactionbasisaux--9814f7a8edca83831f2a2ec8.md) | 245 | `declaration-track:9814f7a8edca83831f2a2ec865fb013ce0614e64da25b2c21628903b93a3ef96` |
| 10 | `def` | [ofMulActionBasis](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/ofmulactionbasis--d528bc46b17217b1f7a5fa50.md) | 270 | `declaration-track:d528bc46b17217b1f7a5fa50391ce2d06e7697f18eee9d5dd02e739b510e157c` |
| 11 | `theorem` | [ofMulAction_free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/ofmulaction-free--28d480a34026b08142c0343e.md) | 277 | `result-track:28d480a34026b08142c0343e3681dcc306fe64a141c2242ec46484c39a027977` |
| 12 | `def` | [diagonalHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/diagonalhomequiv--f4fdb364125d370a76e53390.md) | 293 | `declaration-track:f4fdb364125d370a76e53390a02ebe627a60f5fe05a2e4b49fc8a92cb1b49d67` |
| 13 | `theorem` | [diagonalHomEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/diagonalhomequiv-apply--62c6b4e30c6e970a0086ea48.md) | 307 | `result-track:62c6b4e30c6e970a0086ea480363d402ffb713e9ded9dbfc1bf7b4c0dc9ba7c6` |
| 14 | `theorem` | [diagonalHomEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/diagonalhomequiv-symm-apply--bc48da050bea6219fa4bfb63.md) | 324 | `result-track:bc48da050bea6219fa4bfb639c4fc2667a56765ff3ea73dd6a34d88e8291d9e3` |
| 15 | `theorem` | [diagonalHomEquiv_symm_partialProd_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/diagonalhomequiv-symm-partialprod-succ--19535b59d849bd2faa2da067.md) | 358 | `result-track:19535b59d849bd2faa2da067a2302f5661325d8ec392004eb8ba0c4d51a4c2f7` |
| 16 | `def` | [classifyingSpaceUniversalCover](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/classifyingspaceuniversalcover--e0d4e280400ae6a2f6a1c042.md) | 374 | `declaration-track:e0d4e280400ae6a2f6a1c042a563cbe1967ffeb182a7e0d65136210e5ad115da` |
| 17 | `def` | [cechNerveTerminalFromIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/cechnerveterminalfromiso--9ae3f0261c0c78573578e0d2.md) | 391 | `declaration-track:9ae3f0261c0c78573578e0d24de2dbdf09181498f294a789bb7ac47d39d38784` |
| 18 | `def` | [cechNerveTerminalFromIsoCompForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/cechnerveterminalfromisocompforget--000307bb371a6c2d29b59fa1.md) | 401 | `declaration-track:000307bb371a6c2d29b59fa13fce284630495a30882933a9b142d0261a8543b1` |
| 19 | `def` | [compForgetAugmented](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/compforgetaugmented--e54d445a2799c2c492f39f8a.md) | 412 | `declaration-track:e54d445a2799c2c492f39f8aa078af55bf01ca521a2201f97ccccefe79da04e1` |
| 20 | `def` | [extraDegeneracyAugmentedCechNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/extradegeneracyaugmentedcechnerve--a972053f924675422cd750af.md) | 418 | `declaration-track:a972053f924675422cd750af0bfb9a711e7be0b52e4b75fbf02c40ea42840e00` |
| 21 | `def` | [extraDegeneracyCompForgetAugmented](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/extradegeneracycompforgetaugmented--41a8cac0aaf238de7546cabf.md) | 426 | `declaration-track:41a8cac0aaf238de7546cabfcd56a90cdd3747c44f3c10eafe7b868268e4a67c` |
| 22 | `def` | [compForgetAugmented.toModule](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/compforgetaugmented-tomodule--076711fd506874022d06fc22.md) | 437 | `declaration-track:076711fd506874022d06fc222d78afbc82b4fe0502706ed982e3c8eadb3aa028` |
| 23 | `def` | [extraDegeneracyCompForgetAugmentedToModule](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/extradegeneracycompforgetaugmentedtomodule--9f88b8374da4a260407ff063.md) | 444 | `declaration-track:9f88b8374da4a260407ff0633583efa8805d19b714d03ca7b3a06d9d75ded3dc` |
| 24 | `def` | [groupCohomology.resolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/groupcohomology-resolution--af79fd0afb53df6d66211551.md) | 454 | `declaration-track:af79fd0afb53df6d662115518c922d680802a6aaae49f99cd28d65155ec402f2` |
| 25 | `def` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/d--06a941378f9fc181bfe48d8d.md) | 466 | `declaration-track:06a941378f9fc181bfe48d8deef07720dd5b513e0856aa772c83f9621bf31902` |
| 26 | `theorem` | [d_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/d-of--4e2ab50f2355623bae76bc19.md) | 474 | `result-track:4e2ab50f2355623bae76bc19a4db45acbf03f5ddb8a06f89ca36c1041fc83154` |
| 27 | `def` | [xIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/xiso--84fc8c74f41c5f101e0577e1.md) | 484 | `declaration-track:84fc8c74f41c5f101e0577e17304ec9937f670f66e8824b10fa558afc08eca6e` |
| 28 | `instance` | [x_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/x-projective--0865fefbf6f40a65b2982f6f.md) | 487 | `declaration-track:0865fefbf6f40a65b2982f6f666b7ddc91f49a0925a644e6593c5623df54c01f` |
| 29 | `theorem` | [d_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/d-eq--8e9bc729c74f18b2a3e22f6f.md) | 496 | `result-track:8e9bc729c74f18b2a3e22f6fb0137e97b2505b51c185dd0c7f39918b0db19640` |
| 30 | `def` | [forget₂ToModuleCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/forget-tomodulecat--fc1368f414d26d0e080a0ef2.md) | 519 | `declaration-track:fc1368f414d26d0e080a0ef22a0b190b9c1bdab8aab86486b3eea28f825ba3f5` |
| 31 | `def` | [compForgetAugmentedIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/compforgetaugmentediso--3752d4f36bc322015283dee6.md) | 527 | `declaration-track:3752d4f36bc322015283dee6ce8f0d7c890d43a71e0132472dc87e2ba7fd9f08` |
| 32 | `def` | [forget₂ToModuleCatHomotopyEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/forget-tomodulecathomotopyequiv--34bcd7fa00227a086fc98ee4.md) | 537 | `declaration-track:34bcd7fa00227a086fc98ee409d65ba3c5c50841259b0daab002c7f5d58cb4a7` |
| 33 | `def` | [ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/anonymous--b4e70693765da7b588ebb1ea.md) | 549 | `declaration-track:b4e70693765da7b588ebb1eafdab1f76a934f77ae6ab6c9f3d5a0630a62a0bef` |
| 34 | `theorem` | [forget₂ToModuleCatHomotopyEquiv_f_0_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/forget-tomodulecathomotopyequiv-f-0-eq--0a06cd94189a10c7b255dcd4.md) | 560 | `result-track:0a06cd94189a10c7b255dcd414c6f1987c89b996409cea2c749c8495f2253e30` |
| 35 | `theorem` | [d_comp_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/d-comp--7f2cd62a0211d16b0cd2cdd3.md) | 586 | `result-track:7f2cd62a0211d16b0cd2cdd3b2b60c8d6a70969c4070ebbaa09d776b95245bab` |
| 36 | `def` | [εToSingle₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/tosingle--b985ac3e7afa8fc3f41ad927.md) | 598 | `declaration-track:b985ac3e7afa8fc3f41ad927df0f5102fda2cb1d95372fd60ec05f6fbd847b48` |
| 37 | `theorem` | [εToSingle₀_comp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/tosingle-comp-eq--d36fe97abd71d9a6e044b394.md) | 602 | `result-track:d36fe97abd71d9a6e044b3947c254123b27cd69135c3d9a7113e99c174e71dc4` |
| 38 | `theorem` | [quasiIso_forget₂_εToSingle₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/quasiiso-forget-tosingle--6b48a7f8226245477f08c84c.md) | 611 | `result-track:6b48a7f8226245477f08c84c7f933f9387015e9b2693996c72502d8ff5458330` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/instance--70b04017f7f6a8fc097a92d8.md) | 617 | `declaration-track:70b04017f7f6a8fc097a92d8430b11fe49684af358ac0ae3024e2b034b60c264` |
| 40 | `def` | [groupCohomology.projectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/groupcohomology-projectiveresolution--71ba1c9372cf3a2d4fa3525d.md) | 630 | `declaration-track:71ba1c9372cf3a2d4fa3525d741ff4301963102ba6e523711390380955bde4bd` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/instance--3123652e82301cf937974569.md) | 634 | `declaration-track:3123652e82301cf93797456972c192c498b6af0c05cde906dfb147d9f9c1e3ce` |
| 42 | `def` | [groupCohomology.extIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant1969110ee881178a379cc98f26aa085b4619243cb5e93acc310a93546aced5d1.lean/declarations/groupcohomology-extiso--d45e69592444cad22bdc5de7.md) | 640 | `declaration-track:d45e69592444cad22bdc5de78f53e53b1587377f39b7492a32e9a3c646c442db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
