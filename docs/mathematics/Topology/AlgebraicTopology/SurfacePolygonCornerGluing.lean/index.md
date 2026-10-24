# GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCornerGluing.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ecf3035394ca12b16ba2f8622643608ac1c62789`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Topology/AlgebraicTopology/SurfacePolygonCornerGluing.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Handle](declarations/handle--f4a8e60e7b16b6bc1d8ea185.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [PolygonCorner](declarations/polygoncorner--6dd3b920a8e957b62f4ab5da.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [firstHandle](declarations/firsthandle--52209c1f9291389306144c5d.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [secondHandle](declarations/secondhandle--f0661b0b0d7389e1f1d4c880.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [handleA](declarations/handlea--e16f99f66924a370774b7725.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [handleB](declarations/handleb--fd23130f6a6a99421b24fd13.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [handleEdges](declarations/handleedges--7a21744d137b8b770db966af.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [firstHandleEdges](declarations/firsthandleedges--784d9fd93e7b2d85518f9476.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [secondHandleEdges](declarations/secondhandleedges--ca42532f5b102b4dcf87b431.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [extraHandleEdges](declarations/extrahandleedges--43c4a26349a89ac0a100ac84.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [orderedHandleBlocks](declarations/orderedhandleblocks--031592b4e4ace5755825c04a.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [orderedHandleBlocks_flatten_eq_polygonBoundaryWord](declarations/orderedhandleblocks-flatten-eq-polygonboundaryword--6083e30583d518da32852c14.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [handleEdges_length](declarations/handleedges-length--f5ac7dd1a36822225cdf1f52.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [sideAt](declarations/sideat--b95c8281a6af2f00afeff9b2.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sideAt_zero](declarations/sideat-zero--6bd8c0a3f747baf61f0ca8c2.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sideAt_one](declarations/sideat-one--4be877c5898e3abad05f2653.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sideAt_two](declarations/sideat-two--97b5279a42dd45449d4a3313.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sideAt_three](declarations/sideat-three--25fd7cf96eec32cfb2519b37.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sideAt_list_eq_handleEdges](declarations/sideat-list-eq-handleedges--1aef5e1d3aa2b589494d4be5.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [orderedHandleBlocks_length](declarations/orderedhandleblocks-length--79b0247ca77f24dce0c0fa14.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [oppositeSide](declarations/oppositeside--cbbc5910715f6d908bd0e998.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [a_sides_opposite](declarations/a-sides-opposite--992febe57757f8e08ccd46d9.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [b_sides_opposite](declarations/b-sides-opposite--f1ff688e4754a47bdf7b55c5.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [oppositeSide_involutive](declarations/oppositeside-involutive--d62bbfe3125e769abf92a987.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [oppositeSide_ne_self](declarations/oppositeside-ne-self--df3e9f5f5cfcb07ed2e15d0b.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [nextHandle](declarations/nexthandle--dda2fc66d75fde9dd7046c8f.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [nextHandle_first](declarations/nexthandle-first--b613bb0f7af513dda181173f.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [nextHandle_second_noExtras](declarations/nexthandle-second-noextras--89ebe3acdbcdc2635e777269.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [nextHandle_second_withExtras](declarations/nexthandle-second-withextras--16a3db9ae23f189ae23a59cd.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [nextHandle_extra_step](declarations/nexthandle-extra-step--1d7d648e880eafa82c771c2f.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [nextHandle_extra_last](declarations/nexthandle-extra-last--062af7f30b86a8ea22c5e204.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `inductive` | [DirectCornerGluing](declarations/directcornergluing--c2ab8a00ba8549ba433bcd90.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [CornerConnected](declarations/cornerconnected--40b7e2114ea0fb566386ea34.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [local_three_to_zero](declarations/local-three-to-zero--82033d86952ec015b970e3a0.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [local_two_to_zero](declarations/local-two-to-zero--5fa56b591d1495828b97052b.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [local_one_to_zero](declarations/local-one-to-zero--de004a5d39c95e2000e40444.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [local_corner_to_zero](declarations/local-corner-to-zero--6cd5d2b0b9216030b13f215a.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [handle_zero_to_next_zero](declarations/handle-zero-to-next-zero--f7e8df18f67412f4509f5f52.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [first_to_second_zero](declarations/first-to-second-zero--14c59de56beff312c642d089.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [second_to_extra_zero](declarations/second-to-extra-zero--dd6763c104caa8ee3f8e6df5.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [first_to_extra_zero](declarations/first-to-extra-zero--ecfb812ab98844d264af0121.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [first_to_handle_zero](declarations/first-to-handle-zero--e445e224aa4aeb2d5d91a76f.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [first_to_every_corner](declarations/first-to-every-corner--1c465922e278f45c7fe92e76.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [all_corners_connected](declarations/all-corners-connected--6935345b4fdd6efca4b9e9b2.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [cornerSetoid](declarations/cornersetoid--df01dad7ab06a18717a2a485.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [GluedPolygonCorners](declarations/gluedpolygoncorners--1e61601ec252b0cdf61ec80b.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [gluedPolygonCorners_subsingleton](declarations/gluedpolygoncorners-subsingleton--2a4d25df8ab07d48d541a455.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [gluedPolygonCorners_nonempty](declarations/gluedpolygoncorners-nonempty--5d7eabee4b1892e92499d0b6.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [gluedPolygonCorners_unique](declarations/gluedpolygoncorners-unique--d4877a88c84cda66750d7881.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [first_second_handles_distinct](declarations/first-second-handles-distinct--bec1ba58274de7585d3161a7.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [essential_b_seam_connects_distinct_handles](declarations/essential-b-seam-connects-distinct-handles--b449a13f283976758984a52e.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [genusTwo_distinct_handles_glued](declarations/genustwo-distinct-handles-glued--0af432c812557d45ca3c0267.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [genusThree_extra_handle_glued](declarations/genusthree-extra-handle-glued--c6de9875cd2c1abeb6a5e621.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [one_cell_source_count_unchanged](declarations/one-cell-source-count-unchanged--927a81d81f5f27978a485863.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
