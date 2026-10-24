# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Varianta6d1082fcb76e43525e10bb6b3b4e76c72700ede61cac08c7bcc9346017c43f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "def26589382f510b4faf01c9d107ff85f988700c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta6d1082fcb76e43525e10bb6b3b4e76c72700ede61cac08c7bcc9346017c43f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta6d1082fcb76e43525e10bb6b3b4e76c72700ede61cac08c7bcc9346017c43f0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta6d1082fcb76e43525e10bb6b3b4e76c72700ede61cac08c7bcc9346017c43f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `def26589382f510b4faf01c9d107ff85f988700c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta6d1082fcb76e43525e10bb6b3b4e76c72700ede61cac08c7bcc9346017c43f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta6d1082fcb76e43525e10bb6b3b4e76c72700ede61cac08c7bcc9346017c43f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.FunctorCategory` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Finite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Kernels` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coimageObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta6d1082fcb76e43525e10bb6b3b4e76c72700ede61cac08c7bcc9346017c43f0.lean/declarations/coimageobjiso--770cbb1154a918681024fdd6.md) | 38 | `declaration-track:770cbb1154a918681024fdd61ea310303b045398118f8249e2983f1fcaa9fb99` |
| 2 | `def` | [imageObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta6d1082fcb76e43525e10bb6b3b4e76c72700ede61cac08c7bcc9346017c43f0.lean/declarations/imageobjiso--4b5103319b9d517160e0aad2.md) | 48 | `declaration-track:4b5103319b9d517160e0aad29dc5e8e29f35eb38cdea6709328a12e93dd2371e` |
| 3 | `theorem` | [coimageImageComparison_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta6d1082fcb76e43525e10bb6b3b4e76c72700ede61cac08c7bcc9346017c43f0.lean/declarations/coimageimagecomparison-app--ad7f420fa33d7d8cc309140e.md) | 58 | `result-track:ad7f420fa33d7d8cc309140ef09f12099f84c10f808f51f16dd4726ee025cd9d` |
| 4 | `theorem` | [coimageImageComparison_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta6d1082fcb76e43525e10bb6b3b4e76c72700ede61cac08c7bcc9346017c43f0.lean/declarations/coimageimagecomparison-app--9332ce5d3427d12e6e2900c5.md) | 72 | `result-track:9332ce5d3427d12e6e2900c580007f9e328ac627ef036d8112a29b7930fb5345` |
| 5 | `instance` | [functor_category_isIso_coimageImageComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta6d1082fcb76e43525e10bb6b3b4e76c72700ede61cac08c7bcc9346017c43f0.lean/declarations/functor-category-isiso-coimageimagecomparison--747feecb8dd8e9e23a7c866b.md) | 78 | `declaration-track:747feecb8dd8e9e23a7c866b3fde75b027acd20d51ca4541e54ab9b0b19c8dc4` |
| 6 | `instance` | [functorCategoryAbelian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta6d1082fcb76e43525e10bb6b3b4e76c72700ede61cac08c7bcc9346017c43f0.lean/declarations/functorcategoryabelian--0fca23b10cb31d12173ac632.md) | 88 | `declaration-track:0fca23b10cb31d12173ac63217d11e82e6974ab69e4eda7ba2a3b7a7e2826994` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
