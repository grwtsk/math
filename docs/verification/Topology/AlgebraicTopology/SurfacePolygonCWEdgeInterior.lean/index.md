# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWEdgeInterior

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61c53fd5d63d9a02c7d8b11a210ac194f74bba45",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWEdgeInterior.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeInterior.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeInterior.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61c53fd5d63d9a02c7d8b11a210ac194f74bba45`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWEdgeInterior.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonCWEdgeInterior.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWCellPartition`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWCellPartition.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [StrictUnitInterior](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeInterior.lean/declarations/strictunitinterior--24b4cb7335ea20aaeaee9848.md) | 32 | `declaration-track:24b4cb7335ea20aaeaee98484eb0d06347cf8e5449f69d27f666b6d80b7c501f` |
| 2 | `def` | [positiveOpenEdge](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeInterior.lean/declarations/positiveopenedge--9f0d73f1ecd03dae2415201b.md) | 36 | `declaration-track:9f0d73f1ecd03dae2415201bc4995c5a4aa6e1e9dd1947dcc2efe432be68aadc` |
| 3 | `theorem` | [positiveOpenEdge_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeInterior.lean/declarations/positiveopenedge-continuous--0d601be31d57a8aa59ad4fe2.md) | 42 | `result-track:0d601be31d57a8aa59ad4fe2caee328cf2c15981c1a0c65294bec4173576c810` |
| 4 | `theorem` | [positiveOpenEdge_injective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeInterior.lean/declarations/positiveopenedge-injective--052289943212a8538c5ce074.md) | 49 | `result-track:052289943212a8538c5ce074c2089fb0e928ceed692af3196b6aedd08e41470a` |
| 5 | `theorem` | [positiveOpenEdge_ne_vertex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeInterior.lean/declarations/positiveopenedge-ne-vertex--91c8d633af0a3df372eb43e9.md) | 58 | `result-track:91c8d633af0a3df372eb43e9d35543c0fae2e319f1cb29b6d637c7d937e08a08` |
| 6 | `theorem` | [positiveOpenEdge_labels_eq_of_image_eq](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeInterior.lean/declarations/positiveopenedge-labels-eq-of-image-eq--6cb8ecbef400d4d2df342df3.md) | 65 | `result-track:6cb8ecbef400d4d2df342df34a7211ae21e0bc600a2f2e731174a0836703ba5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
