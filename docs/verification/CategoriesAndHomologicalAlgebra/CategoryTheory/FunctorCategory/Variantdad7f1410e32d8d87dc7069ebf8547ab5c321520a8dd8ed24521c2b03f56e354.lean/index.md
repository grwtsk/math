# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variantdad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68c078c17f34d316646e34cc94384e2f0391c128",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68c078c17f34d316646e34cc94384e2f0391c128`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354.lean/declarations/instance--4ad9bb86c1f5fa9f38bf4470.md) | 23 | `declaration-track:4ad9bb86c1f5fa9f38bf447015adf99296c379e076d30beaca9b2e03c32d7914` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354.lean/declarations/instance--67ec5aa65d28f8773dafe3cf.md) | 26 | `declaration-track:67ec5aa65d28f8773dafe3cf6e3a97930a752386d07de5edd6faf8279671519a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354.lean/declarations/instance--965f905b8948fe6e0ec46eb1.md) | 29 | `declaration-track:965f905b8948fe6e0ec46eb144f7633b41b8a9af72bf1f4fd99d26cd220c4296` |
| 4 | `instance` | [functorCategoryPreadditive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354.lean/declarations/functorcategorypreadditive--4dd91dc4ba106735771f80ef.md) | 32 | `declaration-track:4dd91dc4ba106735771f80efb67ba766b01fe9d2f3051fdcb21e5a25f7798ed9` |
| 5 | `def` | [appHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354.lean/declarations/apphom--1886b87d1ffef182c8f51f17.md) | 79 | `declaration-track:1886b87d1ffef182c8f51f17215a921f5e9a11311aae8af21da2dc5ae72c9e7c` |
| 6 | `theorem` | [app_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354.lean/declarations/app-zero--47aa0b952d7bd1f1d2663591.md) | 85 | `result-track:47aa0b952d7bd1f1d26635913a61bc02b8393f05dacab60d5b0e540ff92ae476` |
| 7 | `theorem` | [app_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354.lean/declarations/app-add--e7311b941f4ca4302d3cf38c.md) | 89 | `result-track:e7311b941f4ca4302d3cf38c4a21339fdda1e1878e035978ec3ef6e13b4f79a4` |
| 8 | `theorem` | [app_sub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354.lean/declarations/app-sub--025d21ff4d10f72d2f0c66fb.md) | 93 | `result-track:025d21ff4d10f72d2f0c66fb9986284cf96f06f0fd5fdd0b2a978a4edf2e76f4` |
| 9 | `theorem` | [app_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354.lean/declarations/app-neg--9d6a1b3f03ba37948880ac72.md) | 97 | `result-track:9d6a1b3f03ba37948880ac720f2578fc602a115c19bed92c271cfaeee9ce23dc` |
| 10 | `theorem` | [app_nsmul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354.lean/declarations/app-nsmul--53e57a826bfe801d9f996dd1.md) | 101 | `result-track:53e57a826bfe801d9f996dd14eec16f4eeec28810c005b278273d2d92845c8a2` |
| 11 | `theorem` | [app_zsmul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354.lean/declarations/app-zsmul--13abb5de42e450ebfa9db790.md) | 105 | `result-track:13abb5de42e450ebfa9db7900fcf1a3c78b834b6be11caaf42b46b1e283eb67f` |
| 12 | `theorem` | [app_units_zsmul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354.lean/declarations/app-units-zsmul--15b7bec64703b88b4ee2537f.md) | 109 | `result-track:15b7bec64703b88b4ee2537f2decb750be33eb4446cf1b91885c3f2740902b1c` |
| 13 | `theorem` | [app_sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantdad7f1410e32d8d87dc7069ebf8547ab5c321520a8dd8ed24521c2b03f56e354.lean/declarations/app-sum--52161c4e8f052a0258de91d6.md) | 113 | `result-track:52161c4e8f052a0258de91d6df70a5e14c793145f32b882cdc7c371797a07c23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
