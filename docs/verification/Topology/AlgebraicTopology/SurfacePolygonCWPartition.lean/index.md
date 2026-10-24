# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWPartition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e31e7e29fb5a8c3f158e4342c4c4f521aca96d59",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWPartition.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWPartition.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWPartition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e31e7e29fb5a8c3f158e4342c4c4f521aca96d59`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWPartition.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonCWPartition.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWPositiveEdges`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWPositiveEdges.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [directedEdge_one_eq_zeroCell](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWPartition.lean/declarations/directededge-one-eq-zerocell--4ac4c228d0a6ec407fd202a6.md) | 31 | `result-track:4ac4c228d0a6ec407fd202a66c4d9cc8625a4fd1e2dc3f4349bfa726efedbd3c` |
| 2 | `theorem` | [positiveOneCell_one_eq_zeroCell](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWPartition.lean/declarations/positiveonecell-one-eq-zerocell--51a4f77c53adba86a3c7b8c6.md) | 46 | `result-track:51a4f77c53adba86a3c7b8c6f4a0ce2a5a79668acda8821c2247cb0224396c0e` |
| 3 | `theorem` | [directedEdge_has_positive_representative](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWPartition.lean/declarations/directededge-has-positive-representative--90fced5672fd513bb86c8ace.md) | 55 | `result-track:90fced5672fd513bb86c8ace7c1297c37e0fa7883126a6b6348aaa27907e2a89` |
| 4 | `theorem` | [source_has_positive_representative](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWPartition.lean/declarations/source-has-positive-representative--a03fdf0038cccc16125b86e9.md) | 71 | `result-track:a03fdf0038cccc16125b86e9a783d9793424590260e2ad9d5e0a1f773f9783bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
