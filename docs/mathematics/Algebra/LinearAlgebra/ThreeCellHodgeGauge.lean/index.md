# GRWTSK.Analysis.LinearAlgebra.ThreeCellHodgeGauge

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**50 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/LinearAlgebra/ThreeCellHodgeGauge.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dede9b689159b011b7845285c90222f7344de7aa`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Cell](declarations/cell--0b99e95d753f3efbedb3bbef.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [average](declarations/average--4e93918181f87260628cdd1b.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [centered](declarations/centered--47022ea11606edf08c889a35.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [delta0Transpose](declarations/delta0transpose--6d137a1c27d37fc5de92b092.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [delta1Transpose](declarations/delta1transpose--8824b836ec4187809c72bdf4.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [laplacian0](declarations/laplacian0--9bd02520178631a7b896f62e.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [laplacian1](declarations/laplacian1--5b825a77587dff2d6aa42850.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [laplacian0_formula](declarations/laplacian0-formula--f4088a29212aaa88e775b393.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [laplacian1_formula](declarations/laplacian1-formula--236ff803d4725ab96bf45f9b.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [laplacian2_formula](declarations/laplacian2-formula--00ca5d2e6f1534293c220d55.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [average_add](declarations/average-add--bcb562032bbc37d721805cb3.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [average_sub](declarations/average-sub--e06de4460e058dc4aeb1a868.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [average_centered](declarations/average-centered--b39e9c7c652f1f8c8ccbd607.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [delta0_sub](declarations/delta0-sub--b690c6e0a628db5b5ce6c722.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [phaseRelax](declarations/phaserelax--a4f4a33a7792b81dfef9cf14.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [hodgeRelax](declarations/hodgerelax--957c3f45e32f469212044392.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [treeRelax](declarations/treerelax--5feccf8ab545364515bdce7b.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [gaugeShift](declarations/gaugeshift--1d86953aed0564baa685b654.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [comparisonGauge](declarations/comparisongauge--688edac58da275b103bee3f8.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [tree_hodge_gauge](declarations/tree-hodge-gauge--eb4cc96f897af6d8369c0cf2.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [comparisonGauge_mean](declarations/comparisongauge-mean--c74dc08798133855ecf9f1eb.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mismatch_gauge](declarations/mismatch-gauge--c076ca8a415542350af053e6.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [reduced](declarations/reduced--34b2bdde6227c4932956d989.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [reduced_gauge](declarations/reduced-gauge--0c099c86f5b52d854aebc842.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [reduced_eq_iff_gauge](declarations/reduced-eq-iff-gauge--697213946a91aabad9396e31.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [reduced_surjective](declarations/reduced-surjective--fcec949d059327ef378408f2.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [average_phaseRelax](declarations/average-phaserelax--622e6b18e583c88c993149f6.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [reduced_hodge](declarations/reduced-hodge--f9735b760f0da61f4da0c25a.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [reduced_tree_hodge](declarations/reduced-tree-hodge--73a6a3e3e2b62bf19a2b73e4.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [hodgeRelax_one](declarations/hodgerelax-one--b4137815b5f38aa045adf071.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [hodgeRelax_mul](declarations/hodgerelax-mul--b39e654e139c065aea8e4b26.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [hodge_fixed_iff](declarations/hodge-fixed-iff--15b1b0425f3906ad91507373.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [tree_fixes_matching](declarations/tree-fixes-matching--40834c0ee5b85c6e30b948e2.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [comparisonGauge_map](declarations/comparisongauge-map--794a5ea3494f8ac7e5468a60.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [mapCell](declarations/mapcell--e2da7fbb26b1ee56f2fa9e82.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [hodgeRelax_map](declarations/hodgerelax-map--f69e2050d13caae47aac497b.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [scalar_phase_agrees](declarations/scalar-phase-agrees--10e776d7d8ae89f269718f94.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [scalar_laplacian0_agrees](declarations/scalar-laplacian0-agrees--b2a7a1dc6a262a24e68d0239.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [hodge_vertex_derivative](declarations/hodge-vertex-derivative--643d13f9e19383059f168935.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [hodge_edge_derivative](declarations/hodge-edge-derivative--5c7a9a4daa7987d156e5aa14.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [dot3](declarations/dot3--51b198fea846986424f55ee1.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [delta0_adjoint](declarations/delta0-adjoint--899aa56d3d56c68d810801ef.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [delta1_adjoint](declarations/delta1-adjoint--2af7e989cdd1793d10718f2b.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [rawEnergy](declarations/rawenergy--98e18291c20822b6a4817c8c.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [positiveEnergy](declarations/positiveenergy--99c178255b47abf2c2b77135.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [positiveEnergy_nonneg](declarations/positiveenergy-nonneg--460ba1f280f6d1cc595589ac.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [hodge_energy](declarations/hodge-energy--afa55c83ddb54572fcb46fd1.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [hodge_contraction](declarations/hodge-contraction--e1b361245472a598f5621df1.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [matched_flows_differ](declarations/matched-flows-differ--1b09fb2d257484074219a4a8.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [tree_half_expansion](declarations/tree-half-expansion--9cc0dee7dc828de69b10230e.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
