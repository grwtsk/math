# Verification target: GRWTSK.Geometry.ConvexGeometry.AbsConvex.Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44fbe20c5e022798256863825fa17f175e9d80db",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44fbe20c5e022798256863825fa17f175e9d80db`.

Source path: `GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.BalancedCoreHull` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.TotallyBounded` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AbsConvex](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvex--30960623b30a7b17e72ca061.md) | 67 | `declaration-track:30960623b30a7b17e72ca0615b80363ab2f0911bcb8eb6a824828f57937653c5` |
| 2 | `theorem` | [AbsConvex.empty](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvex-empty--148c9abe9aa7b5de43dd580e.md) | 71 | `result-track:148c9abe9aa7b5de43dd580e50e21bb671d2c5f94ee84ccf626fb0aacb3b0dfe` |
| 3 | `theorem` | [AbsConvex.univ](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvex-univ--137a8ad130f6c020481b89be.md) | 73 | `result-track:137a8ad130f6c020481b89bee9112697bd20cd2e4d5050983227266033d7503f` |
| 4 | `theorem` | [AbsConvex.inter](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvex-inter--929d2593c508c6b6d19f3cc4.md) | 75 | `result-track:929d2593c508c6b6d19f3cc4c111977d452ea43ace74aa67799abb3db2242af0` |
| 5 | `theorem` | [AbsConvex.sInter](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvex-sinter--8704081903520b013285c168.md) | 78 | `result-track:8704081903520b013285c16841278614b437aced3a100aea90b9731f7025f586` |
| 6 | `theorem` | [AbsConvex.iInter](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvex-iinter--b37d0fe971f0da1b970ba308.md) | 81 | `result-track:b37d0fe971f0da1b970ba3080f1d73c809be96245e48ea11318223a77c3bdce3` |
| 7 | `theorem` | [AbsConvex.iInter₂](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvex-iinter--961abf58980e8896ccf34a12.md) | 85 | `result-track:961abf58980e8896ccf34a12066983b78ed49187e5d16b484ffea194933d4791` |
| 8 | `def` | [absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvexhull--326acf090820bb60bdef538f.md) | 93 | `declaration-track:326acf090820bb60bdef538f735fd596c697feb489ee1a72c806b2567eb5b71c` |
| 9 | `theorem` | [subset_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/subset-absconvexhull--19e670bb702ded98fa6e87e1.md) | 98 | `result-track:19e670bb702ded98fa6e87e13510f96efb108b1d4feaecd12a5140911a4dc8a5` |
| 10 | `theorem` | [absConvex_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvex-absconvexhull--eb2ccc8445cffd6b17086d6e.md) | 101 | `result-track:eb2ccc8445cffd6b17086d6eba83a9fc41f1ca9933fe6ec53067f078e115b873` |
| 11 | `theorem` | [balanced_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/balanced-absconvexhull--3de0f687ec6897511179ad51.md) | 104 | `result-track:3de0f687ec6897511179ad51d3a6749bf7b53e3c28d29b9ebade7137863d5f52` |
| 12 | `theorem` | [convex_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/convex-absconvexhull--a6b6dbf5e874c59238be300a.md) | 107 | `result-track:a6b6dbf5e874c59238be300af12c9f47929653c67202ba09ca63e9e02b761846` |
| 13 | `theorem` | [absConvexHull_eq_iInter](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvexhull-eq-iinter--5eb228e3841b57fd13c60a90.md) | 111 | `result-track:5eb228e3841b57fd13c60a901c894882346b896a4496cc6c0998f4566a63c0be` |
| 14 | `theorem` | [mem_absConvexHull_iff](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/mem-absconvexhull-iff--0a1acad6814f669b6d6d6611.md) | 117 | `result-track:0a1acad6814f669b6d6d6611096b0e16bb043df3d157a03b079e4773644daf62` |
| 15 | `theorem` | [absConvexHull_min](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvexhull-min--dfbd6d0d2341053735db44aa.md) | 120 | `result-track:dfbd6d0d2341053735db44aaad38187e787070e509884699d84e79d6f9e16596` |
| 16 | `theorem` | [AbsConvex.absConvexHull_subset_iff](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvex-absconvexhull-subset-iff--2290f1f4fea8abffa08a5b39.md) | 123 | `result-track:2290f1f4fea8abffa08a5b391b22b33173816f4890cec8d6b8f2bd158c3f0adb` |
| 17 | `theorem` | [absConvexHull_mono](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvexhull-mono--ebb2e7209039515f6fb34a6d.md) | 127 | `result-track:ebb2e7209039515f6fb34a6df4c7fa8afbf60938371c0e2064457c42968231f4` |
| 18 | `lemma` | [absConvexHull_eq_self](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvexhull-eq-self--b0795f85eb95456f2c6e4db2.md) | 130 | `result-track:b0795f85eb95456f2c6e4db262ce77541d1feba93e2d16fbfeafdab141f714af` |
| 19 | `theorem` | [absConvexHull_univ](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvexhull-univ--da6994f2440c51b2ee3ad05d.md) | 136 | `result-track:da6994f2440c51b2ee3ad05d5ebf557939ac5d27a589bd8a5da4d670874a36f7` |
| 20 | `theorem` | [absConvexHull_empty](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvexhull-empty--7ad58b9a9691702f34b996d4.md) | 140 | `result-track:7ad58b9a9691702f34b996d43616de9d5d37ff12226b94b7f5d3a43a5bcccd5f` |
| 21 | `theorem` | [absConvexHull_eq_empty](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvexhull-eq-empty--aca2d2f7bd212a2b64d072be.md) | 144 | `result-track:aca2d2f7bd212a2b64d072be3e3b5678a17280a66adaefb9ce9cc090206ecade` |
| 22 | `theorem` | [absConvexHull_nonempty](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvexhull-nonempty--7f273f15fdd238c91f505a51.md) | 153 | `result-track:7f273f15fdd238c91f505a518a677124c514980646dbac0394f4e15c91a60a54` |
| 23 | `theorem` | [absConvex_closed_sInter](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvex-closed-sinter--eeb5342d8562fe2bc8f58471.md) | 161 | `result-track:eeb5342d8562fe2bc8f5847152a301f8bb6ffe4271882c0247d104149368790e` |
| 24 | `def` | [closedAbsConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/closedabsconvexhull--9f9a244fd83c0ebbada6d1d0.md) | 169 | `declaration-track:9f9a244fd83c0ebbada6d1d0fae29b4b99504d9e8a96319eb91ccbafb2d37f51` |
| 25 | `theorem` | [absConvex_convexClosedHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvex-convexclosedhull--1c3fbe911843479dfda3d6e2.md) | 172 | `result-track:1c3fbe911843479dfda3d6e2922cdc35f44067e0d1a8ce865935dc56d858b290` |
| 26 | `theorem` | [isClosed_closedAbsConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/isclosed-closedabsconvexhull--ecf9a380002681cdb9993b17.md) | 175 | `result-track:ecf9a380002681cdb9993b176b682da9e170c115e9871c83436d29753a89f5f8` |
| 27 | `theorem` | [subset_closedAbsConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/subset-closedabsconvexhull--dfecfd85100f8b90ad03c74a.md) | 178 | `result-track:dfecfd85100f8b90ad03c74a52913b0ef54b3ba639f331ee120943f4bd80dc53` |
| 28 | `theorem` | [closure_subset_closedAbsConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/closure-subset-closedabsconvexhull--cbdb407b1af5283a23cf4f17.md) | 181 | `result-track:cbdb407b1af5283a23cf4f1712607a480038fdbd57a5b172737bb037eb7f8ece` |
| 29 | `theorem` | [closedAbsConvexHull_min](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/closedabsconvexhull-min--d42c2da379155bd38bd73327.md) | 184 | `result-track:d42c2da379155bd38bd733270583ac4c3eaa03f82fa249646903077eb2a27fbf` |
| 30 | `theorem` | [absConvexHull_subset_closedAbsConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvexhull-subset-closedabsconvexhull--ef42e6988700773408573680.md) | 188 | `result-track:ef42e6988700773408573680ec90b333f34540f4291da737d95a197222993ca2` |
| 31 | `theorem` | [closedAbsConvexHull_closure_eq_closedAbsConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/closedabsconvexhull-closure-eq-closedabsconvexhull--2025eccce8016ad0a42c8134.md) | 193 | `result-track:2025eccce8016ad0a42c8134c85890556ef498c19e0b98ff2a38c16c80dc85c3` |
| 32 | `theorem` | [AbsConvex.closure](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvex-closure--7e0a53d82b99ecd03691b6a7.md) | 207 | `result-track:7e0a53d82b99ecd03691b6a761ee1a5583aa4cb514368026148a2e27b1265205` |
| 33 | `theorem` | [closedAbsConvexHull_eq_closure_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/closedabsconvexhull-eq-closure-absconvexhull--b534d640a4c257649cf68fe8.md) | 210 | `result-track:b534d640a4c257649cf68fe8f3f669addb32ab947ac21debb1392eb4a288e6f0` |
| 34 | `theorem` | [nhds_hasBasis_absConvex](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/nhds-hasbasis-absconvex--c3306af052ac0364529f2475.md) | 225 | `result-track:c3306af052ac0364529f2475f2711183edad3c5e7f5615468211440b15582b96` |
| 35 | `theorem` | [nhds_hasBasis_absConvex_open](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/nhds-hasbasis-absconvex-open--f40d2c35656bece8cff4a7cc.md) | 237 | `result-track:f40d2c35656bece8cff4a7ccc90e1bb00dd136230265b12bba2c57eeaed91044` |
| 36 | `theorem` | [absConvexHull_add_subset](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvexhull-add-subset--9f29b13534c50b3ffc93cfa5.md) | 255 | `result-track:9f29b13534c50b3ffc93cfa502cc2bf8763e56b6e686f4921f098e42dc5e6ddd` |
| 37 | `theorem` | [absConvexHull_eq_convexHull_balancedHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/absconvexhull-eq-convexhull-balancedhull--672cc382c07486a2c9f7685b.md) | 261 | `result-track:672cc382c07486a2c9f7685bdc30e354eabfa9a7e1e9a68ac4ab144623dac922` |
| 38 | `theorem` | [balancedHull_convexHull_subseteq_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/balancedhull-convexhull-subseteq-absconvexhull--209fc1bd8f3cc02f14977712.md) | 270 | `result-track:209fc1bd8f3cc02f14977712b0a7778ace841dd97c8dfcdbd344a4fb1227c2cc` |
| 39 | `lemma` | [balancedHull_subset_convexHull_union_neg](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/balancedhull-subset-convexhull-union-neg--efec45288cfdbd61d6fbe45d.md) | 281 | `result-track:efec45288cfdbd61d6fbe45d20147a8f8d61c840c303d4df665f6a97b926e719` |
| 40 | `theorem` | [convexHull_union_neg_eq_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/convexhull-union-neg-eq-absconvexhull--86e2a013fd7e794c000285e7.md) | 294 | `result-track:86e2a013fd7e794c000285e7faa0ba67e7e2b4143b7748d4414b434fc72d6df0` |
| 41 | `theorem` | [totallyBounded_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/totallybounded-absconvexhull--bb93c389b4974217b970cc90.md) | 308 | `result-track:bb93c389b4974217b970cc901266b3684d8a80a43b3e34dae9f3a8cfea56fcff` |
| 42 | `lemma` | [zero_mem_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant4c111b4e0e847a200a0a2c56e789cb45b8655be44870e7e00f5da63c5540a6b8.lean/declarations/zero-mem-absconvexhull--f0dcd00fbef9093174c215a7.md) | 317 | `result-track:f0dcd00fbef9093174c215a750ea34da0861d7195f1ac3435673fd848f8d8c26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
