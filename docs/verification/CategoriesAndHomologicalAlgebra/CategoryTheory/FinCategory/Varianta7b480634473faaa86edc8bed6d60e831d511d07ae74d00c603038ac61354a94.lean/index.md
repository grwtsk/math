# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FinCategory.Varianta7b480634473faaa86edc8bed6d60e831d511d07ae74d00c603038ac61354a94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "deb092646fa53031e42073e032f350d8da413483",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FinCategory/Varianta7b480634473faaa86edc8bed6d60e831d511d07ae74d00c603038ac61354a94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinCategory/Varianta7b480634473faaa86edc8bed6d60e831d511d07ae74d00c603038ac61354a94.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinCategory/Varianta7b480634473faaa86edc8bed6d60e831d511d07ae74d00c603038ac61354a94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `deb092646fa53031e42073e032f350d8da413483`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FinCategory/Varianta7b480634473faaa86edc8bed6d60e831d511d07ae74d00c603038ac61354a94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FinCategory/Varianta7b480634473faaa86edc8bed6d60e831d511d07ae74d00c603038ac61354a94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FinCategory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.WithTerminal.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Option` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [optionEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinCategory/Varianta7b480634473faaa86edc8bed6d60e831d511d07ae74d00c603038ac61354a94.lean/declarations/optionequiv--cc89385696b50939a14fee60.md) | 28 | `declaration-track:cc89385696b50939a14fee607c1bb691372d97b28461984be598c2a08b9f5345` |
| 2 | `instance` | [instFintype](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinCategory/Varianta7b480634473faaa86edc8bed6d60e831d511d07ae74d00c603038ac61354a94.lean/declarations/instfintype--a4fd518d6315b31763bd6473.md) | 38 | `declaration-track:a4fd518d6315b31763bd64739dc1729f9f588ac279d7a4f117faf99f2a2df1b7` |
| 3 | `instance` | [instFinCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinCategory/Varianta7b480634473faaa86edc8bed6d60e831d511d07ae74d00c603038ac61354a94.lean/declarations/instfincategory--3fc8bcad611ad73d0df286f6.md) | 41 | `declaration-track:3fc8bcad611ad73d0df286f69a7aed740d801a1a9f24ede411f6dd38af92c8d3` |
| 4 | `def` | [optionEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinCategory/Varianta7b480634473faaa86edc8bed6d60e831d511d07ae74d00c603038ac61354a94.lean/declarations/optionequiv--0353c6a3f9b26a1f02a9106a.md) | 56 | `declaration-track:0353c6a3f9b26a1f02a9106a84ef86e5b57a8ae938ebaa76a0c8137bf3b2b830` |
| 5 | `instance` | [instFintype](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinCategory/Varianta7b480634473faaa86edc8bed6d60e831d511d07ae74d00c603038ac61354a94.lean/declarations/instfintype--e9c2f075220a8fba18c5f894.md) | 66 | `declaration-track:e9c2f075220a8fba18c5f894554142a6cd62af5223a55c550b803da04f480ac9` |
| 6 | `instance` | [instFinCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinCategory/Varianta7b480634473faaa86edc8bed6d60e831d511d07ae74d00c603038ac61354a94.lean/declarations/instfincategory--aefb3d591a9fe7f2100832ae.md) | 69 | `declaration-track:aefb3d591a9fe7f2100832aec543ec032c9e5b8885f86f28b9974048690cd33b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
