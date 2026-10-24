# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.VertexGroup.Variant4fc5082ca6eea87f438ae2871468229f7497c9e921ac4daa3c3114159c51840a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da07c5a211ee4a0db93d4ae6046b76e157c43d24",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant4fc5082ca6eea87f438ae2871468229f7497c9e921ac4daa3c3114159c51840a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant4fc5082ca6eea87f438ae2871468229f7497c9e921ac4daa3c3114159c51840a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant4fc5082ca6eea87f438ae2871468229f7497c9e921ac4daa3c3114159c51840a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da07c5a211ee4a0db93d4ae6046b76e157c43d24`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant4fc5082ca6eea87f438ae2871468229f7497c9e921ac4daa3c3114159c51840a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant4fc5082ca6eea87f438ae2871468229f7497c9e921ac4daa3c3114159c51840a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Groupoid` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PathCategory` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Group` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Path` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.ConnectedComponent` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [vertexGroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant4fc5082ca6eea87f438ae2871468229f7497c9e921ac4daa3c3114159c51840a.lean/declarations/vertexgroup--89cc6192c0e5771d336df9f4.md) | 44 | `declaration-track:89cc6192c0e5771d336df9f44e2015d867b7d5b6d7ceb670ef59245b2b2e925e` |
| 2 | `theorem` | [vertexGroup.inv_eq_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant4fc5082ca6eea87f438ae2871468229f7497c9e921ac4daa3c3114159c51840a.lean/declarations/vertexgroup-inv-eq-inv--dd18c6a3fdead7d8a73ab136.md) | 55 | `result-track:dd18c6a3fdead7d8a73ab136a76a9d64afe3a0902a5c04c57a2babf78e7cfea3` |
| 3 | `def` | [vertexGroupIsomOfMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant4fc5082ca6eea87f438ae2871468229f7497c9e921ac4daa3c3114159c51840a.lean/declarations/vertexgroupisomofmap--a0d91edbad5bfb3acce583bc.md) | 63 | `declaration-track:a0d91edbad5bfb3acce583bc166ba64f7a3ec824bb01a92d59974e2accff511a` |
| 4 | `def` | [vertexGroupIsomOfPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant4fc5082ca6eea87f438ae2871468229f7497c9e921ac4daa3c3114159c51840a.lean/declarations/vertexgroupisomofpath--cc3efc223f2f290685e259d8.md) | 79 | `declaration-track:cc3efc223f2f290685e259d812bc073ee646fc1d37ca10335d86cbc38fcb544a` |
| 5 | `def` | [CategoryTheory.Functor.mapVertexGroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Variant4fc5082ca6eea87f438ae2871468229f7497c9e921ac4daa3c3114159c51840a.lean/declarations/categorytheory-functor-mapvertexgroup--45349dd5e641b570f18b70c1.md) | 85 | `declaration-track:45349dd5e641b570f18b70c10d6c4a9a44e7d017aad6fc7dd91a10b81bbf1dc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
