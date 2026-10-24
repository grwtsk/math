# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimitCommutesFiniteLimit.Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a34758978c247dc6dbfc547169b8dc6bc135081",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a34758978c247dc6dbfc547169b8dc6bc135081`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.ColimitLimit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.FunctorCategory` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Filtered` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [comp_lim_obj_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean/declarations/comp-lim-obj-ext--f04b96705e76d4b7f4071e91.md) | 41 | `result-track:f04b96705e76d4b7f4071e91dc601b328eb5d53b4329b7e7168d1f0ba55a9ebd` |
| 2 | `theorem` | [colimitLimitToLimitColimit_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean/declarations/colimitlimittolimitcolimit-injective--139204c7971175c41a1f3411.md) | 63 | `result-track:139204c7971175c41a1f3411b097b44394b52e3efbb9b87e102d2b191165f344` |
| 3 | `theorem` | [colimitLimitToLimitColimit_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean/declarations/colimitlimittolimitcolimit-surjective--1be080410fb658359e3d479a.md) | 145 | `result-track:1be080410fb658359e3d479af55a64995cb361eb6ad0a41a236c2d7ed498d142` |
| 4 | `instance` | [colimitLimitToLimitColimit_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean/declarations/colimitlimittolimitcolimit-isiso--77eb0b5479ed674cf9e1e620.md) | 315 | `declaration-track:77eb0b5479ed674cf9e1e62072dad8bc062f00be36514e2b4e5b95a0e9e51430` |
| 5 | `instance` | [colimitLimitToLimitColimitCone_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean/declarations/colimitlimittolimitcolimitcone-iso--d9600f4c077790fd276e2410.md) | 320 | `declaration-track:d9600f4c077790fd276e2410d2b1cdcd748afb1334b14d7edfc5756ef14380e1` |
| 6 | `instance` | [filteredColimPreservesFiniteLimitsOfTypes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean/declarations/filteredcolimpreservesfinitelimitsoftypes--ba0d141e16046356f6dde84f.md) | 330 | `declaration-track:ba0d141e16046356f6dde84fd3a5b8bb460581872ffc1ecddaa7894a8ae517d0` |
| 7 | `instance` | [filteredColimPreservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean/declarations/filteredcolimpreservesfinitelimits--40153058b18f4647bf3773b0.md) | 351 | `declaration-track:40153058b18f4647bf3773b0dfaaa997c77414b79a4e1165a6e25a2807ff461b` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean/declarations/instance--1e9eb3af89bb99974c954239.md) | 362 | `declaration-track:1e9eb3af89bb99974c9542397ff4066f27fc716bbe39e21059c362ba92ed848e` |
| 9 | `def` | [colimitLimitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean/declarations/colimitlimitiso--7fd33305d1a24ab28ffbbb0c.md) | 378 | `declaration-track:7fd33305d1a24ab28ffbbb0cf6b61e76652bb6ada515a7a08ab683b5572ac272` |
| 10 | `theorem` | [ι_colimitLimitIso_limit_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean/declarations/colimitlimitiso-limit--69f17da29727ba34a9108024.md) | 384 | `result-track:69f17da29727ba34a9108024850076de0d900eebc59a8d623dcf78facfb3dcf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
