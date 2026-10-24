# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Star.Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0afab4da8b61062c06aeaf63fd9bd31f6db8581",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0afab4da8b61062c06aeaf63fd9bd31f6db8581`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Pointwise.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.Synonym` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Segment` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [StarConvex](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex--e2d5d35d5cda8705abd675d9.md) | 70 | `declaration-track:e2d5d35d5cda8705abd675d9d1a57d53554277a88c67a59ba5ef959d76dd3694` |
| 2 | `theorem` | [starConvex_iff_segment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-iff-segment-subset--e6350a0d99988a61c57e3e16.md) | 76 | `result-track:e6350a0d99988a61c57e3e167e0c91be6534141721b994a8bc7e3e1b1c7deb3b` |
| 3 | `theorem` | [StarConvex.segment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-segment-subset--c6e85bd7430d29bd2c79e20a.md) | 83 | `result-track:c6e85bd7430d29bd2c79e20a55fdec557ed9716c0683933b17ba5bf99c13d51f` |
| 4 | `theorem` | [StarConvex.openSegment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-opensegment-subset--73a5468f2a13681a80981a7c.md) | 86 | `result-track:73a5468f2a13681a80981a7cfd1094301b96cbf73d59fd5f810b00ccbb0e097f` |
| 5 | `theorem` | [starConvex_iff_pointwise_add_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-iff-pointwise-add-subset--d8feae0c761373823681380d.md) | 91 | `result-track:d8feae0c761373823681380d5513e170dcb19b754044c404d718974d44f69825` |
| 6 | `theorem` | [starConvex_empty](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-empty--ef1a7b75cf892d4322f521a3.md) | 99 | `result-track:ef1a7b75cf892d4322f521a3075088b9220f1d4507639cbd4356b9518b800897` |
| 7 | `theorem` | [starConvex_univ](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-univ--bbd853399b789b57c3b43bdb.md) | 101 | `result-track:bbd853399b789b57c3b43bdb0c27732bba2ed2f6899ab3f0fe870b8948afbe7a` |
| 8 | `theorem` | [StarConvex.inter](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-inter--341b7b3202216d6bf8bc8fc9.md) | 103 | `result-track:341b7b3202216d6bf8bc8fc95b701e81634e0bf52b4a5e0e9c866d06b4634f3b` |
| 9 | `theorem` | [starConvex_sInter](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-sinter--0490fd0c4a320ce289dbef15.md) | 106 | `result-track:0490fd0c4a320ce289dbef153cf10a23618147a9bfbc7eaf94a9f899310ffb50` |
| 10 | `theorem` | [starConvex_iInter](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-iinter--02e77d977f8aa13e54fae199.md) | 109 | `result-track:02e77d977f8aa13e54fae199c772bc42a41c8e555b99bc2e7cbe42e1cc85417f` |
| 11 | `theorem` | [starConvex_iInter₂](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-iinter--c58df9db7dfefaca18f00aaf.md) | 113 | `result-track:c58df9db7dfefaca18f00aaf7baf65260e88aed1708e2043a91f4da420f6078a` |
| 12 | `theorem` | [StarConvex.union](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-union--b250191315ed6251fd0bae21.md) | 117 | `result-track:b250191315ed6251fd0bae21d1cd8b1c2aaf4febb414fe0c82c18cbda831aa28` |
| 13 | `theorem` | [starConvex_iUnion](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-iunion--fa64acdc7b130b207bf4019c.md) | 123 | `result-track:fa64acdc7b130b207bf4019cc79fd21bbfddf3354c911f335f0703e61aa06d93` |
| 14 | `theorem` | [starConvex_iUnion₂](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-iunion--8678515243e0825b8a69e357.md) | 130 | `result-track:8678515243e0825b8a69e357e6d0df30d7d672ca42a82031e199b5c829a8213d` |
| 15 | `theorem` | [starConvex_sUnion](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-sunion--d9b41a7c363fdc50f5ac3f88.md) | 134 | `result-track:d9b41a7c363fdc50f5ac3f88fd7d9be743c4736ad90de5c693bd69951d9e66e7` |
| 16 | `theorem` | [StarConvex.prod](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-prod--a80ea4812d3a8837f4019414.md) | 139 | `result-track:a80ea4812d3a8837f401941496654dc4bd6d7222eacd6de1e170af22092372ce` |
| 17 | `theorem` | [starConvex_pi](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-pi--ae05fdda2b36790db9549341.md) | 143 | `result-track:ae05fdda2b36790db95493412874228b0226781a081d66f0c3adcd62984ee88e` |
| 18 | `theorem` | [StarConvex.mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-mem--ac6e707206fc5dee8a44636f.md) | 153 | `result-track:ac6e707206fc5dee8a44636fd30f9acd22926dfd26bc6dea39a2b045257e4d7b` |
| 19 | `theorem` | [starConvex_iff_forall_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-iff-forall-pos--9eeadcea8e0ed2d9df11e5d2.md) | 158 | `result-track:9eeadcea8e0ed2d9df11e5d2d75b650e69800ab94d5bd8281cb22aac77b3ef86` |
| 20 | `theorem` | [starConvex_iff_forall_ne_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-iff-forall-ne-pos--273ea8671e14c67e935554bc.md) | 170 | `result-track:273ea8671e14c67e935554bc831a77992eb0577c77314b189ef9bc08ed1b209f` |
| 21 | `theorem` | [starConvex_iff_openSegment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-iff-opensegment-subset--7d372fc94628f32b6c988546.md) | 185 | `result-track:7d372fc94628f32b6c988546b106ccca56400099f7afdc60bf0a5e6e2039a52a` |
| 22 | `theorem` | [starConvex_singleton](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-singleton--d5ea2f639872598b0a045592.md) | 190 | `result-track:d5ea2f639872598b0a045592b5eced499527f653dd3e4c1846b0e9b5c092b672` |
| 23 | `theorem` | [StarConvex.linear_image](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-linear-image--ec423166a29584d76385f742.md) | 194 | `result-track:ec423166a29584d76385f742b92ca30f419be5cfeb11f4f34dcc959c31f3e0f2` |
| 24 | `theorem` | [StarConvex.is_linear_image](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-is-linear-image--e3a908360ae6919b731fad88.md) | 199 | `result-track:e3a908360ae6919b731fad88e0e7b0c4b4f749439f59c57e55453865f0d13a34` |
| 25 | `theorem` | [StarConvex.linear_preimage](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-linear-preimage--f62746376ef8ee02eaf983c3.md) | 203 | `result-track:f62746376ef8ee02eaf983c3da842cd532d50c4c6d7b677863c3d8eeb12ba147` |
| 26 | `theorem` | [StarConvex.is_linear_preimage](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-is-linear-preimage--476164698ed4f37073e76666.md) | 209 | `result-track:476164698ed4f37073e76666c89a7b51d3cb583a92f390ba94071f31279dc1a3` |
| 27 | `theorem` | [StarConvex.add](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-add--5e57856ac518938a0a417eab.md) | 213 | `result-track:5e57856ac518938a0a417eabf225cb811cde3d2c2e5d55b01d0ab77e116309c6` |
| 28 | `theorem` | [StarConvex.add_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-add-left--cd4f159d7f635eeb37ce11fd.md) | 218 | `result-track:cd4f159d7f635eeb37ce11fdb5e03181d930b93eed663d16d43388bbb9b30435` |
| 29 | `theorem` | [StarConvex.add_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-add-right--9af56dfceb894f236d5dde69.md) | 225 | `result-track:9af56dfceb894f236d5dde69e9feda6a377a8f04bd6998ab82cac7cd0a229438` |
| 30 | `theorem` | [StarConvex.preimage_add_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-preimage-add-right--d8dc339143059b9bd8514ac9.md) | 233 | `result-track:d8dc339143059b9bd8514ac9e3b7ea90c14878aa01fcc45f8b957fea09ea49a1` |
| 31 | `theorem` | [StarConvex.preimage_add_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-preimage-add-left--3eff46b976a1912b9232dfc0.md) | 240 | `result-track:3eff46b976a1912b9232dfc04ebd03639eba2c61f7f70fa31325f76ff97a9c2c` |
| 32 | `theorem` | [StarConvex.sub'](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-sub--c041d9a237044d20ee94995d.md) | 253 | `result-track:c041d9a237044d20ee94995d45f5f56f60c17e3d6d2a6e45f2cb8124e3c6b00c` |
| 33 | `theorem` | [StarConvex.smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-smul--fd2d1dccd9a497cc7774710d.md) | 269 | `result-track:fd2d1dccd9a497cc7774710d242698b2e0e356630b8c2cdc5fb92882c6414190` |
| 34 | `theorem` | [StarConvex.zero_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-zero-smul--6315493a3672b3efb69b3032.md) | 272 | `result-track:6315493a3672b3efb69b3032d8533e80ccab69a56be86c464f7ce432f3748c02` |
| 35 | `theorem` | [StarConvex.preimage_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-preimage-smul--db2f03a5077fd40cefc16f5f.md) | 275 | `result-track:db2f03a5077fd40cefc16f5f47324ffcc9054e191f78dc9310327468e206e7b2` |
| 36 | `theorem` | [StarConvex.affinity](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-affinity--fb49c5c1870a459e518b0e92.md) | 279 | `result-track:fb49c5c1870a459e518b0e92491f1d14c058133acbb8ac4a4720cf17a2ea3886` |
| 37 | `theorem` | [starConvex_zero_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-zero-iff--28912f442662962c185a5663.md) | 296 | `result-track:28912f442662962c185a56639f39bbcafebfad35c3c752cac5b3f82cf41e3db0` |
| 38 | `theorem` | [StarConvex.add_smul_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-add-smul-mem--c8644e9bfc92b0fecf7b675c.md) | 314 | `result-track:c8644e9bfc92b0fecf7b675c0ad75bff7865ad7ccf328f81ece1771b7e46706c` |
| 39 | `theorem` | [StarConvex.smul_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-smul-mem--2c94ef28168d162c6003df92.md) | 321 | `result-track:2c94ef28168d162c6003df92021ad431b74369bd3942b3ea5f83d656a6acdad8` |
| 40 | `theorem` | [StarConvex.add_smul_sub_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-add-smul-sub-mem--5e51d46400976ccfcccc6a63.md) | 324 | `result-track:5e51d46400976ccfcccc6a63ab862afa82dad86e51c5f698da4cf5d6ca8a1e06` |
| 41 | `theorem` | [StarConvex.affine_preimage](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-affine-preimage--7067d29088ee7d9573bbbe80.md) | 335 | `result-track:7067d29088ee7d9573bbbe8029e6d93306657e098e0fef2417c8b2304e41fd6f` |
| 42 | `theorem` | [StarConvex.affine_image](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-affine-image--7da9236bf5ed86f86895ed0c.md) | 342 | `result-track:7da9236bf5ed86f86895ed0c2c37e9f81119c26f4660a274d1991b1ec6c410e2` |
| 43 | `theorem` | [StarConvex.neg](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-neg--b54db7a1cf32e3b5ab1f2a90.md) | 348 | `result-track:b54db7a1cf32e3b5ab1f2a90960e419044c9426d1486d8f4c8fd8be400b7a256` |
| 44 | `theorem` | [StarConvex.sub](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-sub--d211da30ca204c16ea3fcedf.md) | 352 | `result-track:d211da30ca204c16ea3fcedfcb78f81358258e8f0f1619c9612d026882618702` |
| 45 | `lemma` | [starConvex_compl_Iic](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-compl-iic--d4fcb882ff114e481e873fa5.md) | 365 | `result-track:d4fcb882ff114e481e873fa560fc7fc25871b83e54e5da419d27eb2a643a595a` |
| 46 | `lemma` | [starConvex_compl_Ici](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-compl-ici--88643888c408109e182a48c5.md) | 377 | `result-track:88643888c408109e182a48c50896e5766dfaf36924987ac582054b99d127f5dd` |
| 47 | `theorem` | [starConvex_iff_div](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-iff-div--a760cec997e3a5ce3409c014.md) | 393 | `result-track:a760cec997e3a5ce3409c014cec41679af40af84b78cd0e71fcedaf42aac94e1` |
| 48 | `theorem` | [StarConvex.mem_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-mem-smul--ae928baf7f8be140a1fbbcd0.md) | 406 | `result-track:ae928baf7f8be140a1fbbcd041f31ff7fe7d0e53fc5a36a5289b5ac8080cccc0` |
| 49 | `theorem` | [Set.OrdConnected.starConvex](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/set-ordconnected-starconvex--ac2a3d8caa1bce599958898d.md) | 425 | `result-track:ac2a3d8caa1bce599958898d13dca9d053770c1e4a15992b15c9cd6979ba9565` |
| 50 | `theorem` | [starConvex_iff_ordConnected](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Varianta7befa49e9137d84f17a3eaffa5f14c5fdd5dbabb24d14e80cb6bff6b313ebff.lean/declarations/starconvex-iff-ordconnected--ca30e988d94d64d3cb5e6a50.md) | 446 | `result-track:ca30e988d94d64d3cb5e6a506c60c65d148b2613834c403e693da2d0bc6ffb70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
