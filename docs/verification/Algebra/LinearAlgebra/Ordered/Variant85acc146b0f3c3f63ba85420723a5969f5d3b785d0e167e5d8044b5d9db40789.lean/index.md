# Verification target: GRWTSK.Algebra.LinearAlgebra.Ordered.Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25583bc201972a10df50d9c5476a5b8591b9a121",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25583bc201972a10df50d9c5476a5b8591b9a121`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Invertible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.MidpointZero` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Slope` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lineMap_mono_left](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/linemap-mono-left--58994dae4ba600686740b2b7.md) | 59 | `result-track:58994dae4ba600686740b2b7e79dc825c26a8e19991ab855529262f640603f58` |
| 2 | `theorem` | [lineMap_strict_mono_left](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/linemap-strict-mono-left--206fed775934e197ae403a89.md) | 64 | `result-track:206fed775934e197ae403a89c7338f40d73e4cee2def0a5c5b671a56e7100b46` |
| 3 | `theorem` | [lineMap_mono_right](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/linemap-mono-right--43a321b65177a4a98b0fe874.md) | 69 | `result-track:43a321b65177a4a98b0fe874ccb229d8ae1aad58dbb119e6a9b2fc49a9ccc0c7` |
| 4 | `theorem` | [lineMap_strict_mono_right](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/linemap-strict-mono-right--5788a8fed39ec7fc31b93fa0.md) | 74 | `result-track:5788a8fed39ec7fc31b93fa04fb5201d65504563f003e71061062a8f7d0c9a8d` |
| 5 | `theorem` | [lineMap_mono_endpoints](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/linemap-mono-endpoints--2c9f5250bda95456a7c82aef.md) | 79 | `result-track:2c9f5250bda95456a7c82aefd12b7a105833bd76b6448f9ee8fee5e1c5539410` |
| 6 | `theorem` | [lineMap_strict_mono_endpoints](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/linemap-strict-mono-endpoints--c53c174ff643e97cebcbb759.md) | 84 | `result-track:c53c174ff643e97cebcbb7595efa935e2c8c649588ae2ca092aedbd706ec22bd` |
| 7 | `theorem` | [lineMap_lt_lineMap_iff_of_lt](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/linemap-lt-linemap-iff-of-lt--83a2e0635bac7e8d0d683f56.md) | 90 | `result-track:83a2e0635bac7e8d0d683f56468140d81d8e74559e1347e57dce59cbd7ac1fe1` |
| 8 | `theorem` | [left_lt_lineMap_iff_lt](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/left-lt-linemap-iff-lt--a1697fee8df2a354321f6ec4.md) | 96 | `result-track:a1697fee8df2a354321f6ec4ba8f7cf79a2cd871cc957fe84a09c4253021ff3a` |
| 9 | `theorem` | [lineMap_lt_left_iff_lt](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/linemap-lt-left-iff-lt--fbec6171c383df482c7a687e.md) | 100 | `result-track:fbec6171c383df482c7a687e03707839015a28b30f8cba28b7d7bcb4e24ae3ec` |
| 10 | `theorem` | [lineMap_lt_right_iff_lt](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/linemap-lt-right-iff-lt--01891767f404340b122f1d89.md) | 104 | `result-track:01891767f404340b122f1d897dee5bdb6762af9fd15ae5ea826ce9eb2fd2e1de` |
| 11 | `theorem` | [right_lt_lineMap_iff_lt](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/right-lt-linemap-iff-lt--a4fd8d83407ceb0109cbf6d8.md) | 108 | `result-track:a4fd8d83407ceb0109cbf6d8404b84f60f3a6d51f7a78d5eb7f81a1db41a4e93` |
| 12 | `theorem` | [midpoint_le_midpoint](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/midpoint-le-midpoint--499f387982c12b4be275febe.md) | 119 | `result-track:499f387982c12b4be275febe151b95add9249ee12e600badbd87c65e5e71725e` |
| 13 | `theorem` | [lineMap_le_lineMap_iff_of_lt](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/linemap-le-linemap-iff-of-lt--24c853183e5785379672c3b9.md) | 135 | `result-track:24c853183e5785379672c3b9174cab4a96c75294f7dc4dde8a06edf4c0a6435b` |
| 14 | `theorem` | [left_le_lineMap_iff_le](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/left-le-linemap-iff-le--0c9c744e54c2e0ba860ef8df.md) | 141 | `result-track:0c9c744e54c2e0ba860ef8df45e3fe63e83e37f9a9b21b714c4acc2abc0c337a` |
| 15 | `theorem` | [left_le_midpoint](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/left-le-midpoint--50b645302586c3d8b9e3cde3.md) | 146 | `result-track:50b645302586c3d8b9e3cde35a2841068bf730162a87387c1d0409e99a532cb9` |
| 16 | `theorem` | [lineMap_le_left_iff_le](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/linemap-le-left-iff-le--e14056349cdf636a4e721315.md) | 150 | `result-track:e14056349cdf636a4e72131572159342eb211c4183d18866a72042085a41c96c` |
| 17 | `theorem` | [midpoint_le_left](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/midpoint-le-left--1d0eaaf45e3c34c81d1f9ffb.md) | 155 | `result-track:1d0eaaf45e3c34c81d1f9ffb669a8eae492590842e45e2218b3f549a702c93dd` |
| 18 | `theorem` | [lineMap_le_right_iff_le](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/linemap-le-right-iff-le--0a8c91cd78118308434fe7aa.md) | 159 | `result-track:0a8c91cd78118308434fe7aa56c238902e566b0c6a61107e4993b34b4e7748b5` |
| 19 | `theorem` | [midpoint_le_right](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/midpoint-le-right--023f53681c220a7640265c02.md) | 164 | `result-track:023f53681c220a7640265c025a29df5d4e401b783bd7a1e37e755baad9f3ac91` |
| 20 | `theorem` | [right_le_lineMap_iff_le](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/right-le-linemap-iff-le--bd720ecfff1641f91f375ed7.md) | 168 | `result-track:bd720ecfff1641f91f375ed70c0e3067de224ec531217b5b41505644314fd80a` |
| 21 | `theorem` | [right_le_midpoint](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/right-le-midpoint--93da59c74c07d4e2a5537442.md) | 173 | `result-track:93da59c74c07d4e2a5537442fee83169abe8d74e006ff0ea25f5ae30502d4e8b` |
| 22 | `theorem` | [map_le_lineMap_iff_slope_le_slope_left](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/map-le-linemap-iff-slope-le-slope-left--40a59911e5832d3d36ec8394.md) | 215 | `result-track:40a59911e5832d3d36ec839434fa9ff81d7fe5b8fe226a627dec3b06a9660c25` |
| 23 | `theorem` | [lineMap_le_map_iff_slope_le_slope_left](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/linemap-le-map-iff-slope-le-slope-left--64ebcbbd28906987dfa1834e.md) | 227 | `result-track:64ebcbbd28906987dfa1834e494775d5ab40a9fd6ae2c8f7b2688524f1b6f8df` |
| 24 | `theorem` | [map_lt_lineMap_iff_slope_lt_slope_left](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/map-lt-linemap-iff-slope-lt-slope-left--54cf429b631b0443a4ded314.md) | 234 | `result-track:54cf429b631b0443a4ded3140b734ca14b99ccb421390ae0b1a69407e7d70c41` |
| 25 | `theorem` | [lineMap_lt_map_iff_slope_lt_slope_left](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/linemap-lt-map-iff-slope-lt-slope-left--1fa33bc1ec17ea5f2887a91f.md) | 242 | `result-track:1fa33bc1ec17ea5f2887a91fe752bad10849bb2e72cc804f6aad03cb3d2258d8` |
| 26 | `theorem` | [map_le_lineMap_iff_slope_le_slope_right](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/map-le-linemap-iff-slope-le-slope-right--39e329f96aa17be581299f03.md) | 249 | `result-track:39e329f96aa17be581299f035e1eed1c061153cad519b7b005e71251966423e4` |
| 27 | `theorem` | [lineMap_le_map_iff_slope_le_slope_right](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/linemap-le-map-iff-slope-le-slope-right--083d2aa45da503e8ea339a44.md) | 261 | `result-track:083d2aa45da503e8ea339a4446bba9828054e594592b4fdf5284029f70ee8965` |
| 28 | `theorem` | [map_lt_lineMap_iff_slope_lt_slope_right](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/map-lt-linemap-iff-slope-lt-slope-right--9da884f0984bcada541cd949.md) | 268 | `result-track:9da884f0984bcada541cd94978efea76489cdc0aa195d2207bbf49047a654f38` |
| 29 | `theorem` | [lineMap_lt_map_iff_slope_lt_slope_right](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/linemap-lt-map-iff-slope-lt-slope-right--71d8b3d5c71d2e3a25ad82bc.md) | 276 | `result-track:71d8b3d5c71d2e3a25ad82bc40cd0f39c39aed9a648754f7e816940cf0bb4902` |
| 30 | `theorem` | [map_le_lineMap_iff_slope_le_slope](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/map-le-linemap-iff-slope-le-slope--0948d7c7aa361c9d689b4852.md) | 283 | `result-track:0948d7c7aa361c9d689b4852717fe3bb96ccb3810b55e624708def23e19e7e01` |
| 31 | `theorem` | [lineMap_le_map_iff_slope_le_slope](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/linemap-le-map-iff-slope-le-slope--2caed022f7090b7a9afa3457.md) | 291 | `result-track:2caed022f7090b7a9afa345777ee9b652a6b7ca9e92238ca2ac24e299de6f2ca` |
| 32 | `theorem` | [map_lt_lineMap_iff_slope_lt_slope](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/map-lt-linemap-iff-slope-lt-slope--94debb18bfe47c4cb0bcc646.md) | 298 | `result-track:94debb18bfe47c4cb0bcc646733b8a37a361bed2423fc45ca39974ca2858807e` |
| 33 | `theorem` | [lineMap_lt_map_iff_slope_lt_slope](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variant85acc146b0f3c3f63ba85420723a5969f5d3b785d0e167e5d8044b5d9db40789.lean/declarations/linemap-lt-map-iff-slope-lt-slope--977fbcfb68b081bb143f9448.md) | 306 | `result-track:977fbcfb68b081bb143f94487e55ec210f9d4c22a5c2b37d090d37efb1bfe3cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
