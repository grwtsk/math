# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Strict.Variantd5e8e4d8a7bf39fdef90cc47deabbb511793be4b93177856b487b8c27c7bdc0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a978a8a9c00479d6d6b88cc01aa252f3a033176",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Strict/Variantd5e8e4d8a7bf39fdef90cc47deabbb511793be4b93177856b487b8c27c7bdc0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Strict/Variantd5e8e4d8a7bf39fdef90cc47deabbb511793be4b93177856b487b8c27c7bdc0a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Strict/Variantd5e8e4d8a7bf39fdef90cc47deabbb511793be4b93177856b487b8c27c7bdc0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a978a8a9c00479d6d6b88cc01aa252f3a033176`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Strict/Variantd5e8e4d8a7bf39fdef90cc47deabbb511793be4b93177856b487b8c27c7bdc0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Strict/Variantd5e8e4d8a7bf39fdef90cc47deabbb511793be4b93177856b487b8c27c7bdc0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EqToHom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Bicategory.Strict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Strict/Variantd5e8e4d8a7bf39fdef90cc47deabbb511793be4b93177856b487b8c27c7bdc0a.lean/declarations/bicategory-strict--dde02eeac5b4dc4e55e640b7.md) | 44 | `declaration-track:dde02eeac5b4dc4e55e640b7f622ec1cb838a10c7f9b9d4d1810ed2a941507f7` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Strict/Variantd5e8e4d8a7bf39fdef90cc47deabbb511793be4b93177856b487b8c27c7bdc0a.lean/declarations/instance--2916d33c65face666f6a49f8.md) | 63 | `declaration-track:2916d33c65face666f6a49f8d38ea6e6e9432c1ca34b1f775ea951d28ab4794c` |
| 3 | `theorem` | [whiskerLeft_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Strict/Variantd5e8e4d8a7bf39fdef90cc47deabbb511793be4b93177856b487b8c27c7bdc0a.lean/declarations/whiskerleft-eqtohom--765c0999e3baaaea44c9ddc8.md) | 73 | `result-track:765c0999e3baaaea44c9ddc8949f649632511bc676dde962ae691973f4f864e6` |
| 4 | `theorem` | [eqToHom_whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Strict/Variantd5e8e4d8a7bf39fdef90cc47deabbb511793be4b93177856b487b8c27c7bdc0a.lean/declarations/eqtohom-whiskerright--d07e0c4feb3c3a730b9c7e18.md) | 79 | `result-track:d07e0c4feb3c3a730b9c7e18305608f1aca3c335488fecfd7e9be262b0a2cd91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
