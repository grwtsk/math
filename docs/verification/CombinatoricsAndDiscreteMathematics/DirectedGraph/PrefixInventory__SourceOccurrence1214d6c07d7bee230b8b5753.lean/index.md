# Verification target: GRWTSK.Combinatorics.DirectedGraph.PrefixInventory

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5058f6bca1f6e0f7b896e091059c4f08fe3193e",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/PrefixInventory.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5058f6bca1f6e0f7b896e091059c4f08fe3193e`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/PrefixInventory.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/PrefixInventory.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.OccurrencePrefix`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrence91a9c8029ba9e6d66d16bbbd.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Logic.FiniteSequences.IndexedDictionary`](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence74ab65b8441ed9da3bc09548.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Data.List.Infix` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [traceRows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/declarations/tracerows--b2d647364d43ad39feca0e10.md) | 39 | `declaration-track:b2d647364d43ad39feca0e105794844e2e294bf0fb2a4c3d08b5dda11bb80bb1` |
| 2 | `def` | [inventory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/declarations/inventory--41dbe3be47734c806143f871.md) | 46 | `declaration-track:41dbe3be47734c806143f871cfe2f9e899cf646e6d69ecf05af65d4d7c35ee2c` |
| 3 | `theorem` | [mem_inventory_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/declarations/mem-inventory-iff--64b257086f764d3d6e1360e8.md) | 51 | `result-track:64b257086f764d3d6e1360e8ff7ed116755d836e6f65c7d32ec0879ef96ec598` |
| 4 | `theorem` | [trace_mem_inventory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/declarations/trace-mem-inventory--e469c37f6960938b8c530d79.md) | 56 | `result-track:e469c37f6960938b8c530d79e29f32b5aa6501f10af06b59d318b0759552c7a9` |
| 5 | `theorem` | [prefix_closed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/declarations/prefix-closed--2e7ac1c1d5e3b597e778d594.md) | 62 | `result-track:2e7ac1c1d5e3b597e778d594accc6cea2099707340e4a44a769e329633f9b633` |
| 6 | `theorem` | [inventory_nodup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/declarations/inventory-nodup--92fbc2983de9fa2bef109258.md) | 69 | `result-track:92fbc2983de9fa2bef1092588d8987b6ad74d46cbd32b7f66b51885a50551990` |
| 7 | `theorem` | [inventory_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/declarations/inventory-valid--3f61c5ff8c7a302241935c1b.md) | 73 | `result-track:3f61c5ff8c7a302241935c1b1da6bb72b166ddd2e96f4d06771a60abdd601451` |
| 8 | `def` | [occurrence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/declarations/occurrence--227d8f7a086004d763a96e14.md) | 83 | `declaration-track:227d8f7a086004d763a96e1415d904d7a6e41b9047deedda319f00610ec0b8f1` |
| 9 | `theorem` | [trace_occurrence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/declarations/trace-occurrence--09befb4fa2b90d8082cbf679.md) | 88 | `result-track:09befb4fa2b90d8082cbf67917ef677673e1eb468bda955b366828b254d689d5` |
| 10 | `theorem` | [occurrence_trace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/declarations/occurrence-trace--c5fe9ae8fb968e891dde460a.md) | 94 | `result-track:c5fe9ae8fb968e891dde460a7e8439c1fa8a8fb18de78c0deab63cad80514ef3` |
| 11 | `theorem` | [inventory_length_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/declarations/inventory-length-le--3819fb75da60a826951a6861.md) | 100 | `result-track:3819fb75da60a826951a68615d1d6d9b2c8d47686a67268915a0a2954e7a6098` |
| 12 | `def` | [packed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/declarations/packed--d01ec5ef1bdbf90072d758dc.md) | 110 | `declaration-track:d01ec5ef1bdbf90072d758dcabf8abc382743113974445fd88f18e4dbbf3defd` |
| 13 | `theorem` | [unpack_packed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/declarations/unpack-packed--627a67b0180ff180e7a2df13.md) | 117 | `result-track:627a67b0180ff180e7a2df136e0cf5d86846fa11f3446f8be3b0c1a38965e38c` |
| 14 | `theorem` | [packed_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/declarations/packed-valid--9147f6ffe2335d22d3824419.md) | 127 | `result-track:9147f6ffe2335d22d38244193bef094ebc557dee05c8d91ef9fdc7cc2614e785` |
| 15 | `theorem` | [references_length](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/declarations/references-length--a806dc1033264058ad098e86.md) | 136 | `result-track:a806dc1033264058ad098e864e0b946a453735651993ddea4e84fccd40f398bb` |
| 16 | `def` | [recoverRows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/declarations/recoverrows--120fe94b514861336fa8da4a.md) | 142 | `declaration-track:120fe94b514861336fa8da4a319bf0209b239e02e3a9f0d5fef4238d4e2ddb6c` |
| 17 | `theorem` | [traceRows_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/declarations/tracerows-valid--f4d08bbe3ad449fb053b6202.md) | 149 | `result-track:f4d08bbe3ad449fb053b620243d14cd423b81cfddf4c77b349be478d7a4b2b47` |
| 18 | `theorem` | [recoverRows_traceRows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/declarations/recoverrows-tracerows--7088d8c9d9135a0a02120daa.md) | 157 | `result-track:7088d8c9d9135a0a02120daa061c732c055133ba995f4c819dd543b7ead6d342` |
| 19 | `theorem` | [recoverRows_of_unpack](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/declarations/recoverrows-of-unpack--655e01b3eca6a7542f63a346.md) | 174 | `result-track:655e01b3eca6a7542f63a346efd30cce8c9197797917cd4e7a60c88471eeaad2` |
| 20 | `theorem` | [unpack_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/declarations/unpack-valid--c3b124c231f0d9f1a4a45abf.md) | 185 | `result-track:c3b124c231f0d9f1a4a45abfcc32551cc9b040f5591d8977a1150c0f397ee026` |
| 21 | `theorem` | [unpack_recovers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/declarations/unpack-recovers--53d10101667b5efcb19d567d.md) | 195 | `result-track:53d10101667b5efcb19d567deff9221caeb30a810f9aa5f994a5e19a9ebb13a4` |
| 22 | `theorem` | [inventory_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/declarations/inventory-nil--1ff1d96a561f0cc32e225cce.md) | 202 | `result-track:1ff1d96a561f0cc32e225cce5932862fee7b95afd2bfa78dfd5b16c2d60ad16e` |
| 23 | `theorem` | [inventory_singleton_origin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/declarations/inventory-singleton-origin--848545df925907aaf54a88dc.md) | 205 | `result-track:848545df925907aaf54a88dc5d220f45d26db248faffe2c0f2b642a2c3f4bf23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
