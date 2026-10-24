# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Topology.Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "435c9301d3198f6b2385ddf09a19b65e380863f6",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `435c9301d3198f6b2385ddf09a19b65e380863f6`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Combination` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Strict` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.PathConnected` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Affine` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Real.convex_iff_isPreconnected](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/real-convex-iff-ispreconnected--18a59d35ee08b3e285b06b8d.md) | 31 | `result-track:18a59d35ee08b3e285b06b8d2f3dd7615e76f7b25442a84d78606a61e91d38e8` |
| 2 | `theorem` | [stdSimplex_subset_closedBall](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/stdsimplex-subset-closedball--fea53d641f5d977aed583243.md) | 46 | `result-track:fea53d641f5d977aed5832438bed7cf36d07cb123b93141aeed77852c807e92a` |
| 3 | `theorem` | [bounded_stdSimplex](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/bounded-stdsimplex--17b103b180a1ba9084d7d6a1.md) | 57 | `result-track:17b103b180a1ba9084d7d6a124a94cc2999bf60a476aac09a90a7d082c28dfda` |
| 4 | `theorem` | [isClosed_stdSimplex](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/isclosed-stdsimplex--9b51da5344624a958beb6997.md) | 62 | `result-track:9b51da5344624a958beb6997741e4399f4b898d49063470404446aedca129223` |
| 5 | `theorem` | [isCompact_stdSimplex](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/iscompact-stdsimplex--3a675682518b609006920612.md) | 69 | `result-track:3a675682518b6090069206124cbe560179c9c98b702e3dfaeb9cdd360150b7c6` |
| 6 | `theorem` | [segment_subset_closure_openSegment](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/segment-subset-closure-opensegment--ce748d80417ad97dd96128d2.md) | 84 | `result-track:ce748d80417ad97dd96128d2300e9526dd2328a297a393f99bd809158fd311c8` |
| 7 | `theorem` | [closure_openSegment](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/closure-opensegment--1b3f5dd6bfb8609907b463f9.md) | 98 | `result-track:1b3f5dd6bfb8609907b463f9e3d5c5845a5cb92cac869560bf71df33043a5376` |
| 8 | `theorem` | [Convex.combo_interior_closure_subset_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-combo-interior-closure-subset-interior--d444095c82fdf8286a6cff91.md) | 114 | `result-track:d444095c82fdf8286a6cff913aa3e21ca605f2992d43dd77bfc6d34c218d94ef` |
| 9 | `theorem` | [Convex.combo_interior_self_subset_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-combo-interior-self-subset-interior--2dab76d458f2cfd18111aae5.md) | 128 | `result-track:2dab76d458f2cfd18111aae5cad3aefcac38b42496b6390460618aa9087e2a97` |
| 10 | `theorem` | [Convex.combo_closure_interior_subset_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-combo-closure-interior-subset-interior--3a9eb697e167729b5656aa91.md) | 139 | `result-track:3a9eb697e167729b5656aa916603f41099991cbce1ba2f4ef913f57cbae115c6` |
| 11 | `theorem` | [Convex.combo_self_interior_subset_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-combo-self-interior-subset-interior--a3f15c5320958d830f91d452.md) | 147 | `result-track:a3f15c5320958d830f91d45230c48a8e8ea3fb65cbfe8600e4659e582a1b5cc9` |
| 12 | `theorem` | [Convex.combo_interior_closure_mem_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-combo-interior-closure-mem-interior--311e87530792258522d85286.md) | 153 | `result-track:311e87530792258522d85286293894a0a64c9857cfbdb04c1ed29abcf5df5ac5` |
| 13 | `theorem` | [Convex.combo_interior_self_mem_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-combo-interior-self-mem-interior--fb1cfb41b317203981e32b5e.md) | 160 | `result-track:fb1cfb41b317203981e32b5e6320900c8a4fe43a2dbf18eef9c5de13d6d265e9` |
| 14 | `theorem` | [Convex.combo_closure_interior_mem_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-combo-closure-interior-mem-interior--1f875cd65d0966765ad2995e.md) | 166 | `result-track:1f875cd65d0966765ad2995ef6ece059538692e4dd2a863c46a8900f638765f2` |
| 15 | `theorem` | [Convex.combo_self_interior_mem_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-combo-self-interior-mem-interior--3902443e4dece17ed54b7565.md) | 173 | `result-track:3902443e4dece17ed54b756517d5c2030b29495b283e4b7e5939e737c8ffeb93` |
| 16 | `theorem` | [Convex.openSegment_interior_closure_subset_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-opensegment-interior-closure-subset-interior--56d87b77068960cc6e9add5b.md) | 179 | `result-track:56d87b77068960cc6e9add5b5058b9a96a8d37c760ca1239081e8a6b1fba6fd4` |
| 17 | `theorem` | [Convex.openSegment_interior_self_subset_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-opensegment-interior-self-subset-interior--ae9c462c9329912cf4439736.md) | 185 | `result-track:ae9c462c9329912cf44397364e62c3472c1181829706dad511f0cfa2490fd8ac` |
| 18 | `theorem` | [Convex.openSegment_closure_interior_subset_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-opensegment-closure-interior-subset-interior--7de1291ba67a98ca6538e4e6.md) | 190 | `result-track:7de1291ba67a98ca6538e4e68cf826bf0bb8af69fa35760a1ef4eaaa32a276ba` |
| 19 | `theorem` | [Convex.openSegment_self_interior_subset_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-opensegment-self-interior-subset-interior--cb9c936595d97cd36107fa51.md) | 196 | `result-track:cb9c936595d97cd36107fa514b1cf8e37515f5d605c4f0e603f0490578f8ff76` |
| 20 | `theorem` | [Convex.add_smul_sub_mem_interior'](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-add-smul-sub-mem-interior--e915a6fab1972dbe1e8c320a.md) | 203 | `result-track:e915a6fab1972dbe1e8c320a0fa47c4d7aa03097e846a2917e6a7bb9f1af3eea` |
| 21 | `theorem` | [Convex.add_smul_sub_mem_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-add-smul-sub-mem-interior--1d9a935234e364ae92f1aaeb.md) | 212 | `result-track:1d9a935234e364ae92f1aaeb58d94f9c365ac190c83076fc372ce148f1847d60` |
| 22 | `theorem` | [Convex.add_smul_mem_interior'](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-add-smul-mem-interior--62dd02628536950191864f22.md) | 218 | `result-track:62dd02628536950191864f228a48e15fad78dcff6c3b3caac1ee57f5da5496a3` |
| 23 | `theorem` | [Convex.add_smul_mem_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-add-smul-mem-interior--f600b17d7d67d95d2b3aefac.md) | 224 | `result-track:f600b17d7d67d95d2b3aefac37361a04558e6cf23cb135cd217184a3b6b12c24` |
| 24 | `theorem` | [Convex.interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-interior--0f344d2d9bc782a3e48a3d4e.md) | 230 | `result-track:0f344d2d9bc782a3e48a3d4e06a32354dce75dcae8eecd4dd2135fa66af9d106` |
| 25 | `theorem` | [Convex.closure](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-closure--df662d0f4f164b50a40eb6fc.md) | 236 | `result-track:df662d0f4f164b50a40eb6fc53f53d6bc7a39803a7dd4859bd7815a181e36c8f` |
| 26 | `theorem` | [Convex.strictConvex'](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-strictconvex--c3733934419ed4451f4d9e28.md) | 249 | `result-track:c3733934419ed4451f4d9e2834e6827bf867aa1a6131515cd8b2df3e9d808e5f` |
| 27 | `theorem` | [Convex.strictConvex](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-strictconvex--6cee3159c253a449d8bbc59b.md) | 267 | `result-track:6cee3159c253a449d8bbc59b789510f5b563b9683bb9221be9fc4290c131703f` |
| 28 | `theorem` | [Set.Finite.isCompact_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/set-finite-iscompact-convexhull--9b4f8cd2320a79e15f4bfbb2.md) | 285 | `result-track:9b4f8cd2320a79e15f4bfbb2fcd075a6aea26fb6a96342e60c28888225361cbe` |
| 29 | `theorem` | [Set.Finite.isClosed_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/set-finite-isclosed-convexhull--7b89aefea3b12bb893f8f5a3.md) | 294 | `result-track:7b89aefea3b12bb893f8f5a31c845dba4da87c235f535cb2fac91549e2592909` |
| 30 | `theorem` | [Convex.closure_subset_image_homothety_interior_of_one_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-closure-subset-image-homothety-interior-of-one-lt--600a3dad3dbc5a82e70c660b.md) | 305 | `result-track:600a3dad3dbc5a82e70c660b059897411289e3a97ba0c8a04251fe3f427136e1` |
| 31 | `theorem` | [Convex.closure_subset_interior_image_homothety_of_one_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-closure-subset-interior-image-homothety-of-one-lt--e2f59c5e9d654d1bbb408f2b.md) | 322 | `result-track:e2f59c5e9d654d1bbb408f2b4e2ee06276472a3d431c6e4bcd78dc69cdc68276` |
| 32 | `theorem` | [Convex.subset_interior_image_homothety_of_one_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-subset-interior-image-homothety-of-one-lt--7b46c26c0229aeb7d267eb1f.md) | 333 | `result-track:7b46c26c0229aeb7d267eb1f89ca9f1e4fc39a718bb1987eced574854c0bb804` |
| 33 | `theorem` | [JoinedIn_of_segment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/joinedin-of-segment-subset--5d6d673794eedd2abc0555c2.md) | 338 | `result-track:5d6d673794eedd2abc0555c2c924d59aa9ef82120f9c130096463146d1734335` |
| 34 | `theorem` | [Convex.isPathConnected](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-ispathconnected--da7dfdab3234a703804d1452.md) | 347 | `result-track:da7dfdab3234a703804d1452ebe8d5ef1c6681bece622a1f504a444242fb88df` |
| 35 | `theorem` | [Convex.isConnected](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-isconnected--98ebfe79da5abd48959ddef2.md) | 355 | `result-track:98ebfe79da5abd48959ddef26cf4ee8cb49d857521b98c1806aa4c0df2f2d757` |
| 36 | `theorem` | [Convex.isPreconnected](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/convex-ispreconnected--1aea7643e55c2b3d71ff005c.md) | 361 | `result-track:1aea7643e55c2b3d71ff005c768946180924d7a43edd03f2da053c3ec37059fc` |
| 37 | `theorem` | [TopologicalAddGroup.pathConnectedSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Topology/Variant1da86c530c2357011a5356eb14a2c1b4f236a23b1139277ace822e2d5a8760d0.lean/declarations/topologicaladdgroup-pathconnectedspace--73a720ea1fd2e00d59ef9efc.md) | 370 | `result-track:73a720ea1fd2e00d59ef9efca45d0fa589dc3cd14a1c7a6216234029cdbfde21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
