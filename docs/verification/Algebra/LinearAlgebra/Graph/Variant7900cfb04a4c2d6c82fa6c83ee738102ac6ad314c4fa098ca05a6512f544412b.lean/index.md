# Verification target: GRWTSK.Algebra.LinearAlgebra.Graph.Variant7900cfb04a4c2d6c82fa6c83ee738102ac6ad314c4fa098ca05a6512f544412b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c317bfbd88686ff32420216813911c302598c7db",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Graph/Variant7900cfb04a4c2d6c82fa6c83ee738102ac6ad314c4fa098ca05a6512f544412b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Graph/Variant7900cfb04a4c2d6c82fa6c83ee738102ac6ad314c4fa098ca05a6512f544412b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Graph/Variant7900cfb04a4c2d6c82fa6c83ee738102ac6ad314c4fa098ca05a6512f544412b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c317bfbd88686ff32420216813911c302598c7db`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Graph/Variant7900cfb04a4c2d6c82fa6c83ee738102ac6ad314c4fa098ca05a6512f544412b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Graph/Variant7900cfb04a4c2d6c82fa6c83ee738102ac6ad314c4fa098ca05a6512f544412b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Tree.Size` — import line 6; external provider; requires a separately pinned dependency.
- `Boolean.Matrix.Warshall` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Tree.childEdgesFrom](../../../../../mathematics/Algebra/LinearAlgebra/Graph/Variant7900cfb04a4c2d6c82fa6c83ee738102ac6ad314c4fa098ca05a6512f544412b.lean/declarations/tree-childedgesfrom--54fca200a2495e810b00c74e.md) | 23 | `declaration-track:54fca200a2495e810b00c74e50c63e04a5f4d5713576376c14a9d9c445618ec6` |
| 2 | `def` | [Tree.adjacencyMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Graph/Variant7900cfb04a4c2d6c82fa6c83ee738102ac6ad314c4fa098ca05a6512f544412b.lean/declarations/tree-adjacencymatrix--3c0ae424d381c59663d2f8cc.md) | 66 | `declaration-track:3c0ae424d381c59663d2f8cc35277f2be6fa926b2039c395ea7948f24c5040c2` |
| 3 | `theorem` | [Tree.entry_adjacencyMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Graph/Variant7900cfb04a4c2d6c82fa6c83ee738102ac6ad314c4fa098ca05a6512f544412b.lean/declarations/tree-entry-adjacencymatrix--00f9e390e8c6ef03921ba9e1.md) | 71 | `result-track:00f9e390e8c6ef03921ba9e16341a5e63b56f827a03c8d4029239e3ce9d1e4f7` |
| 4 | `def` | [Tree.reachabilityMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Graph/Variant7900cfb04a4c2d6c82fa6c83ee738102ac6ad314c4fa098ca05a6512f544412b.lean/declarations/tree-reachabilitymatrix--e99586df348d71806065b810.md) | 83 | `declaration-track:e99586df348d71806065b8102cff16908f70110959f0e2517738d3fe28369c7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
