# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fd974c06478582c7057eff9b2b342669c29c4f7",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fd974c06478582c7057eff9b2b342669c29c4f7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Category` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PEmpty` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [BinaryFan.swap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/binaryfan-swap--077e8a667202f71d141f4750.md) | 54 | `declaration-track:077e8a667202f71d141f4750f628bc397bcb58df9c017871ec124d37719221a8` |
| 2 | `theorem` | [BinaryFan.swap_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/binaryfan-swap-fst--0b307ec923064a358453726b.md) | 59 | `result-track:0b307ec923064a358453726b28a5c0a3055ae04ad0f3a45824f065ad0c3a52c1` |
| 3 | `theorem` | [BinaryFan.swap_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/binaryfan-swap-snd--efd8847d61bae774bfe63831.md) | 64 | `result-track:efd8847d61bae774bfe638314b60d75ae6a397069ae375c880ca0bd9d6d012d9` |
| 4 | `def` | [IsLimit.swapBinaryFan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/islimit-swapbinaryfan--4a83b0d06ad3735f4a7d7e92.md) | 71 | `declaration-track:4a83b0d06ad3735f4a7d7e926077149a7f032e8d3dfe19f980b268b9f789881f` |
| 5 | `theorem` | [HasBinaryProduct.swap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/hasbinaryproduct-swap--1cc742397e2fa69267b9c5dc.md) | 85 | `result-track:1cc742397e2fa69267b9c5dc06c4091a4781cafb12f118597a32acc54de0bbb1` |
| 6 | `def` | [BinaryFan.braiding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/binaryfan-braiding--dd4a6d335560dc577698d5ba.md) | 93 | `declaration-track:dd4a6d335560dc577698d5ba6c295b78924a8ce969d8fde82ac8eb3c7a824529` |
| 7 | `def` | [BinaryFan.assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/binaryfan-assoc--e1d816a03bb4cb1160ddc305.md) | 103 | `declaration-track:e1d816a03bb4cb1160ddc30513ba5e9119f303778d1ceb94a8a0cff6cac40e53` |
| 8 | `theorem` | [BinaryFan.assoc_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/binaryfan-assoc-fst--8163ab61abad749cdbd5643d.md) | 109 | `result-track:8163ab61abad749cdbd5643de7cd9e384fa09e0bd9825a32631b8ff3a3b4a559` |
| 9 | `theorem` | [BinaryFan.assoc_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/binaryfan-assoc-snd--1630d63274315458057f1313.md) | 115 | `result-track:1630d63274315458057f131301ab4a094ceb101e5013752861e32c728b363de5` |
| 10 | `def` | [BinaryFan.assocInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/binaryfan-associnv--af3de5104b8f84ad04957e9d.md) | 126 | `declaration-track:af3de5104b8f84ad04957e9def1e79432e3b40bc87baaa5b7ea2f290ad3c38ea` |
| 11 | `theorem` | [BinaryFan.assocInv_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/binaryfan-associnv-fst--461fa3d92d4763df3e0f14ea.md) | 132 | `result-track:461fa3d92d4763df3e0f14eac1be245302970f3997e8b4b75c3ffea01bf40064` |
| 12 | `theorem` | [BinaryFan.assocInv_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/binaryfan-associnv-snd--80c390c4dc4453acd7aaa84b.md) | 139 | `result-track:80c390c4dc4453acd7aaa84b0bf198b90199cc52b98dab955c4621eb3ec55122` |
| 13 | `def` | [IsLimit.assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/islimit-assoc--c16e2369b20d7090740741d4.md) | 148 | `declaration-track:c16e2369b20d7090740741d492a85f33c175b73e2e594ed398db1b9cad004a1d` |
| 14 | `def` | [BinaryFan.associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/binaryfan-associator--0002cd7773721e4556b57bef.md) | 176 | `declaration-track:0002cd7773721e4556b57bef854f8d61495b72fb429ca3de26180e02b7d75890` |
| 15 | `def` | [BinaryFan.associatorOfLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/binaryfan-associatoroflimitcone--1183775a45659728df1afbee.md) | 185 | `declaration-track:1183775a45659728df1afbee79fc289650ed1592f29bd568c10851ee53119682` |
| 16 | `def` | [BinaryFan.leftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/binaryfan-leftunitor--8bcc457391214f5c0c88359d.md) | 194 | `declaration-track:8bcc457391214f5c0c88359d336d982afed82c60d7a0e748a93c98b04f2b9b14` |
| 17 | `def` | [BinaryFan.rightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/binaryfan-rightunitor--26373867a8d16cb8d1c47327.md) | 218 | `declaration-track:26373867a8d16cb8d1c473271807da4e23eccba24960ce735c8b6242680fb9aa` |
| 18 | `def` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/tensorobj--daa163123b42cf8e9b28d6cb.md) | 259 | `declaration-track:daa163123b42cf8e9b28d6cb9ce4566250fe46bb5b39961349b144afeb8dfefb` |
| 19 | `def` | [tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/tensorhom--75c84283159c3f0233fd1e02.md) | 265 | `declaration-track:75c84283159c3f0233fd1e02297096fd6b880a8f10650725df103bc0eb9a3886` |
| 20 | `theorem` | [tensor_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/tensor-id--01298840fcf997e753f149c2.md) | 270 | `result-track:01298840fcf997e753f149c26222588a46fc869b38aea8be3c93814c62afe444` |
| 21 | `theorem` | [tensor_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/tensor-comp--7cb614ef63d45ecc44c0a044.md) | 277 | `result-track:7cb614ef63d45ecc44c0a0444beb03cba0b01c2994385246e1c4428269bc4492` |
| 22 | `theorem` | [pentagon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/pentagon--9c9890c49ea10ce0d4a1a74f.md) | 285 | `result-track:9c9890c49ea10ce0d4a1a74f944892350382cccdd50791f0874e1a8b4faba524` |
| 23 | `theorem` | [triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/triangle--9877c27a21e837095cd1cfae.md) | 303 | `result-track:9877c27a21e837095cd1cfaeb073a15ba9950d8b7af1638f1f1eb659cb648feb` |
| 24 | `theorem` | [leftUnitor_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/leftunitor-naturality--815170f9c0e4686e99ab9a5b.md) | 311 | `result-track:815170f9c0e4686e99ab9a5b7b1821c1f2ead22c421e8d2cb92ac54f141ccaa1` |
| 25 | `theorem` | [rightUnitor_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/rightunitor-naturality--f67a7770424f570fad585a29.md) | 318 | `result-track:f67a7770424f570fad585a29631f31f0a8b6629932dc48bf44e3a88458a62069` |
| 26 | `theorem` | [associator_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/associator-naturality--d8da738be1f5c772e79ad115.md) | 325 | `result-track:d8da738be1f5c772e79ad115b660a0fe898206f7f60f8b6f7b327bb30a86ab2e` |
| 27 | `def` | [monoidalOfChosenFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/monoidalofchosenfiniteproducts--070ed3f25307236333f4395a.md) | 342 | `declaration-track:070ed3f25307236333f4395a7ba0da7395adcf9edfaf573cc91aaccfd1532922` |
| 28 | `def` | [MonoidalOfChosenFiniteProductsSynonym](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/monoidalofchosenfiniteproductssynonym--3b95e9a48a429c03fff09a4b.md) | 370 | `declaration-track:3b95e9a48a429c03fff09a4bbd4087396e584a2639b892a23a1d91fa3314e571` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/instance--7bb3289c34443e8d022df4e9.md) | 375 | `declaration-track:7bb3289c34443e8d022df4e9df5e72a9bba6e05ef5bf7bd2a7f4de3af6842741` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant45f4ea6a0b7abade7bdd28acaeccf000608a3ab748f0b80bb2340b90616540e0.lean/declarations/instance--f1c0c0a78af6516dbbe7a290.md) | 379 | `declaration-track:f1c0c0a78af6516dbbe7a29020c08cef6eb7fca2ce7a791af1bb381d284936e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
