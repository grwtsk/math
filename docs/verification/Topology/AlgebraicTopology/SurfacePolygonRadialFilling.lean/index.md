# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7aef6274b44e788648e9e434b09c3160ca14c8af",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7aef6274b44e788648e9e434b09c3160ca14c8af`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Topology.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UnitInterval` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [cornerDiscreteTopology](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/cornerdiscretetopology--08090b4fd60351f7b4ab1bc2.md) | 68 | `declaration-track:08090b4fd60351f7b4ab1bc2a4046d9fbc35aa558a82a4029b18eec2684ee1d5` |
| 2 | `abbrev` | [RadialSource](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/radialsource--1d71f4c997fc0220833be477.md) | 74 | `declaration-track:1d71f4c997fc0220833be477429abadf5e60803e3f66434c475f04ff0c1ce2a7` |
| 3 | `def` | [apexSource](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/apexsource--f0bdad40f68499463e0a216f.md) | 80 | `declaration-track:f0bdad40f68499463e0a216fcd467beede819ca08cbe116cb79a70e86383853e` |
| 4 | `inductive` | [RadialGluingStep](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/radialgluingstep--08c44aa26f3f49cff91b8cbf.md) | 89 | `declaration-track:08c44aa26f3f49cff91b8cbf526da55d22b33259a5383d8ee04bad63864f04f8` |
| 5 | `def` | [RadialConnected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/radialconnected--08fb605813318608c585aa72.md) | 116 | `declaration-track:08fb605813318608c585aa72401c04a5861d75d9549fc11f9e1726e97ef4ff15` |
| 6 | `def` | [radialSetoid](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/radialsetoid--d5f0653612450f8d8011d20d.md) | 121 | `declaration-track:d5f0653612450f8d8011d20d9af3a6c4220b4363b3ee6aa64c618a4f3efa822e` |
| 7 | `abbrev` | [FilledPolygonQuotient](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/filledpolygonquotient--bc9027c07202a61f00e43564.md) | 128 | `declaration-track:bc9027c07202a61f00e43564602408fe0db915ed03159e16e308c314aa0cf4ca` |
| 8 | `theorem` | [radialQuotientTopology_is_coinduced](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/radialquotienttopology-is-coinduced--eae62c5d2f4ad371ab598abe.md) | 133 | `result-track:eae62c5d2f4ad371ab598abeaf54873b8ae44d6a1da87ceddbe4f22a3f6209b7` |
| 9 | `def` | [radialProjection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/radialprojection--e5e778876dc884a1159d3d99.md) | 141 | `declaration-track:e5e778876dc884a1159d3d99b2f608aa8bae855215ba4cc632a7cdc5f40fa6f2` |
| 10 | `theorem` | [radialProjection_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/radialprojection-continuous--9bccd967a43b4b31eb9f1f1e.md) | 145 | `result-track:9bccd967a43b4b31eb9f1f1e5839db8e56f177c4f90000c38f125a3f4c4c3d14` |
| 11 | `theorem` | [radialProjection_isQuotientMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/radialprojection-isquotientmap--54ba3c6c7726a2a5f6a4943c.md) | 151 | `result-track:54ba3c6c7726a2a5f6a4943cc7692e0b7f29a739873ee3de7cb6e3e08347686a` |
| 12 | `def` | [sectorMap](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/sectormap--42a15845274004c37a340863.md) | 159 | `declaration-track:42a15845274004c37a340863392d1a9be2e9fec22e84bb068b3565ef549aba8a` |
| 13 | `theorem` | [sectorMap_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/sectormap-continuous--cf6ddbeb3f85c6d6f7611fe9.md) | 163 | `result-track:cf6ddbeb3f85c6d6f7611fe9d9b2209a7b027cdcf585b9ec5342054ebac89eca` |
| 14 | `theorem` | [radialProjection_eq_of_step](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/radialprojection-eq-of-step--a7c284ca08fdc741bd3bdba9.md) | 172 | `result-track:a7c284ca08fdc741bd3bdba970c4c51fe9387bd6aa09836f1c0c3cebeec6144c` |
| 15 | `theorem` | [radius_zero_is_apex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/radius-zero-is-apex--f8b5946fdf2f020722f48e4c.md) | 179 | `result-track:f8b5946fdf2f020722f48e4cd184d69d7496c50c5dafe24babe7926d52c0b1e6` |
| 16 | `def` | [outerSource](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/outersource--7e3ff808baa33e3e01c813ec.md) | 186 | `declaration-track:7e3ff808baa33e3e01c813ec8bbb8f1a4dc480b1540234fed09cb36422a0adc0` |
| 17 | `def` | [outerProjection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/outerprojection--52502e031b3a3936bc32ba53.md) | 189 | `declaration-track:52502e031b3a3936bc32ba53d8ceeff569dea8e50a2bb4316a5d6061913296e6` |
| 18 | `theorem` | [outerProjection_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/outerprojection-continuous--d99c90a58ef729109744cf86.md) | 193 | `result-track:d99c90a58ef729109744cf8640f30920744983632a71db3410b561a2126f2e2f` |
| 19 | `theorem` | [parentBoundaryStep_respected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/parentboundarystep-respected--7447554cba49e812cf1a9dad.md) | 202 | `result-track:7447554cba49e812cf1a9dad02ffec9d5205c030417cb13b98e58415a36faf6d` |
| 20 | `theorem` | [parentBoundaryConnected_respected](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/parentboundaryconnected-respected--19319263b4e93e7042352261.md) | 226 | `result-track:19319263b4e93e7042352261ca861135539ce05f6b466564c2c3f88d3a8e0a10` |
| 21 | `def` | [boundaryInclusion](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/boundaryinclusion--a9fa89854bded1ae86da470a.md) | 238 | `declaration-track:a9fa89854bded1ae86da470a6fef0ed2f5276cc5fe68c6515f3ea7c7feade61b` |
| 22 | `theorem` | [boundaryInclusion_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/boundaryinclusion-continuous--66aa12ac99b54b8d04b5015f.md) | 246 | `result-track:66aa12ac99b54b8d04b5015fc1205a7903ffe182569a610768b42d85be6f4a92` |
| 23 | `theorem` | [boundaryInclusion_projection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/boundaryinclusion-projection--4bf4c3b5f580161e47d18c97.md) | 253 | `result-track:4bf4c3b5f580161e47d18c974e116daefbf0598a5929b3316b6a6d32ad6f375a` |
| 24 | `theorem` | [all_original_corners_same_outer_vertex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/all-original-corners-same-outer-vertex--f1c47d2644516fc7cfbb4acd.md) | 262 | `result-track:f1c47d2644516fc7cfbb4acda99484fd6b64f6aedb7a37d66874a868c039a48f` |
| 25 | `theorem` | [step_preserves_radius](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/step-preserves-radius--10173dde3a7b21cbe82dbacb.md) | 274 | `result-track:10173dde3a7b21cbe82dbacbabe8566d94eaca90b2c206be4fa47ab6ec5987c2` |
| 26 | `theorem` | [connected_preserves_radius](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/connected-preserves-radius--96084a926db632eb06225356.md) | 281 | `result-track:96084a926db632eb062253565fb3d15149e2198ca854a2c744f57d3385ff6cce` |
| 27 | `def` | [radialCoordinate](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/radialcoordinate--92fa742a7d5b46ebed244d1d.md) | 293 | `declaration-track:92fa742a7d5b46ebed244d1de74724bfe5e8d815c9fcb07438f23f380fe3e193` |
| 28 | `theorem` | [radialCoordinate_projection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/radialcoordinate-projection--414ffa21bd705aad2027a798.md) | 299 | `result-track:414ffa21bd705aad2027a798f6d29dc681562822bae6b23d5fbe640a90f75801` |
| 29 | `theorem` | [radialCoordinate_continuous](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/radialcoordinate-continuous--ec3be49a0da6d8cae159f131.md) | 304 | `result-track:ec3be49a0da6d8cae159f1317b0a5155f6cf0ef7f67eac272f1c6f13ec6d6251` |
| 30 | `theorem` | [projection_ne_of_radius_ne](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/projection-ne-of-radius-ne--f019b4568c43a5f2a019d2b3.md) | 310 | `result-track:f019b4568c43a5f2a019d2b3b697e8f1edf2de9c1d7d9099c3d41b8671de048b` |
| 31 | `def` | [apexPoint](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/apexpoint--108d0d0a73268b5e4cbb7268.md) | 320 | `declaration-track:108d0d0a73268b5e4cbb72684858164eaea30258ed22abde8a4f184a2fea5875` |
| 32 | `def` | [outerVertex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/outervertex--e64831747833e00d9457e280.md) | 324 | `declaration-track:e64831747833e00d9457e2800247bde2aee12ee0f656a0b1831be360be62f391` |
| 33 | `def` | [radialInteriorPoint](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/radialinteriorpoint--ceda4ec35f0eacaede21382e.md) | 329 | `declaration-track:ceda4ec35f0eacaede21382e60fdd6b30aaa9f3a9df71a9170bd21cc8d754a21` |
| 34 | `theorem` | [radialCoordinate_apex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/radialcoordinate-apex--8748eee3cb52a6e3e320772f.md) | 335 | `result-track:8748eee3cb52a6e3e320772fb2e2dffcfa19fdbade76c417870977fcdbb9039e` |
| 35 | `theorem` | [radialCoordinate_outerVertex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/radialcoordinate-outervertex--4fc79aed9b3db8ca226ef602.md) | 338 | `result-track:4fc79aed9b3db8ca226ef602b6e126353176fce0285e115dcc9d5dee3957c42b` |
| 36 | `theorem` | [radialCoordinate_interior](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/radialcoordinate-interior--b6748532aea3ceea409f7f11.md) | 341 | `result-track:b6748532aea3ceea409f7f116cbaa5aa9387bd5d3ee415e6e67d9ecc8220e3e4` |
| 37 | `theorem` | [midpoint_ne_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/midpoint-ne-zero--34bfc36a6165ebd19e26c5da.md) | 346 | `result-track:34bfc36a6165ebd19e26c5da13d328f34677067f3ab9c8dcbb4418df180c31a3` |
| 38 | `theorem` | [midpoint_ne_one](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/midpoint-ne-one--d7e6e829dbe39055b344bd3f.md) | 352 | `result-track:d7e6e829dbe39055b344bd3f8c4b445ece9b9c6101ad166ef71756f2c616ccf0` |
| 39 | `theorem` | [apex_ne_outerVertex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/apex-ne-outervertex--de48d35660e77f15e7b33aee.md) | 358 | `result-track:de48d35660e77f15e7b33aeed62fb301c2a04c51866d2ad2b0e05bba3d05120b` |
| 40 | `theorem` | [interior_ne_apex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/interior-ne-apex--28d0a78f9a99907f853ac2ff.md) | 366 | `result-track:28d0a78f9a99907f853ac2ff3e6db0ba85b791201d224c1c7d48fdd0bb74003f` |
| 41 | `theorem` | [interior_ne_outerVertex](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/interior-ne-outervertex--10a90239f5a407d1fc3fa6b8.md) | 374 | `result-track:10a90239f5a407d1fc3fa6b864cb5e2d7506af5e851a3f065ba0f562d68213b6` |
| 42 | `theorem` | [three_radial_strata_distinct](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/three-radial-strata-distinct--4a83d9185144c6e39d9c7609.md) | 382 | `result-track:4a83d9185144c6e39d9c76092fdd36efeb4722be7745b02e32bd05492f5277f4` |
| 43 | `theorem` | [filledPolygon_nontrivial](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/filledpolygon-nontrivial--585bdcb6f0d14e159a03c760.md) | 391 | `result-track:585bdcb6f0d14e159a03c76070420461a79d3a331eb92afb3523a85b79ae34ed` |
| 44 | `theorem` | [genusTwo_radial_strata](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/genustwo-radial-strata--97b5f995951123d376789b22.md) | 398 | `result-track:97b5f995951123d376789b22cc772820ed22a24db420b87a743cc21e3558d8eb` |
| 45 | `theorem` | [genusThree_radial_strata](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/genusthree-radial-strata--e636b8d7c4376cbab9b5238f.md) | 406 | `result-track:e636b8d7c4376cbab9b5238f54b286f67d0fe3fb1b88350ea8673c251573b4c5` |
| 46 | `theorem` | [original_one_cell_source_count](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean/declarations/original-one-cell-source-count--a449e04c53431a5f45ddc3e0.md) | 414 | `result-track:a449e04c53431a5f45ddc3e07be02dd45d12154ccffe78273125462d31a06a40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
