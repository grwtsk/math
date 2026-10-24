# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d0f5d976ef27da7df26ee01540a2bee36c01c8e",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d0f5d976ef27da7df26ee01540a2bee36c01c8e`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCornerGluing.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Topology.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UnitInterval` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BoundaryPoint](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/boundarypoint--ee3add8635333b5cc309af68.md) | 61 | `declaration-track:ee3add8635333b5cc309af689b4f9aff48743a6add21e906a818c5ad6d269bd1` |
| 2 | `instance` | [cornerDiscreteTopology](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/cornerdiscretetopology--2f7dcdf84c9c4b9e0b647d3f.md) | 67 | `declaration-track:2f7dcdf84c9c4b9e0b647d3f8eb2426d1cd1a8eda10b525a56857d578bd4ae2a` |
| 3 | `inductive` | [BoundaryGluingStep](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/boundarygluingstep--469e081da9cc47039c6b4eb1.md) | 76 | `declaration-track:469e081da9cc47039c6b4eb1866dc0ad0aad742fc76f818f6cb3b3a8a67b8f96` |
| 4 | `abbrev` | [BoundaryConnected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/boundaryconnected--b2344ed144d0604729539c90.md) | 99 | `declaration-track:b2344ed144d0604729539c9032c32b903a2364747d8b630322bf9195d1182b84` |
| 5 | `def` | [boundarySetoid](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/boundarysetoid--7fe05b057882bf75a419faf7.md) | 105 | `declaration-track:7fe05b057882bf75a419faf7a0987a1e5b72fcd9b25bf9eb0d4097db76dd0161` |
| 6 | `abbrev` | [PolygonBoundaryOneSkeleton](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/polygonboundaryoneskeleton--5d1f0673c23af076f7a02147.md) | 111 | `declaration-track:5d1f0673c23af076f7a02147094ecf65dc99aa59c2e79929668f4a8b486950d5` |
| 7 | `theorem` | [quotientTopology_is_coinduced](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/quotienttopology-is-coinduced--4a6c67e215411bdcf5377065.md) | 116 | `result-track:4a6c67e215411bdcf53770658a86fe9328cb71d0df21e68940cdf58a17f17e43` |
| 8 | `def` | [boundaryProjection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/boundaryprojection--3ea002912bc455d3aa41c227.md) | 125 | `declaration-track:3ea002912bc455d3aa41c22756609b3b05fb957c335a0f0f5c5efcdc5474c996` |
| 9 | `theorem` | [boundaryProjection_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/boundaryprojection-continuous--a4907d8e4ebb42a41e97a6c7.md) | 131 | `result-track:a4907d8e4ebb42a41e97a6c75f506b7b57c988da09d034ef13cd8b3e47989a3d` |
| 10 | `theorem` | [boundaryProjection_isQuotientMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/boundaryprojection-isquotientmap--312b468135d75e25f74c4789.md) | 139 | `result-track:312b468135d75e25f74c4789c86e8b5755417e972ef59854fd664959f6b71013` |
| 11 | `def` | [orientedEdgeMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/orientededgemap--a2dd12fc27ac10819b2749f5.md) | 147 | `declaration-track:a2dd12fc27ac10819b2749f52e5130d110ef5bb34b5fe51bbf919a4b4b8e6743` |
| 12 | `theorem` | [orientedEdgeMap_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/orientededgemap-continuous--0dacd1ee067a8a47546f9be0.md) | 153 | `result-track:0dacd1ee067a8a47546f9be07d0285823bf03e5ea2477b010e3c8b1a65e42474` |
| 13 | `theorem` | [quotient_eq_of_step](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/quotient-eq-of-step--aa4e2dcdc356af0cfa9f4625.md) | 162 | `result-track:aa4e2dcdc356af0cfa9f46250601da4110bdfb9e82c8b7beca78c5c8f8c2ece3` |
| 14 | `theorem` | [opposite_a_edge_maps_agree](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/opposite-a-edge-maps-agree--a47a2417cb2df3e05b9235cc.md) | 169 | `result-track:a47a2417cb2df3e05b9235cc67d943c0fcbe21a1cc5afaec314c671686b301fc` |
| 15 | `theorem` | [opposite_b_edge_maps_agree](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/opposite-b-edge-maps-agree--6ebdf620ad4c50ef11e9776b.md) | 177 | `result-track:6ebdf620ad4c50ef11e9776b36ac8c92e14ebd8d44a0d4b389096f190684d0a8` |
| 16 | `theorem` | [adjacent_edge_maps_agree_01](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/adjacent-edge-maps-agree-01--c460b732ba248bec02606897.md) | 185 | `result-track:c460b732ba248bec02606897e9356617a5d646be0cbdb255965787d83dfeb564` |
| 17 | `theorem` | [adjacent_edge_maps_agree_12](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/adjacent-edge-maps-agree-12--44a81a09e1515ac890abb18e.md) | 189 | `result-track:44a81a09e1515ac890abb18e602cc272dd1591044d8ea15618ccd1982d92fed3` |
| 18 | `theorem` | [adjacent_edge_maps_agree_23](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/adjacent-edge-maps-agree-23--ef22f795ae399fe77cd756aa.md) | 193 | `result-track:ef22f795ae399fe77cd756aa2f3c02b5001c84a53e2e54932e6d7dea35cd7c09` |
| 19 | `theorem` | [adjacent_edge_maps_agree_next](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/adjacent-edge-maps-agree-next--e1ed54e3f63ac946513cc894.md) | 197 | `result-track:e1ed54e3f63ac946513cc8947b0da7305e0c9802089da2181cd92a58f082dbbb` |
| 20 | `def` | [originalCornerPoint](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/originalcornerpoint--81b4ef36ea1f888955c43950.md) | 204 | `declaration-track:81b4ef36ea1f888955c43950416faf61bc4e4e315362d56bab5b583968c9bd3d` |
| 21 | `theorem` | [a_start_endpoint_connected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/a-start-endpoint-connected--1abc148d6f38286f48ebc158.md) | 210 | `result-track:1abc148d6f38286f48ebc158d611b463c0a04c2b9adfb8b6c78af787de1a2d35` |
| 22 | `theorem` | [a_end_endpoint_connected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/a-end-endpoint-connected--c3bb5d90b1c672ed2918e981.md) | 224 | `result-track:c3bb5d90b1c672ed2918e981d2481601c21ce387de9fe03929b91000b2df3725` |
| 23 | `theorem` | [b_end_endpoint_connected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/b-end-endpoint-connected--32549189b8eaa9c371beba47.md) | 238 | `result-track:32549189b8eaa9c371beba4744c1c50878c757d0d96bca83c8be64752e20443c` |
| 24 | `theorem` | [b_start_endpoint_connected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/b-start-endpoint-connected--64b2bfa15e00a5ac3b90e129.md) | 252 | `result-track:64b2bfa15e00a5ac3b90e1290de8fb21c08e958e1380ace5122b34bc4ec06563` |
| 25 | `theorem` | [direct_corner_gluing_preserved](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/direct-corner-gluing-preserved--fad7ee0d886413f360459de0.md) | 267 | `result-track:fad7ee0d886413f360459de087f6de32e54a5c10ca20007130ba49fbe1f0a7e7` |
| 26 | `theorem` | [corner_equivalence_preserved](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/corner-equivalence-preserved--77b7030cf193ae4344f946c9.md) | 281 | `result-track:77b7030cf193ae4344f946c99ae33298545b7253cfda31b27176ec280c98c1e2` |
| 27 | `theorem` | [all_original_corners_same_topological_vertex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/all-original-corners-same-topological-vertex--373033683d639a8c4b2ce201.md) | 299 | `result-track:373033683d639a8c4b2ce20110f1115869107e57bb60b2ec92abfcb48437f5c6` |
| 28 | `def` | [IsEndpoint](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/isendpoint--1c7f0caf82e5f2583892561a.md) | 308 | `declaration-track:1c7f0caf82e5f2583892561a610cb4855a2e2d171ae8932586c24f15b0ecee7e` |
| 29 | `theorem` | [isEndpoint_symm](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/isendpoint-symm--fb3de94d7e45f1f7397037cc.md) | 313 | `result-track:fb3de94d7e45f1f7397037cc0b8aec1354328b06fdbfe1ae710f4941a707a28c` |
| 30 | `theorem` | [step_preserves_endpoint](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/step-preserves-endpoint--1095ce741ed28ed8831276a4.md) | 321 | `result-track:1095ce741ed28ed8831276a4b63eba4d2ee1a1598e1e875065bf63b2eafa8362` |
| 31 | `theorem` | [boundary_connected_preserves_endpoint](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/boundary-connected-preserves-endpoint--31fd5e3e1d8ba0ef75944cd9.md) | 335 | `result-track:31fd5e3e1d8ba0ef75944cd9664c1966ca16da9c3ad4e7e594f1530941230fb4` |
| 32 | `def` | [midpoint](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/midpoint--3cfcf88a2ad83e142093fe3d.md) | 345 | `declaration-track:3cfcf88a2ad83e142093fe3ddc56a698a5a21625e7e0fb5a3f0440197cb9dac7` |
| 33 | `theorem` | [midpoint_not_endpoint](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/midpoint-not-endpoint--835c0658f624c48859116696.md) | 348 | `result-track:835c0658f624c4885911669663f1f9d438c64021d9ce8b94dba01346cb49e874` |
| 34 | `theorem` | [edge_midpoint_ne_any_vertex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/edge-midpoint-ne-any-vertex--aee0ab1f162d0bc3df1c7fe0.md) | 359 | `result-track:aee0ab1f162d0bc3df1c7fe0d30e60d491b21bb3957389f77596679b2f5f0fba` |
| 35 | `theorem` | [boundary_one_skeleton_nontrivial](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/boundary-one-skeleton-nontrivial--15563889045efa4d56622be3.md) | 374 | `result-track:15563889045efa4d56622be395f54596f521031ff0b81b2d0d517ea2219c9670` |
| 36 | `theorem` | [genusTwo_topological_boundary_nontrivial](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/genustwo-topological-boundary-nontrivial--497430eceeedc86906c9e923.md) | 383 | `result-track:497430eceeedc86906c9e923bafbd0afa408fe88fbf0bf10ab72b0a16725af0d` |
| 37 | `theorem` | [genusThree_topological_boundary_nontrivial](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/genusthree-topological-boundary-nontrivial--647581d56ad08d2d7dfad534.md) | 389 | `result-track:647581d56ad08d2d7dfad534f56ee74acfa27f51b6649f07132686b470f4b095` |
| 38 | `theorem` | [unchanged_edge_generator_count](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/declarations/unchanged-edge-generator-count--df0ada297e4a94f53b126675.md) | 395 | `result-track:df0ada297e4a94f53b12667520f6b98f6ff5deb4c88060beaf7793963415934f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
