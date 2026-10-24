# Verification target: GRWTSK.Algebra.LinearAlgebra.IterateMapComap.Variante8e50fd043db2a60ba3c9b665559f59e1020c647d34efc65da9cc9b8c122a82e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bf2e18fa55aa620015d7080b961a925f879d79c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IterateMapComap/Variante8e50fd043db2a60ba3c9b665559f59e1020c647d34efc65da9cc9b8c122a82e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IterateMapComap/Variante8e50fd043db2a60ba3c9b665559f59e1020c647d34efc65da9cc9b8c122a82e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IterateMapComap/Variante8e50fd043db2a60ba3c9b665559f59e1020c647d34efc65da9cc9b8c122a82e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bf2e18fa55aa620015d7080b961a925f879d79c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IterateMapComap/Variante8e50fd043db2a60ba3c9b665559f59e1020c647d34efc65da9cc9b8c122a82e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IterateMapComap/Variante8e50fd043db2a60ba3c9b665559f59e1020c647d34efc65da9cc9b8c122a82e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Ker` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iterateMapComap](../../../../../mathematics/Algebra/LinearAlgebra/IterateMapComap/Variante8e50fd043db2a60ba3c9b665559f59e1020c647d34efc65da9cc9b8c122a82e.lean/declarations/iteratemapcomap--1a0df67bc2846a6b572f5c04.md) | 42 | `declaration-track:1a0df67bc2846a6b572f5c041253bc83fbc32899f7fe661e04b1db948a5bd5bc` |
| 2 | `theorem` | [iterateMapComap_le_succ](../../../../../mathematics/Algebra/LinearAlgebra/IterateMapComap/Variante8e50fd043db2a60ba3c9b665559f59e1020c647d34efc65da9cc9b8c122a82e.lean/declarations/iteratemapcomap-le-succ--ec3f0ef31f462ecc333a9372.md) | 45 | `result-track:ec3f0ef31f462ecc333a937204ba2d8ed5b89b51cbf5adf7339f81cb00ac1b24` |
| 3 | `theorem` | [iterateMapComap_eq_succ](../../../../../mathematics/Algebra/LinearAlgebra/IterateMapComap/Variante8e50fd043db2a60ba3c9b665559f59e1020c647d34efc65da9cc9b8c122a82e.lean/declarations/iteratemapcomap-eq-succ--1fa4b3e0a0b954af04b2ce4f.md) | 65 | `result-track:1fa4b3e0a0b954af04b2ce4f41dde7e708d561bda1090636e2334b90dc0ffd2c` |
| 4 | `theorem` | [ker_le_of_iterateMapComap_eq_succ](../../../../../mathematics/Algebra/LinearAlgebra/IterateMapComap/Variante8e50fd043db2a60ba3c9b665559f59e1020c647d34efc65da9cc9b8c122a82e.lean/declarations/ker-le-of-iteratemapcomap-eq-succ--28bb67a464a7df943c20d50e.md) | 88 | `result-track:28bb67a464a7df943c20d50e186c70e3a68ff3f1f4d97fb833ac641cff930f32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
