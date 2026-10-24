# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Biproducts.Variantfe7b3fb3ccf676e4d511ea166df302836c3dfdf1230a106f5de32090514b6c60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99d0b5ff61e96c3dbb3e2b497c98b9d38a9d2c05",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfe7b3fb3ccf676e4d511ea166df302836c3dfdf1230a106f5de32090514b6c60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfe7b3fb3ccf676e4d511ea166df302836c3dfdf1230a106f5de32090514b6c60.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfe7b3fb3ccf676e4d511ea166df302836c3dfdf1230a106f5de32090514b6c60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99d0b5ff61e96c3dbb3e2b497c98b9d38a9d2c05`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfe7b3fb3ccf676e4d511ea166df302836c3dfdf1230a106f5de32090514b6c60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfe7b3fb3ccf676e4d511ea166df302836c3dfdf1230a106f5de32090514b6c60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.GroupCat.Preadditive` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Biproducts` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.GroupCat.Limits` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfe7b3fb3ccf676e4d511ea166df302836c3dfdf1230a106f5de32090514b6c60.lean/declarations/instance--4c293673c06130bfde50cd48.md) | 38 | `declaration-track:4c293673c06130bfde50cd48c5463e5a006d35b7b2d6beed6ea88577926fbb3b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfe7b3fb3ccf676e4d511ea166df302836c3dfdf1230a106f5de32090514b6c60.lean/declarations/instance--287010529da4d110dab03a44.md) | 41 | `declaration-track:287010529da4d110dab03a44918b6aeaccd2b5bd15cd1cfd4db70181e41b241b` |
| 3 | `def` | [binaryProductLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfe7b3fb3ccf676e4d511ea166df302836c3dfdf1230a106f5de32090514b6c60.lean/declarations/binaryproductlimitcone--36d17ad79af5d8ef1b3c85cd.md) | 50 | `declaration-track:36d17ad79af5d8ef1b3c85cd3256fd450b903dd6ef8b55f719a4d9413fa591b2` |
| 4 | `theorem` | [binaryProductLimitCone_cone_π_app_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfe7b3fb3ccf676e4d511ea166df302836c3dfdf1230a106f5de32090514b6c60.lean/declarations/binaryproductlimitcone-cone-app-left--9fcc4f05864fd2f3fdf97270.md) | 67 | `result-track:9fcc4f05864fd2f3fdf9727033197cc7e020f87772302d890a36e0873ec4588b` |
| 5 | `theorem` | [binaryProductLimitCone_cone_π_app_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfe7b3fb3ccf676e4d511ea166df302836c3dfdf1230a106f5de32090514b6c60.lean/declarations/binaryproductlimitcone-cone-app-right--1cd9e3c716476e8b5bb4d6c1.md) | 73 | `result-track:1cd9e3c716476e8b5bb4d6c1a0869b65b25aca0336ae4abf0424a6b78609a1ea` |
| 6 | `def` | [biprodIsoProd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfe7b3fb3ccf676e4d511ea166df302836c3dfdf1230a106f5de32090514b6c60.lean/declarations/biprodisoprod--28ac7b9152e48eaa6aed8ff9.md) | 82 | `declaration-track:28ac7b9152e48eaa6aed8ff924869cb8f83fc53b022aa9c3c3c6a821e031d2e3` |
| 7 | `theorem` | [biprodIsoProd_inv_comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfe7b3fb3ccf676e4d511ea166df302836c3dfdf1230a106f5de32090514b6c60.lean/declarations/biprodisoprod-inv-comp-fst--1d3240bbae606cb923e5893b.md) | 88 | `result-track:1d3240bbae606cb923e5893b60cb9e19e17230401f3723ec907372e547b69f09` |
| 8 | `theorem` | [biprodIsoProd_inv_comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfe7b3fb3ccf676e4d511ea166df302836c3dfdf1230a106f5de32090514b6c60.lean/declarations/biprodisoprod-inv-comp-snd--21a1bbc91dab42f0a920771d.md) | 94 | `result-track:21a1bbc91dab42f0a920771dd069127438e779ff5afb6da2cbc5a8291cf77d96` |
| 9 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfe7b3fb3ccf676e4d511ea166df302836c3dfdf1230a106f5de32090514b6c60.lean/declarations/lift--4473d054b9ed754a7680b353.md) | 107 | `declaration-track:4473d054b9ed754a7680b35314580e48a410c4cd582cb88ebcfdfef575b507bb` |
| 10 | `def` | [productLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfe7b3fb3ccf676e4d511ea166df302836c3dfdf1230a106f5de32090514b6c60.lean/declarations/productlimitcone--7b60091690b7d31eecf8f060.md) | 121 | `declaration-track:7b60091690b7d31eecf8f0602d8b1cae0ae61cc810dea0885b77d4df3f135811` |
| 11 | `def` | [biproductIsoPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfe7b3fb3ccf676e4d511ea166df302836c3dfdf1230a106f5de32090514b6c60.lean/declarations/biproductisopi--4f7208433645799b148cca7c.md) | 144 | `declaration-track:4f7208433645799b148cca7c3be3c6c318ed4f0895275d0a98172f546bba4d20` |
| 12 | `theorem` | [biproductIsoPi_inv_comp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfe7b3fb3ccf676e4d511ea166df302836c3dfdf1230a106f5de32090514b6c60.lean/declarations/biproductisopi-inv-comp--041659052cb7b616243cf10b.md) | 150 | `result-track:041659052cb7b616243cf10b0c94a3f01c212849dcd0a7cc072cd3f0ab8c545b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
