# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimits.Variant32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84bc8acad8947f5d85188b04ebac5052c17793fa",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84bc8acad8947f5d85188b04ebac5052c17793fa`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Presheaf.Colimit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Filtered` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FilteredColimitCommutesFiniteLimit` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorToTypes` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Indization.IndObject` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Small.Set` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compYonedaColimitIsoColimitCompYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean/declarations/compyonedacolimitisocolimitcompyoneda--3336b72e07b43eae91e12cb8.md) | 58 | `declaration-track:3336b72e07b43eae91e12cb85c653dd13fe6cd7eea45bfa5a8f7f7e55d8525e1` |
| 2 | `theorem` | [exists_nonempty_limit_obj_of_colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean/declarations/exists-nonempty-limit-obj-of-colimit--884666bd125ad1041e609be5.md) | 66 | `result-track:884666bd125ad1041e609be5b1b7a50f05b0c4348171f574278f14a4aa4c457a` |
| 3 | `theorem` | [exists_nonempty_limit_obj_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean/declarations/exists-nonempty-limit-obj-of-iscolimit--b97aacbf02f29d26fdd5375d.md) | 78 | `result-track:b97aacbf02f29d26fdd5375d64dc6f5f9e23ffa51abda9220fded01c63ca814d` |
| 4 | `theorem` | [isFiltered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean/declarations/isfiltered--c1a2c8ccd95aa17dfd85cad8.md) | 88 | `result-track:c1a2c8ccd95aa17dfd85cad8c576ad463dd4bd954dd8b559cd05b227b9d53fb1` |
| 5 | `theorem` | [isIndObject_colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant32ac6cc4ceda2a326588a8faba1207b60f190b2f09ce6085de4fb417579cd055.lean/declarations/isindobject-colimit--a9b231edb473b450e3cf177d.md) | 138 | `result-track:a9b231edb473b450e3cf177d58e7bdd841239e4995d3ed5c53d6397f71a28334` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
