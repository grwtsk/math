# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SiteCategoryMathlib.Variant47ecb2492fbfaaaeae9fe90320d6abf024175cb358248ccdd578b74775308a14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e912e0a72f4552b2e49eb070c75a2a08d2bc5b1",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant47ecb2492fbfaaaeae9fe90320d6abf024175cb358248ccdd578b74775308a14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant47ecb2492fbfaaaeae9fe90320d6abf024175cb358248ccdd578b74775308a14.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant47ecb2492fbfaaaeae9fe90320d6abf024175cb358248ccdd578b74775308a14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e912e0a72f4552b2e49eb070c75a2a08d2bc5b1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant47ecb2492fbfaaaeae9fe90320d6abf024175cb358248ccdd578b74775308a14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant47ecb2492fbfaaaeae9fe90320d6abf024175cb358248ccdd578b74775308a14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Compression.SiteCategory` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SiteHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant47ecb2492fbfaaaeae9fe90320d6abf024175cb358248ccdd578b74775308a14.lean/declarations/sitehom--9e849718b39ab81c8e631b3a.md) | 29 | `declaration-track:9e849718b39ab81c8e631b3a23b2cf7bad199bbf236d4bf58ffd0ef3c052747f` |
| 2 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant47ecb2492fbfaaaeae9fe90320d6abf024175cb358248ccdd578b74775308a14.lean/declarations/id--614b7130623425aa63a5da5b.md) | 35 | `declaration-track:614b7130623425aa63a5da5b8d046e057667adf12ddac551e5eed177f53884a1` |
| 3 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant47ecb2492fbfaaaeae9fe90320d6abf024175cb358248ccdd578b74775308a14.lean/declarations/comp--0de19d53e54792aaad484e69.md) | 39 | `declaration-track:0de19d53e54792aaad484e6942aad370a1b48859d239ebdd8c63c07312e88ee9` |
| 4 | `instance` | [siteObjectCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant47ecb2492fbfaaaeae9fe90320d6abf024175cb358248ccdd578b74775308a14.lean/declarations/siteobjectcategory--9046c2763e1f80a50a49510e.md) | 46 | `declaration-track:9046c2763e1f80a50a49510e5cf2c9b793c09d3db3f2ff980d523f7c5e01b900` |
| 5 | `structure` | [SiteCategoryMathlibSurface](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant47ecb2492fbfaaaeae9fe90320d6abf024175cb358248ccdd578b74775308a14.lean/declarations/sitecategorymathlibsurface--85945e8d16d17cabfddbe29b.md) | 66 | `declaration-track:85945e8d16d17cabfddbe29b09209c3a3698bb9a304c65905f5c31b5896d32ae` |
| 6 | `def` | [defaultSiteCategoryMathlibSurface](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant47ecb2492fbfaaaeae9fe90320d6abf024175cb358248ccdd578b74775308a14.lean/declarations/defaultsitecategorymathlibsurface--b2e2c11802ca25b86f60dfa5.md) | 76 | `declaration-track:b2e2c11802ca25b86f60dfa5da3cac25b760743a9e71f255067f626bb663df14` |
| 7 | `theorem` | [siteObjectCategory_hom_eq_siteMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant47ecb2492fbfaaaeae9fe90320d6abf024175cb358248ccdd578b74775308a14.lean/declarations/siteobjectcategory-hom-eq-sitemorphism--d3121d0bee7e0bdc571e1ec9.md) | 86 | `result-track:d3121d0bee7e0bdc571e1ec92e8f92108b098665d36eb80673aa5a9c527fa202` |
| 8 | `def` | [siteHomToSiteMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant47ecb2492fbfaaaeae9fe90320d6abf024175cb358248ccdd578b74775308a14.lean/declarations/sitehomtositemorphism--76917ce41ea1052de37333e5.md) | 91 | `declaration-track:76917ce41ea1052de37333e53ef204e19b0a2d2480084fd7e699b5c1c234fc19` |
| 9 | `theorem` | [siteObjectCategory_id_eq_siteMorphism_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant47ecb2492fbfaaaeae9fe90320d6abf024175cb358248ccdd578b74775308a14.lean/declarations/siteobjectcategory-id-eq-sitemorphism-id--f7808bd8706b06bc2b66a68d.md) | 96 | `result-track:f7808bd8706b06bc2b66a68d2628711efb3c6d137c5fc55b58eb6b606d1ba1e5` |
| 10 | `theorem` | [siteObjectCategory_comp_eq_siteMorphism_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant47ecb2492fbfaaaeae9fe90320d6abf024175cb358248ccdd578b74775308a14.lean/declarations/siteobjectcategory-comp-eq-sitemorphism-comp--d8ddcd83fba5e09af9d2100c.md) | 102 | `result-track:d8ddcd83fba5e09af9d2100c14fcc662568802209778cc40146e8a2bc8f5052b` |
| 11 | `theorem` | [default_site_category_mathlib_has_category_instance](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant47ecb2492fbfaaaeae9fe90320d6abf024175cb358248ccdd578b74775308a14.lean/declarations/default-site-category-mathlib-has-category-instance--00e2e1955dd2c33e69c0e349.md) | 110 | `result-track:00e2e1955dd2c33e69c0e3497631d091967abc8a318791c78d718bd2fda2f211` |
| 12 | `theorem` | [site_category_mathlib_denies_grothendieck_topology_instance](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant47ecb2492fbfaaaeae9fe90320d6abf024175cb358248ccdd578b74775308a14.lean/declarations/site-category-mathlib-denies-grothendieck-topology-instance--db91c0f98daa63062ae767b1.md) | 116 | `result-track:db91c0f98daa63062ae767b129a839c14d42d70ca9784b08ddec27658dcbf6e0` |
| 13 | `theorem` | [site_category_mathlib_denies_sheaf_category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant47ecb2492fbfaaaeae9fe90320d6abf024175cb358248ccdd578b74775308a14.lean/declarations/site-category-mathlib-denies-sheaf-category--87d11d6b73ec9ac9af4f3a03.md) | 122 | `result-track:87d11d6b73ec9ac9af4f3a03e9b12ddc2b4dae4ff663e80e5538467d8687e834` |
| 14 | `theorem` | [site_category_mathlib_denies_lawvere_tierney_topology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant47ecb2492fbfaaaeae9fe90320d6abf024175cb358248ccdd578b74775308a14.lean/declarations/site-category-mathlib-denies-lawvere-tierney-topology--7af262b73a91aeb75805766a.md) | 127 | `result-track:7af262b73a91aeb75805766a821211743a83b4312ebb9af72a01a0ba2d3f3426` |
| 15 | `theorem` | [site_category_mathlib_denies_essential_geometric_morphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant47ecb2492fbfaaaeae9fe90320d6abf024175cb358248ccdd578b74775308a14.lean/declarations/site-category-mathlib-denies-essential-geometric-morphism--f00a6cd0d1e4fe2bf43bcb7d.md) | 133 | `result-track:f00a6cd0d1e4fe2bf43bcb7dc8308eee47b5c31986ca978152a9e609b818c67f` |
| 16 | `theorem` | [site_category_mathlib_denies_topos](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant47ecb2492fbfaaaeae9fe90320d6abf024175cb358248ccdd578b74775308a14.lean/declarations/site-category-mathlib-denies-topos--6a5576accfe7e1d89c14d540.md) | 139 | `result-track:6a5576accfe7e1d89c14d540f514f0ca87890719f6b68b0e1468c13bedfc78eb` |
| 17 | `theorem` | [site_category_mathlib_denies_theorem_promotion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant47ecb2492fbfaaaeae9fe90320d6abf024175cb358248ccdd578b74775308a14.lean/declarations/site-category-mathlib-denies-theorem-promotion--354831130576e68d1c0d916b.md) | 144 | `result-track:354831130576e68d1c0d916b9f37013281306e533c876c764bfc6e43bf332eaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
