# Verification target: GRWTSK.Topology.GeneralTopology.AddTorsor.Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f79fe2d947aaf520bc31f54fa6cf4e9d8f112fe9",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f79fe2d947aaf520bc31f54fa6cf4e9d8f112fe9`.

Source path: `GRWTSK/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Submodule` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Midpoint` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.IsometricSMul` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Uniformity` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sequences` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NormedAddTorsor](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/normedaddtorsor--5167c81cf2cce583808275d4.md) | 34 | `declaration-track:5167c81cf2cce583808275d444502b5db0a5e0685d2bb6f0799105abed99d804` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/instance--92adadcb61de13add9d903ef.md) | 39 | `declaration-track:92adadcb61de13add9d903ef841d42d37e388d5504819830d407e02ffa506dc0` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/instance--e3f3105449864d20b334e0a9.md) | 46 | `declaration-track:e3f3105449864d20b334e0a9aa4976218f8d2fb144e26b84fa6f6266b5685318` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/instance--048ce2df4e8ab86741ca344a.md) | 51 | `declaration-track:048ce2df4e8ab86741ca344aa9ad73a6f7ed68da76c043a09f78fea1d727fc1d` |
| 5 | `instance` | [AffineSubspace.toNormedAddTorsor](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/affinesubspace-tonormedaddtorsor--580de69be7598a1d451c82df.md) | 56 | `declaration-track:580de69be7598a1d451c82df52fab4d955f43a34dbefcdfb1cb10f8795565ca9` |
| 6 | `theorem` | [dist_eq_norm_vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/dist-eq-norm-vsub--928680eab69358bc4d847ad6.md) | 68 | `result-track:928680eab69358bc4d847ad6c8899a9a999cbc53270d247207cc5c658c708c93` |
| 7 | `theorem` | [nndist_eq_nnnorm_vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/nndist-eq-nnnorm-vsub--f2f68a9a000d9088f1d161b9.md) | 71 | `result-track:f2f68a9a000d9088f1d161b9d7f6b444868f449fa56d8854ded4e8ffd49cd596` |
| 8 | `theorem` | [dist_eq_norm_vsub'](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/dist-eq-norm-vsub--a1c84d7306ffd341f5a5df39.md) | 78 | `result-track:a1c84d7306ffd341f5a5df3999f14ecaabcd79b593f72d98b50723dcf9bc39b7` |
| 9 | `theorem` | [nndist_eq_nnnorm_vsub'](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/nndist-eq-nnnorm-vsub--b951bef145ca00f8f7b36404.md) | 81 | `result-track:b951bef145ca00f8f7b364045a6486921ffeead2a6eac0f44dea48865acff770` |
| 10 | `theorem` | [dist_vadd_cancel_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/dist-vadd-cancel-left--2439b2de1983d8e658056523.md) | 86 | `result-track:2439b2de1983d8e65805652326a75002eaa4fe20ab91e41e5f01cf6e5961a342` |
| 11 | `theorem` | [nndist_vadd_cancel_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/nndist-vadd-cancel-left--ec6d646f620ced262e857363.md) | 89 | `result-track:ec6d646f620ced262e857363dd2b697b878cba508a99b459db7056f1df083453` |
| 12 | `theorem` | [dist_vadd_cancel_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/dist-vadd-cancel-right--2f215f0f791efae722a7f610.md) | 93 | `result-track:2f215f0f791efae722a7f610e597a80b04388e94c17084e665297dc811ce9391` |
| 13 | `theorem` | [nndist_vadd_cancel_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/nndist-vadd-cancel-right--c2da05e02de5fa08a336d2e6.md) | 97 | `result-track:c2da05e02de5fa08a336d2e621b56fdc335ec787dcc5e95c0b219461e02ca993` |
| 14 | `theorem` | [dist_vadd_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/dist-vadd-left--c64c7c5818f4bc6466239fe6.md) | 101 | `result-track:c64c7c5818f4bc6466239fe649a971266e4e81a7c2fe979c4e3a626c296cc72f` |
| 15 | `theorem` | [nndist_vadd_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/nndist-vadd-left--3aeeb896e60f0ace6b67abd9.md) | 105 | `result-track:3aeeb896e60f0ace6b67abd9de5a96706e4b1208757041cb652243a1ec475421` |
| 16 | `theorem` | [dist_vadd_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/dist-vadd-right--cdc395e11565fd026094bdd2.md) | 109 | `result-track:cdc395e11565fd026094bdd275963bb4e88b80be2ebcb24ad83662f1c0fa2f2e` |
| 17 | `theorem` | [nndist_vadd_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/nndist-vadd-right--7511d04204ee99d522322e6b.md) | 112 | `result-track:7511d04204ee99d522322e6bd14fa00f1c94be636d6734f34be37ad2338a727b` |
| 18 | `def` | [IsometryEquiv.vaddConst](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/isometryequiv-vaddconst--7e14b8aa4201763a09acc243.md) | 118 | `declaration-track:7e14b8aa4201763a09acc243de0b4ae0327ac2483135637c799ae7ebc53d0ea5` |
| 19 | `theorem` | [dist_vsub_cancel_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/dist-vsub-cancel-left--71232b0eb38c5f1a3fcbdfef.md) | 123 | `result-track:71232b0eb38c5f1a3fcbdfef0bf76baad597e31359e211bbddd7d27dde827a8a` |
| 20 | `theorem` | [nndist_vsub_cancel_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/nndist-vsub-cancel-left--c40057514bf5680b08f33a7d.md) | 127 | `result-track:c40057514bf5680b08f33a7d5b630b4a43381e3753d8eb5c0c1cc8b7b3596d08` |
| 21 | `def` | [IsometryEquiv.constVSub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/isometryequiv-constvsub--bd84e4bb5e7a972818bd6891.md) | 133 | `declaration-track:bd84e4bb5e7a972818bd6891f7d98d813d04ff56387afead4eb9ed0a9a9fb86d` |
| 22 | `theorem` | [dist_vsub_cancel_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/dist-vsub-cancel-right--dd94461b432bbd3bc3b02336.md) | 138 | `result-track:dd94461b432bbd3bc3b02336298cc11e4016aacb93af14c6eb0d8f411dbc0028` |
| 23 | `theorem` | [nndist_vsub_cancel_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/nndist-vsub-cancel-right--459dd6f166ea16ff6994509e.md) | 142 | `result-track:459dd6f166ea16ff6994509e43a17a5f268855410a11aca9d9451cb17d933c77` |
| 24 | `theorem` | [dist_vadd_vadd_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/dist-vadd-vadd-le--2150efd45b00bbb87f0ac769.md) | 145 | `result-track:2150efd45b00bbb87f0ac7696c702fc1001774351ff5c1a470828c6a28b7bef3` |
| 25 | `theorem` | [nndist_vadd_vadd_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/nndist-vadd-vadd-le--201d6c0f8a135976278c3cea.md) | 149 | `result-track:201d6c0f8a135976278c3cea446611711cc314eddbf862098e7b46ce28fb3d83` |
| 26 | `theorem` | [dist_vsub_vsub_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/dist-vsub-vsub-le--8c8b49e0746dbf98b0bfab7e.md) | 153 | `result-track:8c8b49e0746dbf98b0bfab7e544c1bdfb2e32a686fbd0e604fdbe41e709c884d` |
| 27 | `theorem` | [nndist_vsub_vsub_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/nndist-vsub-vsub-le--538b8b57feb4e89d712d5cdb.md) | 158 | `result-track:538b8b57feb4e89d712d5cdb34cbd940fae060d748e7e3f5d9b6a349c3cb384e` |
| 28 | `theorem` | [edist_vadd_vadd_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/edist-vadd-vadd-le--e2cbe79d3500743362733a7e.md) | 162 | `result-track:e2cbe79d3500743362733a7ef7bf40465583ff2275af9b44bfb8e3c913864ea6` |
| 29 | `theorem` | [edist_vsub_vsub_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/edist-vsub-vsub-le--fb6331dd0f6a9d13f84dedd1.md) | 168 | `result-track:fb6331dd0f6a9d13f84dedd123d4b523260f7e967c7c753acbdae65da9338a9f` |
| 30 | `def` | [pseudoMetricSpaceOfNormedAddCommGroupOfAddTorsor](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/pseudometricspaceofnormedaddcommgroupofaddtorsor--30bb2ed4ccd2f85e01ebb3da.md) | 176 | `declaration-track:30bb2ed4ccd2f85e01ebb3da0fa14795c45e0c824efedaeadfe4da0312a34003` |
| 31 | `def` | [metricSpaceOfNormedAddCommGroupOfAddTorsor](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/metricspaceofnormedaddcommgroupofaddtorsor--20e6f11025a04f0a6218c192.md) | 187 | `declaration-track:20e6f11025a04f0a6218c1921f4cbe53335923729d11543734bf9ebfbbbfe570` |
| 32 | `theorem` | [LipschitzWith.vadd](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/lipschitzwith-vadd--5aeea36b8a77f8bf22fc67d2.md) | 197 | `result-track:5aeea36b8a77f8bf22fc67d28289e387e393be7acd0b1df4e96ee95dc90aec2e` |
| 33 | `theorem` | [LipschitzWith.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/lipschitzwith-vsub--ee7960fc0652f2afc25bcfb3.md) | 206 | `result-track:ee7960fc0652f2afc25bcfb3635b2fd77800839ce86ffe956c34253655878302` |
| 34 | `theorem` | [uniformContinuous_vadd](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/uniformcontinuous-vadd--6473fb4f3ddd7f0ae8f54d35.md) | 215 | `result-track:6473fb4f3ddd7f0ae8f54d350d3e72be329bce318230d841e1745a639101c628` |
| 35 | `theorem` | [uniformContinuous_vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/uniformcontinuous-vsub--75994f1161a2183024cd56aa.md) | 218 | `result-track:75994f1161a2183024cd56aa31454780c55f2fac18a323641000e5d744fed4b6` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/instance--b67beafa5058aa86851d7216.md) | 221 | `declaration-track:b67beafa5058aa86851d7216932222dd8fa36d1e044b2dae35838ac6de484c44` |
| 37 | `theorem` | [continuous_vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/continuous-vsub--9026485b96016f4fdca856d9.md) | 224 | `result-track:9026485b96016f4fdca856d95a75af13477d729387a11cab31de433f81d9a738` |
| 38 | `theorem` | [Filter.Tendsto.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/filter-tendsto-vsub--4e3d3f9eb5a5a9dfdbe71502.md) | 227 | `result-track:4e3d3f9eb5a5a9dfdbe71502458b2a9c29c0df8cd400f8709204bf7bc0c12124` |
| 39 | `theorem` | [Continuous.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/continuous-vsub--30d0d03bf7ecb91d63775a97.md) | 236 | `result-track:30d0d03bf7ecb91d63775a976d5ab8d2af819d957caef1459099c5dd57c8839d` |
| 40 | `theorem` | [ContinuousAt.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/continuousat-vsub--305e7e68c43fd6c38311937b.md) | 241 | `result-track:305e7e68c43fd6c38311937b5df5733c0bd31b9296af7a5d275c00964d85a5a1` |
| 41 | `theorem` | [ContinuousWithinAt.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/continuouswithinat-vsub--fbe25f68527f61a755fc1cc4.md) | 247 | `result-track:fbe25f68527f61a755fc1cc40f2945660480c9565215163a93bc9ea3f3658098` |
| 42 | `theorem` | [ContinuousOn.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/continuouson-vsub--53cfefdd37c5f46851a318e4.md) | 253 | `result-track:53cfefdd37c5f46851a318e467c5551a6bb615cef531a990226244547ad42512` |
| 43 | `theorem` | [Filter.Tendsto.lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/filter-tendsto-linemap--572e58174d8e0df244613761.md) | 263 | `result-track:572e58174d8e0df244613761fd07b837d2db596914a7974443a8ecf580f1bc60` |
| 44 | `theorem` | [Filter.Tendsto.midpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/filter-tendsto-midpoint--7d64067108f7b3b2e73a86bf.md) | 268 | `result-track:7d64067108f7b3b2e73a86bfc0f43aae3d7b4eeeb3953731d5c9997a3a6c686d` |
| 45 | `theorem` | [IsClosed.vadd_right_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variante18d9eaec2cbaa09759a351f3b421824e46f2f1ada4a7b5c6574b1f39182d551.lean/declarations/isclosed-vadd-right-of-iscompact--61b2d052c85a54ab16eb4c51.md) | 279 | `result-track:61b2d052c85a54ab16eb4c51864922ffecb161be41a2239fb35e8e2370dd5762` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
