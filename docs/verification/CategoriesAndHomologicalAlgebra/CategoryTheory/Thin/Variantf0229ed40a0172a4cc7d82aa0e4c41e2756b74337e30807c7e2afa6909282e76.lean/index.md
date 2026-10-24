# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Thin.Variantf0229ed40a0172a4cc7d82aa0e4c41e2756b74337e30807c7e2afa6909282e76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a9e2a2daeeeb25f4a6ea7d64660a6ceb66e453b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Thin/Variantf0229ed40a0172a4cc7d82aa0e4c41e2756b74337e30807c7e2afa6909282e76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Thin/Variantf0229ed40a0172a4cc7d82aa0e4c41e2756b74337e30807c7e2afa6909282e76.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Thin/Variantf0229ed40a0172a4cc7d82aa0e4c41e2756b74337e30807c7e2afa6909282e76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a9e2a2daeeeb25f4a6ea7d64660a6ceb66e453b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Thin/Variantf0229ed40a0172a4cc7d82aa0e4c41e2756b74337e30807c7e2afa6909282e76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Thin/Variantf0229ed40a0172a4cc7d82aa0e4c41e2756b74337e30807c7e2afa6909282e76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Category` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Iso` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thin_category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Thin/Variantf0229ed40a0172a4cc7d82aa0e4c41e2756b74337e30807c7e2afa6909282e76.lean/declarations/thin-category--497a5ad46a96fac9c349e7aa.md) | 43 | `declaration-track:497a5ad46a96fac9c349e7aa818b197f48e57bb1f8dd831a13e4d68994039d09` |
| 2 | `instance` | [functor_thin](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Thin/Variantf0229ed40a0172a4cc7d82aa0e4c41e2756b74337e30807c7e2afa6909282e76.lean/declarations/functor-thin--18f8e0919cf6974c68b00897.md) | 54 | `declaration-track:18f8e0919cf6974c68b00897923580bf32b87bb36276d98a7c10454be24278db` |
| 3 | `def` | [iso_of_both_ways](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Thin/Variantf0229ed40a0172a4cc7d82aa0e4c41e2756b74337e30807c7e2afa6909282e76.lean/declarations/iso-of-both-ways--acef0f10776cc378cd39b4d5.md) | 58 | `declaration-track:acef0f10776cc378cd39b4d5e94ddf485fb1df888ceec2c2556cdb1c52e9cebe` |
| 4 | `instance` | [subsingleton_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Thin/Variantf0229ed40a0172a4cc7d82aa0e4c41e2756b74337e30807c7e2afa6909282e76.lean/declarations/subsingleton-iso--5da219342e5b2710763403ea.md) | 63 | `declaration-track:5da219342e5b2710763403ea5b1ac39eb7b7bf099d334be91a7dc9b057735f07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
