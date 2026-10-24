# Verification target: GRWTSK.Topology.GeneralTopology.CompactOperator.Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d68de6ae879308632034bf3882b05e94c3790b10",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d68de6ae879308632034bf3882b05e94c3790b10`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.Bounded` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.StrongTopology` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCompactOperator](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator--b4ce2e373e8d4ffe0a4ab75f.md) | 69 | `declaration-track:b4ce2e373e8d4ffe0a4ab75f6cc2341dfebc611770768b639a94ba7e35d9d53d` |
| 2 | `theorem` | [isCompactOperator_zero](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-zero--3810965077c23f26c237b3f7.md) | 74 | `result-track:3810965077c23f26c237b3f7e474268de67f2f0bcb4a1fe783a617d6f7a008ae` |
| 3 | `theorem` | [isCompactOperator_iff_exists_mem_nhds_image_subset_compact](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-iff-exists-mem-nhds-image-subset-compact--7fb5577b0e3dd355b57e414c.md) | 86 | `result-track:7fb5577b0e3dd355b57e414c62ec7175ad2eddc9f6e2753d488fe93733753b60` |
| 4 | `theorem` | [isCompactOperator_iff_exists_mem_nhds_isCompact_closure_image](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-iff-exists-mem-nhds-iscompact-closure-image--c6f899bbfb98fd24370167fb.md) | 92 | `result-track:c6f899bbfb98fd24370167fb06b220e32c48126f3e413d55f68d655eb63dede4` |
| 5 | `theorem` | [IsCompactOperator.image_subset_compact_of_isVonNBounded](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-image-subset-compact-of-isvonnbounded--f002b23dbbe4820d4d46b3a5.md) | 108 | `result-track:f002b23dbbe4820d4d46b3a50046c2e011e85ed52c1731f8070e3138e2cf9a61` |
| 6 | `theorem` | [IsCompactOperator.isCompact_closure_image_of_isVonNBounded](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-iscompact-closure-image-of-isvonnbounded--a0b91d8f3e41540662204591.md) | 120 | `result-track:a0b91d8f3e41540662204591edc0b2fd207bb68b9320f55ee6938f5ab2f1fb99` |
| 7 | `theorem` | [IsCompactOperator.image_subset_compact_of_bounded](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-image-subset-compact-of-bounded--722fe2a774b3888302bce1ee.md) | 136 | `result-track:722fe2a774b3888302bce1ee82e732042152d5e89ea9a0145e535b4d120fcfdf` |
| 8 | `theorem` | [IsCompactOperator.isCompact_closure_image_of_bounded](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-iscompact-closure-image-of-bounded--0585f2f78039a3ccfdd42558.md) | 143 | `result-track:0585f2f78039a3ccfdd4255846cb22e02ff1de470ac8357973c2c4e2e4b8643f` |
| 9 | `theorem` | [IsCompactOperator.image_ball_subset_compact](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-image-ball-subset-compact--9df177a827d43cbe0fd24560.md) | 150 | `result-track:9df177a827d43cbe0fd24560f529b09c6a5cf6b340e101a6c58c7f3168c4e49f` |
| 10 | `theorem` | [IsCompactOperator.image_closedBall_subset_compact](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-image-closedball-subset-compact--82e97adc5b65a35c407b38a9.md) | 155 | `result-track:82e97adc5b65a35c407b38a9970527fe1e248a0ef85b8a1ecf65f69fd79bc99a` |
| 11 | `theorem` | [IsCompactOperator.isCompact_closure_image_ball](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-iscompact-closure-image-ball--85f1e724a100a1d0e53822a0.md) | 161 | `result-track:85f1e724a100a1d0e53822a016af65984d2a31fd5aeb93c80e1954a9eab8d8dd` |
| 12 | `theorem` | [IsCompactOperator.isCompact_closure_image_closedBall](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-iscompact-closure-image-closedball--3d252b9f607167efedab88b2.md) | 167 | `result-track:3d252b9f607167efedab88b2aa0f4de87a736f7434562e2868026b246e0dba73` |
| 13 | `theorem` | [isCompactOperator_iff_image_ball_subset_compact](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-iff-image-ball-subset-compact--71b7b38040b703ea4389aca3.md) | 173 | `result-track:71b7b38040b703ea4389aca367d646bc121d38b19da1fc47cdbae40db004e5da` |
| 14 | `theorem` | [isCompactOperator_iff_image_closedBall_subset_compact](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-iff-image-closedball-subset-compact--fd392afca85457a69b9b73f7.md) | 181 | `result-track:fd392afca85457a69b9b73f74862df0589d3ef192addd7719723aa20076e5ffc` |
| 15 | `theorem` | [isCompactOperator_iff_isCompact_closure_image_ball](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-iff-iscompact-closure-image-ball--54222ea95e5f0f2719e4d64f.md) | 189 | `result-track:54222ea95e5f0f2719e4d64ff6f63eac6fdd16ee57516688c0593877f196d961` |
| 16 | `theorem` | [isCompactOperator_iff_isCompact_closure_image_closedBall](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-iff-iscompact-closure-image-closedball--f513420fb652ee219429c9a4.md) | 197 | `result-track:f513420fb652ee219429c9a47a2fba4edd20d107e294fd85b87ded7251250687` |
| 17 | `theorem` | [IsCompactOperator.smul](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-smul--a92a6b97ad831a937a1798dd.md) | 216 | `result-track:a92a6b97ad831a937a1798dd0abe563ba9346afc29e6d9d1417311229afaaefd` |
| 18 | `theorem` | [IsCompactOperator.add](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-add--44585b40b5c14ed3e3a0ed74.md) | 224 | `result-track:44585b40b5c14ed3e3a0ed74425b37993639737ac3fbbd83a3688ff8fabd26c5` |
| 19 | `theorem` | [IsCompactOperator.neg](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-neg--c347bc7d1c5e470c1dd38e6b.md) | 232 | `result-track:c347bc7d1c5e470c1dd38e6b87d680714bf26dafe756e36406922107134ddda1` |
| 20 | `theorem` | [IsCompactOperator.sub](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-sub--e53f3ff697e875c22fc2aae7.md) | 238 | `result-track:e53f3ff697e875c22fc2aae749d635cc676644acba0d71b6073e52cd746b8d69` |
| 21 | `def` | [compactOperator](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/compactoperator--344b3e03677c3d1342d48401.md) | 246 | `declaration-track:344b3e03677c3d1342d48401351e198861eaf1cdb18645b024771f92bdef6841` |
| 22 | `theorem` | [IsCompactOperator.comp_clm](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-comp-clm--679afee7268d9e80cfc00267.md) | 262 | `result-track:679afee7268d9e80cfc002677ea4499ed8dba5d63fb5f311c47e03f89b90e824` |
| 23 | `theorem` | [IsCompactOperator.continuous_comp](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-continuous-comp--2973b8275155e6d72af35108.md) | 270 | `result-track:2973b8275155e6d72af3510826f5eb56646c689795057bb08f359dcfb7ccc42a` |
| 24 | `theorem` | [IsCompactOperator.clm_comp](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-clm-comp--f4b469011141a4a542c47b67.md) | 278 | `result-track:f4b469011141a4a542c47b6773de64884a6a46a712a5b1c20dd2941fc5a92df6` |
| 25 | `theorem` | [IsCompactOperator.codRestrict](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-codrestrict--0d89079722328d1b95e6daf9.md) | 292 | `result-track:0d89079722328d1b95e6daf9fe505d604e3e34fae67e1d40dce582083fae82a6` |
| 26 | `theorem` | [IsCompactOperator.restrict](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-restrict--d42b915eafbc6e77a138d5f1.md) | 316 | `result-track:d42b915eafbc6e77a138d5f143921d0aee32a44e68876e583bdb44963d90064f` |
| 27 | `theorem` | [IsCompactOperator.restrict'](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-restrict--62eb8841647d26a96d124c13.md) | 330 | `result-track:62eb8841647d26a96d124c13bf8a25f332f6031449f57479a09b829ddb04be58` |
| 28 | `theorem` | [IsCompactOperator.continuous](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-continuous--6640538d0f9747594e488d73.md) | 346 | `result-track:6640538d0f9747594e488d7369e9fcb7a4e579aae6fabd809b9873c9c9598fc8` |
| 29 | `def` | [ContinuousLinearMap.mkOfIsCompactOperator](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/continuouslinearmap-mkofiscompactoperator--4381b8bee711ad38af596349.md) | 379 | `declaration-track:4381b8bee711ad38af5963495489bf95b8fd8b2d1e6a5b03a927d967b2b16d6f` |
| 30 | `theorem` | [ContinuousLinearMap.mkOfIsCompactOperator_to_linearMap](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/continuouslinearmap-mkofiscompactoperator-to-linearmap--b8dd841fced73f4eacce5d3e.md) | 385 | `result-track:b8dd841fced73f4eacce5d3e76cbc502c75bcef3278753622839920ec560d499` |
| 31 | `theorem` | [ContinuousLinearMap.coe_mkOfIsCompactOperator](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/continuouslinearmap-coe-mkofiscompactoperator--bddaf4fe97c9fef26b06ab8f.md) | 392 | `result-track:bddaf4fe97c9fef26b06ab8f4f401f387a0b9dd4ca47225c8fd0fe77732fad7d` |
| 32 | `theorem` | [ContinuousLinearMap.mkOfIsCompactOperator_mem_compactOperator](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/continuouslinearmap-mkofiscompactoperator-mem-compactoperator--7b6835b60d5738fe4e01b0d9.md) | 397 | `result-track:7b6835b60d5738fe4e01b0d9d4f106918a87324234e08c5b621f4b530568b7e7` |
| 33 | `theorem` | [isClosed_setOf_isCompactOperator](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/isclosed-setof-iscompactoperator--48a61ad448e4b47204ff40d0.md) | 407 | `result-track:48a61ad448e4b47204ff40d01085204796a7d5fc17b3193f1c9fa277b80c4e8f` |
| 34 | `theorem` | [compactOperator_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/compactoperator-topologicalclosure--e181a43e03b16a5e71b27ef9.md) | 444 | `result-track:e181a43e03b16a5e71b27ef9ca5b344d5495e51eba7514326265d35fd551c66a` |
| 35 | `theorem` | [isCompactOperator_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variant45eda0f86c4e295c5f9b81ba5544c224a7c2c233021d02d432330f4b65f34fb9.lean/declarations/iscompactoperator-of-tendsto--1e19c50de55ea84f5d8c5406.md) | 453 | `result-track:1e19c50de55ea84f5d8c5406da5e64321134933326ec8bb83df94fb1d814027d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
