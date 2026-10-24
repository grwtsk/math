# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PrefixInventory

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34153984b56e347eea3bd224fa216652c06a765d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34153984b56e347eea3bd224fa216652c06a765d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.OccurrencePrefix`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrenceaf9927a5eca7d26fc713e7f3.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IndexedDictionary`](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence0b76c73035a9807242a57307.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Data.List.Infix` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [traceRows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/declarations/tracerows--053e3429e7cabf3cf33bdb37.md) | 39 | `declaration-track:053e3429e7cabf3cf33bdb3780f78801079510524f9c06a7ddb176ed7bded1ff` |
| 2 | `def` | [inventory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/declarations/inventory--9c74560281eb17655cd0a965.md) | 46 | `declaration-track:9c74560281eb17655cd0a9652ef302455deffb9e7bed932c0d9dc5ada394a9e6` |
| 3 | `theorem` | [mem_inventory_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/declarations/mem-inventory-iff--dcc697c21b58cb1138d6e93e.md) | 51 | `result-track:dcc697c21b58cb1138d6e93e02f70b724e98ffdc7ac236b7069223a65559ed35` |
| 4 | `theorem` | [trace_mem_inventory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/declarations/trace-mem-inventory--39ef98b1d9ab5e003fbc19bd.md) | 56 | `result-track:39ef98b1d9ab5e003fbc19bd2629c9279c76573d1a966c0cd3940ffaeade4b65` |
| 5 | `theorem` | [prefix_closed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/declarations/prefix-closed--7a2c798c376746dce9e476b3.md) | 62 | `result-track:7a2c798c376746dce9e476b31e01530c580e3e0ad3a99866c598a19ad5b2eb89` |
| 6 | `theorem` | [inventory_nodup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/declarations/inventory-nodup--6050af63129346013be61616.md) | 69 | `result-track:6050af63129346013be616164ad7cfc862208590e41ef92e757800198d0ca10c` |
| 7 | `theorem` | [inventory_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/declarations/inventory-valid--ec20a658d1cc57b3d68dfa1c.md) | 73 | `result-track:ec20a658d1cc57b3d68dfa1c7102d089429dd65e09f483133f591f6e1f5e3c43` |
| 8 | `def` | [occurrence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/declarations/occurrence--6e8cdb6bad83535a3682f21e.md) | 83 | `declaration-track:6e8cdb6bad83535a3682f21e038f4e19af03c1e22981d6e633af71f998d9525e` |
| 9 | `theorem` | [trace_occurrence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/declarations/trace-occurrence--6aa628923f87893f8fc14acf.md) | 88 | `result-track:6aa628923f87893f8fc14acf7d155c87db39b6dd9f81544abc35bca52918bf50` |
| 10 | `theorem` | [occurrence_trace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/declarations/occurrence-trace--1e6c830248359032464c6c48.md) | 94 | `result-track:1e6c830248359032464c6c48a9395e5558c066744c111ae9218d6379cd5871dc` |
| 11 | `theorem` | [inventory_length_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/declarations/inventory-length-le--d9e11fc7be275be09d1f6300.md) | 100 | `result-track:d9e11fc7be275be09d1f630003203d6402752291338a5d8b9ff8a59bc1fb2171` |
| 12 | `def` | [packed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/declarations/packed--9191acc5aeb733ca9302ee70.md) | 110 | `declaration-track:9191acc5aeb733ca9302ee707ad2e47340878645f9bb7626d324520944e416b3` |
| 13 | `theorem` | [unpack_packed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/declarations/unpack-packed--569dd2171e3a24d6942e5b4d.md) | 117 | `result-track:569dd2171e3a24d6942e5b4d7e24fd614ad53882927d69a2e8b5f3770056d644` |
| 14 | `theorem` | [packed_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/declarations/packed-valid--6d7c5f7ddc23323b8fd32ec6.md) | 127 | `result-track:6d7c5f7ddc23323b8fd32ec6d3d13f873b1c8c8c0a122f7ecb0e8b02ae31a262` |
| 15 | `theorem` | [references_length](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/declarations/references-length--957fb494dbe36d0175814b35.md) | 136 | `result-track:957fb494dbe36d0175814b35c1ac858ff973a366830a4777779d544c6d70c085` |
| 16 | `def` | [recoverRows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/declarations/recoverrows--305bae8689391bc0488791e9.md) | 142 | `declaration-track:305bae8689391bc0488791e9719b22d38f6b9a738b53471a55c144a85ef6b13b` |
| 17 | `theorem` | [traceRows_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/declarations/tracerows-valid--a8cbf1db032111db3368f61a.md) | 149 | `result-track:a8cbf1db032111db3368f61a1f22281004b527657abfe610a2a9bfb7f0d6b0d1` |
| 18 | `theorem` | [recoverRows_traceRows](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/declarations/recoverrows-tracerows--caf0f3639fc55d589be2c9e2.md) | 157 | `result-track:caf0f3639fc55d589be2c9e24e78005dcbac9ea75d18923d56b1a42d05c95ca9` |
| 19 | `theorem` | [recoverRows_of_unpack](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/declarations/recoverrows-of-unpack--e24a627cc62397a65f82636e.md) | 174 | `result-track:e24a627cc62397a65f82636ef92a23877e8a2315dcc856e6a97b9af263077152` |
| 20 | `theorem` | [unpack_valid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/declarations/unpack-valid--a6594acafc00bd31d2529cb5.md) | 185 | `result-track:a6594acafc00bd31d2529cb584752eda4ed2bca17a156bdbb048bbd577893531` |
| 21 | `theorem` | [unpack_recovers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/declarations/unpack-recovers--d50c7a295b3ed36997fc66a9.md) | 195 | `result-track:d50c7a295b3ed36997fc66a9e6e0f9a8aa02bbc78fdbff8d6251f8501e95c438` |
| 22 | `theorem` | [inventory_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/declarations/inventory-nil--000c059669ff50faf4a2faea.md) | 202 | `result-track:000c059669ff50faf4a2faea09cfacb778595c60d5dd8a74719a11a7b868d66f` |
| 23 | `theorem` | [inventory_singleton_origin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/declarations/inventory-singleton-origin--50824169dfa1b4c1849c18cd.md) | 205 | `result-track:50824169dfa1b4c1849c18cdd4478101f89dde8bfc621cd28542dd7cdcfe0ecf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
