# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e198cc52fcd833609da2e36010a31a4ca2098fe2",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e198cc52fcd833609da2e36010a31a4ca2098fe2`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TopologicalSpace.ofClosed](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/topologicalspace-ofclosed--6aa46a1e3e6375607657c9cb.md) | 52 | `declaration-track:6aa46a1e3e6375607657c9cba6cfce30c0813f8e3945edad0f16bea78a859554` |
| 2 | `lemma` | [isOpen_mk](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isopen-mk--921237a3064411e5c39cf395.md) | 66 | `result-track:921237a3064411e5c39cf395808082e8e39a91779c5819ef0d6d567ca9db2a48` |
| 3 | `theorem` | [TopologicalSpace.ext](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/topologicalspace-ext--1d6b85b741dab8f1c1cf902a.md) | 69 | `result-track:1d6b85b741dab8f1c1cf902a3442e55363ca821a90d4304ac775d54056ae9790` |
| 4 | `theorem` | [TopologicalSpace.ext_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/topologicalspace-ext-iff--3c8cf94bd34f85ff216da6da.md) | 73 | `result-track:3c8cf94bd34f85ff216da6da7b0c6eb47e505e588e175f7a2170a0455f408d9c` |
| 5 | `theorem` | [isOpen_fold](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isopen-fold--a0b6d59ea568b62550b19ef9.md) | 77 | `result-track:a0b6d59ea568b62550b19ef9634fb8155939025b400fa9ef3393e4ba3449125d` |
| 6 | `theorem` | [isOpen_iUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isopen-iunion--718df39b762c5130eb5eb010.md) | 82 | `result-track:718df39b762c5130eb5eb010d99f9542f08e66263e90ee3b902acbca074f8868` |
| 7 | `theorem` | [isOpen_biUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isopen-biunion--1ab3255ce50c51820de6f439.md) | 85 | `result-track:1ab3255ce50c51820de6f4396e73f75cfb63e7411f3b2167016017a21b536d36` |
| 8 | `theorem` | [IsOpen.union](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isopen-union--181eb201437ae1b156517c30.md) | 89 | `result-track:181eb201437ae1b156517c307065f33e262ddd4d504efd7ad6f37d08eb5f6898` |
| 9 | `lemma` | [isOpen_iff_of_cover](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isopen-iff-of-cover--c375be7f993b3ed781297d7c.md) | 92 | `result-track:c375be7f993b3ed781297d7c38a963527f556f1181307327ee6cca5352316c46` |
| 10 | `theorem` | [isOpen_empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isopen-empty--3671a9842a74a7752ea6dfe1.md) | 98 | `result-track:3671a9842a74a7752ea6dfe11a29b7f1ee4c61ad84f82eb2d329f17f20c40992` |
| 11 | `theorem` | [Set.Finite.isOpen_sInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/set-finite-isopen-sinter--b4a496f28ccd97623aa818d3.md) | 101 | `result-track:b4a496f28ccd97623aa818d3a3d72caac2996aab51e1033c1d2d51b563044915` |
| 12 | `theorem` | [Set.Finite.isOpen_biInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/set-finite-isopen-biinter--c9cdd4fc1e55858cceff0080.md) | 109 | `result-track:c9cdd4fc1e55858cceff0080f3a086eac2166f906483201d40613ec2a860bd8b` |
| 13 | `theorem` | [isOpen_iInter_of_finite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isopen-iinter-of-finite--2e4a0d2274b34ab5cde3ee3e.md) | 114 | `result-track:2e4a0d2274b34ab5cde3ee3e59ca990fed94b4435b0c72c6b903d56493b288c9` |
| 14 | `lemma` | [IsOpen.iInter_of_finite_ne_univ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isopen-iinter-of-finite-ne-univ--719f9c1178f9c1d8023db866.md) | 118 | `result-track:719f9c1178f9c1d8023db86614980d3b92365662afc4ddcf38951eab20876f78` |
| 15 | `theorem` | [isOpen_biInter_finset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isopen-biinter-finset--5f704b08830a7eb43019a820.md) | 122 | `result-track:5f704b08830a7eb43019a82099e6d10bf091be784592527f2898ae8d36effc46` |
| 16 | `theorem` | [isOpen_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isopen-const--9da37675b19f61a7585f392e.md) | 127 | `result-track:9da37675b19f61a7585f392ef6a43e68f842ab66b49b48822a53a9363a7f0ca9` |
| 17 | `theorem` | [IsOpen.and](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isopen-and--81b7ba74e422fcbabcf9c8f4.md) | 129 | `result-track:81b7ba74e422fcbabcf9c8f40b083aeef29001a11a1cfd6a87fbec0d8d923b03` |
| 18 | `theorem` | [isOpen_compl_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isopen-compl-iff--083e1e47a29867c313126623.md) | 132 | `result-track:083e1e47a29867c313126623c0a8eecd42326d4c0e3ebc46a0dd41bc99694032` |
| 19 | `theorem` | [TopologicalSpace.ext_iff_isClosed](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/topologicalspace-ext-iff-isclosed--def85d70cccf433cfbd821ef.md) | 135 | `result-track:def85d70cccf433cfbd821ef7298e7ce615c8dee345f1bd9f9a70602ad9ff2d6` |
| 20 | `theorem` | [isClosed_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isclosed-const--acfcb75e21d210077700bfa6.md) | 142 | `result-track:acfcb75e21d210077700bfa66e43281682af51704d21ba86a69cb15c77d3991c` |
| 21 | `theorem` | [isClosed_empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isclosed-empty--d3eb6425d3a67467e80226ad.md) | 145 | `result-track:d3eb6425d3a67467e80226add00f9d205b9bdc107d9a2fedc99b4730501c5a12` |
| 22 | `theorem` | [isClosed_univ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isclosed-univ--8852c5dbe316d1ada65a0dab.md) | 148 | `result-track:8852c5dbe316d1ada65a0dabf7725c4315466d71d085fafe3191363700dc62a7` |
| 23 | `lemma` | [IsOpen.isLocallyClosed](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isopen-islocallyclosed--98dd7c26bce5622b2a9e8401.md) | 151 | `result-track:98dd7c26bce5622b2a9e84018e26f4bb4a493ce681bf7e6cbb319dbd79c1b24d` |
| 24 | `lemma` | [IsClosed.isLocallyClosed](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isclosed-islocallyclosed--f1e5130a84eb3b167ef7c80d.md) | 155 | `result-track:f1e5130a84eb3b167ef7c80d49c3afcf1f2f36cb198975848113e66579dc99a8` |
| 25 | `theorem` | [IsClosed.union](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isclosed-union--59e3c1cc0b7a159b6f860a2d.md) | 159 | `result-track:59e3c1cc0b7a159b6f860a2d8481d3d5d5ea9aad7b8e08b9b917ae87cda45707` |
| 26 | `theorem` | [isClosed_sInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isclosed-sinter--b90df13f18543b557d95999f.md) | 163 | `result-track:b90df13f18543b557d95999fb9f7249b58dbaf3bced386d874838b13cebc0f4d` |
| 27 | `theorem` | [isClosed_iInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isclosed-iinter--e464c8041cb02f30a5ccdcac.md) | 167 | `result-track:e464c8041cb02f30a5ccdcacfbba500f1535ae63514d11486ec23e3484b83515` |
| 28 | `theorem` | [isClosed_biInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isclosed-biinter--125f64eaced5c41f096459da.md) | 170 | `result-track:125f64eaced5c41f096459dacdeaacb569f32ef2399303cc459f843cb7d36f0d` |
| 29 | `theorem` | [isClosed_compl_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isclosed-compl-iff--a20ce98ce4173b84971fe0af.md) | 175 | `result-track:a20ce98ce4173b84971fe0af4ab69f747ce42efb8ebcf9c8da391a4b79922dc4` |
| 30 | `theorem` | [IsOpen.sdiff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isopen-sdiff--d713b08787392756a135b616.md) | 180 | `result-track:d713b08787392756a135b616cf8d42b48bc001c6a88c192f2ef08849f0bb4c73` |
| 31 | `theorem` | [IsClosed.inter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isclosed-inter--823868ecf62b9db526a4824f.md) | 184 | `result-track:823868ecf62b9db526a4824f66cca6cf19275c36ba241bdd4a6a2fa0d9ceb240` |
| 32 | `theorem` | [IsClosed.sdiff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isclosed-sdiff--73dcfa8524af3a4446342647.md) | 190 | `result-track:73dcfa8524af3a44463426470a99c182991aa7b8275bbe3c54bfe8d880b8c43a` |
| 33 | `theorem` | [Set.Finite.isClosed_biUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/set-finite-isclosed-biunion--faefa98f31790bf46e5e7980.md) | 193 | `result-track:faefa98f31790bf46e5e79807b95b97aaddf5708db39607344940eb21224f999` |
| 34 | `lemma` | [Set.Finite.isClosed_sUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/set-finite-isclosed-sunion--ef45dba19f8d6abac7611725.md) | 199 | `result-track:ef45dba19f8d6abac76117257c15e6b33632dd46dbfc856be6942ec337180927` |
| 35 | `lemma` | [isClosed_biUnion_finset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isclosed-biunion-finset--eb23b7ef747ef4592994b61c.md) | 203 | `result-track:eb23b7ef747ef4592994b61ce38b4becc48bfcea186ef3bec2153557fc00ae40` |
| 36 | `theorem` | [isClosed_iUnion_of_finite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isclosed-iunion-of-finite--6a80d002163508a48462d4ee.md) | 208 | `result-track:6a80d002163508a48462d4ee40ac7b24aebec23dc14555e5445f697c33920a83` |
| 37 | `lemma` | [IsClosed.iUnion_of_finite_nonempty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isclosed-iunion-of-finite-nonempty--304a81cb466da7229b0a79b8.md) | 213 | `result-track:304a81cb466da7229b0a79b892e984efd65d335e4e2b821ff60b48afc02f3e9b` |
| 38 | `theorem` | [isClosed_imp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isclosed-imp--d43613e8e2f02176690fa2fb.md) | 218 | `result-track:d43613e8e2f02176690fa2fbf78eabff3d17f6587e530ed1357c0d934695f7a0` |
| 39 | `theorem` | [IsClosed.not](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isclosed-not--2bbeb10f25314a60e474762c.md) | 222 | `result-track:2bbeb10f25314a60e474762c5cb94196230e0671dfd85d5bcb9a8e58bd1ff83c` |
| 40 | `theorem` | [IsClosed.and](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/isclosed-and--feb623e2c5eff002e9025705.md) | 226 | `result-track:feb623e2c5eff002e9025705d99c93a534fd5bf0e3d34b1f4c5929267b7e2507` |
| 41 | `theorem` | [le_nhds_lim](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/le-nhds-lim--abbc22e51a48b4bb5c693277.md) | 246 | `result-track:abbc22e51a48b4bb5c6932774530dea40a68ac7bda64a52060941eaa0a8c73f6` |
| 42 | `theorem` | [tendsto_nhds_limUnder](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/tendsto-nhds-limunder--adf792a367e2a5546afa39ee.md) | 253 | `result-track:adf792a367e2a5546afa39ee6a04f4fed4cb2c51897aa9d52f3de0bc1f95b97d` |
| 43 | `theorem` | [limUnder_of_not_tendsto](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantb49c580700fb1b650b4f15befcc8bf25004f26ad4555ed628f6aeaf900f8a83c.lean/declarations/limunder-of-not-tendsto--ea0976ece6ec3ef1dc8b4b0c.md) | 257 | `result-track:ea0976ece6ec3ef1dc8b4b0c0f32ac7cb89abdfded812bfb51f029f54b24fe3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
