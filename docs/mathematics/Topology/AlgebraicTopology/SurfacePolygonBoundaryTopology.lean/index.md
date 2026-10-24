# GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d0f5d976ef27da7df26ee01540a2bee36c01c8e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BoundaryPoint](declarations/boundarypoint--ee3add8635333b5cc309af68.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [cornerDiscreteTopology](declarations/cornerdiscretetopology--2f7dcdf84c9c4b9e0b647d3f.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [BoundaryGluingStep](declarations/boundarygluingstep--469e081da9cc47039c6b4eb1.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [BoundaryConnected](declarations/boundaryconnected--b2344ed144d0604729539c90.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [boundarySetoid](declarations/boundarysetoid--7fe05b057882bf75a419faf7.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [PolygonBoundaryOneSkeleton](declarations/polygonboundaryoneskeleton--5d1f0673c23af076f7a02147.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [quotientTopology_is_coinduced](declarations/quotienttopology-is-coinduced--4a6c67e215411bdcf5377065.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [boundaryProjection](declarations/boundaryprojection--3ea002912bc455d3aa41c227.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [boundaryProjection_continuous](declarations/boundaryprojection-continuous--a4907d8e4ebb42a41e97a6c7.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [boundaryProjection_isQuotientMap](declarations/boundaryprojection-isquotientmap--312b468135d75e25f74c4789.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [orientedEdgeMap](declarations/orientededgemap--a2dd12fc27ac10819b2749f5.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [orientedEdgeMap_continuous](declarations/orientededgemap-continuous--0dacd1ee067a8a47546f9be0.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [quotient_eq_of_step](declarations/quotient-eq-of-step--aa4e2dcdc356af0cfa9f4625.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [opposite_a_edge_maps_agree](declarations/opposite-a-edge-maps-agree--a47a2417cb2df3e05b9235cc.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [opposite_b_edge_maps_agree](declarations/opposite-b-edge-maps-agree--6ebdf620ad4c50ef11e9776b.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [adjacent_edge_maps_agree_01](declarations/adjacent-edge-maps-agree-01--c460b732ba248bec02606897.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [adjacent_edge_maps_agree_12](declarations/adjacent-edge-maps-agree-12--44a81a09e1515ac890abb18e.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [adjacent_edge_maps_agree_23](declarations/adjacent-edge-maps-agree-23--ef22f795ae399fe77cd756aa.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [adjacent_edge_maps_agree_next](declarations/adjacent-edge-maps-agree-next--e1ed54e3f63ac946513cc894.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [originalCornerPoint](declarations/originalcornerpoint--81b4ef36ea1f888955c43950.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [a_start_endpoint_connected](declarations/a-start-endpoint-connected--1abc148d6f38286f48ebc158.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [a_end_endpoint_connected](declarations/a-end-endpoint-connected--c3bb5d90b1c672ed2918e981.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [b_end_endpoint_connected](declarations/b-end-endpoint-connected--32549189b8eaa9c371beba47.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [b_start_endpoint_connected](declarations/b-start-endpoint-connected--64b2bfa15e00a5ac3b90e129.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [direct_corner_gluing_preserved](declarations/direct-corner-gluing-preserved--fad7ee0d886413f360459de0.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [corner_equivalence_preserved](declarations/corner-equivalence-preserved--77b7030cf193ae4344f946c9.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [all_original_corners_same_topological_vertex](declarations/all-original-corners-same-topological-vertex--373033683d639a8c4b2ce201.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [IsEndpoint](declarations/isendpoint--1c7f0caf82e5f2583892561a.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isEndpoint_symm](declarations/isendpoint-symm--fb3de94d7e45f1f7397037cc.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [step_preserves_endpoint](declarations/step-preserves-endpoint--1095ce741ed28ed8831276a4.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [boundary_connected_preserves_endpoint](declarations/boundary-connected-preserves-endpoint--31fd5e3e1d8ba0ef75944cd9.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [midpoint](declarations/midpoint--3cfcf88a2ad83e142093fe3d.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [midpoint_not_endpoint](declarations/midpoint-not-endpoint--835c0658f624c48859116696.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [edge_midpoint_ne_any_vertex](declarations/edge-midpoint-ne-any-vertex--aee0ab1f162d0bc3df1c7fe0.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [boundary_one_skeleton_nontrivial](declarations/boundary-one-skeleton-nontrivial--15563889045efa4d56622be3.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [genusTwo_topological_boundary_nontrivial](declarations/genustwo-topological-boundary-nontrivial--497430eceeedc86906c9e923.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [genusThree_topological_boundary_nontrivial](declarations/genusthree-topological-boundary-nontrivial--647581d56ad08d2d7dfad534.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [unchanged_edge_generator_count](declarations/unchanged-edge-generator-count--df0ada297e4a94f53b126675.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
