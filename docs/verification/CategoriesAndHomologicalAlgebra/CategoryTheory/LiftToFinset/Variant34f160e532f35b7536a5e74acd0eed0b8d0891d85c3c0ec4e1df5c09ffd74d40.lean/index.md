# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LiftToFinset.Variant34f160e532f35b7536a5e74acd0eed0b8d0891d85c3c0ec4e1df5c09ffd74d40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "711b96a6d00acbcaa9bd27d149a7edd68bb070d0",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftToFinset/Variant34f160e532f35b7536a5e74acd0eed0b8d0891d85c3c0ec4e1df5c09ffd74d40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftToFinset/Variant34f160e532f35b7536a5e74acd0eed0b8d0891d85c3c0ec4e1df5c09ffd74d40.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftToFinset/Variant34f160e532f35b7536a5e74acd0eed0b8d0891d85c3c0ec4e1df5c09ffd74d40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `711b96a6d00acbcaa9bd27d149a7edd68bb070d0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftToFinset/Variant34f160e532f35b7536a5e74acd0eed0b8d0891d85c3c0ec4e1df5c09ffd74d40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftToFinset/Variant34f160e532f35b7536a5e74acd0eed0b8d0891d85c3c0ec4e1df5c09ffd74d40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Constructions.Filtered` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finiteSubcoproductsCocone_ι_app_eq_sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftToFinset/Variant34f160e532f35b7536a5e74acd0eed0b8d0891d85c3c0ec4e1df5c09ffd74d40.lean/declarations/finitesubcoproductscocone-app-eq-sum--2ef260f28f54d667c4c5730f.md) | 30 | `result-track:2ef260f28f54d667c4c5730fd248e7dbe8743e3c49114481ed150967cd4c3133` |
| 2 | `theorem` | [finiteSubproductsCocone_π_app_eq_sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftToFinset/Variant34f160e532f35b7536a5e74acd0eed0b8d0891d85c3c0ec4e1df5c09ffd74d40.lean/declarations/finitesubproductscocone-app-eq-sum--f5a4cf88072a2c17413c8a73.md) | 49 | `result-track:f5a4cf88072a2c17413c8a737f5fb2f3c6ed516eef5f572175f424cedab55b09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
