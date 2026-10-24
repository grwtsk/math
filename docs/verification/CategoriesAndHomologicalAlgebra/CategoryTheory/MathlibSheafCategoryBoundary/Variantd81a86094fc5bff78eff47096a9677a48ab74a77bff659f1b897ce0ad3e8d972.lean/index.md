# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MathlibSheafCategoryBoundary.Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd5cac8cb786e525894d246ad08a264476cf7307",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd5cac8cb786e525894d246ad08a264476cf7307`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 6; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Compression.MathlibGrothendieckTopologyInstance` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitMatrixPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean/declarations/bitmatrixpresheaf--3e11ed1131e402c09e4df863.md) | 32 | `declaration-track:3e11ed1131e402c09e4df86354101976e8e2e71f7d045cc5c80c54009e177176` |
| 2 | `abbrev` | [BitMatrixSheafCondition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean/declarations/bitmatrixsheafcondition--bfa27ed7a53dbe4f731d51af.md) | 37 | `declaration-track:bfa27ed7a53dbe4f731d51af4e4712656acfb5fb6ea3ee9634ec6d7cd57bed6e` |
| 3 | `abbrev` | [BitMatrixSheafCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean/declarations/bitmatrixsheafcategory--8d6ea12fe659d933064594ba.md) | 43 | `declaration-track:8d6ea12fe659d933064594bacde4f40dee1e8bce049dd42cc7fd4e26535c729d` |
| 4 | `theorem` | [bitmatrix_sheaf_condition_is_mathlib_isSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean/declarations/bitmatrix-sheaf-condition-is-mathlib-issheaf--a69108705a203a2305d933d2.md) | 47 | `result-track:a69108705a203a2305d933d2ee4a7563602d5970158e478109b6f29f4072cb52` |
| 5 | `theorem` | [bitmatrix_sheaf_category_is_mathlib_sheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean/declarations/bitmatrix-sheaf-category-is-mathlib-sheaf--6e6dea34b900915b4a8e1b52.md) | 54 | `result-track:6e6dea34b900915b4a8e1b52d7ac3b65b4372d9f80d89ba6135f0cbb17bb20b8` |
| 6 | `structure` | [MathlibSheafCategoryBoundarySurface](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean/declarations/mathlibsheafcategoryboundarysurface--337f2f77c70e49fd266cb078.md) | 60 | `declaration-track:337f2f77c70e49fd266cb0788d503015e6a5f093cf2a8b974db1edf0390687c2` |
| 7 | `def` | [defaultMathlibSheafCategoryBoundarySurface](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean/declarations/defaultmathlibsheafcategoryboundarysurface--df21977f999df51830b770f9.md) | 71 | `declaration-track:df21977f999df51830b770f9809b98c27c54473bdb808f32ebceef069a83dee7` |
| 8 | `theorem` | [default_mathlib_sheaf_boundary_has_presheaf_interface](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean/declarations/default-mathlib-sheaf-boundary-has-presheaf-interface--3f47eed847de4f0e01d84c4c.md) | 83 | `result-track:3f47eed847de4f0e01d84c4c0eb283b81033439ab3a181e8f922ba2f2871e375` |
| 9 | `theorem` | [default_mathlib_sheaf_boundary_has_sheaf_condition_interface](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean/declarations/default-mathlib-sheaf-boundary-has-sheaf-condition-interface--85b2c02d3e2af32fac6f71db.md) | 89 | `result-track:85b2c02d3e2af32fac6f71db02b9230a38267b8391544d27f81eeef805acac26` |
| 10 | `theorem` | [default_mathlib_sheaf_boundary_has_sheaf_category_entrance](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean/declarations/default-mathlib-sheaf-boundary-has-sheaf-category-entrance--bd980f14252f977e1c118b4a.md) | 95 | `result-track:bd980f14252f977e1c118b4ad3cf3b98b31d0d2dbf4a22161d3a2fa3f358d194` |
| 11 | `theorem` | [mathlib_sheaf_boundary_does_not_construct_sheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean/declarations/mathlib-sheaf-boundary-does-not-construct-sheafification--38f83534ace0cce9f3f72864.md) | 101 | `result-track:38f83534ace0cce9f3f72864a62bc366d11442f92f114743c6e28208c1216ada` |
| 12 | `theorem` | [mathlib_sheaf_boundary_denies_lawvere_tierney](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean/declarations/mathlib-sheaf-boundary-denies-lawvere-tierney--679594fec08c41755aac613c.md) | 107 | `result-track:679594fec08c41755aac613cf6a3cf793154357beec303b15005031feb29206f` |
| 13 | `theorem` | [mathlib_sheaf_boundary_denies_essential_geometric_morphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean/declarations/mathlib-sheaf-boundary-denies-essential-geometric-morphism--614f3c8ad2132dd49b10b6b9.md) | 113 | `result-track:614f3c8ad2132dd49b10b6b931ba9dd8793b8becb64b46c182485cab6d569532` |
| 14 | `theorem` | [mathlib_sheaf_boundary_denies_topos](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean/declarations/mathlib-sheaf-boundary-denies-topos--009116c92465db38bc5b07ee.md) | 119 | `result-track:009116c92465db38bc5b07ee78a0d14e2721f10daa0640452d322ed95d888cdc` |
| 15 | `theorem` | [mathlib_sheaf_boundary_denies_theorem_promotion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean/declarations/mathlib-sheaf-boundary-denies-theorem-promotion--64447fb40a7ff2669a635103.md) | 124 | `result-track:64447fb40a7ff2669a635103711c85ff68707b3d28119c1edb67a7cc5c730e54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
