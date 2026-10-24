# GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.ParentTraceDictionary

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `927580b708fbc4793a5d0f659c88cf3afc8bb859`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence34b462c9fbce3ba4e122cba1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Node](declarations/node--67a6a121e40661a01c031c1f.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Representation](declarations/representation--ad0073d830810779c745033e.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ValidRanks](declarations/validranks--f8db0e61ffe6427a1b1eda7a.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [expand](declarations/expand--8621130977d8e0aef0a28f22.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [decodeSlot](declarations/decodeslot--f56475438c913bc4ae8b77a6.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [expandDictionary](declarations/expanddictionary--e7fb2b202ca9187f65d46b0d.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [expandedPacked](declarations/expandedpacked--5d380cc1337dc65f0ec818ed.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [decodeReferences](declarations/decodereferences--4b8c087cec0b1f7033f1fa5c.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [position](declarations/position--e0ffc0934f0686dff68b628a.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [position_lookup](declarations/position-lookup--ab007dba79aa0b92442ff253.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [position_lt](declarations/position-lt--8ce2016bb21cea221ff64e1e.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [nodeFor](declarations/nodefor--23985841c15ae701626b1e8f.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [encodedNodes](declarations/encodednodes--2817460106ed428e74afb02e.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [encode](declarations/encode--7ef75ec8243f7caed7adc1dc.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [encoded_lookup](declarations/encoded-lookup--79cd5974bf60c8dc72081869.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [parent_mem](declarations/parent-mem--148492b8376058062681583e.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [parent_join](declarations/parent-join--484735b884ce87734e78ae32.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [parent_rank_lt](declarations/parent-rank-lt--e354718d6fbaf658ea717dc3.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [nodeFor_empty_iff](declarations/nodefor-empty-iff--28e286bf458965112eae4779.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [encoded_validRanks](declarations/encoded-validranks--2b37dd89572732ce77d08231.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [expand_encoded](declarations/expand-encoded--166436a7c69c45235c170849.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [decodeSlot_encoded](declarations/decodeslot-encoded--306703c6d569f561228c8f2e.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [expandDictionary_encoded](declarations/expanddictionary-encoded--2b7a9b391bf88cb1db1e31f4.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [expandedPacked_encode](declarations/expandedpacked-encode--a0f0f5e7c9d7f86ee5afd7bb.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [decodeReferences_encode](declarations/decodereferences-encode--667d485ed1260b46aa8f1974.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [decoded_valid](declarations/decoded-valid--eeb947635fd3367eae3b612f.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [decoded_recovers](declarations/decoded-recovers--4675ba42793fc892a7333453.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [empty_mem_iff](declarations/empty-mem-iff--69da8272d3fb04f74e7e087f.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [empty_count](declarations/empty-count--ef280745dd9e573d6a74ce66.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [no_root_decoder](declarations/no-root-decoder--fb38e517b440632ef1ee06b9.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
