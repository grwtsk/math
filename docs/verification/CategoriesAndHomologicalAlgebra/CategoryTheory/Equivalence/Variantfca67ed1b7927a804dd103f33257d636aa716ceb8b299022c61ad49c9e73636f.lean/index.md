# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equivalence.Variantfca67ed1b7927a804dd103f33257d636aa716ceb8b299022c61ad49c9e73636f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3304693f581f069b1d40acc4d212b3bb183a73f8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantfca67ed1b7927a804dd103f33257d636aa716ceb8b299022c61ad49c9e73636f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantfca67ed1b7927a804dd103f33257d636aa716ceb8b299022c61ad49c9e73636f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantfca67ed1b7927a804dd103f33257d636aa716ceb8b299022c61ad49c9e73636f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3304693f581f069b1d40acc4d212b3bb183a73f8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantfca67ed1b7927a804dd103f33257d636aa716ceb8b299022c61ad49c9e73636f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantfca67ed1b7927a804dd103f33257d636aa716ceb8b299022c61ad49c9e73636f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Galois.EssSurj` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Action.Continuous` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.FinTopCat` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functorToContAction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantfca67ed1b7927a804dd103f33257d636aa716ceb8b299022c61ad49c9e73636f.lean/declarations/functortocontaction--79e7602facccda2bc43609aa.md) | 36 | `declaration-track:79e7602facccda2bc43609aab0e2c2a96b5bb0d47f1ab271226ebc3f6e8280e2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantfca67ed1b7927a804dd103f33257d636aa716ceb8b299022c61ad49c9e73636f.lean/declarations/instance--3aa334a33e7c2c04028b7232.md) | 39 | `declaration-track:3aa334a33e7c2c04028b7232bce82983b38435c3c8cbff3ebbf6a634d667867c` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantfca67ed1b7927a804dd103f33257d636aa716ceb8b299022c61ad49c9e73636f.lean/declarations/instance--dd1bc1c4e1f2e5d08d60da2e.md) | 42 | `declaration-track:dd1bc1c4e1f2e5d08d60da2e314b4129577304538e871872cc2c4444b395343a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantfca67ed1b7927a804dd103f33257d636aa716ceb8b299022c61ad49c9e73636f.lean/declarations/instance--a79432320d9b1facb726fdd4.md) | 45 | `declaration-track:a79432320d9b1facb726fdd47dacb03a221bc89f29339c9d8ee520b51962a6c7` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantfca67ed1b7927a804dd103f33257d636aa716ceb8b299022c61ad49c9e73636f.lean/declarations/instance--a0819600224698c59cc1e0e5.md) | 51 | `declaration-track:a0819600224698c59cc1e0e5048bba184761456025b32d285bbf191539650f74` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantfca67ed1b7927a804dd103f33257d636aa716ceb8b299022c61ad49c9e73636f.lean/declarations/instance--41fc7a9936bf5e5ee44fff8f.md) | 86 | `declaration-track:41fc7a9936bf5e5ee44fff8fd922f1affa4ca2120b2fd9992b9c783564d68b59` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
