# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BundledHom.Variant2868b97e59c95b6faf5f25f7c7ed5a547b209165fe7c666d3e61ca9bf92db9bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ea14405ef5581b666aceff90c32a22eef88aad6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant2868b97e59c95b6faf5f25f7c7ed5a547b209165fe7c666d3e61ca9bf92db9bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant2868b97e59c95b6faf5f25f7c7ed5a547b209165fe7c666d3e61ca9bf92db9bc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant2868b97e59c95b6faf5f25f7c7ed5a547b209165fe7c666d3e61ca9bf92db9bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ea14405ef5581b666aceff90c32a22eef88aad6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant2868b97e59c95b6faf5f25f7c7ed5a547b209165fe7c666d3e61ca9bf92db9bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant2868b97e59c95b6faf5f25f7c7ed5a547b209165fe7c666d3e61ca9bf92db9bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Bundled` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BundledHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant2868b97e59c95b6faf5f25f7c7ed5a547b209165fe7c666d3e61ca9bf92db9bc.lean/declarations/bundledhom--ff392b5d9415cb6bcae00d23.md) | 38 | `declaration-track:ff392b5d9415cb6bcae00d23bc5f3e541d3e7c229ca19221fb83c9791013fe06` |
| 2 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant2868b97e59c95b6faf5f25f7c7ed5a547b209165fe7c666d3e61ca9bf92db9bc.lean/declarations/category--2a72e218770dbe921289370a.md) | 74 | `declaration-track:2a72e218770dbe921289370aeb7956983aeeaf66ec15175120649f1cadab5f9b` |
| 3 | `instance` | [concreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant2868b97e59c95b6faf5f25f7c7ed5a547b209165fe7c666d3e61ca9bf92db9bc.lean/declarations/concretecategory--1e1d757f714f0e8de39bd82f.md) | 85 | `declaration-track:1e1d757f714f0e8de39bd82f3e8e1a856a91d046bd54317f58c0107c475a5cb6` |
| 4 | `def` | [mkHasForget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant2868b97e59c95b6faf5f25f7c7ed5a547b209165fe7c666d3e61ca9bf92db9bc.lean/declarations/mkhasforget--329083e2add8ba6e6e324880.md) | 100 | `declaration-track:329083e2add8ba6e6e3248801d02e0811b34bfe08acd1d2bdf23271156e11bc5` |
| 5 | `def` | [MapHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant2868b97e59c95b6faf5f25f7c7ed5a547b209165fe7c666d3e61ca9bf92db9bc.lean/declarations/maphom--89d4350b9139a5a6773a8a3f.md) | 124 | `declaration-track:89d4350b9139a5a6773a8a3fb4ddf077bf024cb3cde6472011a573a7f381f84d` |
| 6 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant2868b97e59c95b6faf5f25f7c7ed5a547b209165fe7c666d3e61ca9bf92db9bc.lean/declarations/map--c742367f1adf479f10f440cb.md) | 133 | `declaration-track:c742367f1adf479f10f440cbedc822ade0a4ce7fd2d89bf2ff95bea2de99ba25` |
| 7 | `class` | [ParentProjection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant2868b97e59c95b6faf5f25f7c7ed5a547b209165fe7c666d3e61ca9bf92db9bc.lean/declarations/parentprojection--c133ebb34ba25675a5633a75.md) | 153 | `declaration-track:c133ebb34ba25675a5633a7517a1f254c8d1f37e55342a157d1f8d43cd61b0bb` |
| 8 | `instance` | [bundledHomOfParentProjection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant2868b97e59c95b6faf5f25f7c7ed5a547b209165fe7c666d3e61ca9bf92db9bc.lean/declarations/bundledhomofparentprojection--308ccc8b9d32467b7dfc30e5.md) | 160 | `declaration-track:308ccc8b9d32467b7dfc30e5e14731ce9550877f72839fe81f9bfa15f91dbb64` |
| 9 | `instance` | [forget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant2868b97e59c95b6faf5f25f7c7ed5a547b209165fe7c666d3e61ca9bf92db9bc.lean/declarations/forget--533cc2f0b922833b2e9d03e7.md) | 165 | `declaration-track:533cc2f0b922833b2e9d03e7dfc2e3ce30255a66e3e718daf09c491069410fb9` |
| 10 | `instance` | [forget₂Full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant2868b97e59c95b6faf5f25f7c7ed5a547b209165fe7c666d3e61ca9bf92db9bc.lean/declarations/forget-full--765b69e7594dfba11a5917d6.md) | 171 | `declaration-track:765b69e7594dfba11a5917d6d4f142cd3da144efa3e38496ce9c827d7e855ec9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
