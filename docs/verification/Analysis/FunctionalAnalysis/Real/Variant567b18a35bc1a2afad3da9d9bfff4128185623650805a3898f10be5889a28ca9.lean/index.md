# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Real.Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0af108d554100e3e24777c0dfc2c6be8883cd523",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0af108d554100e3e24777c0dfc2c6be8883cd523`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.IsManifold.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.IsManifold.InteriorBoundary` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EuclideanHalfSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/euclideanhalfspace--7e1ce80f26229fbda4c69e3d.md) | 62 | `declaration-track:7e1ce80f26229fbda4c69e3d2a51f9e5e47ff559fd0626e7f899369d0bb18fd5` |
| 2 | `def` | [EuclideanQuadrant](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/euclideanquadrant--8ec2b5e8be70ceb334ef504e.md) | 69 | `declaration-track:8ec2b5e8be70ceb334ef504e647c7e9828c5204b5b71a5c849f33b7981b6ff0d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/instance--88da56f0e5f40dc8704e4f3a.md) | 79 | `declaration-track:88da56f0e5f40dc8704e4f3af49f3b8520df652abe4d7ea5050dbb7fe2666ba6` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/instance--d76dd064210b2e19baee74e8.md) | 82 | `declaration-track:d76dd064210b2e19baee74e854288aedafb2510f1b5f79a2b5cb6a1517eb2e55` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/instance--1f0aa6470a98e4e911d1c3ad.md) | 85 | `declaration-track:1f0aa6470a98e4e911d1c3ad77ed4c9d78e5a8c1695c46d414caf61c7f6fef15` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/instance--92c8dec70d55904cdfba4eec.md) | 88 | `declaration-track:92c8dec70d55904cdfba4eec525a165a90707321203666c5bd5e2dece818ab3b` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/instance--9f6f76367e1f52b5300475e0.md) | 91 | `declaration-track:9f6f76367e1f52b5300475e0f5e9ff2eec3929eb618773f455339ab35b4fbc28` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/instance--8f2014fb78ba0ebe77f3d18a.md) | 93 | `declaration-track:8f2014fb78ba0ebe77f3d18a95801677a34d4511275cf2e0eea0c1847a5cee20` |
| 9 | `theorem` | [EuclideanQuadrant.ext](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/euclideanquadrant-ext--7e253cfa29d81751d7ddadf0.md) | 96 | `result-track:7e253cfa29d81751d7ddadf0aca29d9ee8288afad89ceea6c972fcfdcbf5a671` |
| 10 | `theorem` | [EuclideanHalfSpace.ext](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/euclideanhalfspace-ext--45c392e90d4e56458e5a7332.md) | 100 | `result-track:45c392e90d4e56458e5a7332add268faa92c62d774edfe5b5b833aefc1d3e734` |
| 11 | `theorem` | [EuclideanHalfSpace.convex](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/euclideanhalfspace-convex--3cda9ef9fc40222dfa605b81.md) | 104 | `result-track:3cda9ef9fc40222dfa605b81a3d587e3381e886ba973f51430a86752bcb237a2` |
| 12 | `theorem` | [EuclideanQuadrant.convex](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/euclideanquadrant-convex--c26c8a2ae4b4682e823d02c4.md) | 108 | `result-track:c26c8a2ae4b4682e823d02c45c36e1f68183ef6e6ea48079d9ac74038b5dfd0c` |
| 13 | `instance` | [EuclideanHalfSpace.pathConnectedSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/euclideanhalfspace-pathconnectedspace--fe4ea89ab9891e4633362638.md) | 112 | `declaration-track:fe4ea89ab9891e4633362638ea64315e60d2cffa0dc399a32536e929f27d20d1` |
| 14 | `instance` | [EuclideanQuadrant.pathConnectedSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/euclideanquadrant-pathconnectedspace--c21785de85049db830b0c7bf.md) | 116 | `declaration-track:c21785de85049db830b0c7bfeae0b3493d1cfced6984b24f43006b1320e762cf` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/instance--84430b20fccf3f59ed1d96cf.md) | 119 | `declaration-track:84430b20fccf3f59ed1d96cf06ed1fa3d5c423b2f03a402d604f8fdf9508622e` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/instance--31796365ac7252139d936fcd.md) | 122 | `declaration-track:31796365ac7252139d936fcd05d664f38af08830267b106d9483e8c625b92992` |
| 17 | `theorem` | [range_euclideanHalfSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/range-euclideanhalfspace--2710e9981c87f614716cecc0.md) | 125 | `result-track:2710e9981c87f614716cecc0cfae2ce907f4caf5704e7227c6243bdcea82d8e3` |
| 18 | `theorem` | [interior_halfSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/interior-halfspace--692edb1881f31bc9ed508092.md) | 131 | `result-track:692edb1881f31bc9ed508092dcb926b7c71737455bee7b992b91224f89d8cbf6` |
| 19 | `theorem` | [closure_halfSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/closure-halfspace--39a9eb4f8e88c719074747bf.md) | 142 | `result-track:39a9eb4f8e88c719074747bfbe1117f3c4f41a267a0a7777ca1237ba2a774814` |
| 20 | `theorem` | [closure_open_halfSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/closure-open-halfspace--d77b1f3baef6c590276f63d7.md) | 153 | `result-track:d77b1f3baef6c590276f63d7ccf42b21ab462be5b37161e7ea8dfd4449dbb4cc` |
| 21 | `theorem` | [frontier_halfSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/frontier-halfspace--2cff496afa924e3dbf526ee9.md) | 164 | `result-track:2cff496afa924e3dbf526ee9ed2052b88ced83d187adb80235d314455eca000f` |
| 22 | `theorem` | [range_euclideanQuadrant](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/range-euclideanquadrant--47e54da6f2dbd8df3a239770.md) | 171 | `result-track:47e54da6f2dbd8df3a239770e0700da8beb34224eb8b7c129d33003ba6af7c30` |
| 23 | `def` | [modelWithCornersEuclideanHalfSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/modelwithcornerseuclideanhalfspace--d8b2a6278954aed9c62c66f7.md) | 181 | `declaration-track:d8b2a6278954aed9c62c66f750aa7aef9238289332bf26fd2e9d7e3919af3e8e` |
| 24 | `def` | [modelWithCornersEuclideanQuadrant](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/modelwithcornerseuclideanquadrant--7774207c2cd24d889f5e26e1.md) | 207 | `declaration-track:7774207c2cd24d889f5e26e18cbe32c48a63a4873f2db7b31204d24d9b0925f3` |
| 25 | `lemma` | [modelWithCornersEuclideanHalfSpace_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/modelwithcornerseuclideanhalfspace-zero--b0c19f821478dc33693b80dd.md) | 244 | `result-track:b0c19f821478dc33693b80ddc503851c0b27dac05ce0b6f580067ac4e5ac9dfd` |
| 26 | `lemma` | [range_modelWithCornersEuclideanHalfSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/range-modelwithcornerseuclideanhalfspace--de88e572d26d625461d3b62f.md) | 246 | `result-track:de88e572d26d625461d3b62f3e4ddec20ec870bce06f74ea7c4c782aa9506bc0` |
| 27 | `lemma` | [interior_range_modelWithCornersEuclideanHalfSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/interior-range-modelwithcornerseuclideanhalfspace--ec86bda1e8249881a588a823.md) | 249 | `result-track:ec86bda1e8249881a588a823655ca8281b91ee9a34eaa9dc0317e25f812fcedc` |
| 28 | `lemma` | [frontier_range_modelWithCornersEuclideanHalfSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/frontier-range-modelwithcornerseuclideanhalfspace--e23a99c2b8987acb81f6a361.md) | 257 | `result-track:e23a99c2b8987acb81f6a36104dabcf72b15df6ba390c3536dd53788cc61b5d6` |
| 29 | `def` | [IccLeftChart](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/iccleftchart--2bc308559d8c558695d038b4.md) | 268 | `declaration-track:2bc308559d8c558695d038b4595e10183a23d78f37f4b4cac037cd20f5f353a2` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/instance--32011716c7602cc1888a6b8f.md) | 316 | `declaration-track:32011716c7602cc1888a6b8fcef1cd5a0919008ab7b4d430bb20b6da81a23b24` |
| 31 | `lemma` | [IccLeftChart_extend_bot](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/iccleftchart-extend-bot--3105261e65fd31f2a8a556bb.md) | 322 | `result-track:3105261e65fd31f2a8a556bb8fe8722912cab047614cc0312a80facff1275987` |
| 32 | `lemma` | [iccLeftChart_extend_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/iccleftchart-extend-zero--7d6ab99794b6a29e829010ee.md) | 326 | `result-track:7d6ab99794b6a29e829010ee5e17ab098624227e3679f2c84131b68441d2b5a9` |
| 33 | `lemma` | [IccLeftChart_extend_interior_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/iccleftchart-extend-interior-pos--5523c528da115fcc2690fe12.md) | 329 | `result-track:5523c528da115fcc2690fe121aa7dc5b52cd87282e6859d077620d05d8d0dd1c` |
| 34 | `lemma` | [IccLeftChart_extend_bot_mem_frontier](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/iccleftchart-extend-bot-mem-frontier--3a3a1c1d6cbbc9202c19ed15.md) | 334 | `result-track:3a3a1c1d6cbbc9202c19ed15babc48644bef5f7d238a7231c098362635c389a4` |
| 35 | `def` | [IccRightChart](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/iccrightchart--cf06545a1d001609f62b186f.md) | 342 | `declaration-track:cf06545a1d001609f62b186f3260c5a15903d409b5bc95ace3486d3fca83846b` |
| 36 | `lemma` | [IccRightChart_extend_top](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/iccrightchart-extend-top--af05697e59cae716a3d9de8a.md) | 387 | `result-track:af05697e59cae716a3d9de8a2fc51b9ef45dfd41c5673fad65365dc6a4136e3b` |
| 37 | `lemma` | [IccRightChart_extend_top_mem_frontier](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/iccrightchart-extend-top-mem-frontier--bb35ad9323aa2eed593f8259.md) | 392 | `result-track:bb35ad9323aa2eed593f825904e9c2a3393aa16764f36fe35ad8890963eb3241` |
| 38 | `instance` | [instIccChartedSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/insticcchartedspace--8fbb3c0bb0a1192b18b353b9.md) | 403 | `declaration-track:8fbb3c0bb0a1192b18b353b9f06f92ce417c5b46b8858412ad275fd2faeb7d7d` |
| 39 | `lemma` | [Icc_chartedSpaceChartAt](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/icc-chartedspacechartat--45a3ec0bb86b394ac8a9d2e8.md) | 417 | `result-track:45a3ec0bb86b394ac8a9d2e8962b6243fb68ec60d6777460cf4a7024dc1ae00c` |
| 40 | `lemma` | [Icc_chartedSpaceChartAt_of_le_top](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/icc-chartedspacechartat-of-le-top--798754b318cf2218a68b03a6.md) | 420 | `result-track:798754b318cf2218a68b03a67ff7cc550015e556106044a9c9a52569e2f649a8` |
| 41 | `lemma` | [Icc_chartedSpaceChartAt_of_top_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/icc-chartedspacechartat-of-top-le--da7467f52229b77fca5baf49.md) | 424 | `result-track:da7467f52229b77fca5baf49a196f146346a0ae3e5ecf56fc7f52184ead9b8f8` |
| 42 | `lemma` | [Icc_isBoundaryPoint_bot](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/icc-isboundarypoint-bot--51af1de661848f4410f5e35c.md) | 428 | `result-track:51af1de661848f4410f5e35ce4dcad03d7f448b4c83f8b513c4f3669114199ce` |
| 43 | `lemma` | [Icc_isBoundaryPoint_top](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/icc-isboundarypoint-top--cce7d9547d6c6ca8db119905.md) | 433 | `result-track:cce7d9547d6c6ca8db1199055cd09b5c68a4201b4aa62f7fc11fcd51f05aa709` |
| 44 | `lemma` | [Icc_isInteriorPoint_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/icc-isinteriorpoint-interior--f801b4b268aca7a61d0ceaee.md) | 438 | `result-track:f801b4b268aca7a61d0ceaeea435d5ffd89de74ee5bba88978439d3b27f7806a` |
| 45 | `lemma` | [boundary_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/boundary-icc--c270b16e5cb6d8335c34ff9d.md) | 444 | `result-track:c270b16e5cb6d8335c34ff9d70abcc27065397e75c4e0c7fcec2cbe7a16d5102` |
| 46 | `lemma` | [boundary_product](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/boundary-product--8d0dc617e6f784b8a7624a2d.md) | 466 | `result-track:8d0dc617e6f784b8a7624a2d813b72f557cb8eab8cacce952834d2dc6db9b644` |
| 47 | `instance` | [instIsManifoldIcc](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/instismanifoldicc--12d49e3640780d17a3a21359.md) | 471 | `declaration-track:12d49e3640780d17a3a213598cb0f1d066d1fbc808cbd0fb549522efa3a23cfb` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/instance--c906349faf0c7767a1200920.md) | 514 | `declaration-track:c906349faf0c7767a1200920a2a5a08f75c3bdff4aa55b52fe61cfbce5933e84` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/declarations/instance--bbef09bb6a5a0701ae951c4a.md) | 516 | `declaration-track:bbef09bb6a5a0701ae951c4a2924e98df733bf2b01d9be98bf52debe148234e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
