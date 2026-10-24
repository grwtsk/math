# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c902501d3eb3ce7bb5df9a2b0804c1a39d7464f0",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c902501d3eb3ce7bb5df9a2b0804c1a39d7464f0`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Topology.Constructions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UnitInterval` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [cornerDiscreteTopology](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/cornerdiscretetopology--1e5219fdb51f278e3a5b68f1.md) | 71 | `declaration-track:1e5219fdb51f278e3a5b68f10c02f53e907fd36841a40c0a68944b0241a171fa` |
| 2 | `inductive` | [PerimeterSeamStep](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeterseamstep--d8b0815b252b7c19e58166f2.md) | 77 | `declaration-track:d8b0815b252b7c19e58166f217f39675d8bb15315fea36544dfb47d1de4db0ac` |
| 3 | `def` | [PerimeterConnected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeterconnected--37d6d7bcd7ca528c2d4e5692.md) | 90 | `declaration-track:37d6d7bcd7ca528c2d4e56924d1875e59f7f74923c466713351eb2c92f55ddbe` |
| 4 | `def` | [perimeterSetoid](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimetersetoid--cee829eaab4085d72552caa5.md) | 95 | `declaration-track:cee829eaab4085d72552caa5176eedbca3ca0b6e603c470dd93996fe78b51c78` |
| 5 | `abbrev` | [UnpairedPerimeter](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/unpairedperimeter--5faa102fdef533b079c16b65.md) | 102 | `declaration-track:5faa102fdef533b079c16b65ee4aa4af8897a76b1a319724fb9444387c615167` |
| 6 | `theorem` | [perimeter_topology_coinduced](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeter-topology-coinduced--6305f0e5054a0470e4f3fc5a.md) | 107 | `result-track:6305f0e5054a0470e4f3fc5a002b671a21ac9560caa36582f1c26bb840c12f7a` |
| 7 | `def` | [perimeterProjection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeterprojection--43dcc414026532ed232c6fc6.md) | 115 | `declaration-track:43dcc414026532ed232c6fc6c1b2cd6c3280260803fa7b9ad6c27e0b68aba909` |
| 8 | `theorem` | [perimeterProjection_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeterprojection-continuous--87458a730336efad2191eba1.md) | 119 | `result-track:87458a730336efad2191eba1f0ac7141f8aa70bdc7f4fc12eba269fd5bc5da89` |
| 9 | `theorem` | [perimeterProjection_isQuotientMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeterprojection-isquotientmap--4ce642ae50579dea92664eeb.md) | 125 | `result-track:4ce642ae50579dea92664eeb42827fd089f11bafa9876b7630dc1ccc4869a27f` |
| 10 | `def` | [perimeterEdgeMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeteredgemap--22c666b1944e975680ceea89.md) | 133 | `declaration-track:22c666b1944e975680ceea89085bcd62df40aedbb08212f99fade5b8922f9503` |
| 11 | `theorem` | [perimeterEdgeMap_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeteredgemap-continuous--6d88a968e7282fe072446334.md) | 137 | `result-track:6d88a968e7282fe0724463348348e1397ba17553ff967c6afd194ac31f0361a8` |
| 12 | `theorem` | [perimeter_seam_01](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeter-seam-01--75dc88975c2de3097e84bd01.md) | 146 | `result-track:75dc88975c2de3097e84bd0133d12e2116309f5eb3940ff8db8b34bdea5f1e3a` |
| 13 | `theorem` | [perimeter_seam_12](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeter-seam-12--78f2432a164667dff16023d0.md) | 151 | `result-track:78f2432a164667dff16023d0b9740c9bfaf22f394777c9b2fd5638a205c95dd2` |
| 14 | `theorem` | [perimeter_seam_23](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeter-seam-23--1d9a76d9c6f7d4c97b997a26.md) | 156 | `result-track:1d9a76d9c6f7d4c97b997a26a95be8f7ca177ec375a79521872113ceb572b229` |
| 15 | `theorem` | [perimeter_seam_next](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeter-seam-next--2e7d1f2a4e8c74d2132716b6.md) | 161 | `result-track:2e7d1f2a4e8c74d2132716b696e8f1df64a555032bb3d3be6e2f72a53003c39a` |
| 16 | `theorem` | [seamStep_respected_by_pairedBoundary](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/seamstep-respected-by-pairedboundary--9a558ef862b9c35d99d873b1.md) | 170 | `result-track:9a558ef862b9c35d99d873b169de2b7d537cf515571ce8e08b26c54ec6929f47` |
| 17 | `theorem` | [perimeterConnected_respected_by_pairedBoundary](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeterconnected-respected-by-pairedboundary--f7f11fdaefba2dc5a1276578.md) | 186 | `result-track:f7f11fdaefba2dc5a1276578eaeccf6e9e3b1721786c6258f28858e0bf6f5338` |
| 18 | `def` | [perimeterAttach](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeterattach--d795348f20cfe0691f67ccda.md) | 199 | `declaration-track:d795348f20cfe0691f67ccdaca32e527c50df0abb26f8e7f7e285a21dd71cf3c` |
| 19 | `theorem` | [perimeterAttach_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeterattach-continuous--6bbcf0041bf1ca2342b1c05f.md) | 208 | `result-track:6bbcf0041bf1ca2342b1c05ff694cf290a0c9370b4e7fe30dd166e449ad2bbd1` |
| 20 | `theorem` | [perimeterAttach_projection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeterattach-projection--c181990dd10ba5adfaf48ca5.md) | 214 | `result-track:c181990dd10ba5adfaf48ca59edbcbca4dac3a759b43782ba82fd1bbe3f3b478` |
| 21 | `theorem` | [perimeterAttach_surjective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeterattach-surjective--bd90509d02a9bf979a89591d.md) | 223 | `result-track:bd90509d02a9bf979a89591d9e40411907b6b46a586b06c3e0d74851909908c2` |
| 22 | `theorem` | [perimeterAttach_unique](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeterattach-unique--a486c6aef725b7d5b976c50e.md) | 233 | `result-track:a486c6aef725b7d5b976c50e2e7db42e12a42231f6e8f338186689a238dbe81e` |
| 23 | `theorem` | [attachingMap_pairs_a](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/attachingmap-pairs-a--709968d10261292867b3f8fc.md) | 246 | `result-track:709968d10261292867b3f8fc99b4db1aab65f290cb2855f49c80fd79a4d09505` |
| 24 | `theorem` | [attachingMap_pairs_b](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/attachingmap-pairs-b--e557d56c2b50da90b4aedae3.md) | 254 | `result-track:e557d56c2b50da90b4aedae391807b98baf794713e9c841442ff26489fcd08ae` |
| 25 | `theorem` | [seamStep_has_endpoints](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/seamstep-has-endpoints--b33883ef9779cac933c94db7.md) | 264 | `result-track:b33883ef9779cac933c94db77e9807c82ed569ff42a08f777597d2e4a41f2ebc` |
| 26 | `theorem` | [perimeterConnected_preserves_endpoint](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeterconnected-preserves-endpoint--6e3e13beab59088f2f9e63e7.md) | 272 | `result-track:6e3e13beab59088f2f9e63e7c58429020271062a6cd8c17ff5bd41dd0dc37ede` |
| 27 | `theorem` | [perimeterConnected_interior_fixed](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeterconnected-interior-fixed--5d1b5f2e45965cb7b76a5f1f.md) | 288 | `result-track:5d1b5f2e45965cb7b76a5f1fedd26a8b8f5d594f9a1c88210cd51f93bd8bf3c8` |
| 28 | `theorem` | [opposite_a_midpoints_distinct_in_perimeter](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/opposite-a-midpoints-distinct-in-perimeter--011a0484400c336287d34d8c.md) | 314 | `result-track:011a0484400c336287d34d8c0901e569a5a0c8b7f3b0ce5d3e2a9496510430de` |
| 29 | `theorem` | [perimeterAttach_not_injective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeterattach-not-injective--889ab34de7896e345d027cdc.md) | 331 | `result-track:889ab34de7896e345d027cdc5340956b92ddc70f9f180ed7174f860473ee7536` |
| 30 | `def` | [perimeterToFilling](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimetertofilling--f9af2a60cd1144eb5b50c1cd.md) | 343 | `declaration-track:f9af2a60cd1144eb5b50c1cd2e548b87d69380322c56f03ef4f6fea8c0ce529b` |
| 31 | `theorem` | [perimeterToFilling_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimetertofilling-continuous--f986aa65e650f2e7b859eb04.md) | 347 | `result-track:f986aa65e650f2e7b859eb0432c624b0c5017a130aee0cc670eb7a1ad3c71010` |
| 32 | `theorem` | [perimeterToFilling_projection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimetertofilling-projection--73b692174d10b6c11968d4ae.md) | 354 | `result-track:73b692174d10b6c11968d4aed5cc13f6053a5695eb098df43bef13cc4a6a0e6a` |
| 33 | `theorem` | [perimeterSeam_respected_at_radius](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeterseam-respected-at-radius--f082823e22bd9ecd71f005df.md) | 364 | `result-track:f082823e22bd9ecd71f005dfc1e51a3813d1331b253330e7299e675f2c21c768` |
| 34 | `theorem` | [perimeterConnected_respected_at_radius](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeterconnected-respected-at-radius--e0d3b02ffa40d9457ae3a3e4.md) | 380 | `result-track:e0d3b02ffa40d9457ae3a3e4ec7543e50a2fffae257817d0df7259d609d1512b` |
| 35 | `def` | [perimeterRadialSlice](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeterradialslice--88f9d76ce9a693008a553fcd.md) | 393 | `declaration-track:88f9d76ce9a693008a553fcda6790b979c9d93ac9cb446038cb9d1422b0c2eb5` |
| 36 | `theorem` | [perimeterRadialSlice_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeterradialslice-continuous--e752627c154ac235185a3e33.md) | 400 | `result-track:e752627c154ac235185a3e333ce1f16e303db6d44ed796b0432f64018dd1e986` |
| 37 | `theorem` | [perimeterRadialSlice_projection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeterradialslice-projection--fd032f104ade91ca3124ff01.md) | 408 | `result-track:fd032f104ade91ca3124ff012798403a64ed1e0d884e3a5a4999e022af58924d` |
| 38 | `theorem` | [perimeterRadialSlice_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeterradialslice-zero--7171ae4a22e663d49e693602.md) | 416 | `result-track:7171ae4a22e663d49e69360234ed194a84971ae98cfc682ffb31e77d3baf28a1` |
| 39 | `theorem` | [perimeterRadialSlice_one](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/perimeterradialslice-one--ba056198a63eb67a73d6611d.md) | 425 | `result-track:ba056198a63eb67a73d6611d7a2f3c41e61fb89a565597f2b8667650c9ab6ba8` |
| 40 | `theorem` | [radialCoordinate_slice](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/radialcoordinate-slice--215eca8b4cd7d0b30440a733.md) | 433 | `result-track:215eca8b4cd7d0b30440a7339536e9de70e57fb7aa710f96987793814301f189` |
| 41 | `theorem` | [directed_edge_source_count](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/directed-edge-source-count--5a290bd11a9395ffdb8e940b.md) | 443 | `result-track:5a290bd11a9395ffdb8e940ba23df33d03a421dad46d7f5bbe9715fd78e50e21` |
| 42 | `theorem` | [genusTwo_attaching_noninjective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/genustwo-attaching-noninjective--c72e63c899829ad77f31f3dd.md) | 450 | `result-track:c72e63c899829ad77f31f3ddffee75f05e04901d50ff03d498e15e9cd569612e` |
| 43 | `theorem` | [genusThree_attaching_noninjective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean/declarations/genusthree-attaching-noninjective--2ec5fb567cb12d4f9e499381.md) | 456 | `result-track:2ec5fb567cb12d4f9e499381964d0413376ac3cdbe381d4ecff102e169c4c7a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
