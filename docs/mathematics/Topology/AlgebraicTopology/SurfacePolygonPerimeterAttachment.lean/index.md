# GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c902501d3eb3ce7bb5df9a2b0804c1a39d7464f0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [cornerDiscreteTopology](declarations/cornerdiscretetopology--1e5219fdb51f278e3a5b68f1.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [PerimeterSeamStep](declarations/perimeterseamstep--d8b0815b252b7c19e58166f2.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [PerimeterConnected](declarations/perimeterconnected--37d6d7bcd7ca528c2d4e5692.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [perimeterSetoid](declarations/perimetersetoid--cee829eaab4085d72552caa5.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [UnpairedPerimeter](declarations/unpairedperimeter--5faa102fdef533b079c16b65.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [perimeter_topology_coinduced](declarations/perimeter-topology-coinduced--6305f0e5054a0470e4f3fc5a.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [perimeterProjection](declarations/perimeterprojection--43dcc414026532ed232c6fc6.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [perimeterProjection_continuous](declarations/perimeterprojection-continuous--87458a730336efad2191eba1.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [perimeterProjection_isQuotientMap](declarations/perimeterprojection-isquotientmap--4ce642ae50579dea92664eeb.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [perimeterEdgeMap](declarations/perimeteredgemap--22c666b1944e975680ceea89.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [perimeterEdgeMap_continuous](declarations/perimeteredgemap-continuous--6d88a968e7282fe072446334.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [perimeter_seam_01](declarations/perimeter-seam-01--75dc88975c2de3097e84bd01.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [perimeter_seam_12](declarations/perimeter-seam-12--78f2432a164667dff16023d0.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [perimeter_seam_23](declarations/perimeter-seam-23--1d9a76d9c6f7d4c97b997a26.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [perimeter_seam_next](declarations/perimeter-seam-next--2e7d1f2a4e8c74d2132716b6.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [seamStep_respected_by_pairedBoundary](declarations/seamstep-respected-by-pairedboundary--9a558ef862b9c35d99d873b1.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [perimeterConnected_respected_by_pairedBoundary](declarations/perimeterconnected-respected-by-pairedboundary--f7f11fdaefba2dc5a1276578.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [perimeterAttach](declarations/perimeterattach--d795348f20cfe0691f67ccda.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [perimeterAttach_continuous](declarations/perimeterattach-continuous--6bbcf0041bf1ca2342b1c05f.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [perimeterAttach_projection](declarations/perimeterattach-projection--c181990dd10ba5adfaf48ca5.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [perimeterAttach_surjective](declarations/perimeterattach-surjective--bd90509d02a9bf979a89591d.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [perimeterAttach_unique](declarations/perimeterattach-unique--a486c6aef725b7d5b976c50e.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [attachingMap_pairs_a](declarations/attachingmap-pairs-a--709968d10261292867b3f8fc.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [attachingMap_pairs_b](declarations/attachingmap-pairs-b--e557d56c2b50da90b4aedae3.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [seamStep_has_endpoints](declarations/seamstep-has-endpoints--b33883ef9779cac933c94db7.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [perimeterConnected_preserves_endpoint](declarations/perimeterconnected-preserves-endpoint--6e3e13beab59088f2f9e63e7.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [perimeterConnected_interior_fixed](declarations/perimeterconnected-interior-fixed--5d1b5f2e45965cb7b76a5f1f.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [opposite_a_midpoints_distinct_in_perimeter](declarations/opposite-a-midpoints-distinct-in-perimeter--011a0484400c336287d34d8c.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [perimeterAttach_not_injective](declarations/perimeterattach-not-injective--889ab34de7896e345d027cdc.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [perimeterToFilling](declarations/perimetertofilling--f9af2a60cd1144eb5b50c1cd.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [perimeterToFilling_continuous](declarations/perimetertofilling-continuous--f986aa65e650f2e7b859eb04.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [perimeterToFilling_projection](declarations/perimetertofilling-projection--73b692174d10b6c11968d4ae.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [perimeterSeam_respected_at_radius](declarations/perimeterseam-respected-at-radius--f082823e22bd9ecd71f005df.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [perimeterConnected_respected_at_radius](declarations/perimeterconnected-respected-at-radius--e0d3b02ffa40d9457ae3a3e4.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [perimeterRadialSlice](declarations/perimeterradialslice--88f9d76ce9a693008a553fcd.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [perimeterRadialSlice_continuous](declarations/perimeterradialslice-continuous--e752627c154ac235185a3e33.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [perimeterRadialSlice_projection](declarations/perimeterradialslice-projection--fd032f104ade91ca3124ff01.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [perimeterRadialSlice_zero](declarations/perimeterradialslice-zero--7171ae4a22e663d49e693602.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [perimeterRadialSlice_one](declarations/perimeterradialslice-one--ba056198a63eb67a73d6611d.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [radialCoordinate_slice](declarations/radialcoordinate-slice--215eca8b4cd7d0b30440a733.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [directed_edge_source_count](declarations/directed-edge-source-count--5a290bd11a9395ffdb8e940b.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [genusTwo_attaching_noninjective](declarations/genustwo-attaching-noninjective--c72e63c899829ad77f31f3dd.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [genusThree_attaching_noninjective](declarations/genusthree-attaching-noninjective--2ec5fb567cb12d4f9e499381.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
