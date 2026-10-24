# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Resolution.Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "373d20302dca715335554e857905929ddba2cb39",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `373d20302dca715335554e857905929ddba2cb39`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Projective` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.ExtraDegeneracy` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Ext` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.Rep` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actionDiagonalSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/actiondiagonalsucc--382f6b1215fb4194c698045c.md) | 94 | `declaration-track:382f6b1215fb4194c698045cb50dbc0ac1cef4cc22a74e6406ff78e1d3b3ea0b` |
| 2 | `theorem` | [actionDiagonalSucc_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/actiondiagonalsucc-hom-apply--455eb0036b718d91c2dc042b.md) | 108 | `result-track:455eb0036b718d91c2dc042bf377b37b75046bba9b8a048bc89575f0ccc94007` |
| 3 | `theorem` | [actionDiagonalSucc_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/actiondiagonalsucc-inv-apply--56750c1169bc474b6398874a.md) | 128 | `result-track:56750c1169bc474b6398874af54606edaa203f40c4449a5c3d8202b7be54ae79` |
| 4 | `def` | [diagonalSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/diagonalsucc--dd42b586b58de3df318ef448.md) | 167 | `declaration-track:dd42b586b58de3df318ef44802d804f57eb670c633a6db696b1a8e1d50087aa6` |
| 5 | `theorem` | [diagonalSucc_hom_single](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/diagonalsucc-hom-single--0e72f3f39fac246bb608497b.md) | 176 | `result-track:0e72f3f39fac246bb608497bf4e1b3894895445dc0abccd4d7705bf44b838103` |
| 6 | `theorem` | [diagonalSucc_inv_single_single](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/diagonalsucc-inv-single-single--0a07e2c755357339b7db65bf.md) | 199 | `result-track:0a07e2c755357339b7db65bfc76844a1553208eae092876e92e77fe6710f4472` |
| 7 | `theorem` | [diagonalSucc_inv_single_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/diagonalsucc-inv-single-left--000a8deaee9cef4cf2fdeb79.md) | 220 | `result-track:000a8deaee9cef4cf2fdeb79f448eede387ebe1ffe681b2fd068a0ab13c2f684` |
| 8 | `theorem` | [diagonalSucc_inv_single_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/diagonalsucc-inv-single-right--6df90b4c852b5471e643abe2.md) | 238 | `result-track:6df90b4c852b5471e643abe205d9e1a623a777b4597b90fda1b0a5f0f23e5822` |
| 9 | `def` | [ofMulActionBasisAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/ofmulactionbasisaux--33f8c4e66ae1f69037ccc8c8.md) | 265 | `declaration-track:33f8c4e66ae1f69037ccc8c8fd48b4c4a29641ca7a0f5e61836065db6bf65ff1` |
| 10 | `def` | [ofMulActionBasis](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/ofmulactionbasis--7094d1558445130094977c14.md) | 290 | `declaration-track:7094d1558445130094977c14abbf19aa29c7d074c4889d2084f6516672c2c9a8` |
| 11 | `theorem` | [ofMulAction_free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/ofmulaction-free--0b61ced76ad6f78eb68dc8aa.md) | 298 | `result-track:0b61ced76ad6f78eb68dc8aaf260ff0ba2c871513e0d77729c7d809141796d12` |
| 12 | `def` | [diagonalHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/diagonalhomequiv--79bbc437b439005c88677fe6.md) | 315 | `declaration-track:79bbc437b439005c88677fe6a4dc21cb5c344001d60db4a5fa9b0b86558af435` |
| 13 | `theorem` | [diagonalHomEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/diagonalhomequiv-apply--cb6046f8e22f3a13eacc6b67.md) | 331 | `result-track:cb6046f8e22f3a13eacc6b6782e56842999fa6f4ea7aaa7bebb24c720df41089` |
| 14 | `theorem` | [diagonalHomEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/diagonalhomequiv-symm-apply--d1d7d61ab2ff7e493f686625.md) | 351 | `result-track:d1d7d61ab2ff7e493f6866255b4dc0be56a3290fea58b619c11ba7234d382a63` |
| 15 | `theorem` | [diagonalHomEquiv_symm_partialProd_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/diagonalhomequiv-symm-partialprod-succ--138240f6d78f57f13ee5b9d6.md) | 387 | `result-track:138240f6d78f57f13ee5b9d6e1015f7f1f4443f3ca536540398ac58a3fd0d54e` |
| 16 | `def` | [classifyingSpaceUniversalCover](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/classifyingspaceuniversalcover--defbcac4d133710de9af9211.md) | 405 | `declaration-track:defbcac4d133710de9af92117558c1cd08f1bcee75e6b45e7de7154f011b0cc2` |
| 17 | `def` | [cechNerveTerminalFromIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/cechnerveterminalfromiso--6019169f2e646c2dc87d5ba2.md) | 423 | `declaration-track:6019169f2e646c2dc87d5ba2b54c7473fc4a375c768c6a519c64715ee9693779` |
| 18 | `def` | [cechNerveTerminalFromIsoCompForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/cechnerveterminalfromisocompforget--bf9a5322978a39d19d3ae79d.md) | 434 | `declaration-track:bf9a5322978a39d19d3ae79d231c4f26f69dea229a4ce2ec1d71158f4d3aaab7` |
| 19 | `def` | [compForgetAugmented](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/compforgetaugmented--5af732fdf61fb73b93d67aab.md) | 446 | `declaration-track:5af732fdf61fb73b93d67aabd037cb3c2478f9f9a944203316593aebc727e305` |
| 20 | `def` | [extraDegeneracyAugmentedCechNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/extradegeneracyaugmentedcechnerve--487af3f5297a80e1037fb5b2.md) | 453 | `declaration-track:487af3f5297a80e1037fb5b255d3aaa9d43b9090cc931768dd7f997a4dac9b43` |
| 21 | `def` | [extraDegeneracyCompForgetAugmented](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/extradegeneracycompforgetaugmented--eadc4411a5cc2164aad0c789.md) | 462 | `declaration-track:eadc4411a5cc2164aad0c78997d1d46f745254705253abb5714d4f7badec9324` |
| 22 | `def` | [compForgetAugmented.toModule](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/compforgetaugmented-tomodule--ca71444dde000f1468740a83.md) | 474 | `declaration-track:ca71444dde000f1468740a833d02e6a6f0b95319e307d0a61dee2f2366b0902d` |
| 23 | `def` | [extraDegeneracyCompForgetAugmentedToModule](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/extradegeneracycompforgetaugmentedtomodule--b04edd4b325cdc4fbf80d400.md) | 483 | `declaration-track:b04edd4b325cdc4fbf80d400b1ba6935a1e0faa05cfcc6f108c1458e4673cb56` |
| 24 | `def` | [GroupCohomology.resolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/groupcohomology-resolution--4661be4e96fb8c7a859d6560.md) | 495 | `declaration-track:4661be4e96fb8c7a859d6560fcf626512e3498ed90799d2cdf9b87cddae9eb08` |
| 25 | `def` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/d--7b5341df8a395deed167c453.md) | 508 | `declaration-track:7b5341df8a395deed167c453d4aa4c08868eb15a3a465afc92e1c0314db2268b` |
| 26 | `theorem` | [d_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/d-of--6dcd323c619bb5a5573fcf8a.md) | 517 | `result-track:6dcd323c619bb5a5573fcf8ae01b64c364ebd7c9d5ed1c6ae83fe83ab696b1cf` |
| 27 | `def` | [xIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/xiso--76a6a59b0840b1603ed32c1a.md) | 528 | `declaration-track:76a6a59b0840b1603ed32c1a7db43ab9784ddcd6d6866843c64386c450d46d27` |
| 28 | `theorem` | [x_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/x-projective--189f894710256de91ad0ffed.md) | 533 | `result-track:189f894710256de91ad0ffed41920785ec45eecd5aac3b4c391c39aeeacb4923` |
| 29 | `theorem` | [d_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/d-eq--43a6df1947df4145e5b960c8.md) | 544 | `result-track:43a6df1947df4145e5b960c8a86497e223348593b8a857581da05fa79adda0a8` |
| 30 | `def` | [forget₂ToModuleCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/forget-tomodulecat--59ffcff1b343d58178b9f41c.md) | 565 | `declaration-track:59ffcff1b343d58178b9f41c59218622298fe5205bb9631649043ad2a9644f1f` |
| 31 | `def` | [compForgetAugmentedIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/compforgetaugmentediso--2a023ce34b8caa84fdea4b2b.md) | 575 | `declaration-track:2a023ce34b8caa84fdea4b2bd4b9dde4be4fbb70c9ce287c54b851e857d454e3` |
| 32 | `def` | [forget₂ToModuleCatHomotopyEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/forget-tomodulecathomotopyequiv--96ff02e2289731f3f7674571.md) | 586 | `declaration-track:96ff02e2289731f3f76745717f7cfc0ce1ea7f254d1dbb479d92609d9053cfdb` |
| 33 | `def` | [ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/anonymous--24dedce3ae3a9be3960ae8ed.md) | 600 | `declaration-track:24dedce3ae3a9be3960ae8ed92bd8ef4af66aae371f5f26faba955fa60a75cdf` |
| 34 | `theorem` | [forget₂ToModuleCatHomotopyEquiv_f_0_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/forget-tomodulecathomotopyequiv-f-0-eq--d46a878b20c0ba2972993984.md) | 612 | `result-track:d46a878b20c0ba2972993984d7271a830b3d4cc7149fd0fa5155600409524bca` |
| 35 | `theorem` | [d_comp_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/d-comp--0291a5b80975f8dd8163155d.md) | 638 | `result-track:0291a5b80975f8dd8163155dbffae41fa154025183a6786c7b80c54108a590cf` |
| 36 | `def` | [εToSingle₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/tosingle--02cd6faf0ce44b832ed6b358.md) | 651 | `declaration-track:02cd6faf0ce44b832ed6b35827bab05534d8c7607f7473ead82cb8aa42d6332c` |
| 37 | `theorem` | [εToSingle₀_comp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/tosingle-comp-eq--135900ae3c486a1f6fac4ab0.md) | 656 | `result-track:135900ae3c486a1f6fac4ab03fd818cf32a533014c3c34838ca80779fad2c81b` |
| 38 | `theorem` | [quasiIsoOfForget₂εToSingle₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/quasiisoofforget-tosingle--63dd62b53779f00b83867e2a.md) | 666 | `result-track:63dd62b53779f00b83867e2abc11eb19c33abee86530439bda1a5ba95cccb1da` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/instance--c1e2fadeeea8cdf5042a30ac.md) | 674 | `declaration-track:c1e2fadeeea8cdf5042a30acb06f34f11322dd22d61c0a00ce126cb25ceb685f` |
| 40 | `def` | [GroupCohomology.projectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/groupcohomology-projectiveresolution--8a118d96f6920f5fc2acf563.md) | 686 | `declaration-track:8a118d96f6920f5fc2acf5630d2fbae186ccf213d5c34e7b8f400593ebe89f83` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/instance--dac14feb6fdf1173c17ddb15.md) | 691 | `declaration-track:dac14feb6fdf1173c17ddb15d3035c6624e9c29faca38c05eda120964ce5d17b` |
| 42 | `def` | [GroupCohomology.extIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/declarations/groupcohomology-extiso--443e579d26b9c0b02e70acb9.md) | 699 | `declaration-track:443e579d26b9c0b02e70acb99d1b5ad48cbf597b1842ea6b3aa977ea5a5f9940` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
