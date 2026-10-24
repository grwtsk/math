# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Stalk.Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb906440d71672d7656ff92a8e375534b3509a61",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb906440d71672d7656ff92a8e375534b3509a61`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.AffineScheme` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.Preimmersion` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsAffineOpen.fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/isaffineopen-fromspecstalk--a6ebb9daf25a0c656cef2276.md) | 36 | `declaration-track:a6ebb9daf25a0c656cef2276fefefe0b8f5191d55956e4cbca7e31dfc1963220` |
| 2 | `theorem` | [IsAffineOpen.fromSpecStalk_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/isaffineopen-fromspecstalk-eq--27bae52cd60a3f1a9f3ac3f1.md) | 45 | `result-track:27bae52cd60a3f1a9f3ac3f1be8759086ea36574d2cd194e0063527da7af075c` |
| 3 | `def` | [Scheme.fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/scheme-fromspecstalk--c9b5686540a4ea73c00e7051.md) | 64 | `declaration-track:c9b5686540a4ea73c00e7051b8fba3b785da64835be22b89efe84439376479c4` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/instance--684e4fa1386b3d7fe6b761d6.md) | 69 | `declaration-track:684e4fa1386b3d7fe6b761d65ae27dc5627e7ba9b29a30267cf8c9a3b23d0740` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/instance--2072269c672db52feaf5acfd.md) | 72 | `declaration-track:2072269c672db52feaf5acfd5aa8dcd2181f3b2eace019f7add0e9d606ddae16` |
| 6 | `theorem` | [IsAffineOpen.fromSpecStalk_eq_fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/isaffineopen-fromspecstalk-eq-fromspecstalk--624963aca106f892777abaf4.md) | 75 | `result-track:624963aca106f892777abaf456572344407d4079b284ec4a3aea77d284cff5e7` |
| 7 | `instance` | [IsAffineOpen.fromSpecStalk_isPreimmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/isaffineopen-fromspecstalk-ispreimmersion--30d7ce52c02db9870b79f9ae.md) | 78 | `declaration-track:30d7ce52c02db9870b79f9ae4921c89815c84b03cea87339c949cfe2d794ffb9` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/instance--bb0c45d055be247f6a731761.md) | 88 | `declaration-track:bb0c45d055be247f6a73176192c2d18ed3e17e5783de45e5cef40e0408c60129` |
| 9 | `lemma` | [IsAffineOpen.fromSpecStalk_closedPoint](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/isaffineopen-fromspecstalk-closedpoint--26639dc8277560945a820700.md) | 91 | `result-track:26639dc8277560945a8207001e63156623d9cbd938fe19e004fc4248326a14b7` |
| 10 | `lemma` | [fromSpecStalk_closedPoint](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/fromspecstalk-closedpoint--07c65d7215af977a21f817b4.md) | 100 | `result-track:07c65d7215af977a21f817b41500f3602a83c73476bf0765feaa3ef7f8f586c2` |
| 11 | `lemma` | [fromSpecStalk_app](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/fromspecstalk-app--f712dcc5a51b8bf1f6493394.md) | 104 | `result-track:f712dcc5a51b8bf1f64933943eec44a90a611f7bc820ec9c6064f19bbb0226fe` |
| 12 | `lemma` | [fromSpecStalk_appTop](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/fromspecstalk-apptop--0fa8e29309d462e35f4d573c.md) | 115 | `result-track:0fa8e29309d462e35f4d573c8e67b0334bb7535a601c800e76f42ff1b84ad379` |
| 13 | `lemma` | [Spec_map_stalkSpecializes_fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/spec-map-stalkspecializes-fromspecstalk--3d3d01e1b9069e09092d168d.md) | 123 | `result-track:3d3d01e1b9069e09092d168da0a2270a358a84418692ae8023d8feabba7fdf4a` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/instance--b7c6ab3c8d7fb7853d97dffe.md) | 132 | `declaration-track:b7c6ab3c8d7fb7853d97dffe16c47ed2919756238b562f09c457195ad86fa95c` |
| 15 | `lemma` | [Spec_map_stalkMap_fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/spec-map-stalkmap-fromspecstalk--333a5d02c7888d4a352ffb37.md) | 135 | `result-track:333a5d02c7888d4a352ffb37248f8fe499fd98a26ad5a71b14828c6acf282f6f` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/instance--abd95258a2ff4864949395bd.md) | 147 | `declaration-track:abd95258a2ff4864949395bd5eb4038e271b4325438f59f5e40e367703af1841` |
| 17 | `lemma` | [Spec_fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/spec-fromspecstalk--0e6cc48ac0b9761aa1d45a74.md) | 149 | `result-track:0e6cc48ac0b9761aa1d45a74f8875f1160f23395415594dc18248da371e02cd5` |
| 18 | `lemma` | [Spec_fromSpecStalk'](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/spec-fromspecstalk--09f207c946717fcfcf329966.md) | 158 | `result-track:09f207c946717fcfcf329966d00b832b32f3b376d4430d98fa06b1a9c6fdc885` |
| 19 | `lemma` | [range_fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/range-fromspecstalk--be3b54105352a84ebd0283c2.md) | 163 | `result-track:be3b54105352a84ebd0283c29ab7058bcbff5e9d660199f1e00ef3ff0a66c753` |
| 20 | `def` | [Opens.fromSpecStalkOfMem](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/opens-fromspecstalkofmem--16d4c3831151f8b287d6fcc3.md) | 177 | `declaration-track:16d4c3831151f8b287d6fcc3e1f0582637bed6adcd9b03afa8a494c134a3bfe3` |
| 21 | `lemma` | [Opens.fromSpecStalkOfMem_ι](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/opens-fromspecstalkofmem--cc223c5c25698b378f788ea0.md) | 182 | `result-track:cc223c5c25698b378f788ea000fa6f7f9b933736a38448b70e9d4eb80a492b19` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/instance--d33a59dcbd253ce889575904.md) | 187 | `declaration-track:d33a59dcbd253ce889575904379ccc16343834b7dce872fcae0173dcc9781277` |
| 23 | `lemma` | [fromSpecStalk_toSpecΓ](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/fromspecstalk-tospec--dfca60c0260f6f06e2418987.md) | 191 | `result-track:dfca60c0260f6f06e241898710004572beb8f67d27f654ed0bddfbd25d3b5552` |
| 24 | `lemma` | [Opens.fromSpecStalkOfMem_toSpecΓ](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/opens-fromspecstalkofmem-tospec--d375b9630da3ec1f31f4d230.md) | 198 | `result-track:d375b9630da3ec1f31f4d2301d502ef37c6bc789aed0bdede1a8392727244d7d` |
| 25 | `def` | [stalkClosedPointIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/stalkclosedpointiso--80e9595a20574da18b8a4ecd.md) | 219 | `declaration-track:80e9595a20574da18b8a4ecdc2d5549c93f0d4f12aabf912345eac9c535ec9b5` |
| 26 | `lemma` | [stalkClosedPointIso_inv](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/stalkclosedpointiso-inv--5893c08660205c69a673b225.md) | 224 | `result-track:5893c08660205c69a673b225e68a3941c519400c83f4b64ea74f0029af1c22dc` |
| 27 | `lemma` | [ΓSpecIso_hom_stalkClosedPointIso_inv](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/speciso-hom-stalkclosedpointiso-inv--608899e722e61251c5d1ba2c.md) | 229 | `result-track:608899e722e61251c5d1ba2c475a563fb0bd899440a3a8c27fb9c02d23587a5a` |
| 28 | `lemma` | [germ_stalkClosedPointIso_hom](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/germ-stalkclosedpointiso-hom--1ed5c4b3a402f2a708aba55f.md) | 236 | `result-track:1ed5c4b3a402f2a708aba55ff0ba0cfcf23a97b49c96dad20bf0296dd077d4cd` |
| 29 | `lemma` | [Spec_stalkClosedPointIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/spec-stalkclosedpointiso--503ec2c600e75ab4d040e6a8.md) | 241 | `result-track:503ec2c600e75ab4d040e6a89b121f2a0352a9eb999a0e800164647dded182c1` |
| 30 | `def` | [stalkClosedPointTo](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/stalkclosedpointto--71f714ee7932ff6bb200b9e9.md) | 260 | `declaration-track:71f714ee7932ff6bb200b9e9d748da0fc880d4791eb632f10ae93dcd02ffed1f` |
| 31 | `instance` | [isLocalHom_stalkClosedPointTo](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/islocalhom-stalkclosedpointto--f5de52d8bf098e8572f17756.md) | 264 | `declaration-track:f5de52d8bf098e8572f17756e32d093391c5b829274aba659064fc5c83512302` |
| 32 | `instance` | [isLocalHom_stalkClosedPointTo'](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/islocalhom-stalkclosedpointto--792bb738b79fea612421ff9b.md) | 272 | `declaration-track:792bb738b79fea612421ff9be686228cb0b9cca94ea0089e5eac80d89602d752` |
| 33 | `lemma` | [preimage_eq_top_of_closedPoint_mem](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/preimage-eq-top-of-closedpoint-mem--3dae8b3cdae3d2434c453332.md) | 277 | `result-track:3dae8b3cdae3d2434c4533320aa6d8493f30a30b24c4a2dacfdd8cd4bedfa1fb` |
| 34 | `lemma` | [stalkClosedPointTo_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/stalkclosedpointto-comp--784d23b8739eac97a6825438.md) | 281 | `result-track:784d23b8739eac97a6825438faa50e9a77d6e40599510e7c5510a96417d884cb` |
| 35 | `lemma` | [germ_stalkClosedPointTo_Spec](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/germ-stalkclosedpointto-spec--e7950345ba02e81bad06259b.md) | 286 | `result-track:e7950345ba02e81bad06259b712510ba26876907b8bcff66f87f8308fce556e3` |
| 36 | `lemma` | [germ_stalkClosedPointTo](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/germ-stalkclosedpointto--4330fd2bf3cbd5897bbc851d.md) | 295 | `result-track:4330fd2bf3cbd5897bbc851d9298ccafa778ad3517761154902d2ca4ff67415c` |
| 37 | `lemma` | [germ_stalkClosedPointTo_Spec_fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/germ-stalkclosedpointto-spec-fromspecstalk--bb784a70857fc3d7846734a7.md) | 306 | `result-track:bb784a70857fc3d7846734a759a17f993a2c7d1a53b6b945ca6a6a282e04b7a4` |
| 38 | `lemma` | [stalkClosedPointTo_fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/stalkclosedpointto-fromspecstalk--37906e38b68e97220f73673c.md) | 321 | `result-track:37906e38b68e97220f73673cd799f2b5e72bf3855f26cd0d898d28ee027b01ba` |
| 39 | `lemma` | [Spec_stalkClosedPointTo_fromSpecStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/spec-stalkclosedpointto-fromspecstalk--89141c914f36cddbd11d53fb.md) | 330 | `result-track:89141c914f36cddbd11d53fbc1372877d276220da07dec3307277362d578f1b1` |
| 40 | `lemma` | [SpecToEquivOfLocalRing_eq_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/spectoequivoflocalring-eq-iff--d3649f8848ef1457cfcd4626.md) | 350 | `result-track:d3649f8848ef1457cfcd46266b8fc7eb5024146149ee3388366ce78d1d115243` |
| 41 | `def` | [SpecToEquivOfLocalRing](../../../../../mathematics/Geometry/AlgebraicGeometry/Stalk/Variant39b05eff5d2aadb3a064f608384bc71107cd6fdbedd65535a7ca57037d3611a0.lean/declarations/spectoequivoflocalring--c04d72754a58f7c0f3212d94.md) | 369 | `declaration-track:c04d72754a58f7c0f3212d9490e44f574ec7dff6475ed15a6f9e99ab7af92944` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
