# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorToTypes.Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05b2ed572481f041f5ecef43e20dfaac928bfaeb",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05b2ed572481f041f5ecef43e20dfaac928bfaeb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Colimits` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/prod--006d52fa12d51842c812cfa0.md) | 32 | `declaration-track:006d52fa12d51842c812cfa01f6ddc4e127513b3e0f9ee528c12c82d9e2c6e8d` |
| 2 | `def` | [prod.fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/prod-fst--260ee8acba589c234ddcb59a.md) | 40 | `declaration-track:260ee8acba589c234ddcb59a3110a3410060d777b76ffe9323e2b0d25bd6f0de` |
| 3 | `def` | [prod.snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/prod-snd--4736647620efa983c71ae861.md) | 45 | `declaration-track:4736647620efa983c71ae861dcf9d7c1a2454643dfc16bd1612c672e6e36e312` |
| 4 | `def` | [prod.lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/prod-lift--62eab2ab818d5476867dd831.md) | 51 | `declaration-track:62eab2ab818d5476867dd83170bfc63a2c41ebdfef254e3ad081f16f0248022a` |
| 5 | `lemma` | [prod.lift_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/prod-lift-fst--b031063e21c28da54f199562.md) | 60 | `result-track:b031063e21c28da54f199562dcb4e82a9e21d943a214489e417d8d0ead9af68d` |
| 6 | `lemma` | [prod.lift_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/prod-lift-snd--143f33c4ac871a7666f17f0e.md) | 64 | `result-track:143f33c4ac871a7666f17f0e412d91c800fb328b1dbee8d2c0d323c0cb55206b` |
| 7 | `def` | [binaryProductCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/binaryproductcone--771447c4f6654a0f3f7d983e.md) | 71 | `declaration-track:771447c4f6654a0f3f7d983e38823485eed33457405393cd7d241b97dd84347f` |
| 8 | `def` | [binaryProductLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/binaryproductlimit--6c5e6e26c291e2910cfc615e.md) | 76 | `declaration-track:6c5e6e26c291e2910cfc615ee8a43fc48fb02bd6171bdf1c7c223e7b289bf205` |
| 9 | `def` | [binaryProductLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/binaryproductlimitcone--3473159bd00296da1efe7bc5.md) | 84 | `declaration-track:3473159bd00296da1efe7bc56a39ed0371999151545d3ab1a5f137b97df90614` |
| 10 | `def` | [binaryProductIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/binaryproductiso--c4a983bee79828c8980c8d70.md) | 88 | `declaration-track:c4a983bee79828c8980c8d70245cf9d969f1c05dad0547bff7ae5e2a41ab4899` |
| 11 | `lemma` | [binaryProductIso_hom_comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/binaryproductiso-hom-comp-fst--c8abfadeab5c7a75b2a481c2.md) | 92 | `result-track:c8abfadeab5c7a75b2a481c29e974c6e5d871dc2c1cda4229bbb211e851315d8` |
| 12 | `lemma` | [binaryProductIso_hom_comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/binaryproductiso-hom-comp-snd--fa0d1cbb5605603b940aadb1.md) | 96 | `result-track:fa0d1cbb5605603b940aadb1bd39251cf4d8ccce31647639eee8f36190b7e995` |
| 13 | `lemma` | [binaryProductIso_inv_comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/binaryproductiso-inv-comp-fst--c2075c3bbe1cf92150794f89.md) | 100 | `result-track:c2075c3bbe1cf92150794f89417241d38ea579a8afa7b9509d2dd7cf35f08b1a` |
| 14 | `lemma` | [binaryProductIso_inv_comp_fst_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/binaryproductiso-inv-comp-fst-apply--6e739ff7ca555a7a17bcb2e4.md) | 105 | `result-track:6e739ff7ca555a7a17bcb2e4dbb554e96a738cfa115ea575d5ed6ae52aa37b09` |
| 15 | `lemma` | [binaryProductIso_inv_comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/binaryproductiso-inv-comp-snd--eb2138d1a7dbfb5a0d76b546.md) | 110 | `result-track:eb2138d1a7dbfb5a0d76b5463fc4f205bf753bfa1c745fa866a43f69f30cfa10` |
| 16 | `lemma` | [binaryProductIso_inv_comp_snd_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/binaryproductiso-inv-comp-snd-apply--6cd875df67d60c4419048dc8.md) | 115 | `result-track:6cd875df67d60c4419048dc8b4c32e0870fe0315a18d86312c34fe8c57c26943` |
| 17 | `def` | [prodMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/prodmk--7ee3ef137f1d2c24635d38e4.md) | 124 | `declaration-track:7ee3ef137f1d2c24635d38e46690542e73d0a7dfd50abdf031b4e8426845b335` |
| 18 | `lemma` | [prodMk_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/prodmk-fst--46ece8821adf34ec65a09c9a.md) | 128 | `result-track:46ece8821adf34ec65a09c9a39dbc10f27f0fe2facd35f75d87396153d56844a` |
| 19 | `lemma` | [prodMk_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/prodmk-snd--d7f0b5ab652ef29d227e7fff.md) | 133 | `result-track:d7f0b5ab652ef29d227e7fffaacdf64941193d0bf24fa8f76957866485fdcf12` |
| 20 | `lemma` | [prod_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/prod-ext--932ed306d051a16e6c21e8ce.md) | 138 | `result-track:932ed306d051a16e6c21e8ce59485acd07cabffc362f8b29781c5576db62b129` |
| 21 | `def` | [binaryProductEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/binaryproductequiv--836079b1eab10433466897c8.md) | 146 | `declaration-track:836079b1eab10433466897c81fd87838459672f1612104c5a54b915b289e57ad` |
| 22 | `lemma` | [prod_ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/prod-ext--631558d2df5fb99365f69718.md) | 153 | `result-track:631558d2df5fb99365f697181ab34c07d6a9baf868378a66ea2977f9928fd01c` |
| 23 | `def` | [coprod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/coprod--f223b702f8c28316898aff5d.md) | 165 | `declaration-track:f223b702f8c28316898aff5d4a74f32bd9e9070e2239f443ce3108ef377cf86a` |
| 24 | `def` | [coprod.inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/coprod-inl--af772cf43c699b1cf43e32f2.md) | 176 | `declaration-track:af772cf43c699b1cf43e32f243e588f80b581f1529765c2ab486a57c56da0526` |
| 25 | `def` | [coprod.inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/coprod-inr--c371639e28b90b94732f6001.md) | 181 | `declaration-track:c371639e28b90b94732f600102e462d56980c67197e49fce8e6d4eefca053a4d` |
| 26 | `def` | [coprod.desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/coprod-desc--a08e8d0104db790fca51603d.md) | 187 | `declaration-track:a08e8d0104db790fca51603d8d7649e12e72e8f767b9b61acfc2f87195b05909` |
| 27 | `lemma` | [coprod.desc_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/coprod-desc-inl--1eabf3b9b0212350a4ce2518.md) | 198 | `result-track:1eabf3b9b0212350a4ce2518187dc8f9b40e4b33830e04d2c5df523f06176a5c` |
| 28 | `lemma` | [coprod.desc_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/coprod-desc-inr--22d2e158c14620c79ef0035a.md) | 202 | `result-track:22d2e158c14620c79ef0035a2132058f6c6e50a1451109da00f9d3dc7df85423` |
| 29 | `def` | [binaryCoproductCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/binarycoproductcocone--55c06529d8c12b0b3f17997f.md) | 209 | `declaration-track:55c06529d8c12b0b3f17997fb87afb2e647396106a823c04b257d8ec3f43ac55` |
| 30 | `def` | [binaryCoproductColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/binarycoproductcolimit--ef2fc76157973799471a3027.md) | 214 | `declaration-track:ef2fc76157973799471a30271865bdfbdae05d974cd04ebc22d631f7fb0896dc` |
| 31 | `def` | [binaryCoproductColimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/binarycoproductcolimitcocone--7353185a8b38857c5fa503ea.md) | 222 | `declaration-track:7353185a8b38857c5fa503eaa995c8aee47b9c97b3122e4e5a34765661c1ffca` |
| 32 | `def` | [binaryCoproductIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/binarycoproductiso--04d2b9d98dd0a7764781475c.md) | 226 | `declaration-track:04d2b9d98dd0a7764781475c3c8e35bc906064051836f3af854ae08fc849c363` |
| 33 | `lemma` | [inl_comp_binaryCoproductIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/inl-comp-binarycoproductiso-hom--d3557153cf9b55b909524dd2.md) | 230 | `result-track:d3557153cf9b55b909524dd2ed832d550a710c62745b99c57985d86361465a03` |
| 34 | `lemma` | [inl_comp_binaryCoproductIso_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/inl-comp-binarycoproductiso-hom-apply--bc4005ac21962f55b5556e3c.md) | 236 | `result-track:bc4005ac21962f55b5556e3cab8c391084f20bbd2b40d2928cd7cdc746c7c3d0` |
| 35 | `lemma` | [inr_comp_binaryCoproductIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/inr-comp-binarycoproductiso-hom--9d860080d1f892c837a6a1ac.md) | 241 | `result-track:9d860080d1f892c837a6a1acb013d3d34895080a7d1795b879ce11bc1dc688d1` |
| 36 | `lemma` | [inr_comp_binaryCoproductIso_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/inr-comp-binarycoproductiso-hom-apply--8713177bb902cb4021eeada8.md) | 247 | `result-track:8713177bb902cb4021eeada8121ab71f1867800b683ed494e7f364acc7fe5df6` |
| 37 | `lemma` | [inl_comp_binaryCoproductIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/inl-comp-binarycoproductiso-inv--f71eeef83bcebf30ecdee176.md) | 252 | `result-track:f71eeef83bcebf30ecdee17662c95a5b0ee8338af1460118a283cf1d00c17f5b` |
| 38 | `lemma` | [inl_comp_binaryCoproductIso_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/inl-comp-binarycoproductiso-inv-apply--e1c1384fb54857ad660460aa.md) | 256 | `result-track:e1c1384fb54857ad660460aa979c4f6c02d0bceb158fd0a40eec44ef97372a1c` |
| 39 | `lemma` | [inr_comp_binaryCoproductIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/inr-comp-binarycoproductiso-inv--28e8fe93a38bf4205b22aa3e.md) | 260 | `result-track:28e8fe93a38bf4205b22aa3ef1730ff76d5f5b54286fbd2f31be0ff028bbe88f` |
| 40 | `lemma` | [inr_comp_binaryCoproductIso_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/inr-comp-binarycoproductiso-inv-apply--7e8ace898c9a6837118de617.md) | 264 | `result-track:7e8ace898c9a6837118de61791ff2459023c420facabd794e33a50327a7a2db2` |
| 41 | `abbrev` | [coprodInl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/coprodinl--1640933130ca0dd94c643783.md) | 271 | `declaration-track:1640933130ca0dd94c643783340fb019efe096cc59c581cf0ea3827267df15f1` |
| 42 | `abbrev` | [coprodInr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/coprodinr--d6eeeaf3200d3af36d699bab.md) | 276 | `declaration-track:d6eeeaf3200d3af36d699bab681ce296a3fd08c8a7047130bb0031c977bc25fc` |
| 43 | `def` | [binaryCoproductEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean/declarations/binarycoproductequiv--73e8366785ec915df93ee9ba.md) | 284 | `declaration-track:73e8366785ec915df93ee9ba1079e83265c8246609e5cbba7a4b476821174b0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
