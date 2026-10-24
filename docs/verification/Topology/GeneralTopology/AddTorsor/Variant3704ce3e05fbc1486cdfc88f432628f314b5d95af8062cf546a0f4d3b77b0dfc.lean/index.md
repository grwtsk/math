# Verification target: GRWTSK.Topology.GeneralTopology.AddTorsor.Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbefa7f4db786f0b2c7e81fb826b6abf5e5b56e7",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbefa7f4db786f0b2c7e81fb826b6abf5e5b56e7`.

Source path: `GRWTSK/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Invertible` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.AddTorsor` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.RealVectorSpace` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AffineSubspace.isClosed_direction_iff](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/affinesubspace-isclosed-direction-iff--a2cf80905b4545da7ee1b818.md) | 35 | `result-track:a2cf80905b4545da7ee1b818894a4330cffb4213b9030e6495c1d97b0c2c504c` |
| 2 | `theorem` | [dist_center_homothety](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/dist-center-homothety--d79e1efae1a8c0896990a10e.md) | 43 | `result-track:d79e1efae1a8c0896990a10eca98fcf1ba6adf735fd693f8a69d695ab969bc4b` |
| 3 | `theorem` | [nndist_center_homothety](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/nndist-center-homothety--25052f87cc12b49b54145e68.md) | 48 | `result-track:25052f87cc12b49b54145e686c4ff1a121b776dc02ca6543545f1f4b8f206764` |
| 4 | `theorem` | [dist_homothety_center](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/dist-homothety-center--f9dd2dfd8735129c49cfcc93.md) | 53 | `result-track:f9dd2dfd8735129c49cfcc93d1af1694b9b5b0ca9591a081ed938635692d8d37` |
| 5 | `theorem` | [nndist_homothety_center](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/nndist-homothety-center--f9fcd86428697566634f6b7d.md) | 57 | `result-track:f9fcd86428697566634f6b7d23334aa8810bc4a769c8724f97d4ad8c317aaa86` |
| 6 | `theorem` | [dist_lineMap_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/dist-linemap-linemap--0ae236b959e125378c2aff2b.md) | 62 | `result-track:0ae236b959e125378c2aff2bb2c545647e7244d22dd340ca45ed0f12d7c63d8c` |
| 7 | `theorem` | [nndist_lineMap_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/nndist-linemap-linemap--14d7b4fb7d07d693b65cd73a.md) | 69 | `result-track:14d7b4fb7d07d693b65cd73a5799656f9c3f9925626a287fa1a518d50eb59330` |
| 8 | `theorem` | [lipschitzWith_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/lipschitzwith-linemap--ebade6a6adb491dff10fdbd4.md) | 73 | `result-track:ebade6a6adb491dff10fdbd4b8c27a9b7d6915b9860299117bead0a1a5eaca38` |
| 9 | `theorem` | [dist_lineMap_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/dist-linemap-left--4b32b38f1083b20242d42298.md) | 78 | `result-track:4b32b38f1083b20242d422988e405862f66e06ac1f0a4cb373ae0475c1949fe2` |
| 10 | `theorem` | [nndist_lineMap_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/nndist-linemap-left--065ebd9edd6d9aa44a64a705.md) | 82 | `result-track:065ebd9edd6d9aa44a64a7053fc00bfef1a0ff98e11ccdfa506d671a3acff041` |
| 11 | `theorem` | [dist_left_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/dist-left-linemap--eb44d95c107294529153f87f.md) | 87 | `result-track:eb44d95c107294529153f87f17202ada2226511f6cfbe787a1da5156aa9705c3` |
| 12 | `theorem` | [nndist_left_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/nndist-left-linemap--6be4968e3c33824ac0e743c6.md) | 91 | `result-track:6be4968e3c33824ac0e743c636f19a7942e316cf96a6b74826bc9fc5fee5f526` |
| 13 | `theorem` | [dist_lineMap_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/dist-linemap-right--e442c3e1039ec5ffb6a75bf2.md) | 96 | `result-track:e442c3e1039ec5ffb6a75bf27ba8e03e931d35d52db91b08a35dcdf5029c722c` |
| 14 | `theorem` | [nndist_lineMap_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/nndist-linemap-right--98f81545dcf409c963c4b5b0.md) | 101 | `result-track:98f81545dcf409c963c4b5b04f3a13345468aceed7da5be57c1d043dc0176020` |
| 15 | `theorem` | [dist_right_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/dist-right-linemap--bd329f6cdb78c73c74343318.md) | 106 | `result-track:bd329f6cdb78c73c74343318399bf095b0d70e730ac0062776ee8df9f404fb24` |
| 16 | `theorem` | [nndist_right_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/nndist-right-linemap--032c8f9be8a72c7c13efef4b.md) | 110 | `result-track:032c8f9be8a72c7c13efef4b059ddb0b6bd472a2c93776bbac1e8a8e6ce8781f` |
| 17 | `theorem` | [dist_homothety_self](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/dist-homothety-self--d1a15973e97a1c1a03cf8fcb.md) | 115 | `result-track:d1a15973e97a1c1a03cf8fcbf0032cbb665f0ef8881dbe3e00be185361806f5f` |
| 18 | `theorem` | [nndist_homothety_self](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/nndist-homothety-self--7aee8bb2564ae90b231287cd.md) | 120 | `result-track:7aee8bb2564ae90b231287cd587f531ff97ce4542c45fd8985e679adc7d93108` |
| 19 | `theorem` | [dist_self_homothety](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/dist-self-homothety--fd6b5b2a929a0e45706d88ef.md) | 125 | `result-track:fd6b5b2a929a0e45706d88efea1b5b88ffce13832586ca7f8948d3e0d8c1bb72` |
| 20 | `theorem` | [nndist_self_homothety](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/nndist-self-homothety--ed2b47f4d6a42c9870630ade.md) | 129 | `result-track:ed2b47f4d6a42c9870630ade7c89f322c90798ecfb2e237c0c7c11624a88d218` |
| 21 | `theorem` | [dist_left_midpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/dist-left-midpoint--4b9859903aaa6ab1112b0ea8.md) | 138 | `result-track:4b9859903aaa6ab1112b0ea86b755658826f683b07ef5247e58dea6fbf536812` |
| 22 | `theorem` | [nndist_left_midpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/nndist-left-midpoint--f104f799ca3e1a0adf31550e.md) | 142 | `result-track:f104f799ca3e1a0adf31550e3795c7e6a336a82b58ce16824b5dadc91bf77196` |
| 23 | `theorem` | [dist_midpoint_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/dist-midpoint-left--02a7acb509bd153a9d0e5902.md) | 147 | `result-track:02a7acb509bd153a9d0e590230eff8d7ff7a8715876a1c42010d1a2739811e10` |
| 24 | `theorem` | [nndist_midpoint_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/nndist-midpoint-left--9b0ff57b68aaa59f2bb7284d.md) | 151 | `result-track:9b0ff57b68aaa59f2bb7284d8f1e223dfa0b41c304c247c5f3d668c73e63257a` |
| 25 | `theorem` | [dist_midpoint_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/dist-midpoint-right--2d2750bab655f6cbf0ca7569.md) | 156 | `result-track:2d2750bab655f6cbf0ca75697d2721f0b341f015f022d7fb13e586e0c0cbbf3c` |
| 26 | `theorem` | [nndist_midpoint_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/nndist-midpoint-right--5e312527492353f51169abab.md) | 161 | `result-track:5e312527492353f51169abab72dcdca179b37fe2bb7dadec440cb9e657c5c92a` |
| 27 | `theorem` | [dist_right_midpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/dist-right-midpoint--3131312fa7525cdd552083ae.md) | 166 | `result-track:3131312fa7525cdd552083aecb3e5087c256423c7be88e6f56eb5ae932316ad2` |
| 28 | `theorem` | [nndist_right_midpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/nndist-right-midpoint--5f0461eb56c029c8dc4d8309.md) | 171 | `result-track:5f0461eb56c029c8dc4d8309762645da2f9ac894252d27de1a2751c0180791fe` |
| 29 | `theorem` | [dist_left_midpoint_eq_dist_right_midpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/dist-left-midpoint-eq-dist-right-midpoint--441e4cf33229e6606377fea5.md) | 176 | `result-track:441e4cf33229e6606377fea57908b831aacfd95195d6ca801558e57c762af97a` |
| 30 | `theorem` | [dist_midpoint_midpoint_le'](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/dist-midpoint-midpoint-le--d88e80b7aa7026308f9db0b5.md) | 180 | `result-track:d88e80b7aa7026308f9db0b5161779ea8c4aa7ff4573758c3f12085dd8d8034c` |
| 31 | `theorem` | [nndist_midpoint_midpoint_le'](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/nndist-midpoint-midpoint-le--1fec0d76806f065d84d7b1a6.md) | 186 | `result-track:1fec0d76806f065d84d7b1a6ca71e8410532a15756ddea9e75da8123d73d69ae` |
| 32 | `theorem` | [dist_pointReflection_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/dist-pointreflection-left--e7cde33a1d5f805129e7b150.md) | 192 | `result-track:e7cde33a1d5f805129e7b150868dbc2eda47df4b239bfd387894e38e821665c3` |
| 33 | `theorem` | [dist_left_pointReflection](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/dist-left-pointreflection--93b4372b60eae76e9ec8bea8.md) | 196 | `result-track:93b4372b60eae76e9ec8bea806b7c6317a74d53fae55c4b2d4bd8241b37cebdf` |
| 34 | `theorem` | [dist_pointReflection_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/dist-pointreflection-right--e0309e7076512d29b52e1518.md) | 201 | `result-track:e0309e7076512d29b52e15180823410e27f8c5e3d604fb440df1f833d4c0be47` |
| 35 | `theorem` | [dist_right_pointReflection](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/dist-right-pointreflection--722e2d2102f2f842ba02822e.md) | 207 | `result-track:722e2d2102f2f842ba02822ebdbcc815a36200465cab3fcdabd81c6e956409d6` |
| 36 | `theorem` | [antilipschitzWith_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/antilipschitzwith-linemap--a883696f5bd9f58d05850a89.md) | 211 | `result-track:a883696f5bd9f58d05850a8966a422585f4158de804cf4a5025f87711faed646` |
| 37 | `theorem` | [eventually_homothety_mem_of_mem_interior](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/eventually-homothety-mem-of-mem-interior--fe9a7ed3f0299815b74595c9.md) | 219 | `result-track:fe9a7ed3f0299815b74595c9ecd8b1c3636f2f2c3054e46ace54dab951fa8dfc` |
| 38 | `theorem` | [eventually_homothety_image_subset_of_finite_subset_interior](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/eventually-homothety-image-subset-of-finite-subset-interior--899552282824423c02b18f10.md) | 232 | `result-track:899552282824423c02b18f10090596d3d4611864fea6b1991a460b683a17ab73` |
| 39 | `theorem` | [dist_midpoint_midpoint_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/dist-midpoint-midpoint-le--4666198a227ba9dc23e96ef8.md) | 244 | `result-track:4666198a227ba9dc23e96ef8676e6580fe1165f97062e1e86185913fa4090df1` |
| 40 | `theorem` | [nndist_midpoint_midpoint_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/nndist-midpoint-midpoint-le--a6868de8a473cc3b01ace334.md) | 248 | `result-track:a6868de8a473cc3b01ace3347f614eca963855404858fdd40feeeda8dac1df2c` |
| 41 | `def` | [AffineMap.ofMapMidpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/affinemap-ofmapmidpoint--223fd154466e9cbf51359e22.md) | 254 | `declaration-track:223fd154466e9cbf51359e2221744d4d9cebde71fc02cc6bc503e7780d9b0336` |
| 42 | `def` | [DilationEquiv.smulTorsor](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/dilationequiv-smultorsor--16d1cf3289d87f77f57f5b65.md) | 276 | `declaration-track:16d1cf3289d87f77f57f5b65735c1a396ab98aa7d7acc09974b1b8a18dc90d6a` |
| 43 | `lemma` | [DilationEquiv.smulTorsor_ratio](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/dilationequiv-smultorsor-ratio--6f9834622030d4b8fc4052a4.md) | 286 | `result-track:6f9834622030d4b8fc4052a48db191aae1c5c832d02408f5499483be85565f43` |
| 44 | `lemma` | [DilationEquiv.smulTorsor_preimage_ball](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/declarations/dilationequiv-smultorsor-preimage-ball--9f9ae2904c472d8002960771.md) | 291 | `result-track:9f9ae2904c472d8002960771fdb4ba534d2b744e448294bf6f231b10bbd5bb5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
