# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ColimitLimit.Variant8aa5f49dcde26e83a603046e45bf8750e90332e9ef63de0c016adb3db6fd7693

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c3e33608ca706847cce494238443a764838ce1e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant8aa5f49dcde26e83a603046e45bf8750e90332e9ef63de0c016adb3db6fd7693.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant8aa5f49dcde26e83a603046e45bf8750e90332e9ef63de0c016adb3db6fd7693.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant8aa5f49dcde26e83a603046e45bf8750e90332e9ef63de0c016adb3db6fd7693.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c3e33608ca706847cce494238443a764838ce1e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant8aa5f49dcde26e83a603046e45bf8750e90332e9ef63de0c016adb3db6fd7693.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant8aa5f49dcde26e83a603046e45bf8750e90332e9ef63de0c016adb3db6fd7693.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Types` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Currying` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_id_left_eq_curry_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant8aa5f49dcde26e83a603046e45bf8750e90332e9ef63de0c016adb3db6fd7693.lean/declarations/map-id-left-eq-curry-map--5cc41b197786f311808d8c41.md) | 50 | `result-track:5cc41b197786f311808d8c41d938c9738a6d3c8512bd57f65334bc29393f3d5a` |
| 2 | `theorem` | [map_id_right_eq_curry_swap_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant8aa5f49dcde26e83a603046e45bf8750e90332e9ef63de0c016adb3db6fd7693.lean/declarations/map-id-right-eq-curry-swap-map--a23351230d6cace8d6864c64.md) | 55 | `result-track:a23351230d6cace8d6864c646c455759358426c3a4ff079d90ed1f914cd03bfa` |
| 3 | `def` | [colimitLimitToLimitColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant8aa5f49dcde26e83a603046e45bf8750e90332e9ef63de0c016adb3db6fd7693.lean/declarations/colimitlimittolimitcolimit--1901676161c926aaf4573923.md) | 67 | `declaration-track:1901676161c926aaf4573923f5f08b5c24d5dd47b1005d05d277e78e926fb9f3` |
| 4 | `theorem` | [ι_colimitLimitToLimitColimit_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant8aa5f49dcde26e83a603046e45bf8750e90332e9ef63de0c016adb3db6fd7693.lean/declarations/colimitlimittolimitcolimit--d02dc30092f3c8c16539208c.md) | 100 | `result-track:d02dc30092f3c8c16539208c85e9b92278a78e07ed74285e65ed4cb50c72b610` |
| 5 | `theorem` | [ι_colimitLimitToLimitColimit_π_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant8aa5f49dcde26e83a603046e45bf8750e90332e9ef63de0c016adb3db6fd7693.lean/declarations/colimitlimittolimitcolimit-apply--cb8fa1a4dafdc006ba5f52a9.md) | 108 | `result-track:cb8fa1a4dafdc006ba5f52a9534ead5fb6f8854747c9fca937a12198ef50a35c` |
| 6 | `def` | [colimitLimitToLimitColimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant8aa5f49dcde26e83a603046e45bf8750e90332e9ef63de0c016adb3db6fd7693.lean/declarations/colimitlimittolimitcolimitcone--acaf6121a50dd9cf1e93b954.md) | 118 | `declaration-track:acaf6121a50dd9cf1e93b954835d07df5fcfe70986034fb6f2392044ed54990a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
