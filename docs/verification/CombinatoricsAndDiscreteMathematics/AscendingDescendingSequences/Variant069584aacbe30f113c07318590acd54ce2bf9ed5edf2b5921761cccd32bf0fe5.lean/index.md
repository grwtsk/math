# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.AscendingDescendingSequences.Variant069584aacbe30f113c07318590acd54ce2bf9ed5edf2b5921761cccd32bf0fe5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06aa13b99ca5a6cd0272abe0e983bab4772f7873",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant069584aacbe30f113c07318590acd54ce2bf9ed5edf2b5921761cccd32bf0fe5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant069584aacbe30f113c07318590acd54ce2bf9ed5edf2b5921761cccd32bf0fe5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant069584aacbe30f113c07318590acd54ce2bf9ed5edf2b5921761cccd32bf0fe5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06aa13b99ca5a6cd0272abe0e983bab4772f7873`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant069584aacbe30f113c07318590acd54ce2bf9ed5edf2b5921761cccd32bf0fe5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant069584aacbe30f113c07318590acd54ce2bf9ed5edf2b5921761cccd32bf0fe5.lean.json)

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
| 1 | `def` | [incSequencesTo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant069584aacbe30f113c07318590acd54ce2bf9ed5edf2b5921761cccd32bf0fe5.lean/declarations/incsequencesto--c58386b0604be46b0ce8a9b1.md) | 39 | `declaration-track:c58386b0604be46b0ce8a9b18d02f328982cb3d96201148f4c1fc87e069eb90f` |
| 2 | `def` | [decSequencesTo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant069584aacbe30f113c07318590acd54ce2bf9ed5edf2b5921761cccd32bf0fe5.lean/declarations/decsequencesto--3fa2538d67007d036db492e8.md) | 44 | `declaration-track:3fa2538d67007d036db492e8023e2f8947e99a34d2a72983aa1c7968bb1c28aa` |
| 3 | `lemma` | [one_mem_incSequencesTo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant069584aacbe30f113c07318590acd54ce2bf9ed5edf2b5921761cccd32bf0fe5.lean/declarations/one-mem-incsequencesto--add68953c324c2755e829966.md) | 49 | `result-track:add68953c324c2755e829966be2b1da928a96c73643b7c42ebf5eeeb7900e65a` |
| 4 | `lemma` | [one_mem_decSequencesTo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant069584aacbe30f113c07318590acd54ce2bf9ed5edf2b5921761cccd32bf0fe5.lean/declarations/one-mem-decsequencesto--0d03eebc546273f978cac095.md) | 51 | `result-track:0d03eebc546273f978cac0959f5f66a5a7fec87877ad03946abf44aff814e48a` |
| 5 | `lemma` | [incSequencesTo_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant069584aacbe30f113c07318590acd54ce2bf9ed5edf2b5921761cccd32bf0fe5.lean/declarations/incsequencesto-nonempty--de844b7e63f10bfc888da6fb.md) | 54 | `result-track:de844b7e63f10bfc888da6fb8f9b23f5e419db570337990b340b3f272f68ec7e` |
| 6 | `lemma` | [decSequencesTo_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant069584aacbe30f113c07318590acd54ce2bf9ed5edf2b5921761cccd32bf0fe5.lean/declarations/decsequencesto-nonempty--1aebe624c01a178732d6a9cd.md) | 56 | `result-track:1aebe624c01a178732d6a9cdbc2c641810cc2e835a8d8d2543c3eab51def3a46` |
| 7 | `def` | [maxIncSequencesTo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant069584aacbe30f113c07318590acd54ce2bf9ed5edf2b5921761cccd32bf0fe5.lean/declarations/maxincsequencesto--c79ccaf1bcf17a63690ab731.md) | 59 | `declaration-track:c79ccaf1bcf17a63690ab7314f73d3b44ba493a11ba4a66ed9744dc72f170920` |
| 8 | `def` | [maxDecSequencesTo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant069584aacbe30f113c07318590acd54ce2bf9ed5edf2b5921761cccd32bf0fe5.lean/declarations/maxdecsequencesto--7d5dad42c8ef47af39f96d37.md) | 63 | `declaration-track:7d5dad42c8ef47af39f96d37f798eb5e3687875d52143b2be94670cfca084732` |
| 9 | `lemma` | [one_le_maxIncSequencesTo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant069584aacbe30f113c07318590acd54ce2bf9ed5edf2b5921761cccd32bf0fe5.lean/declarations/one-le-maxincsequencesto--e67244cacca6a51c6c2b91f6.md) | 66 | `result-track:e67244cacca6a51c6c2b91f6199a792182cbc0fa4aee34fb277d20e42f90d2d3` |
| 10 | `lemma` | [one_le_maxDecSequencesTo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant069584aacbe30f113c07318590acd54ce2bf9ed5edf2b5921761cccd32bf0fe5.lean/declarations/one-le-maxdecsequencesto--062605d7fe8f8dc9c9323b94.md) | 68 | `result-track:062605d7fe8f8dc9c9323b944dfc0ca2367169fc14f8408f2562ff05112fedc9` |
| 11 | `lemma` | [maxIncSequencesTo_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant069584aacbe30f113c07318590acd54ce2bf9ed5edf2b5921761cccd32bf0fe5.lean/declarations/maxincsequencesto-mem--bcb3c9e5ace7620e7cb00b7d.md) | 71 | `result-track:bcb3c9e5ace7620e7cb00b7d776ee3e73c1c5a802222e4770f89b701177f8962` |
| 12 | `lemma` | [maxDecSequencesTo_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant069584aacbe30f113c07318590acd54ce2bf9ed5edf2b5921761cccd32bf0fe5.lean/declarations/maxdecsequencesto-mem--0dade8635b56c5da20c9d1ac.md) | 73 | `result-track:0dade8635b56c5da20c9d1ac68a69935abc3f127a89eb8d8baf68cee4e4c6b26` |
| 13 | `lemma` | [maxIncSequencesTo_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant069584aacbe30f113c07318590acd54ce2bf9ed5edf2b5921761cccd32bf0fe5.lean/declarations/maxincsequencesto-lt--ee2c0084e5de2b6ba7761c4d.md) | 84 | `result-track:ee2c0084e5de2b6ba7761c4d98b38464ede3a9c390a4ec76ac4636f748eb839c` |
| 14 | `lemma` | [maxDecSequencesTo_gt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant069584aacbe30f113c07318590acd54ce2bf9ed5edf2b5921761cccd32bf0fe5.lean/declarations/maxdecsequencesto-gt--9c501c0055bee0dfdb936906.md) | 110 | `result-track:9c501c0055bee0dfdb936906e779a88ef06acc2bbd91ff7be30ee2798407e0d4` |
| 15 | `def` | [paired](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant069584aacbe30f113c07318590acd54ce2bf9ed5edf2b5921761cccd32bf0fe5.lean/declarations/paired--de189f37e0a39f1234cd32ca.md) | 118 | `declaration-track:de189f37e0a39f1234cd32cace84bafced9d4ab146fbe675dd2fe763a34fd5cb` |
| 16 | `lemma` | [paired_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant069584aacbe30f113c07318590acd54ce2bf9ed5edf2b5921761cccd32bf0fe5.lean/declarations/paired-injective--95fe7736109372844ca76f9e.md) | 125 | `result-track:95fe7736109372844ca76f9efada1cc42cc197aaef519f629cc3f31af67100b5` |
| 17 | `theorem` | [erdos_szekeres](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AscendingDescendingSequences/Variant069584aacbe30f113c07318590acd54ce2bf9ed5edf2b5921761cccd32bf0fe5.lean/declarations/erdos-szekeres--83af800549afe81172e86276.md) | 142 | `result-track:83af800549afe81172e86276d254d19ce962c8e19199472c8c7dde876f5a154f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
