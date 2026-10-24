# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variantf08f33e4374589c795c92e87ed2c03afc57f54971e9c37783137108424f9bbeb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2796d5a4a8b9bc04df86343da722fd9393079939",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf08f33e4374589c795c92e87ed2c03afc57f54971e9c37783137108424f9bbeb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf08f33e4374589c795c92e87ed2c03afc57f54971e9c37783137108424f9bbeb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf08f33e4374589c795c92e87ed2c03afc57f54971e9c37783137108424f9bbeb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2796d5a4a8b9bc04df86343da722fd9393079939`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf08f33e4374589c795c92e87ed2c03afc57f54971e9c37783137108424f9bbeb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf08f33e4374589c795c92e87ed2c03afc57f54971e9c37783137108424f9bbeb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.FunctorCategory` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [functorCategoryLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf08f33e4374589c795c92e87ed2c03afc57f54971e9c37783137108424f9bbeb.lean/declarations/functorcategorylinear--cd91b1ee21774b0a54db9331.md) | 24 | `declaration-track:cd91b1ee21774b0a54db9331182afba1af44327f9654035b8f767e669b50b683` |
| 2 | `def` | [appLinearMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf08f33e4374589c795c92e87ed2c03afc57f54971e9c37783137108424f9bbeb.lean/declarations/applinearmap--37e677cb1217f9eed680af28.md) | 71 | `declaration-track:37e677cb1217f9eed680af28167ce526acfa8d9d82a4d649fe7b9de56dc42f43` |
| 3 | `theorem` | [app_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf08f33e4374589c795c92e87ed2c03afc57f54971e9c37783137108424f9bbeb.lean/declarations/app-smul--d10e77b1bd2f9219210d5d88.md) | 77 | `result-track:d10e77b1bd2f9219210d5d88c839b37fd3a597d6b5385908d0a1a6a3f2e9f456` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
