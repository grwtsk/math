# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCellularBoundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec4976503fbe649a34e511eb00eaed344008fc96",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec4976503fbe649a34e511eb00eaed344008fc96`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPresentationSeam`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPresentationSeam.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Group.List.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedSideIncidence](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/signedsideincidence--fe801915240b727a0561c41f.md) | 49 | `declaration-track:fe801915240b727a0561c41f2cecac00f3adea9cc1e7c16cad081d34164f4d60` |
| 2 | `def` | [signedWordCoefficient](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/signedwordcoefficient--25353c3e7c06732782cbfd23.md) | 55 | `declaration-track:25353c3e7c06732782cbfd23e531674b5d75160590caf9f8c584e3222b45a4f1` |
| 3 | `theorem` | [signedWordCoefficient_append](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/signedwordcoefficient-append--d10e72b40dd2101ab868fb99.md) | 62 | `result-track:d10e72b40dd2101ab868fb99a6241ea2bef9adfc2201d81ef0f1c550f8db72ed` |
| 4 | `theorem` | [signedWordCoefficient_flatten](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/signedwordcoefficient-flatten--7d56a40818475d7b625d888a.md) | 70 | `result-track:7d56a40818475d7b625d888a81d9b38acd30fa9386343613762f8678bd613792` |
| 5 | `theorem` | [signedWordCoefficient_handleBlock](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/signedwordcoefficient-handleblock--d1385ab3cc4f76809cbdf688.md) | 85 | `result-track:d1385ab3cc4f76809cbdf6880c5f6685db59f9b6051bb821474d41c307bc714f` |
| 6 | `theorem` | [signedWordCoefficient_firstTwo](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/signedwordcoefficient-firsttwo--049f8a7b4269f2138f808107.md) | 94 | `result-track:049f8a7b4269f2138f808107bf0224b377c2d23fe8b4e6e50220237a8c7031fb` |
| 7 | `theorem` | [signedWordCoefficient_extraBlocks](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/signedwordcoefficient-extrablocks--6e5e03f3f844a4098f402269.md) | 102 | `result-track:6e5e03f3f844a4098f4022690fc19f18fd7ba7ccaa8a2ade03c21aaf008534ae` |
| 8 | `theorem` | [signedWordCoefficient_extra](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/signedwordcoefficient-extra--ec8224ec8c43b578a7255b4c.md) | 119 | `result-track:ec8224ec8c43b578a7255b4c1bc273390376d96da600670c1e7b3b1e40fed7e1` |
| 9 | `theorem` | [signedWordCoefficient_polygon_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/signedwordcoefficient-polygon-zero--80d89cc77a77b634b17dd412.md) | 129 | `result-track:80d89cc77a77b634b17dd412b3fd366aeaea993435d24d1ca0223eec492d6fee` |
| 10 | `abbrev` | [OneCellChains](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/onecellchains--2606b8b38b07d8e18a647c31.md) | 138 | `declaration-track:2606b8b38b07d8e18a647c3146fdb70305170cfced38843528480e38e6f7e358` |
| 11 | `def` | [polygonFaceBoundaryVector](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/polygonfaceboundaryvector--9722946ccc88551a62a29d4e.md) | 143 | `declaration-track:9722946ccc88551a62a29d4ec02ae3ab92f0b1609e299607f67debcbc8c267e6` |
| 12 | `theorem` | [polygonFaceBoundaryVector_eq_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/polygonfaceboundaryvector-eq-zero--aa5052b640eb76988836b08d.md) | 148 | `result-track:aa5052b640eb76988836b08d0219248e70ce1025f0f9b6beb32ff7ca2d2ac46a` |
| 13 | `def` | [differentialTwo](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/differentialtwo--560ddfdad3b6a01532580601.md) | 155 | `declaration-track:560ddfdad3b6a01532580601c17605ad2924025d57c0673b181bc9e5919913c7` |
| 14 | `def` | [differentialOne](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/differentialone--d54e1fef18a562be312a6390.md) | 165 | `declaration-track:d54e1fef18a562be312a6390b7f88eb0d7462d3b6ca662fa1f3be331bd417f82` |
| 15 | `theorem` | [differentialTwo_apply_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/differentialtwo-apply-zero--85eeb50f1204b36b51e39034.md) | 169 | `result-track:85eeb50f1204b36b51e390343714ee6ea2fc6a1f9f8e4181ab7cb682d0298019` |
| 16 | `theorem` | [differentialTwo_eq_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/differentialtwo-eq-zero--eaffe22fac6d3736eb6eaeb6.md) | 176 | `result-track:eaffe22fac6d3736eb6eaeb6fc098ef11d0d5a5b6442546b206a0130c44dcee0` |
| 17 | `theorem` | [differentials_comp_eq_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/differentials-comp-eq-zero--33a649c5bb0059846b519739.md) | 184 | `result-track:33a649c5bb0059846b5197394b7ef1fab9501ae855b202a075946c972a09819f` |
| 18 | `def` | [OneCycles](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/onecycles--f357ebda849aeb3a6a1bcd21.md) | 190 | `declaration-track:f357ebda849aeb3a6a1bcd21d380242d3f72ae62e81bc1945bac03a9f83b4138` |
| 19 | `def` | [OneBoundaries](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/oneboundaries--f402fefb79d4b2c09d314a42.md) | 195 | `declaration-track:f402fefb79d4b2c09d314a4217aeb53a0d5f5ca9ba9d14ab4930a789f4e23d3a` |
| 20 | `theorem` | [oneCycles_univ](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/onecycles-univ--64bd721a51466d7ab7ae942f.md) | 200 | `result-track:64bd721a51466d7ab7ae942f1c8021a79e4fe618a4e1b439a8c9112210a17dfc` |
| 21 | `theorem` | [oneBoundaries_singleton_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/oneboundaries-singleton-zero--7519545734a9a29252e10e72.md) | 207 | `result-track:7519545734a9a29252e10e727e3f69467cae83c73cad8edf204c50bb6847b493` |
| 22 | `theorem` | [oneCellSourceCount](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/onecellsourcecount--661b7a8f6b50f62781a41f02.md) | 224 | `result-track:661b7a8f6b50f62781a41f0254d8661722a59cfe4f518b977d437d524f165294` |
| 23 | `def` | [formalEulerCount](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/formaleulercount--bd30d4c83924541defe2a823.md) | 231 | `declaration-track:bd30d4c83924541defe2a823663ce10df82c4ba7b41f906261bc77dc562a56df` |
| 24 | `theorem` | [formalEulerCount_eq](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/formaleulercount-eq--fa70f5476c39c4ced5a880a9.md) | 234 | `result-track:fa70f5476c39c4ced5a880a9934d3be26dbbe4ff59daa82b6817905de3502466` |
| 25 | `def` | [missingInverseEdge](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/missinginverseedge--917ae41aeef1798ea21f16b0.md) | 244 | `declaration-track:917ae41aeef1798ea21f16b0a50bab1d0b3a274101025e507f1974c47fed4db2` |
| 26 | `theorem` | [missingInverseEdge_nonzero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/missinginverseedge-nonzero--5fe044842b7bce6977197ab5.md) | 248 | `result-track:5fe044842b7bce6977197ab556ec34bb3dc4825608e311c126eecb8d75f969f6` |
| 27 | `theorem` | [genus_two_polygon_boundary_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/genus-two-polygon-boundary-zero--cdca9a2c6f6d66320fea4439.md) | 255 | `result-track:cdca9a2c6f6d66320fea4439c04debac299882ccfd7e8df7da1f698717725ab6` |
| 28 | `theorem` | [genus_three_polygon_boundary_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/declarations/genus-three-polygon-boundary-zero--77649c8fe37101a13bc72dcd.md) | 261 | `result-track:77649c8fe37101a13bc72dcd09fea3708ac37db098757156ba679bec870de967` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
