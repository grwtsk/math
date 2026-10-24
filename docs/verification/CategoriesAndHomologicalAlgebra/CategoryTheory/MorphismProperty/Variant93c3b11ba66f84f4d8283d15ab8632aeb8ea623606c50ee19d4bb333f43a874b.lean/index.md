# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MorphismProperty.Variant93c3b11ba66f84f4d8283d15ab8632aeb8ea623606c50ee19d4bb333f43a874b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffed896be7cd40f682ac0137dfe5cd8fa7096fc5",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant93c3b11ba66f84f4d8283d15ab8632aeb8ea623606c50ee19d4bb333f43a874b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant93c3b11ba66f84f4d8283d15ab8632aeb8ea623606c50ee19d4bb333f43a874b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant93c3b11ba66f84f4d8283d15ab8632aeb8ea623606c50ee19d4bb333f43a874b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffed896be7cd40f682ac0137dfe5cd8fa7096fc5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant93c3b11ba66f84f4d8283d15ab8632aeb8ea623606c50ee19d4bb333f43a874b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant93c3b11ba66f84f4d8283d15ab8632aeb8ea623606c50ee19d4bb333f43a874b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Pretopology` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pretopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant93c3b11ba66f84f4d8283d15ab8632aeb8ea623606c50ee19d4bb333f43a874b.lean/declarations/pretopology--6342813d0f698637941619d4.md) | 40 | `declaration-track:6342813d0f698637941619d4cf41a908aa1d7f34fdfeaae7b5290a860474beed` |
| 2 | `abbrev` | [grothendieckTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant93c3b11ba66f84f4d8283d15ab8632aeb8ea623606c50ee19d4bb333f43a874b.lean/declarations/grothendiecktopology--6f6e09514d1c60c5bc6739ad.md) | 55 | `declaration-track:6f6e09514d1c60c5bc6739ad9b096fca9bd8097c6a9d7663fde857507db55f5c` |
| 3 | `lemma` | [pretopology_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant93c3b11ba66f84f4d8283d15ab8632aeb8ea623606c50ee19d4bb333f43a874b.lean/declarations/pretopology-le--60d8ca9a6f0ca0b9efafcd13.md) | 63 | `result-track:60d8ca9a6f0ca0b9efafcd13c67d47920f9da08343dafa85715c9f5e91ec767e` |
| 4 | `lemma` | [pretopology_inf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant93c3b11ba66f84f4d8283d15ab8632aeb8ea623606c50ee19d4bb333f43a874b.lean/declarations/pretopology-inf--ab8f0b8f593188e8adbd43d5.md) | 67 | `result-track:ab8f0b8f593188e8adbd43d5e64b7188afd402c2f1aaf2b9e12d41b494977b73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
