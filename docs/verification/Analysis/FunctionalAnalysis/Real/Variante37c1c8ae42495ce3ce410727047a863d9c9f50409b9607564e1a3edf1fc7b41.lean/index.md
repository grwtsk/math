# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Real.Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c93692ddc6070240ee0cc52338cc9110f980cb7f",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c93692ddc6070240ee0cc52338cc9110f980cb7f`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.IsManifold.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.IsManifold.InteriorBoundary` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EuclideanHalfSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/euclideanhalfspace--a54b7b6b96bed4d477fc798a.md) | 54 | `declaration-track:a54b7b6b96bed4d477fc798a36662d2eb4163763fa1f4b440033e6f639f56a78` |
| 2 | `def` | [EuclideanQuadrant](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/euclideanquadrant--7ee59bed488fa49ec2fa8bec.md) | 61 | `declaration-track:7ee59bed488fa49ec2fa8becdbafad25d673430aaba5942f5875453220f4f95d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/instance--3c40b64c578efc40e93e5dc8.md) | 71 | `declaration-track:3c40b64c578efc40e93e5dc83a6a9f035c640da754dd26e98bccef4e8edf8206` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/instance--8c713d11c5c44bc564c65731.md) | 74 | `declaration-track:8c713d11c5c44bc564c65731e7ac5c72edf0195fc4a37e0c60bf5171b5d5f4b5` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/instance--a44b73f5e481071c9d9537e4.md) | 77 | `declaration-track:a44b73f5e481071c9d9537e4df2c84359968fb67e07e55a4010ba7709041a497` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/instance--5422f63f776045d9de56ee8a.md) | 80 | `declaration-track:5422f63f776045d9de56ee8a1342389e4dbdfffe7fbc4b7decab50a5d4a80192` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/instance--080686c1a47110baf2949743.md) | 83 | `declaration-track:080686c1a47110baf2949743c384dde100e8984a219be2d581fcbfcd43df7e89` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/instance--edac8c4a6d54345a2cbf5ae8.md) | 85 | `declaration-track:edac8c4a6d54345a2cbf5ae8f2def1ae548a109ee06479451614cde44fb1b557` |
| 9 | `theorem` | [EuclideanQuadrant.ext](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/euclideanquadrant-ext--fddbc23d6d7fbc63218332d8.md) | 88 | `result-track:fddbc23d6d7fbc63218332d873189f3c43db559a5550184a06897ae420b35b4a` |
| 10 | `theorem` | [EuclideanHalfSpace.ext](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/euclideanhalfspace-ext--9da52f65dda3cfbc20f0b350.md) | 92 | `result-track:9da52f65dda3cfbc20f0b3506ac4813e6d8f03708cbd43774c21c2d6f1f57bf9` |
| 11 | `theorem` | [EuclideanHalfSpace.convex](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/euclideanhalfspace-convex--b95a5c571bfa3428a25cffa2.md) | 96 | `result-track:b95a5c571bfa3428a25cffa2be54d81bee950664bae812800ace49fcc8982539` |
| 12 | `theorem` | [EuclideanQuadrant.convex](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/euclideanquadrant-convex--3982d8fa8bb9b21351e7d723.md) | 100 | `result-track:3982d8fa8bb9b21351e7d723740b0e09fd8b06bf0d41b36c665d546b7f4e71de` |
| 13 | `instance` | [EuclideanHalfSpace.pathConnectedSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/euclideanhalfspace-pathconnectedspace--00d7efcca472fbcb8c15f4da.md) | 104 | `declaration-track:00d7efcca472fbcb8c15f4da042cd66f6b98473ac8cfbac6ba5c068b634383c4` |
| 14 | `instance` | [EuclideanQuadrant.pathConnectedSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/euclideanquadrant-pathconnectedspace--b23351dcda89050c5eb12844.md) | 108 | `declaration-track:b23351dcda89050c5eb128445fe94b7ccdf9dedea87df27018b903a656ace6ad` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/instance--03ccc7ce79c1a8542577679b.md) | 111 | `declaration-track:03ccc7ce79c1a8542577679bfe113e477c3c285994d729cb8302a91e173ea3a2` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/instance--956ecdd96bd7a0e5469b2b14.md) | 114 | `declaration-track:956ecdd96bd7a0e5469b2b145a4727c2d547d803ceff976b22857a0a5989ea81` |
| 17 | `theorem` | [range_euclideanHalfSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/range-euclideanhalfspace--b7a92bc7938ed59c2306d698.md) | 117 | `result-track:b7a92bc7938ed59c2306d698a19946e1dfba0d79ba5d78938cd108ade36dbc24` |
| 18 | `theorem` | [interior_halfSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/interior-halfspace--09146878c0eafe779d483f2c.md) | 123 | `result-track:09146878c0eafe779d483f2c68230610acaacda4ece29e51cc4465607afaa6a0` |
| 19 | `theorem` | [closure_halfSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/closure-halfspace--9eb977218cc70c6c7784d6d6.md) | 134 | `result-track:9eb977218cc70c6c7784d6d664e19fb0ee6112b21d649e541123dbd62412c3dd` |
| 20 | `theorem` | [closure_open_halfSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/closure-open-halfspace--2cbdf7b605696ecbaebf80b8.md) | 145 | `result-track:2cbdf7b605696ecbaebf80b8b3ace2ab3c5bc7381486b2b8a108eb29fddc5f1b` |
| 21 | `theorem` | [frontier_halfSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/frontier-halfspace--c06d52fd0f4c4635464bc592.md) | 156 | `result-track:c06d52fd0f4c4635464bc5923c40f9d9c513693e3698bc8c8339a550ddf27333` |
| 22 | `theorem` | [range_euclideanQuadrant](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/range-euclideanquadrant--cd20bd692773ecf5b5839060.md) | 163 | `result-track:cd20bd692773ecf5b58390603414ad9b327e1d82ea75da7f0fe1c10f541a9f37` |
| 23 | `def` | [modelWithCornersEuclideanHalfSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/modelwithcornerseuclideanhalfspace--fcd684b624066e5547106ea2.md) | 173 | `declaration-track:fcd684b624066e5547106ea2417f670d2b249f09fb222c4e64d6fbeebaaecef9` |
| 24 | `def` | [modelWithCornersEuclideanQuadrant](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/modelwithcornerseuclideanquadrant--44d372a4b1642b8b1335fa52.md) | 199 | `declaration-track:44d372a4b1642b8b1335fa526973b0efb8819cfd84bd9879e31a72d13bac3586` |
| 25 | `lemma` | [modelWithCornersEuclideanHalfSpace_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/modelwithcornerseuclideanhalfspace-zero--85d389c1abf735186fb1dfd6.md) | 236 | `result-track:85d389c1abf735186fb1dfd6484c35062cfa5baf9821736ee892ecce6e34de57` |
| 26 | `lemma` | [range_modelWithCornersEuclideanHalfSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/range-modelwithcornerseuclideanhalfspace--5de00ad03450126c2879cd61.md) | 238 | `result-track:5de00ad03450126c2879cd61ec0a93a097d987004f25b2f882ed96e1276b99c8` |
| 27 | `lemma` | [interior_range_modelWithCornersEuclideanHalfSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/interior-range-modelwithcornerseuclideanhalfspace--c487d4e72f92765d171d030f.md) | 241 | `result-track:c487d4e72f92765d171d030f0a9491fabdd2d8320a7a024fc51c4b603ea2352b` |
| 28 | `lemma` | [frontier_range_modelWithCornersEuclideanHalfSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/frontier-range-modelwithcornerseuclideanhalfspace--e18f34b81bc6ad5b1962a7ef.md) | 249 | `result-track:e18f34b81bc6ad5b1962a7ef421e26494c741915d8ee64910aa26474771ea206` |
| 29 | `def` | [IccLeftChart](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/iccleftchart--bb622d93d8eab3cf2e67fe58.md) | 260 | `declaration-track:bb622d93d8eab3cf2e67fe58cb123b5252a342816dc1c72c70031d5c478ae492` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/instance--b0623612e420397bae133c6a.md) | 308 | `declaration-track:b0623612e420397bae133c6a5685b8d4c548ca2e1971ee18d09dbdf4be686bd3` |
| 31 | `lemma` | [IccLeftChart_extend_bot](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/iccleftchart-extend-bot--babf2ac555cbfd90c8d6497a.md) | 314 | `result-track:babf2ac555cbfd90c8d6497a2d175d949d75cd6fd6196ffff87708b6b6d00822` |
| 32 | `lemma` | [iccLeftChart_extend_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/iccleftchart-extend-zero--a6f6e39ce14197891873b6d7.md) | 318 | `result-track:a6f6e39ce14197891873b6d73ca50a06300527af08acf400fcc9d4f41e877af2` |
| 33 | `lemma` | [IccLeftChart_extend_interior_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/iccleftchart-extend-interior-pos--173fd77cea9d8ab907cf908b.md) | 321 | `result-track:173fd77cea9d8ab907cf908b34574652d264857b632dae30e85db279da7f8f12` |
| 34 | `lemma` | [IccLeftChart_extend_bot_mem_frontier](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/iccleftchart-extend-bot-mem-frontier--f97c93582269e29998803c30.md) | 326 | `result-track:f97c93582269e29998803c30f8d52df652e123d3663753108eebf9e2d64975d5` |
| 35 | `def` | [IccRightChart](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/iccrightchart--569ce67c3590039e368fc966.md) | 334 | `declaration-track:569ce67c3590039e368fc966ef53492876a87cbf5f862af9de078ae78bddb218` |
| 36 | `lemma` | [IccRightChart_extend_top](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/iccrightchart-extend-top--42ba71156370c5d74d7188f4.md) | 379 | `result-track:42ba71156370c5d74d7188f4e2ff28e3fcd9e3ee7bce7035abb2d8dcb6b3a2ac` |
| 37 | `lemma` | [IccRightChart_extend_top_mem_frontier](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/iccrightchart-extend-top-mem-frontier--5188f9931140c3ba5218167f.md) | 384 | `result-track:5188f9931140c3ba5218167f993eff19d29ea2618d07c361b3e65a15ec4bdecd` |
| 38 | `instance` | [instIccChartedSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/insticcchartedspace--5c10628defa0cf74de54c681.md) | 395 | `declaration-track:5c10628defa0cf74de54c681888d21c85e6d2fdcf3cae236ffe78fee29df4c5d` |
| 39 | `lemma` | [Icc_chartedSpaceChartAt](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/icc-chartedspacechartat--8b2feecc8061447fb5e83226.md) | 409 | `result-track:8b2feecc8061447fb5e832265f4dbee70b1f4a4788bb949bf1343b81d413af9d` |
| 40 | `lemma` | [Icc_chartedSpaceChartAt_of_le_top](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/icc-chartedspacechartat-of-le-top--2827e6235d45d9e36d32c843.md) | 412 | `result-track:2827e6235d45d9e36d32c8436440127070ea7edbb269c4fe90486884d6105604` |
| 41 | `lemma` | [Icc_chartedSpaceChartAt_of_top_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/icc-chartedspacechartat-of-top-le--982b51cd62b4cd8ec6ba7bbd.md) | 416 | `result-track:982b51cd62b4cd8ec6ba7bbd79eae68fc4ed43d3acc3e311a41c2ec9038cc7c2` |
| 42 | `lemma` | [Icc_isBoundaryPoint_bot](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/icc-isboundarypoint-bot--391f6063b7217426f4cd43ef.md) | 420 | `result-track:391f6063b7217426f4cd43ef76e69030df7858669dc4af546e315b89ef6beca9` |
| 43 | `lemma` | [Icc_isBoundaryPoint_top](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/icc-isboundarypoint-top--a164a6ddcacc204af9a12e03.md) | 425 | `result-track:a164a6ddcacc204af9a12e03358b0ffbe105cf306064323fd64dda3b90c656fb` |
| 44 | `lemma` | [Icc_isInteriorPoint_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/icc-isinteriorpoint-interior--61242ddcd6034e443894ac90.md) | 430 | `result-track:61242ddcd6034e443894ac9093829adf8f9e4b78ffcd3d69eebe1d793111f098` |
| 45 | `lemma` | [boundary_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/boundary-icc--d918917162c3d45de58c91e1.md) | 436 | `result-track:d918917162c3d45de58c91e1fd9d56d6252aab9924b64e1ecb02fe70f5c883d2` |
| 46 | `lemma` | [boundary_product](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/boundary-product--bf75870f1adad70f3724f0e2.md) | 458 | `result-track:bf75870f1adad70f3724f0e220e25eb7b5ca9638775509470c3a7e0032dd2b4a` |
| 47 | `instance` | [instIsManifoldIcc](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/instismanifoldicc--5f7dc9cf760020803df9257c.md) | 463 | `declaration-track:5f7dc9cf760020803df9257cc5a3ed7aa46adc5d23c73f73f439123a3a383a9c` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/instance--19ab7f58e0fa8714a086d330.md) | 506 | `declaration-track:19ab7f58e0fa8714a086d3307953186c2e998adab72acaf9f0b5434b3500a29b` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variante37c1c8ae42495ce3ce410727047a863d9c9f50409b9607564e1a3edf1fc7b41.lean/declarations/instance--f0d04bf0eb6d4bfe5645a482.md) | 508 | `declaration-track:f0d04bf0eb6d4bfe5645a482b87a2cf4cdab3e325dbe0d06e5ccb91d09227a66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
