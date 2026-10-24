# Verification target: GRWTSK.Combinatorics.DirectedGraph.ParentTraceDictionary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8773b305729b117baed9151bfcf5425f50041a35",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/ParentTraceDictionary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8773b305729b117baed9151bfcf5425f50041a35`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/ParentTraceDictionary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/ParentTraceDictionary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.PrefixInventory`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Data.List.FinRange` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Node](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/node--86ecc6ddd68eda6e01fccf0c.md) | 38 | `declaration-track:86ecc6ddd68eda6e01fccf0c47db6b20e8d64be2dff21803a160a88804006020` |
| 2 | `structure` | [Representation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/representation--7364953af5a50f3b1b3da122.md) | 41 | `declaration-track:7364953af5a50f3b1b3da122b373776642943882e76b29efd1da76b4dcb4dd64` |
| 3 | `def` | [ValidRanks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/validranks--d6e09a54a9d86cf119557879.md) | 47 | `declaration-track:d6e09a54a9d86cf1195578790267b61b814cf393c47bc0ec96b6d10f72d4d7d1` |
| 4 | `def` | [expand](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/expand--6f15f1c307905db9b0be1619.md) | 55 | `declaration-track:6f15f1c307905db9b0be1619a8bd84b088e7fd5ac78b51b2e29b25f2c29938ff` |
| 5 | `def` | [decodeSlot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/decodeslot--0e37a6891deea66d001cd51e.md) | 74 | `declaration-track:0e37a6891deea66d001cd51eb112f407ddc3bd9590316d76b0605b28198275b4` |
| 6 | `def` | [expandDictionary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/expanddictionary--7cbea9695229b3cdc1cd7e61.md) | 80 | `declaration-track:7cbea9695229b3cdc1cd7e6148d679d54816191240599d42f83aa51a3db0769d` |
| 7 | `def` | [expandedPacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/expandedpacked--1cead6c1678abbefe7664790.md) | 85 | `declaration-track:1cead6c1678abbefe7664790ad910c17cf7213a1ac47d6dbcc208efa4c01c3b9` |
| 8 | `def` | [decodeReferences](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/decodereferences--b114c612c52234089c4bf8ce.md) | 92 | `declaration-track:b114c612c52234089c4bf8ce2fb986852f235b1c6af030b90018728b7cafde56` |
| 9 | `def` | [position](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/position--f1468b3ecb525afb43b9bba7.md) | 99 | `declaration-track:f1468b3ecb525afb43b9bba7bc7d4a870e6eebafbc38dd778da4916a964eadb7` |
| 10 | `theorem` | [position_lookup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/position-lookup--59e02a7210a2201157ef2b4f.md) | 103 | `result-track:59e02a7210a2201157ef2b4fd6c36b1bcc6210786ced89979312f8ebf1e694b7` |
| 11 | `theorem` | [position_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/position-lt--d30d5f3e9c6ae99ff1a2d36a.md) | 109 | `result-track:d30d5f3e9c6ae99ff1a2d36a1bc73ac9a8db000e0accf5edc565b6f1e5f6d38e` |
| 12 | `def` | [nodeFor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/nodefor--0165b5dd00483da6c933d9e0.md) | 116 | `declaration-track:0165b5dd00483da6c933d9e0f68a664f5cf48d6af5015d5ec6a5ef3167f96bbb` |
| 13 | `def` | [encodedNodes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/encodednodes--e31415c3ca956b2f8a51441d.md) | 121 | `declaration-track:e31415c3ca956b2f8a51441d8451ad8845a36b0358b149042fd698b1e2e54d5f` |
| 14 | `def` | [encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/encode--40185e8bc93074bed74b6908.md) | 125 | `declaration-track:40185e8bc93074bed74b690872f54fc98db1b388abb5ae75f6ca86bd9a9387ff` |
| 15 | `theorem` | [encoded_lookup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/encoded-lookup--a31c97d2b2500513e8412664.md) | 128 | `result-track:a31c97d2b2500513e84126645d1ea640acfe792ef58636f13331d7068596334d` |
| 16 | `theorem` | [parent_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/parent-mem--944682f0d3b98a2003876c10.md) | 134 | `result-track:944682f0d3b98a2003876c105f1ee24cc4eaff4cd4b79fb493570aaed1013e17` |
| 17 | `theorem` | [parent_join](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/parent-join--ac54b90aefa6b2f20ecc297f.md) | 140 | `result-track:ac54b90aefa6b2f20ecc297fd0c8e381b6b6d531fc811139a00f32f621816f89` |
| 18 | `theorem` | [parent_rank_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/parent-rank-lt--4a2431a3c4fcdb428e9c1aaf.md) | 149 | `result-track:4a2431a3c4fcdb428e9c1aafbdb64357f2c9707af57b6b04982ba31c6d824e4b` |
| 19 | `theorem` | [nodeFor_empty_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/nodefor-empty-iff--960526ec1d37f35ba0da03b9.md) | 155 | `result-track:960526ec1d37f35ba0da03b9de6032fcb2c843e098c122e2a5f63b1b7e6e12f4` |
| 20 | `theorem` | [encoded_validRanks](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/encoded-validranks--23986dbaff8c1f367ae91a8a.md) | 160 | `result-track:23986dbaff8c1f367ae91a8ae769270ef2c56c0a500471131bf5503f4c24a578` |
| 21 | `theorem` | [expand_encoded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/expand-encoded--053c5d5e65d4541121bcc2f9.md) | 174 | `result-track:053c5d5e65d4541121bcc2f9dc1e0e1afe720a8dabb1d5b87f8ceb857f921213` |
| 22 | `theorem` | [decodeSlot_encoded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/decodeslot-encoded--52180209253e51d1b44e82d4.md) | 200 | `result-track:52180209253e51d1b44e82d40cfc942c7811c8ea51c9e83b88760381d156d399` |
| 23 | `theorem` | [expandDictionary_encoded](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/expanddictionary-encoded--cb3085f2e9c2eab74f3c1b20.md) | 209 | `result-track:cb3085f2e9c2eab74f3c1b20df313bda91cb913b73685155cdc41fa6eaea9941` |
| 24 | `theorem` | [expandedPacked_encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/expandedpacked-encode--bd9aebbe3380f0979516c7bf.md) | 236 | `result-track:bd9aebbe3380f0979516c7bf74d2a95370a82419f918f92cb96734a8cf743f4b` |
| 25 | `theorem` | [decodeReferences_encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/decodereferences-encode--7e1ac7ae87011edf14332a66.md) | 242 | `result-track:7e1ac7ae87011edf14332a664275574f7e1d43b753a86935e1196c1b34204d70` |
| 26 | `theorem` | [decoded_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/decoded-valid--033cc34f706fdb39a13487db.md) | 248 | `result-track:033cc34f706fdb39a13487dbcf58366341abec521e145822ca0273fd9dfb7ef8` |
| 27 | `theorem` | [decoded_recovers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/decoded-recovers--367bbf05e28c5020e595d970.md) | 257 | `result-track:367bbf05e28c5020e595d9704d33ff8ea90b09f1df8cd264ca9a010b16256a0e` |
| 28 | `theorem` | [empty_mem_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/empty-mem-iff--caa291f409e75a9cbde8535a.md) | 266 | `result-track:caa291f409e75a9cbde8535a91ee2fb954707c6e32ed53d09cee47d1896268b7` |
| 29 | `theorem` | [empty_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/empty-count--5720595a8c284cc1d03455eb.md) | 277 | `result-track:5720595a8c284cc1d03455eb0db2b6f31cef3ed758eaf646fdfe827735dd11cf` |
| 30 | `theorem` | [no_root_decoder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/ParentTraceDictionary__SourceOccurrence748a75dc3db8d41d58ae1567.lean/declarations/no-root-decoder--aee98ca1a2e73b5d42c5b2bd.md) | 284 | `result-track:aee98ca1a2e73b5d42c5b2bd718e2526582eb6fbcccbc68b0ca2a43d4e77620c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
