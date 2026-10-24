# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EdgeCut.Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69f0b946737026be6abcf2f3d72a83289f0a8d51",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69f0b946737026be6abcf2f3d72a83289f0a8d51`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [edgeCut](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/edgecut--74955ac7d58aba1e561c1678.md) | 36 | `declaration-track:74955ac7d58aba1e561c1678215b3ce25b05e41bf019602d7f61dcf29897d6db` |
| 2 | `lemma` | [mem_edgeCut_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/mem-edgecut-iff--37bf4aec073df26531181ed3.md) | 39 | `result-track:37bf4aec073df26531181ed3b8b8650d10583f1a3671e9d7ac5fef37f63af1ab` |
| 3 | `lemma` | [IsLink.mem_edgeCut_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/islink-mem-edgecut-iff--ebeb24629bc8fc6ab283e5ae.md) | 41 | `result-track:ebeb24629bc8fc6ab283e5aec404bc9b8839b9d7b724cb19520569b32bd5d98b` |
| 4 | `lemma` | [edgeCut_subset_edgeSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/edgecut-subset-edgeset--f095f25152c0cc8a67f10780.md) | 46 | `result-track:f095f25152c0cc8a67f107802cca4eb2a8e3a5475ef88ab58a68e1721b86a112` |
| 5 | `lemma` | [edgeCut_eq_empty_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/edgecut-eq-empty-iff--d9e630d3097f9fc543bc5a58.md) | 49 | `result-track:d9e630d3097f9fc543bc5a5861e45d5170f872b45f4f5ebd264ee5d77adfb4de` |
| 6 | `lemma` | [edgeCut_vertexSet_diff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/edgecut-vertexset-diff--f5a9ef01c0880812bd8b78be.md) | 58 | `result-track:f5a9ef01c0880812bd8b78bed596a0e3b4bc36cf95f8eb3abf996355a97cfbb9` |
| 7 | `lemma` | [IsSubgraph.edgeCut_eq_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/issubgraph-edgecut-eq-inter--542fcce5bf221162e76a5b38.md) | 61 | `result-track:542fcce5bf221162e76a5b38ee035c9054d9122d59bf9249738f5f58b715a559` |
| 8 | `lemma` | [edgeCut_symmDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/edgecut-symmdiff--3f50bda2fe58cb227705bc43.md) | 65 | `result-track:3f50bda2fe58cb227705bc4346511a47588bb4d96d3134fe107f5abc4f65fda1` |
| 9 | `lemma` | [IsClosedSubgraph.edgeCut_subset_edgeSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isclosedsubgraph-edgecut-subset-edgeset--112d30de3e3be46bac00305e.md) | 72 | `result-track:112d30de3e3be46bac00305e51cae72992275658473a8c53ddee1984ad72ae01` |
| 10 | `def` | [IsEdgeCut](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isedgecut--5936cc6e6d4a7a169f1acb2c.md) | 82 | `declaration-track:5936cc6e6d4a7a169f1acb2cdc40dd41c0cefc72250f6039760aad6ca4f3ce02` |
| 11 | `lemma` | [IsEdgeCut.exists_edgeCut](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isedgecut-exists-edgecut--702d30f4382980497d27bcc5.md) | 84 | `result-track:702d30f4382980497d27bcc59be205e7078861466d4cbf159eb411f2e70784ef` |
| 12 | `lemma` | [IsEdgeCut.exists_of_isLink](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isedgecut-exists-of-islink--56a4c4bac5226f2d81e34b21.md) | 88 | `result-track:56a4c4bac5226f2d81e34b216c803980e4d6d987d4df187b12b9406d556aa436` |
| 13 | `lemma` | [IsEdgeCut.subset_edgeSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isedgecut-subset-edgeset--54f4d672040616b20eb0b0dd.md) | 93 | `result-track:54f4d672040616b20eb0b0dd5f116d3822a5434b9d31d3ccf028835bae1c2b4f` |
| 14 | `lemma` | [IsEdgeCut.symmDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isedgecut-symmdiff--a3402b81176f71f8f6603614.md) | 97 | `result-track:a3402b81176f71f8f660361494902e4047099b70251dedde2e958546ef4e7405` |
| 15 | `lemma` | [IsEdgeCut.right_of_symmDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isedgecut-right-of-symmdiff--639cc37673e6d3bc790001ab.md) | 104 | `result-track:639cc37673e6d3bc790001abb79e8d0e5b0b5e650b0b322a94c43edd2e4f5707` |
| 16 | `lemma` | [IsEdgeCut.left_of_symmDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isedgecut-left-of-symmdiff--df11bd4c805a44e31ec32765.md) | 108 | `result-track:df11bd4c805a44e31ec32765a052c30fc3bff852dfdd15b42795967e463074c5` |
| 17 | `lemma` | [IsEdgeCut.inter_edgeSet_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isedgecut-inter-edgeset-of-le--c4b9153d9568180b6a38ad8f.md) | 111 | `result-track:c4b9153d9568180b6a38ad8fbf000dd60d4b0ee71fd2074e132e96f12e708f9a` |
| 18 | `lemma` | [IsEdgeCut.anti_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isedgecut-anti-of-subset--ff4dbdc565831c580aad9d72.md) | 117 | `result-track:ff4dbdc565831c580aad9d7217377b9759d2fd387baf92751d82259f8291bf05` |
| 19 | `lemma` | [IsEdgeCut.of_isClosedSubgraph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isedgecut-of-isclosedsubgraph--6338ae2b19f5fe13bf5e5d59.md) | 122 | `result-track:6338ae2b19f5fe13bf5e5d59087acd347c7c3f09ebc78b825bee2679cfde326a` |
| 20 | `def` | [IsBridge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isbridge--06970503a7472882e36dbfc2.md) | 140 | `declaration-track:06970503a7472882e36dbfc270b7cdf68d69793f6f00f16b51d9270486740d0f` |
| 21 | `lemma` | [IsBridge.isEdgeCut_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isbridge-isedgecut-singleton--80ba9b059c5370ca147f04ef.md) | 142 | `result-track:80ba9b059c5370ca147f04ef65bc88b99284a384c862b8edaf78b0e2052b882b` |
| 22 | `lemma` | [IsBridge.mem_edgeSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isbridge-mem-edgeset--bda90a91837a4607877bca98.md) | 145 | `result-track:bda90a91837a4607877bca98e347f3d58cec9c5b0f6f64458d680d690eb9a0e1` |
| 23 | `lemma` | [IsBridge.anti_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isbridge-anti-of-mem--89a8b7afa0fad87d6687762e.md) | 149 | `result-track:89a8b7afa0fad87d6687762e0d9c5971447c6d2ec356cdb7a85709005778a970` |
| 24 | `lemma` | [IsBridge.of_isClosedSubgraph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isbridge-of-isclosedsubgraph--adcfdf9b2fe1e137076579f6.md) | 152 | `result-track:adcfdf9b2fe1e137076579f684c5b0196f9a68c62ef2c898d2ae0361c723b2e5` |
| 25 | `lemma` | [IsClosedSubgraph.isBridge_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isclosedsubgraph-isbridge-iff--415dd0aaf6e5f42ca59e5346.md) | 155 | `result-track:415dd0aaf6e5f42ca59e5346c45e69f7cd69aafc924634ca41f43e9f497f5d5c` |
| 26 | `def` | [IsBond](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isbond--8032e9eb95f3bc342a30d161.md) | 167 | `declaration-track:8032e9eb95f3bc342a30d16117ded5af91bb3384b2cdc887ed3248d7fc587e3d` |
| 27 | `lemma` | [IsBond.isEdgeCut](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isbond-isedgecut--e0a95fa0f8ae30a9d0967646.md) | 170 | `result-track:e0a95fa0f8ae30a9d0967646ed6448fcaaab93b306b490a22715140976e75b03` |
| 28 | `lemma` | [IsBond.nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isbond-nonempty--574f4a9504128ae48fad87c4.md) | 172 | `result-track:574f4a9504128ae48fad87c456b0be5fe77946f4a8a0f8c062c24073d26e42e9` |
| 29 | `lemma` | [IsBond.subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isbond-subset--9e7d07e72a000a0235c972ee.md) | 175 | `result-track:9e7d07e72a000a0235c972ee67d1665185593eb11e4b4a0086d588e040092139` |
| 30 | `lemma` | [isBond_singleton_iff_isBridge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isbond-singleton-iff-isbridge--5f4110f66532bcbc2c59e23c.md) | 177 | `result-track:5f4110f66532bcbc2c59e23c9741ed6167020baf59ccc19da7739e2a03e3204a` |
| 31 | `lemma` | [IsBond.isBridge_deleteEdges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isbond-isbridge-deleteedges--b6694504b431d0a4fb4e75ae.md) | 184 | `result-track:b6694504b431d0a4fb4e75ae2e89fc003cb6368115cd697cfcbd517a45777f1f` |
| 32 | `lemma` | [IsBond.of_isClosedSubgraph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean/declarations/isbond-of-isclosedsubgraph--2711778f4e5c71e9776af578.md) | 191 | `result-track:2711778f4e5c71e9776af5784d884dce393c1c365f071ef0f14a75be8a520f17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
