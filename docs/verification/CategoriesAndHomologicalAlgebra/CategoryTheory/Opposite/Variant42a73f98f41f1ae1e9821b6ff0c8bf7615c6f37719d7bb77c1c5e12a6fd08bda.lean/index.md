# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6271fa0108419e4c9df1ccf5b727093a7f6e5b7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6271fa0108419e4c9df1ccf5b727093a7f6e5b7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Opposites` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean/declarations/instance--9512e604694c52b39ec9877b.md) | 31 | `declaration-track:9512e604694c52b39ec9877b3769337b58a7bf574631822a53ce9812a9d397d1` |
| 2 | `def` | [kernelOpUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean/declarations/kernelopunop--770b631b954748f65660709c.md) | 47 | `declaration-track:770b631b954748f65660709c6a43c843ae60639476b157057629ebdb85372efb` |
| 3 | `def` | [cokernelOpUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean/declarations/cokernelopunop--eea4d15212562356ea3a0f59.md) | 66 | `declaration-track:eea4d15212562356ea3a0f590e7472b77f90d187f097cd8015dc7f4b5ea0c25f` |
| 4 | `def` | [kernelUnopOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean/declarations/kernelunopop--45848cadcbc4c58bb86008db.md) | 83 | `declaration-track:45848cadcbc4c58bb86008db8c9e2f47a3cd06f33fe10def7131a01aec51dffd` |
| 5 | `def` | [cokernelUnopOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean/declarations/cokernelunopop--13e4c3d42abb3fa907ffe537.md) | 88 | `declaration-track:13e4c3d42abb3fa907ffe5371c5e306b75ac368634f7d36d2efcbbb845be1785` |
| 6 | `theorem` | [cokernel.π_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean/declarations/cokernel-op--87113955c83c71e89dacdb59.md) | 91 | `result-track:87113955c83c71e89dacdb59b9e4315c09bfdbf33898ca67e4db0d8ef64cefea` |
| 7 | `theorem` | [kernel.ι_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean/declarations/kernel-op--40b58af352969c5f204c09d9.md) | 96 | `result-track:40b58af352969c5f204c09d9f481a2caf2c27589231d4bb4050c1ce4a3680d15` |
| 8 | `def` | [kernelOpOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean/declarations/kernelopop--a3358d957e219215d6f1c0d0.md) | 102 | `declaration-track:a3358d957e219215d6f1c0d04faabd5d143665381d38ca97779a108809b2a16a` |
| 9 | `def` | [cokernelOpOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean/declarations/cokernelopop--025ae3f3bf3b02d4f0b2fc6d.md) | 107 | `declaration-track:025ae3f3bf3b02d4f0b2fc6da19b4ab96d9a98333b2a575f263e51e726c872ee` |
| 10 | `def` | [kernelUnopUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean/declarations/kernelunopunop--2db04b2d402d1e26551269a4.md) | 112 | `declaration-track:2db04b2d402d1e26551269a41574a2a611001234ec8aa9d6dcc7759a5decbad4` |
| 11 | `theorem` | [kernel.ι_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean/declarations/kernel-unop--ca0c21de5cdd789ca6404880.md) | 115 | `result-track:ca0c21de5cdd789ca6404880bbfb97b4b96292be56beda159c195fd576cc20e9` |
| 12 | `theorem` | [cokernel.π_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean/declarations/cokernel-unop--93a7c577844b5f34aa9131d2.md) | 119 | `result-track:93a7c577844b5f34aa9131d243e1a0b2cd348349263001e9a855fb07ddac91e9` |
| 13 | `def` | [cokernelUnopUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean/declarations/cokernelunopunop--642659c23c1d35ff1c9c06f4.md) | 126 | `declaration-track:642659c23c1d35ff1c9c06f4ac6c823510a730362d852633971c7789935a7464` |
| 14 | `def` | [imageUnopOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean/declarations/imageunopop--608325e6dee3a3086fe02dc3.md) | 130 | `declaration-track:608325e6dee3a3086fe02dc3403fb85cb9da1849d2bb4313a36a258168eb0832` |
| 15 | `def` | [imageOpOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean/declarations/imageopop--652515e03e4238581362fd0d.md) | 137 | `declaration-track:652515e03e4238581362fd0d391da37802e2675311e3ac0c26aeb20fdeebbad8` |
| 16 | `def` | [imageOpUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean/declarations/imageopunop--6b54ffba91303f773b5c80c1.md) | 141 | `declaration-track:6b54ffba91303f773b5c80c14b02104a02057587b72f8814c680fa04036ecf94` |
| 17 | `def` | [imageUnopUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean/declarations/imageunopunop--959fb5917a6e071a424ef105.md) | 145 | `declaration-track:959fb5917a6e071a424ef1052bfce5de04e155dba24c61aa9b06c70dbb8f4ece` |
| 18 | `theorem` | [image_ι_op_comp_imageUnopOp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean/declarations/image-op-comp-imageunopop-hom--5a6dc807d4c9a47c0b609658.md) | 148 | `result-track:5a6dc807d4c9a47c0b609658663a47a62dd533f86e80ff5c074e07de30059759` |
| 19 | `theorem` | [imageUnopOp_hom_comp_image_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean/declarations/imageunopop-hom-comp-image--db52d0924acdd7d883f13514.md) | 158 | `result-track:db52d0924acdd7d883f135144cc120518e1fac4ecb4f1af7229be7b43cda9b31` |
| 20 | `theorem` | [factorThruImage_comp_imageUnopOp_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean/declarations/factorthruimage-comp-imageunopop-inv--2795bf20217a02b34533aa4f.md) | 163 | `result-track:2795bf20217a02b34533aa4fe18992774f720eb0f60912d0ee2a6f7c8a47975b` |
| 21 | `theorem` | [imageUnopOp_inv_comp_op_factorThruImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant42a73f98f41f1ae1e9821b6ff0c8bf7615c6f37719d7bb77c1c5e12a6fd08bda.lean/declarations/imageunopop-inv-comp-op-factorthruimage--072ec5e447e478dc84f5f11f.md) | 167 | `result-track:072ec5e447e478dc84f5f11ff89c25a65db2e71ea56943b6a069674f2e90d75c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
