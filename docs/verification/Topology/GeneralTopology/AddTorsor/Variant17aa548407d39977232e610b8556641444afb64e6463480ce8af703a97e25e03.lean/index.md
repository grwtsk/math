# Verification target: GRWTSK.Topology.GeneralTopology.AddTorsor.Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21ccb400c54654e31a4f0dec9fb542e75ac00747",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21ccb400c54654e31a4f0dec9fb542e75ac00747`.

Source path: `GRWTSK/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.AffineSubspace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Midpoint` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NormedAddTorsor](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/normedaddtorsor--145d9a10eca1abae5f6a82e7.md) | 33 | `declaration-track:145d9a10eca1abae5f6a82e7c31cd2eafcfe3be4fdac7bd31c0a20bc4ea3798a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/instance--895c23241ba026180a15f307.md) | 39 | `declaration-track:895c23241ba026180a15f3079dcb975b911bb41014e7782eb024b709c11c5bbb` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/instance--62d55d6e610c172e383fb19d.md) | 47 | `declaration-track:62d55d6e610c172e383fb19d8adfb8b3632e4d07b2265ef18c5b3cb3ba021c1a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/instance--36a0d7c02326e73e54be5258.md) | 54 | `declaration-track:36a0d7c02326e73e54be5258a493778ddda3109933862961876475398656eee2` |
| 5 | `instance` | [AffineSubspace.toNormedAddTorsor](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/affinesubspace-tonormedaddtorsor--2afe78382b83ea19fa9491d3.md) | 60 | `declaration-track:2afe78382b83ea19fa9491d3ed3ff4d23d7b952603cd868b035d0aba9bce51f9` |
| 6 | `theorem` | [dist_eq_norm_vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/dist-eq-norm-vsub--d2007a2e4711bef092280398.md) | 73 | `result-track:d2007a2e4711bef09228039882a6bac520d7be300ce49ca081a450a77f55820d` |
| 7 | `theorem` | [nndist_eq_nnnorm_vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/nndist-eq-nnnorm-vsub--10dbbf269e24c0d185743e31.md) | 77 | `result-track:10dbbf269e24c0d185743e314cd7e3029b9c9b3a60530efc73210239fd2b7074` |
| 8 | `theorem` | [dist_eq_norm_vsub'](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/dist-eq-norm-vsub--d17660dde6ce0c481d2fbc76.md) | 85 | `result-track:d17660dde6ce0c481d2fbc762987ae592e5b6e6255452ccb34b263f6c340334c` |
| 9 | `theorem` | [nndist_eq_nnnorm_vsub'](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/nndist-eq-nnnorm-vsub--7486340466e082f11db01cbb.md) | 89 | `result-track:7486340466e082f11db01cbbd1e0491e695f53ccf5d9cebc3666f57b96414336` |
| 10 | `theorem` | [dist_vadd_cancel_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/dist-vadd-cancel-left--691a8da050809a3f52a16f7c.md) | 95 | `result-track:691a8da050809a3f52a16f7c95773c680e9833f79be3fafd5ba1f9cb9fac893c` |
| 11 | `theorem` | [nndist_vadd_cancel_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/nndist-vadd-cancel-left--c72d4e1363f45af2656764c6.md) | 100 | `result-track:c72d4e1363f45af2656764c673de961f1068e813e6bf7a4a5ebce53c9f409acb` |
| 12 | `theorem` | [dist_vadd_cancel_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/dist-vadd-cancel-right--f117e5e7b2a3ed3ef1b2108a.md) | 104 | `result-track:f117e5e7b2a3ed3ef1b2108a38acead7e6ddfdd7a44d07aa625fdf173d1d9762` |
| 13 | `theorem` | [nndist_vadd_cancel_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/nndist-vadd-cancel-right--bc8deed65675895245af81ce.md) | 109 | `result-track:bc8deed65675895245af81ceff06caddac3739b44166a65c1f4951bbca44cff4` |
| 14 | `theorem` | [dist_vadd_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/dist-vadd-left--f462bffe4b6e7579fb1aceaf.md) | 114 | `result-track:f462bffe4b6e7579fb1aceafbf9e85753ac5cd45b7a632a39b18fc432b552e50` |
| 15 | `theorem` | [nndist_vadd_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/nndist-vadd-left--e71cb5a10f0da538563a4bcf.md) | 120 | `result-track:e71cb5a10f0da538563a4bcf6a2256a0b7b5d16de23f80dfa22348a130ef7e68` |
| 16 | `theorem` | [dist_vadd_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/dist-vadd-right--769d5015c449ac6d310ad098.md) | 125 | `result-track:769d5015c449ac6d310ad09826712c4ee8d4860dbca306c49b308ad40d379f0c` |
| 17 | `theorem` | [nndist_vadd_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/nndist-vadd-right--8f120318477e1140767993c5.md) | 129 | `result-track:8f120318477e1140767993c50c49e315accc9f18aa47ab69c19edaf8694c48ab` |
| 18 | `def` | [IsometryEquiv.vaddConst](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/isometryequiv-vaddconst--05e752dc28d01364a3b70acc.md) | 136 | `declaration-track:05e752dc28d01364a3b70acc1916ead0dec22e849804ccab88319ab7a43539d4` |
| 19 | `theorem` | [dist_vsub_cancel_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/dist-vsub-cancel-left--1019494a561cf747d0e31d60.md) | 142 | `result-track:1019494a561cf747d0e31d60a5445b3a219a8580db45054ad7f0c393971b9a34` |
| 20 | `theorem` | [nndist_vsub_cancel_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/nndist-vsub-cancel-left--403eb2ad7642becd34d983c3.md) | 148 | `result-track:403eb2ad7642becd34d983c32506e0fba438725d1aceeb8ee3900bc277833c1f` |
| 21 | `def` | [IsometryEquiv.constVSub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/isometryequiv-constvsub--483f2703c1f69175eebf931c.md) | 154 | `declaration-track:483f2703c1f69175eebf931c1d3d682cae1579d6f7424d3966b271de0deaecb1` |
| 22 | `theorem` | [dist_vsub_cancel_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/dist-vsub-cancel-right--e089451b08d835a05aee9389.md) | 160 | `result-track:e089451b08d835a05aee9389fe334b9359000ff36a012b2ec7aac76c3fbccdb9` |
| 23 | `theorem` | [nndist_vsub_cancel_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/nndist-vsub-cancel-right--a4d98c259e990748c66b5915.md) | 165 | `result-track:a4d98c259e990748c66b59157f555a314622b3d30a1426cdf08e27dfcfbc9871` |
| 24 | `theorem` | [dist_vadd_vadd_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/dist-vadd-vadd-le--b2373165bae56e22dce47a6d.md) | 169 | `result-track:b2373165bae56e22dce47a6deaea947828d7d88d5c660618b3e0ea651f82c478` |
| 25 | `theorem` | [nndist_vadd_vadd_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/nndist-vadd-vadd-le--9dbe0ec5d2a5dbba29c4d339.md) | 175 | `result-track:9dbe0ec5d2a5dbba29c4d33903c38386b2fc2f84649a83deb66117433c442394` |
| 26 | `theorem` | [dist_vsub_vsub_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/dist-vsub-vsub-le--11fd6d187c6271634879a011.md) | 180 | `result-track:11fd6d187c6271634879a01121a6e7b2c4500fb563c0cd8ce64ec1d1abe25721` |
| 27 | `theorem` | [nndist_vsub_vsub_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/nndist-vsub-vsub-le--690462a210e5a2d88a6fb2a0.md) | 186 | `result-track:690462a210e5a2d88a6fb2a0b9179fe666f7eff2f0ed7e9db2473161c0a59209` |
| 28 | `theorem` | [edist_vadd_vadd_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/edist-vadd-vadd-le--51d599775299426480380696.md) | 192 | `result-track:51d5997752994264803806962cad18658bd83aef5302d405f10791bc30055343` |
| 29 | `theorem` | [edist_vsub_vsub_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/edist-vsub-vsub-le--643d2c58b4b5f740116251f1.md) | 199 | `result-track:643d2c58b4b5f740116251f12246450f463e1a9121c340f3fd99e5e1c58a9316` |
| 30 | `def` | [pseudoMetricSpaceOfNormedAddCommGroupOfAddTorsor](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/pseudometricspaceofnormedaddcommgroupofaddtorsor--4c8f02f3182e88c1960d925c.md) | 208 | `declaration-track:4c8f02f3182e88c1960d925c523fd080346a452f1fe3d7e7c97a73d46eb251a1` |
| 31 | `def` | [metricSpaceOfNormedAddCommGroupOfAddTorsor](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/metricspaceofnormedaddcommgroupofaddtorsor--26b1baba457ffb97e91b328b.md) | 223 | `declaration-track:26b1baba457ffb97e91b328b7a10cc4dddeda7db81b4bc857cfd1512f29ff474` |
| 32 | `theorem` | [LipschitzWith.vadd](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/lipschitzwith-vadd--c8715e0ad2b58eaf3a39280e.md) | 236 | `result-track:c8715e0ad2b58eaf3a39280e10fa4a05a118ff4aeb85affdd5e630d891901803` |
| 33 | `theorem` | [LipschitzWith.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/lipschitzwith-vsub--da4830ae399ad99b692c8c81.md) | 246 | `result-track:da4830ae399ad99b692c8c810d05dd63a62c66225e014c1fab861246b63d3840` |
| 34 | `theorem` | [uniformContinuous_vadd](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/uniformcontinuous-vadd--3568809a611148e5e46b6e66.md) | 256 | `result-track:3568809a611148e5e46b6e6610d35f6872898e9fe71e9e01d89fe121a56a3eca` |
| 35 | `theorem` | [uniformContinuous_vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/uniformcontinuous-vsub--a509bd268fd804c900fbbead.md) | 260 | `result-track:a509bd268fd804c900fbbeadecce8334d9e43822ecf0c1aba11342c3f03c78b4` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/instance--727ab5d1e4ca1bb6943836d2.md) | 264 | `declaration-track:727ab5d1e4ca1bb6943836d2a494b143cfb2a4548241055a337b2877d46ed116` |
| 37 | `theorem` | [continuous_vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/continuous-vsub--27a19d04eae2585e756bab59.md) | 268 | `result-track:27a19d04eae2585e756bab590b5c2862048d8f0002d92a7fd030a39cf2849207` |
| 38 | `theorem` | [Filter.Tendsto.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/filter-tendsto-vsub--6227121c06a99f95a74b77c7.md) | 272 | `result-track:6227121c06a99f95a74b77c73cc295fb2eb62e3919b3f4ecea6b3c383fca661a` |
| 39 | `theorem` | [Continuous.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/continuous-vsub--096efdaee56a66d38d04babc.md) | 281 | `result-track:096efdaee56a66d38d04babc1455675026de30435af8e76b01d1703485141e73` |
| 40 | `theorem` | [ContinuousAt.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/continuousat-vsub--042ef5a41b4edbec69508471.md) | 286 | `result-track:042ef5a41b4edbec6950847119911b5cf9a9ccce6612cee82241efc96cd8434e` |
| 41 | `theorem` | [ContinuousWithinAt.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/continuouswithinat-vsub--c56bdf31d62eb95f00b51fc7.md) | 292 | `result-track:c56bdf31d62eb95f00b51fc762da54a3e62583c8e1f76276a5ac8388c8fe3947` |
| 42 | `theorem` | [ContinuousOn.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/continuouson-vsub--c202a0dbf8727ed8884fa508.md) | 298 | `result-track:c202a0dbf8727ed8884fa50818c465ca3d2a5465eb4ac33a63cfda897fd2c2f4` |
| 43 | `theorem` | [Filter.Tendsto.lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/filter-tendsto-linemap--2dab77e18264a4d5927f545f.md) | 308 | `result-track:2dab77e18264a4d5927f545fcdc32cb2b527d4da57173f1f432b16f9d83447a8` |
| 44 | `theorem` | [Filter.Tendsto.midpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/filter-tendsto-midpoint--e127655c7a7f4463d489ebe4.md) | 314 | `result-track:e127655c7a7f4463d489ebe41fa6964d7c99a0cd39e1f8f487499409b196352c` |
| 45 | `theorem` | [IsClosed.vadd_right_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant17aa548407d39977232e610b8556641444afb64e6463480ce8af703a97e25e03.lean/declarations/isclosed-vadd-right-of-iscompact--35536017ccb4fdf6b6172a36.md) | 326 | `result-track:35536017ccb4fdf6b6172a36d89faf78985f648ef8ab48d1318daa0a5c11d3c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
