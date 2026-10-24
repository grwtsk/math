# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variantb8c856d5c393a164f46b83f71e43a0f8c64be56a1e5809ab897d85c8ea4d9378

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "080bb6fcc057e19d976d1fc5990c5ec4616e590a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb8c856d5c393a164f46b83f71e43a0f8c64be56a1e5809ab897d85c8ea4d9378.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb8c856d5c393a164f46b83f71e43a0f8c64be56a1e5809ab897d85c8ea4d9378.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb8c856d5c393a164f46b83f71e43a0f8c64be56a1e5809ab897d85c8ea4d9378.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `080bb6fcc057e19d976d1fc5990c5ec4616e590a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb8c856d5c393a164f46b83f71e43a0f8c64be56a1e5809ab897d85c8ea4d9378.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb8c856d5c393a164f46b83f71e43a0f8c64be56a1e5809ab897d85c8ea4d9378.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.FunctorCategory` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedIhom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb8c856d5c393a164f46b83f71e43a0f8c64be56a1e5809ab897d85c8ea4d9378.lean/declarations/closedihom--0e75e39345d4150b4203e073.md) | 29 | `declaration-track:0e75e39345d4150b4203e0735defbec5d5fef94991ac217b0df71f19bd29e0ee` |
| 2 | `def` | [closedUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb8c856d5c393a164f46b83f71e43a0f8c64be56a1e5809ab897d85c8ea4d9378.lean/declarations/closedunit--ea571f2e18ce51a851ca52c5.md) | 36 | `declaration-track:ea571f2e18ce51a851ca52c574665c66a7c6a914390391416738061169230201` |
| 3 | `def` | [closedCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb8c856d5c393a164f46b83f71e43a0f8c64be56a1e5809ab897d85c8ea4d9378.lean/declarations/closedcounit--337f168c65b75d946a7b54b9.md) | 51 | `declaration-track:337f168c65b75d946a7b54b957cff99146379abd04857403d422b7239dee1fed` |
| 4 | `instance` | [closed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb8c856d5c393a164f46b83f71e43a0f8c64be56a1e5809ab897d85c8ea4d9378.lean/declarations/closed--cd744427639d0f9f1f66d135.md) | 66 | `declaration-track:cd744427639d0f9f1f66d1359d22bc49350f1c33bb8c4f7fddf8b8c3228592bb` |
| 5 | `instance` | [monoidalClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb8c856d5c393a164f46b83f71e43a0f8c64be56a1e5809ab897d85c8ea4d9378.lean/declarations/monoidalclosed--5334ea47519164092c4802c5.md) | 77 | `declaration-track:5334ea47519164092c4802c58857b309cc09b63c204668e26f7a6a0027c9bf16` |
| 6 | `theorem` | [ihom_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb8c856d5c393a164f46b83f71e43a0f8c64be56a1e5809ab897d85c8ea4d9378.lean/declarations/ihom-map--f8584be05070a9a759719229.md) | 81 | `result-track:f8584be05070a9a759719229124df3fb84138f249226ec73d0639e2e7ed912cc` |
| 7 | `theorem` | [ihom_ev_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb8c856d5c393a164f46b83f71e43a0f8c64be56a1e5809ab897d85c8ea4d9378.lean/declarations/ihom-ev-app--13446ef7e3717ede477d2f32.md) | 85 | `result-track:13446ef7e3717ede477d2f32576a387bca1c17e7862915246887b89a0a1c7069` |
| 8 | `theorem` | [ihom_coev_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb8c856d5c393a164f46b83f71e43a0f8c64be56a1e5809ab897d85c8ea4d9378.lean/declarations/ihom-coev-app--1a1516c32e09dda35ce2914e.md) | 89 | `result-track:1a1516c32e09dda35ce2914e626b8002a88d0cc4c02d8d99eaa4c771b7edf22c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
