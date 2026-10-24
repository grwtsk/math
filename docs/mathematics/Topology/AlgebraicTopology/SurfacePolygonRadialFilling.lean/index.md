# GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7aef6274b44e788648e9e434b09c3160ca14c8af`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [cornerDiscreteTopology](declarations/cornerdiscretetopology--08090b4fd60351f7b4ab1bc2.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [RadialSource](declarations/radialsource--1d71f4c997fc0220833be477.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [apexSource](declarations/apexsource--f0bdad40f68499463e0a216f.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [RadialGluingStep](declarations/radialgluingstep--08c44aa26f3f49cff91b8cbf.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [RadialConnected](declarations/radialconnected--08fb605813318608c585aa72.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [radialSetoid](declarations/radialsetoid--d5f0653612450f8d8011d20d.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [FilledPolygonQuotient](declarations/filledpolygonquotient--bc9027c07202a61f00e43564.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [radialQuotientTopology_is_coinduced](declarations/radialquotienttopology-is-coinduced--eae62c5d2f4ad371ab598abe.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [radialProjection](declarations/radialprojection--e5e778876dc884a1159d3d99.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [radialProjection_continuous](declarations/radialprojection-continuous--9bccd967a43b4b31eb9f1f1e.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [radialProjection_isQuotientMap](declarations/radialprojection-isquotientmap--54ba3c6c7726a2a5f6a4943c.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [sectorMap](declarations/sectormap--42a15845274004c37a340863.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sectorMap_continuous](declarations/sectormap-continuous--cf6ddbeb3f85c6d6f7611fe9.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [radialProjection_eq_of_step](declarations/radialprojection-eq-of-step--a7c284ca08fdc741bd3bdba9.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [radius_zero_is_apex](declarations/radius-zero-is-apex--f8b5946fdf2f020722f48e4c.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [outerSource](declarations/outersource--7e3ff808baa33e3e01c813ec.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [outerProjection](declarations/outerprojection--52502e031b3a3936bc32ba53.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [outerProjection_continuous](declarations/outerprojection-continuous--d99c90a58ef729109744cf86.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [parentBoundaryStep_respected](declarations/parentboundarystep-respected--7447554cba49e812cf1a9dad.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [parentBoundaryConnected_respected](declarations/parentboundaryconnected-respected--19319263b4e93e7042352261.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [boundaryInclusion](declarations/boundaryinclusion--a9fa89854bded1ae86da470a.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [boundaryInclusion_continuous](declarations/boundaryinclusion-continuous--66aa12ac99b54b8d04b5015f.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [boundaryInclusion_projection](declarations/boundaryinclusion-projection--4bf4c3b5f580161e47d18c97.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [all_original_corners_same_outer_vertex](declarations/all-original-corners-same-outer-vertex--f1c47d2644516fc7cfbb4acd.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [step_preserves_radius](declarations/step-preserves-radius--10173dde3a7b21cbe82dbacb.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [connected_preserves_radius](declarations/connected-preserves-radius--96084a926db632eb06225356.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [radialCoordinate](declarations/radialcoordinate--92fa742a7d5b46ebed244d1d.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [radialCoordinate_projection](declarations/radialcoordinate-projection--414ffa21bd705aad2027a798.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [radialCoordinate_continuous](declarations/radialcoordinate-continuous--ec3be49a0da6d8cae159f131.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [projection_ne_of_radius_ne](declarations/projection-ne-of-radius-ne--f019b4568c43a5f2a019d2b3.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [apexPoint](declarations/apexpoint--108d0d0a73268b5e4cbb7268.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [outerVertex](declarations/outervertex--e64831747833e00d9457e280.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [radialInteriorPoint](declarations/radialinteriorpoint--ceda4ec35f0eacaede21382e.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [radialCoordinate_apex](declarations/radialcoordinate-apex--8748eee3cb52a6e3e320772f.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [radialCoordinate_outerVertex](declarations/radialcoordinate-outervertex--4fc79aed9b3db8ca226ef602.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [radialCoordinate_interior](declarations/radialcoordinate-interior--b6748532aea3ceea409f7f11.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [midpoint_ne_zero](declarations/midpoint-ne-zero--34bfc36a6165ebd19e26c5da.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [midpoint_ne_one](declarations/midpoint-ne-one--d7e6e829dbe39055b344bd3f.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [apex_ne_outerVertex](declarations/apex-ne-outervertex--de48d35660e77f15e7b33aee.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [interior_ne_apex](declarations/interior-ne-apex--28d0a78f9a99907f853ac2ff.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [interior_ne_outerVertex](declarations/interior-ne-outervertex--10a90239f5a407d1fc3fa6b8.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [three_radial_strata_distinct](declarations/three-radial-strata-distinct--4a83d9185144c6e39d9c7609.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [filledPolygon_nontrivial](declarations/filledpolygon-nontrivial--585bdcb6f0d14e159a03c760.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [genusTwo_radial_strata](declarations/genustwo-radial-strata--97b5f995951123d376789b22.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [genusThree_radial_strata](declarations/genusthree-radial-strata--e636b8d7c4376cbab9b5238f.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [original_one_cell_source_count](declarations/original-one-cell-source-count--a449e04c53431a5f45ddc3e0.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
