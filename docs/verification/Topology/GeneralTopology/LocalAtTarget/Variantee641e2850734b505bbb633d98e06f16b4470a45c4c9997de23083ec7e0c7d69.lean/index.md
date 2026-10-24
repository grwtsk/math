# Verification target: GRWTSK.Topology.GeneralTopology.LocalAtTarget.Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdfa3be8b4546f492f06d6b1f98457eaa6990bd4",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdfa3be8b4546f492f06d6b1f98457eaa6990bd4`.

Source path: `GRWTSK/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.OpenCover` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyClosed` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Set.restrictPreimage_isInducing](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/set-restrictpreimage-isinducing--dc605fc56e536461fd437b3a.md) | 33 | `result-track:dc605fc56e536461fd437b3af6a638d45131505dc7e17b0b3850c841e7bb75fe` |
| 2 | `theorem` | [Set.restrictPreimage_isEmbedding](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/set-restrictpreimage-isembedding--088e810d431a35b99f4353c5.md) | 47 | `result-track:088e810d431a35b99f4353c5f5553c2398af9f670a672243fcd97c3efc07d3a0` |
| 3 | `theorem` | [Set.restrictPreimage_isOpenEmbedding](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/set-restrictpreimage-isopenembedding--b466a19f2fa57c40731444cf.md) | 59 | `result-track:b466a19f2fa57c40731444cf21f52d3409581a011b2f6ee999e906beee97b105` |
| 4 | `theorem` | [Set.restrictPreimage_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/set-restrictpreimage-isclosedembedding--49aca1b4ca055f0b4954c5c8.md) | 66 | `result-track:49aca1b4ca055f0b4954c5c8887a3f6722e7ff1f146e693fdc5d0f4e93325088` |
| 5 | `theorem` | [IsClosedMap.restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/isclosedmap-restrictpreimage--7adc6dbfb6158eabf3865931.md) | 73 | `result-track:7adc6dbfb6158eabf38659315b04bc55391534b45b92ded20ed683bc9e4d5e04` |
| 6 | `theorem` | [IsOpenMap.restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/isopenmap-restrictpreimage--61e45f7415492fb80e0f9cd1.md) | 81 | `result-track:61e45f7415492fb80e0f9cd145b873d6e57dba26b6e46627ae56b42832e8cd7c` |
| 7 | `lemma` | [GeneralizingMap.restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/generalizingmap-restrictpreimage--dc0ffaffdaca41a9bc86204b.md) | 89 | `result-track:dc0ffaffdaca41a9bc86204bbb8630212f83c64843f3be73fecbed87293e48ae` |
| 8 | `theorem` | [isOpen_iff_inter](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/isopen-iff-inter--9b7bf2bb97194c148f80a94a.md) | 103 | `result-track:9b7bf2bb97194c148f80a94ad5246ed7122bf0b254990af6a8de00c80213fbf8` |
| 9 | `theorem` | [isOpen_iff_coe_preimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/isopen-iff-coe-preimage--fd84b622d6e46cc85f807de3.md) | 110 | `result-track:fd84b622d6e46cc85f807de3a0ab921791ad9ce6addc5d7fc56f0b4d095f8b69` |
| 10 | `theorem` | [isClosed_iff_coe_preimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/isclosed-iff-coe-preimage--05928e8fe290aae4ddc45b0f.md) | 115 | `result-track:05928e8fe290aae4ddc45b0f471c70a19986de58d38b2865cd1b94768e4557c6` |
| 11 | `theorem` | [isLocallyClosed_iff_coe_preimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/islocallyclosed-iff-coe-preimage--1df3f2417e79b6410f311b8e.md) | 119 | `result-track:1df3f2417e79b6410f311b8e6aca9b8878bd88da872b1a64e07e2a5d512dedc7` |
| 12 | `theorem` | [isOpenMap_iff_restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/isopenmap-iff-restrictpreimage--23e0995ebb5a141fa24b4c91.md) | 125 | `result-track:23e0995ebb5a141fa24b4c9128411debbe02c53247e8f48d8bb2403c4837f8cf` |
| 13 | `theorem` | [isClosedMap_iff_restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/isclosedmap-iff-restrictpreimage--80300a5c0f943b50b33dc854.md) | 135 | `result-track:80300a5c0f943b50b33dc8547500b7f14d1fb315c7155abd736db6cc988dc7f7` |
| 14 | `theorem` | [isInducing_iff_restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/isinducing-iff-restrictpreimage--ae505e62696be96a9a00222e.md) | 145 | `result-track:ae505e62696be96a9a00222e031feb5e8d6a652ffe319f21e894dd0dedd64b9a` |
| 15 | `theorem` | [isEmbedding_iff_restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/isembedding-iff-restrictpreimage--959f07f2d2529d0c648f2e42.md) | 157 | `result-track:959f07f2d2529d0c648f2e42476e9ae2802213be3867f7a77c35b4c3829cc5c3` |
| 16 | `theorem` | [isOpenEmbedding_iff_restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/isopenembedding-iff-restrictpreimage--61f0e68d0834e38001c28989.md) | 162 | `result-track:61f0e68d0834e38001c289894bee2696d0c7ac9d1934419f7ab0040586462faf` |
| 17 | `theorem` | [isClosedEmbedding_iff_restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/isclosedembedding-iff-restrictpreimage--b56d58bf5b0f42ac77406fa1.md) | 170 | `result-track:b56d58bf5b0f42ac77406fa1036ab8e397ec977f684084bcb7e178da7c5961d2` |
| 18 | `theorem` | [denseRange_iff_restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/denserange-iff-restrictpreimage--2ba50d97a9ab43232855da4b.md) | 179 | `result-track:2ba50d97a9ab43232855da4b577eaeb4b5e1afc2d5101aaa97f51ec9de53b7a5` |
| 19 | `lemma` | [generalizingMap_iff_restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/generalizingmap-iff-restrictpreimage--3b21c50c9516b5529950aae0.md) | 190 | `result-track:3b21c50c9516b5529950aae0e18700b9a87c1d06ebff37540cf669dfbab6c05a` |
| 20 | `lemma` | [isOpenMap_iff_comp](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/isopenmap-iff-comp--c92a8c3ddf3e1b7746fd5cc1.md) | 207 | `result-track:c92a8c3ddf3e1b7746fd5cc1df16217c025c208f1dca9974ef509719105f5fba` |
| 21 | `lemma` | [generalizingMap_iff_comp](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/generalizingmap-iff-comp--325a8d9cb896bd8cdf9d5b8c.md) | 214 | `result-track:325a8d9cb896bd8cdf9d5b8ced9d96ecd503ab58a4f66302a0b35e3ec464a7fd` |
| 22 | `theorem` | [isOpen_iff_inter_of_iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/isopen-iff-inter-of-isup-eq-top--a3ec594ab8a6a7b625d69105.md) | 234 | `result-track:a3ec594ab8a6a7b625d69105e57f74be6470a5500d98d1c1f05fb1439aabf013` |
| 23 | `theorem` | [isOpen_iff_coe_preimage_of_iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/isopen-iff-coe-preimage-of-isup-eq-top--ce8ebb4e3e62978014691d8d.md) | 238 | `result-track:ce8ebb4e3e62978014691d8d20bdf414d9e1c0b456f068611ab10e7e74a3a631` |
| 24 | `theorem` | [isClosed_iff_coe_preimage_of_iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/isclosed-iff-coe-preimage-of-isup-eq-top--fb271ed01739d66f183a8163.md) | 243 | `result-track:fb271ed01739d66f183a8163af531eb7bb2f2995efd521a285c822bfdf09b68b` |
| 25 | `theorem` | [isLocallyClosed_iff_coe_preimage_of_iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/islocallyclosed-iff-coe-preimage-of-isup-eq-top--20d374ec46e1df13393940ff.md) | 248 | `result-track:20d374ec46e1df13393940ff19444a399f4fbc0650b39fe29badc1daca754049` |
| 26 | `theorem` | [isOpenMap_iff_isOpenMap_of_iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/isopenmap-iff-isopenmap-of-isup-eq-top--0029280066b164d5f4a0d14b.md) | 253 | `result-track:0029280066b164d5f4a0d14b92a9f998bda9cd6192034d907b99720bb4d85ef4` |
| 27 | `theorem` | [isClosedMap_iff_isClosedMap_of_iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/isclosedmap-iff-isclosedmap-of-isup-eq-top--e17d02da0d28be557537acd0.md) | 258 | `result-track:e17d02da0d28be557537acd067c835290b984b37c5493123c666c4ebe9986db9` |
| 28 | `theorem` | [inducing_iff_inducing_of_iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/inducing-iff-inducing-of-isup-eq-top--2eae2a6905db5f84014a5a36.md) | 263 | `result-track:2eae2a6905db5f84014a5a36e1b6345a12e25cd1035e89ae0f87fbc1b68829b7` |
| 29 | `theorem` | [isEmbedding_iff_of_iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/isembedding-iff-of-isup-eq-top--23c272f637d594ece61be594.md) | 268 | `result-track:23c272f637d594ece61be594c93bd110e7302e0a3a1618884c2040a86a4ff429` |
| 30 | `theorem` | [isOpenEmbedding_iff_isOpenEmbedding_of_iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/isopenembedding-iff-isopenembedding-of-isup-eq-top--19702bb8e42a944227bb7bb5.md) | 276 | `result-track:19702bb8e42a944227bb7bb50d45605cab21c2e757cacac0caa6cf46778ea0ee` |
| 31 | `theorem` | [isClosedEmbedding_iff_isClosedEmbedding_of_iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/isclosedembedding-iff-isclosedembedding-of-isup-eq-top--6990ed2c939c04b82f1d891b.md) | 281 | `result-track:6990ed2c939c04b82f1d891bd64fd45d7f75d103073a5da7c0f2466e91e6134b` |
| 32 | `theorem` | [denseRange_iff_denseRange_of_iSup_eq_top](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/denserange-iff-denserange-of-isup-eq-top--2f459279b46c384532071066.md) | 287 | `result-track:2f459279b46c384532071066a4314a2404e45d5d3c89fe8ee21e55562f8477c5` |
| 33 | `theorem` | [isEmbedding_of_iSup_eq_top_of_preimage_subset_range](../../../../../mathematics/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/declarations/isembedding-of-isup-eq-top-of-preimage-subset-range--4ea3fada0b2befa339fc5a5b.md) | 299 | `result-track:4ea3fada0b2befa339fc5a5b85b2f6d360c7f04f3202fa073e9532efabc0b2df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
