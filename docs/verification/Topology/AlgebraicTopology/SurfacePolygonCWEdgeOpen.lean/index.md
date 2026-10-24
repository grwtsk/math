# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWEdgeOpen

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b06701905d1868f5af2cda94ae26de003a51d344",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWEdgeOpen.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeOpen.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeOpen.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b06701905d1868f5af2cda94ae26de003a51d344`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWEdgeOpen.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonCWEdgeOpen.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWEdgeInterior`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeInterior.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Topology.Maps.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [cornerDiscreteTopology](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeOpen.lean/declarations/cornerdiscretetopology--99a60d84d9e2e2ecfe778a6d.md) | 40 | `declaration-track:99a60d84d9e2e2ecfe778a6d3fa56dfc8040bb61a385c88724d2697b64df8029` |
| 2 | `instance` | [cornerDiscreteSpace](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeOpen.lean/declarations/cornerdiscretespace--b0925f01322d26abb6548697.md) | 43 | `declaration-track:b0925f01322d26abb654869761ae1777d05c5f7e8d8f9a7e0ae618af9cbfae59` |
| 3 | `def` | [strictUnitInteriorCarrier](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeOpen.lean/declarations/strictunitinteriorcarrier--778de7aecda8605a9d12eaa1.md) | 47 | `declaration-track:778de7aecda8605a9d12eaa167ae12d5895f36f892cef6ea905881f4c0105da5` |
| 4 | `theorem` | [strictUnitInteriorCarrier_isOpen](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeOpen.lean/declarations/strictunitinteriorcarrier-isopen--5d3bf450008ac9e45ed14d63.md) | 52 | `result-track:5d3bf450008ac9e45ed14d63107a1e4763a71d535cf7ef372af7530e976ad126` |
| 5 | `theorem` | [subtypeVal_image_isOpen](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeOpen.lean/declarations/subtypeval-image-isopen--c9e872655f3945f60f75fab9.md) | 62 | `result-track:c9e872655f3945f60f75fab9644becae34a06b4b41b815796c00c812b0909bbb` |
| 6 | `def` | [positiveOpenEdgeSourcePoint](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeOpen.lean/declarations/positiveopenedgesourcepoint--c515b8fbae38bbf76ea17206.md) | 70 | `declaration-track:c515b8fbae38bbf76ea17206b9bbfffe080d99b02a1cedb9eb8865ed186ac51b` |
| 7 | `theorem` | [positiveOpenEdge_eq_projection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeOpen.lean/declarations/positiveopenedge-eq-projection--fc09f9d5f1094ee2974c516c.md) | 75 | `result-track:fc09f9d5f1094ee2974c516ce07af214dd81055046d43a6475186fb5a14abf50` |
| 8 | `theorem` | [positiveOpenEdge_eq_opposite_projection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeOpen.lean/declarations/positiveopenedge-eq-opposite-projection--092e4b26b080ae4445a739d3.md) | 83 | `result-track:092e4b26b080ae4445a739d3964ae01ab4aa0bde789c5efca06321beda0d6c93` |
| 9 | `def` | [positiveOpenEdgeSaturation](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeOpen.lean/declarations/positiveopenedgesaturation--adcc9d5ce90f4efba0d24638.md) | 100 | `declaration-track:adcc9d5ce90f4efba0d246388b9c0d3f98a034c686834c84a8f79d0f10af1d21` |
| 10 | `theorem` | [positiveOpenEdgeSaturation_isOpen](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeOpen.lean/declarations/positiveopenedgesaturation-isopen--9b68d2e1a363c87701c5bc00.md) | 109 | `result-track:9b68d2e1a363c87701c5bc00eeb6c2bed4bf67876e7f8d80fbea900319b0595b` |
| 11 | `theorem` | [boundaryProjection_preimage_positiveOpenEdge_image](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeOpen.lean/declarations/boundaryprojection-preimage-positiveopenedge-image--ba063c749b6bb9ee78d3fea0.md) | 124 | `result-track:ba063c749b6bb9ee78d3fea0a4da155f76c32056d8240da30d312ac799f5f01f` |
| 12 | `theorem` | [positiveOpenEdge_image_isOpen](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeOpen.lean/declarations/positiveopenedge-image-isopen--c8fef1aae9b3bee5142cde50.md) | 164 | `result-track:c8fef1aae9b3bee5142cde50c4f46eefd8454e683301158da3c590e98f341c23` |
| 13 | `theorem` | [positiveOpenEdge_isOpenMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeOpen.lean/declarations/positiveopenedge-isopenmap--7e771915e1ce9c0888805410.md) | 173 | `result-track:7e771915e1ce9c0888805410d70117e2c084615bedd1a473a31320b19ef1bbc3` |
| 14 | `theorem` | [positiveOpenEdge_isOpenEmbedding](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeOpen.lean/declarations/positiveopenedge-isopenembedding--6a85340e4430e7a3beed1116.md) | 180 | `result-track:6a85340e4430e7a3beed11164d1f8caea1cb6b2d9e54017a29aa215aa4147aa6` |
| 15 | `theorem` | [positiveOpenEdge_isEmbedding](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCWEdgeOpen.lean/declarations/positiveopenedge-isembedding--17976142151688f9d9d55eef.md) | 190 | `result-track:17976142151688f9d9d55eef812e2a1b097a9f9100837fcefbf30427f417b05e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
