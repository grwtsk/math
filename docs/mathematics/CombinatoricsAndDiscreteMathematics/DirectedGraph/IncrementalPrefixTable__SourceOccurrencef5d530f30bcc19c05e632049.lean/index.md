# GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.IncrementalPrefixTable

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe8c0cca68875e6bc04b84026459a5e6a672e6d5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrencef5d530f30bcc19c05e632049.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [prefixEntries](declarations/prefixentries--d286dc50956936ddebf1b526.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [dictionary](declarations/dictionary--e4a5135b8d82db9e4326efe6.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_dictionary_iff](declarations/mem-dictionary-iff--e9d67acad8f670b089c0c412.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [dictionary_prefix](declarations/dictionary-prefix--b8905fe192ef88635d49cece.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [dictionary_nodup](declarations/dictionary-nodup--9ae8ae99d02fe3166d83e8f2.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [dictionary_closed](declarations/dictionary-closed--cd7e40f328a30493a8985291.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [dictionary_valid](declarations/dictionary-valid--9944e2c98998a89ffb2ffd19.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [cell](declarations/cell--5d7c18d98cf61c7e946cafed.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [nodes](declarations/nodes--4dc6a46462c8470ac8d35315.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [nodes_prefix](declarations/nodes-prefix--5ac6e5fde4e15f22bb18c661.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [old_cell_eq](declarations/old-cell-eq--7b339da99bfc4f0a8c1497a1.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [nodes_eq_map](declarations/nodes-eq-map--bb32c59d0560489238864af8.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [old_dictionary_lookup](declarations/old-dictionary-lookup--06eaa676ecd97dbcdd346dc0.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [old_node_lookup](declarations/old-node-lookup--b37089c78b4a15c5fc2f6d89.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [old_parent_lookup](declarations/old-parent-lookup--6146db18c43b09bdba09586f.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [node_lookup](declarations/node-lookup--b15add3043183dea8d2903b1.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [parent_lookup](declarations/parent-lookup--920c84004f415de1d5d36f33.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [nodes_validRanks](declarations/nodes-validranks--0087460a3f700d3c5665c572.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [expand_nodes](declarations/expand-nodes--b88e315071893e83fa60a9eb.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [decodeSlot_nodes](declarations/decodeslot-nodes--8028213c04604c848a8de7da.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [expandDictionary_nodes](declarations/expanddictionary-nodes--f5b535fd580d2442eacff3c3.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [oldPacked](declarations/oldpacked--ca6d767a35d07a911ef685d5.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [unpack_oldPacked](declarations/unpack-oldpacked--d11b4cc1b14b5e166fe017f3.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [oldPacked_valid](declarations/oldpacked-valid--ce6288cabcff3ab0650a4208.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [realPacked](declarations/realpacked--4f8fb8cb395de3148b97095e.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [new_trace_mem](declarations/new-trace-mem--6ab5df25b029313b5998ac88.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [realPacked_dictionary](declarations/realpacked-dictionary--6bf9af00e431a5b6696fa8be.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [representation](declarations/representation--60a333e70b5b413bc052d642.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [expandedPacked_representation](declarations/expandedpacked-representation--62bccfba54ba2a49c25f351e.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [unpack_realPacked](declarations/unpack-realpacked--0ef8bb9e70e98c19006e31ce.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [decode_representation](declarations/decode-representation--d9f5eb34bfb2f59e0adfb220.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [real_reference_count](declarations/real-reference-count--532dc5cc90d8c01c0ff2ab29.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [output_valid](declarations/output-valid--20f653aa2d8892f96670369d.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [output_recovers](declarations/output-recovers--86d9143bf025d94bef5503e7.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [expand_old_revision](declarations/expand-old-revision--068b72a582b228222a3dff8a.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [certified_old_references](declarations/certified-old-references--fc1b64f6c5cdfff2f5227706.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
