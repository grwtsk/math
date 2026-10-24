# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MathlibSheafCategoryBoundary.Variantddd00d66b31fab9104efa93b819874ba0c3b6ff6accc8d914f46a2a15cc7c739

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "301985e272d74165458952f3368119ec1a865b60",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantddd00d66b31fab9104efa93b819874ba0c3b6ff6accc8d914f46a2a15cc7c739.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantddd00d66b31fab9104efa93b819874ba0c3b6ff6accc8d914f46a2a15cc7c739.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantddd00d66b31fab9104efa93b819874ba0c3b6ff6accc8d914f46a2a15cc7c739.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `301985e272d74165458952f3368119ec1a865b60`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantddd00d66b31fab9104efa93b819874ba0c3b6ff6accc8d914f46a2a15cc7c739.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantddd00d66b31fab9104efa93b819874ba0c3b6ff6accc8d914f46a2a15cc7c739.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 1; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Compression.MathlibGrothendieckTopologyInstance` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitMatrixPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantddd00d66b31fab9104efa93b819874ba0c3b6ff6accc8d914f46a2a15cc7c739.lean/declarations/bitmatrixpresheaf--da33dede7b46c343e26a74c8.md) | 24 | `declaration-track:da33dede7b46c343e26a74c83989c6274b4ac00f35ddd8d0b8db064ae29ee56d` |
| 2 | `abbrev` | [BitMatrixSheafCondition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantddd00d66b31fab9104efa93b819874ba0c3b6ff6accc8d914f46a2a15cc7c739.lean/declarations/bitmatrixsheafcondition--a331fe60c68bd1143aa15696.md) | 29 | `declaration-track:a331fe60c68bd1143aa15696c7f404f740f6751547d513159abaeb6a1709d250` |
| 3 | `abbrev` | [BitMatrixSheafCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantddd00d66b31fab9104efa93b819874ba0c3b6ff6accc8d914f46a2a15cc7c739.lean/declarations/bitmatrixsheafcategory--09ad7c766638f7f60ce8ce5b.md) | 35 | `declaration-track:09ad7c766638f7f60ce8ce5bceea310b8fedce7d630d426e1297d8e0a97edff4` |
| 4 | `theorem` | [bitmatrix_sheaf_condition_is_mathlib_isSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantddd00d66b31fab9104efa93b819874ba0c3b6ff6accc8d914f46a2a15cc7c739.lean/declarations/bitmatrix-sheaf-condition-is-mathlib-issheaf--29393ed3465323708ae73ec0.md) | 39 | `result-track:29393ed3465323708ae73ec0df7f096cfb723643533c8296173bd0c09879ffb2` |
| 5 | `theorem` | [bitmatrix_sheaf_category_is_mathlib_sheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantddd00d66b31fab9104efa93b819874ba0c3b6ff6accc8d914f46a2a15cc7c739.lean/declarations/bitmatrix-sheaf-category-is-mathlib-sheaf--7d4ce60c0a90501f8c738de3.md) | 46 | `result-track:7d4ce60c0a90501f8c738de35d6dab36d7f35df8d8c0c2803b78276dcc17d49f` |
| 6 | `structure` | [MathlibSheafCategoryBoundarySurface](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantddd00d66b31fab9104efa93b819874ba0c3b6ff6accc8d914f46a2a15cc7c739.lean/declarations/mathlibsheafcategoryboundarysurface--2726e403547007a363b3c008.md) | 52 | `declaration-track:2726e403547007a363b3c0088c2195d09903d6a6fe1e9f9ee642b0c94ad2c4d7` |
| 7 | `def` | [defaultMathlibSheafCategoryBoundarySurface](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantddd00d66b31fab9104efa93b819874ba0c3b6ff6accc8d914f46a2a15cc7c739.lean/declarations/defaultmathlibsheafcategoryboundarysurface--d78d469be74a30975003f918.md) | 63 | `declaration-track:d78d469be74a30975003f9189efc0720b9e1e33da11f1ce3b1560a79d8a1ce17` |
| 8 | `theorem` | [default_mathlib_sheaf_boundary_has_presheaf_interface](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantddd00d66b31fab9104efa93b819874ba0c3b6ff6accc8d914f46a2a15cc7c739.lean/declarations/default-mathlib-sheaf-boundary-has-presheaf-interface--98981e9e651a92d5c2b793d2.md) | 75 | `result-track:98981e9e651a92d5c2b793d202f0cbe4b86755905726a46f3316c74c4ef1d258` |
| 9 | `theorem` | [default_mathlib_sheaf_boundary_has_sheaf_condition_interface](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantddd00d66b31fab9104efa93b819874ba0c3b6ff6accc8d914f46a2a15cc7c739.lean/declarations/default-mathlib-sheaf-boundary-has-sheaf-condition-interface--0151ce6a539752fa0782b0b7.md) | 81 | `result-track:0151ce6a539752fa0782b0b7fec77da0ec5d8517ae06399e06e4203cc8216988` |
| 10 | `theorem` | [default_mathlib_sheaf_boundary_has_sheaf_category_entrance](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantddd00d66b31fab9104efa93b819874ba0c3b6ff6accc8d914f46a2a15cc7c739.lean/declarations/default-mathlib-sheaf-boundary-has-sheaf-category-entrance--eb90d42051773af2c2adb096.md) | 87 | `result-track:eb90d42051773af2c2adb096d53c1587acd4ca9815affeb7d4449c030b36e989` |
| 11 | `theorem` | [mathlib_sheaf_boundary_does_not_construct_sheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantddd00d66b31fab9104efa93b819874ba0c3b6ff6accc8d914f46a2a15cc7c739.lean/declarations/mathlib-sheaf-boundary-does-not-construct-sheafification--bcc0e6582160f405bb8f0ccb.md) | 93 | `result-track:bcc0e6582160f405bb8f0ccbe365ac0e04fd668d7a1b9111995be0638cf902e2` |
| 12 | `theorem` | [mathlib_sheaf_boundary_denies_lawvere_tierney](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantddd00d66b31fab9104efa93b819874ba0c3b6ff6accc8d914f46a2a15cc7c739.lean/declarations/mathlib-sheaf-boundary-denies-lawvere-tierney--7061d2dd199e1f95b5f8f084.md) | 99 | `result-track:7061d2dd199e1f95b5f8f08482d0c2e57c4f2df3820dce9b5268007bd53bbeae` |
| 13 | `theorem` | [mathlib_sheaf_boundary_denies_essential_geometric_morphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantddd00d66b31fab9104efa93b819874ba0c3b6ff6accc8d914f46a2a15cc7c739.lean/declarations/mathlib-sheaf-boundary-denies-essential-geometric-morphism--33dc51b47086d32a909fa912.md) | 105 | `result-track:33dc51b47086d32a909fa912e59da52e699d329cca0791c261323dedb098a23e` |
| 14 | `theorem` | [mathlib_sheaf_boundary_denies_topos](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantddd00d66b31fab9104efa93b819874ba0c3b6ff6accc8d914f46a2a15cc7c739.lean/declarations/mathlib-sheaf-boundary-denies-topos--e6366d5fb6027fd15af21204.md) | 111 | `result-track:e6366d5fb6027fd15af21204ca63d53d08a266725302478483bce1f04e1a3068` |
| 15 | `theorem` | [mathlib_sheaf_boundary_denies_theorem_promotion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantddd00d66b31fab9104efa93b819874ba0c3b6ff6accc8d914f46a2a15cc7c739.lean/declarations/mathlib-sheaf-boundary-denies-theorem-promotion--53f675e70913c571128bfb25.md) | 116 | `result-track:53f675e70913c571128bfb25b17c27f6cba512aa2cb3dc8bfa92dc53d0902682` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
