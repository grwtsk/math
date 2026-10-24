# Verification target: GRWTSK.Topology.GeneralTopology.AddTorsor.Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db3a19c733c15488d63d331280549defce5d16b8",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db3a19c733c15488d63d331280549defce5d16b8`.

Source path: `GRWTSK/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.AddTorsor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.MidpointZero` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.AffineSubspace` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.RealVectorSpace` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AffineSubspace.isClosed_direction_iff](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/affinesubspace-isclosed-direction-iff--7ad4b7f6208a4787484b5642.md) | 36 | `result-track:7ad4b7f6208a4787484b5642d4233a8895f2d24341f63af5ed62387187e0a337` |
| 2 | `theorem` | [dist_center_homothety](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/dist-center-homothety--e328f11608bc732778c2c8ce.md) | 45 | `result-track:e328f11608bc732778c2c8ce19cd595bbb650be3a628d43defc7061613793c7b` |
| 3 | `theorem` | [nndist_center_homothety](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/nndist-center-homothety--d41f6072be16d762e503663c.md) | 53 | `result-track:d41f6072be16d762e503663cd077ed95bc5558aa7164d316dcd9d494697cfa40` |
| 4 | `theorem` | [dist_homothety_center](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/dist-homothety-center--a95edc8f08d3073508ab6195.md) | 59 | `result-track:a95edc8f08d3073508ab6195dc27d36b804cf9d15732ba6d1f254255f9f03ad3` |
| 5 | `theorem` | [nndist_homothety_center](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/nndist-homothety-center--8ccb91a57e5d38b3b53c38ef.md) | 64 | `result-track:8ccb91a57e5d38b3b53c38effab3e71b7a8a6b2de13dfc3ada63ac464f9c0b9c` |
| 6 | `theorem` | [dist_lineMap_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/dist-linemap-linemap--1a874c9e7a90dfb166622d0b.md) | 70 | `result-track:1a874c9e7a90dfb166622d0bf8787c84be6fe77523e6b730ea282ff9f0d8d367` |
| 7 | `theorem` | [nndist_lineMap_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/nndist-linemap-linemap--dc907d70a875581e808f2023.md) | 80 | `result-track:dc907d70a875581e808f20234584701970bef8c7e8b2f88f09b3862dbfeedf27` |
| 8 | `theorem` | [lipschitzWith_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/lipschitzwith-linemap--c54d0a3c0d5fc62c908916ff.md) | 85 | `result-track:c54d0a3c0d5fc62c908916ffac20b85f7d4e61da11f52ce76952ce12f3a377f2` |
| 9 | `theorem` | [dist_lineMap_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/dist-linemap-left--f0e9168232700e1201b5b069.md) | 91 | `result-track:f0e9168232700e1201b5b069cb61d0a006e9d01518ab206fc6e79bd07956d19d` |
| 10 | `theorem` | [nndist_lineMap_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/nndist-linemap-left--7d722c0672970d20463bb545.md) | 98 | `result-track:7d722c0672970d20463bb5456f4e401d0baa19a6cb30f5dd7695460b4e5acbee` |
| 11 | `theorem` | [dist_left_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/dist-left-linemap--50b68ed5bf3e5eef95ac0b12.md) | 104 | `result-track:50b68ed5bf3e5eef95ac0b125a8c25a4b9f4391a974524b2543b0b11c485c173` |
| 12 | `theorem` | [nndist_left_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/nndist-left-linemap--28ec69b4b9098cb1267d3174.md) | 109 | `result-track:28ec69b4b9098cb1267d3174c11ebe6d6050f74dc0fa6ddcc3b42d508bb96c5f` |
| 13 | `theorem` | [dist_lineMap_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/dist-linemap-right--36c8faff3519b8b5bfbc74e9.md) | 115 | `result-track:36c8faff3519b8b5bfbc74e93bc4b916da74e022875c3dd1a97e6cf584c88734` |
| 14 | `theorem` | [nndist_lineMap_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/nndist-linemap-right--3ed824fec36b3b6193ca3325.md) | 123 | `result-track:3ed824fec36b3b6193ca33257b9ab9ab7d5b8210cba90a9a66b20f9d62a02601` |
| 15 | `theorem` | [dist_right_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/dist-right-linemap--316dd25939f1f982b9434bb5.md) | 129 | `result-track:316dd25939f1f982b9434bb55b93d8b309a4f8f4340bde74eeb0ebae8bda57b2` |
| 16 | `theorem` | [nndist_right_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/nndist-right-linemap--399fc676941c0ef41fb147c4.md) | 134 | `result-track:399fc676941c0ef41fb147c46edf6a77d9a3db2b6fc9ea7ed897612034baae09` |
| 17 | `theorem` | [dist_homothety_self](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/dist-homothety-self--c90a1621d7e4bb1cf3eb5e20.md) | 140 | `result-track:c90a1621d7e4bb1cf3eb5e201ac5df9a8bfae2e7fe6a1c04251e03689dd747b0` |
| 18 | `theorem` | [nndist_homothety_self](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/nndist-homothety-self--56b962aec958677a1d8ad8bd.md) | 146 | `result-track:56b962aec958677a1d8ad8bdd81b435ca0cb553e4c69f5174819b40ab6a1e6e2` |
| 19 | `theorem` | [dist_self_homothety](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/dist-self-homothety--df163723dd6bfcb97070f21f.md) | 152 | `result-track:df163723dd6bfcb97070f21f62ff616ba3c82696b3137d1c35f96b437703ac9d` |
| 20 | `theorem` | [nndist_self_homothety](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/nndist-self-homothety--81538fe56de1f6201d953cda.md) | 157 | `result-track:81538fe56de1f6201d953cda6b7eade42363ff5f84b043618131bdeffd1a856b` |
| 21 | `theorem` | [dist_left_midpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/dist-left-midpoint--920d11a773926b780bd325c9.md) | 167 | `result-track:920d11a773926b780bd325c9da5c52fed7056cc9e3011ebc08ba4037c4673012` |
| 22 | `theorem` | [nndist_left_midpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/nndist-left-midpoint--da2b89eb8c39cf13dcd08fef.md) | 172 | `result-track:da2b89eb8c39cf13dcd08feff9572a611fa9369c8784e468886b24c4e4c729b7` |
| 23 | `theorem` | [dist_midpoint_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/dist-midpoint-left--d9c0f613b69c4c89643caaa9.md) | 178 | `result-track:d9c0f613b69c4c89643caaa97b9539c447dfc4b462fb68c47eeab8d236dbab67` |
| 24 | `theorem` | [nndist_midpoint_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/nndist-midpoint-left--1089899245beb7a7f4acdd7e.md) | 183 | `result-track:1089899245beb7a7f4acdd7e7bbbe1f35ccd65400700bf12a9bb6010fa622e58` |
| 25 | `theorem` | [dist_midpoint_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/dist-midpoint-right--33e276944f81d9c4269169f0.md) | 189 | `result-track:33e276944f81d9c4269169f0ced02649126e5f4c57c22e0b634029e174471482` |
| 26 | `theorem` | [nndist_midpoint_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/nndist-midpoint-right--7822d17578dd18dfc4e8b443.md) | 195 | `result-track:7822d17578dd18dfc4e8b4430012de939bdc9364ba03ad1af64d3e4d6262477b` |
| 27 | `theorem` | [dist_right_midpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/dist-right-midpoint--f9f501a6fbc7893ec7a6184b.md) | 201 | `result-track:f9f501a6fbc7893ec7a6184b8f3e3bf5e3924bf8467ff6b3e12a9c0b1e713745` |
| 28 | `theorem` | [nndist_right_midpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/nndist-right-midpoint--f19752357ab81aafd0dcb3e3.md) | 207 | `result-track:f19752357ab81aafd0dcb3e359cebb0cf46631333eebfd0cfaf69cbaf6c1965b` |
| 29 | `theorem` | [dist_midpoint_midpoint_le'](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/dist-midpoint-midpoint-le--f213f89035b7b8c0d77244e3.md) | 212 | `result-track:f213f89035b7b8c0d77244e381e47b503f397d9f31b258a5615a54a321211ec1` |
| 30 | `theorem` | [nndist_midpoint_midpoint_le'](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/nndist-midpoint-midpoint-le--5ac09cb4e80c2072dc5012b3.md) | 220 | `result-track:5ac09cb4e80c2072dc5012b30507def4682e24413369f61e70b55bbb34db2701` |
| 31 | `theorem` | [dist_pointReflection_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/dist-pointreflection-left--10f9da3159ac88ae8f57971f.md) | 227 | `result-track:10f9da3159ac88ae8f57971fcdffec7abccb6500dd0101567dac37c366464fad` |
| 32 | `theorem` | [dist_left_pointReflection](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/dist-left-pointreflection--ded32e7143ec50d9a52314ac.md) | 231 | `result-track:ded32e7143ec50d9a52314ac2071994c91626f129548d7a11c43638198f7e5ee` |
| 33 | `theorem` | [dist_pointReflection_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/dist-pointreflection-right--0e07759ca19b3d58b2da171f.md) | 235 | `result-track:0e07759ca19b3d58b2da171feac28be592a3c5d6ae490e3b0b47d97ad1323e33` |
| 34 | `theorem` | [dist_right_pointReflection](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/dist-right-pointreflection--a653e4252964d70fa2a83a1c.md) | 240 | `result-track:a653e4252964d70fa2a83a1cc30a4959a00eb2244ccd661d9e1fed35e6a0a55b` |
| 35 | `theorem` | [antilipschitzWith_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/antilipschitzwith-linemap--ee1909e441bfb07c3d31807f.md) | 244 | `result-track:ee1909e441bfb07c3d31807faef033b602be42462a772383ae74b5446dd21cf8` |
| 36 | `theorem` | [eventually_homothety_mem_of_mem_interior](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/eventually-homothety-mem-of-mem-interior--42c35e4755276c195cc8e52d.md) | 253 | `result-track:42c35e4755276c195cc8e52d7d883123306c23570efdb8258e131ed60ee89c60` |
| 37 | `theorem` | [eventually_homothety_image_subset_of_finite_subset_interior](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/eventually-homothety-image-subset-of-finite-subset-interior--1cd1919ae515357922da5ce9.md) | 267 | `result-track:1cd1919ae515357922da5ce9f16f148baaf74f67c087f7f5e1551408e6accd61` |
| 38 | `theorem` | [dist_midpoint_midpoint_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/dist-midpoint-midpoint-le--73766a2595b93ac1629cd0e0.md) | 280 | `result-track:73766a2595b93ac1629cd0e09d09f1969c067b5ac2ad23d9ff93c521bd06dcd1` |
| 39 | `theorem` | [nndist_midpoint_midpoint_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/nndist-midpoint-midpoint-le--ac62a597aed45f7af012e27e.md) | 288 | `result-track:ac62a597aed45f7af012e27ea4b4213b04c665371a2ca44f8437a93629f3446d` |
| 40 | `def` | [AffineMap.ofMapMidpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant22daffa456a2e7ed877ed24c523218c9fad2ccedca992b98f80d88782216a0cc.lean/declarations/affinemap-ofmapmidpoint--85f9d69a85ea48874455c21e.md) | 295 | `declaration-track:85f9d69a85ea48874455c21eca0928a201c9e585958c70ca9167f56cdd52693c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
