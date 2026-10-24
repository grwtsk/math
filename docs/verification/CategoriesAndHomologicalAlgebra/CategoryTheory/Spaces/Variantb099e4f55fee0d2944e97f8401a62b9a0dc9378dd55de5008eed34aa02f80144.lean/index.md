# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Spaces.Variantb099e4f55fee0d2944e97f8401a62b9a0dc9378dd55de5008eed34aa02f80144

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c85c6bdae24c93c96a89916e209318f1cce18422",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantb099e4f55fee0d2944e97f8401a62b9a0dc9378dd55de5008eed34aa02f80144.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantb099e4f55fee0d2944e97f8401a62b9a0dc9378dd55de5008eed34aa02f80144.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantb099e4f55fee0d2944e97f8401a62b9a0dc9378dd55de5008eed34aa02f80144.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c85c6bdae24c93c96a89916e209318f1cce18422`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantb099e4f55fee0d2944e97f8401a62b9a0dc9378dd55de5008eed34aa02f80144.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantb099e4f55fee0d2944e97f8401a62b9a0dc9378dd55de5008eed34aa02f80144.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Grothendieck` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Pretopology` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Lattice` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Opens` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [grothendieckTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantb099e4f55fee0d2944e97f8401a62b9a0dc9378dd55de5008eed34aa02f80144.lean/declarations/grothendiecktopology--ca52cd8b12b020f01207933c.md) | 44 | `declaration-track:ca52cd8b12b020f01207933c9fedd93636b4d992eb97acc82be2fe6b3e9cb3e3` |
| 2 | `def` | [pretopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantb099e4f55fee0d2944e97f8401a62b9a0dc9378dd55de5008eed34aa02f80144.lean/declarations/pretopology--f8253be3a11bb9503dbb4a24.md) | 57 | `declaration-track:f8253be3a11bb9503dbb4a24973887abde5be4cba21753285dffd8f5dc48c794` |
| 3 | `theorem` | [pretopology_ofGrothendieck](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantb099e4f55fee0d2944e97f8401a62b9a0dc9378dd55de5008eed34aa02f80144.lean/declarations/pretopology-ofgrothendieck--9fc91c80ebab01a0e3cd473d.md) | 74 | `result-track:9fc91c80ebab01a0e3cd473dbe8360b7bc0971e035a82482b559077faecb7ede` |
| 4 | `theorem` | [pretopology_toGrothendieck](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantb099e4f55fee0d2944e97f8401a62b9a0dc9378dd55de5008eed34aa02f80144.lean/declarations/pretopology-togrothendieck--56f4bab591b6f6d675d29b1e.md) | 87 | `result-track:56f4bab591b6f6d675d29b1ea02a7fa98cf7494bdaa86e100a1f2e0891bfe975` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
