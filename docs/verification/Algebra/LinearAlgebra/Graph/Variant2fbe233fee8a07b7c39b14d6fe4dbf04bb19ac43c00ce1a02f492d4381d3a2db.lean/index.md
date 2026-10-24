# Verification target: GRWTSK.Algebra.LinearAlgebra.Graph.Variant2fbe233fee8a07b7c39b14d6fe4dbf04bb19ac43c00ce1a02f492d4381d3a2db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5109da573aa3d46e24764508271736bd2d7e5284",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Graph/Variant2fbe233fee8a07b7c39b14d6fe4dbf04bb19ac43c00ce1a02f492d4381d3a2db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Graph/Variant2fbe233fee8a07b7c39b14d6fe4dbf04bb19ac43c00ce1a02f492d4381d3a2db.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Graph/Variant2fbe233fee8a07b7c39b14d6fe4dbf04bb19ac43c00ce1a02f492d4381d3a2db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5109da573aa3d46e24764508271736bd2d7e5284`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Graph/Variant2fbe233fee8a07b7c39b14d6fe4dbf04bb19ac43c00ce1a02f492d4381d3a2db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Graph/Variant2fbe233fee8a07b7c39b14d6fe4dbf04bb19ac43c00ce1a02f492d4381d3a2db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Tree.Size` — import line 1; external provider; requires a separately pinned dependency.
- `Boolean.Matrix.Warshall` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Tree.childEdgesFrom](../../../../../mathematics/Algebra/LinearAlgebra/Graph/Variant2fbe233fee8a07b7c39b14d6fe4dbf04bb19ac43c00ce1a02f492d4381d3a2db.lean/declarations/tree-childedgesfrom--8e075f060beb7f4c2b303647.md) | 15 | `declaration-track:8e075f060beb7f4c2b30364719b811d972477824d5d4a398e68c42b3968984b1` |
| 2 | `def` | [Tree.adjacencyMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Graph/Variant2fbe233fee8a07b7c39b14d6fe4dbf04bb19ac43c00ce1a02f492d4381d3a2db.lean/declarations/tree-adjacencymatrix--56b21beb3ec1f876b916a3a7.md) | 58 | `declaration-track:56b21beb3ec1f876b916a3a72cfc14ac37c9e613444729f664cfe4afe0a69b0d` |
| 3 | `theorem` | [Tree.entry_adjacencyMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Graph/Variant2fbe233fee8a07b7c39b14d6fe4dbf04bb19ac43c00ce1a02f492d4381d3a2db.lean/declarations/tree-entry-adjacencymatrix--86dd073e38007c6ee4438e44.md) | 63 | `result-track:86dd073e38007c6ee4438e4410a7345c8c880e0f449472ed26babf707f16e910` |
| 4 | `def` | [Tree.reachabilityMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Graph/Variant2fbe233fee8a07b7c39b14d6fe4dbf04bb19ac43c00ce1a02f492d4381d3a2db.lean/declarations/tree-reachabilitymatrix--d4e129dfbfa4f8441c2ac694.md) | 75 | `declaration-track:d4e129dfbfa4f8441c2ac694bd3b5a55e8daa11566b2684411f8ddc6bb6de927` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
