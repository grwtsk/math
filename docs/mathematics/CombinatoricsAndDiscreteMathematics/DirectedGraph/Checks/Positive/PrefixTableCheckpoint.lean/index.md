# GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableCheckpoint

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**58 observed declarations and anonymous commands**, 34 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f2c0d66b71552c1f2c6fcd1aaa3880f7b126333`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [loopVertexDecidableEq](declarations/loopvertexdecidableeq--62f1a593b10773296e95cd2b.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [loopTagDecidableEq](declarations/looptagdecidableeq--3bb94ca726b68ae57e9341f4.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [falseTag](declarations/falsetag--9be14629ed899a2aeca38138.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [trueTag](declarations/truetag--a8314ff7ab028518b2991aa0.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [tags_distinct](declarations/tags-distinct--009a46ed54d2406cf0c87ad3.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [falseOccurrence](declarations/falseoccurrence--8c334219af193004324e7ca8.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [trueOccurrence](declarations/trueoccurrence--44417fa7be4f5fe3a592d948.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [seedRows](declarations/seedrows--02b287db841d36f4c95a7735.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [seed](declarations/seed--22805bd2d9aded8d4e8a00ec.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [before](declarations/before--68fa47cba739dcbf41585b5a.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [retainedRows](declarations/retainedrows--bc0fb4884860ecfdd11fed2a.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [seed_inventory](declarations/seed-inventory--fe3c6a46b5b609f26f5b18fd.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [before_dictionary](declarations/before-dictionary--da67cc3eb44ab0d115e4bd8b.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [before_wellFormed](declarations/before-wellformed--b918e11799718dfd2d4a7ece.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [before_nodes](declarations/before-nodes--eadfed8d224ed006b382d414.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [before_actual_decode](declarations/before-actual-decode--4fa27e57f249b8bdaa50800f.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [before_realEntries](declarations/before-realentries--6441f1b333f160e7b952a35e.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [before_realRows](declarations/before-realrows--364b5252cee8172c43b461d1.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [after](declarations/after--f6289e3b5206a61d497910ba.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [retained_inventory](declarations/retained-inventory--0313a7e825f68d63c2567bd1.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [after_wellFormed](declarations/after-wellformed--b23d445cb3a7378d8af2af2d.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [after_dictionary](declarations/after-dictionary--a1eb4af3002afcbc73cd67a0.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [after_nodes](declarations/after-nodes--6e890dfdf6a864e2775b0ea8.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [after_references](declarations/after-references--7f0a6a35aa42713ed14c0728.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [after_actual_decode](declarations/after-actual-decode--ae196e4a247d9d775b4ca542.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [actual_unused_branch_removed](declarations/actual-unused-branch-removed--8bf4e8bbbe555d91119f23d7.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [actual_old_false_slot_remapped](declarations/actual-old-false-slot-remapped--d56ebf2b6cd4c6a614df95a9.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [actual_parent_slot_remapped](declarations/actual-parent-slot-remapped--5fd866b66c08a7af60a039a6.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [actual_old_true_slot_removed](declarations/actual-old-true-slot-removed--ac80bbf73e79049fb4f7ae7b.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `example` | [(anonymous)](declarations/example--94caf81f4f0e893e7d00bbb5.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `example` | [(anonymous)](declarations/example--f1284cd0607612fd4f75bd4b.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [stale](declarations/stale--14ce462c0a50d282eb72eb30.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [stale_wellFormed](declarations/stale-wellformed--7f163359f3765c31ff5cf156.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [stale_actual_decode](declarations/stale-actual-decode--1c20f113667b404b9ba3430f.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [stale_histories_changed](declarations/stale-histories-changed--0cc2eb34d5523cbf8b9bf694.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [parallelRows](declarations/parallelrows--002d09dfcc274e8dfadab541.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [post](declarations/post--71e624a93fc6f7711dd3e3d5.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [direct](declarations/direct--ce35dca1b0c7cddbe038caf0.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [stalePost](declarations/stalepost--b1491c72375520d76b072239.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [post_actual_update](declarations/post-actual-update--da32b3f1b25739c57b78dd24.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [post_wellFormed](declarations/post-wellformed--95eb2059489b8b5f0bbcc520.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [post_dictionary](declarations/post-dictionary--cfc0445228f23722a0a52366.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [post_references](declarations/post-references--b154a4476a349c17b2263350.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [post_actual_decode](declarations/post-actual-decode--00d3c344665e74886752de94.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [direct_dictionary](declarations/direct-dictionary--a2deda8439ac76f8b614af8c.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [direct_references](declarations/direct-references--aa8cc0d950502005504bb18b.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [actual_checkpoint_histories](declarations/actual-checkpoint-histories--befc485c92e4bd7694c15271.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [actual_arrays_differ](declarations/actual-arrays-differ--ccce8515f20ad3813afcdff5.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [stalePost_wellFormed](declarations/stalepost-wellformed--fd085a32ffe4dc58e8787a91.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [stalePost_bounds](declarations/stalepost-bounds--b732a761315b7c4d2caf9466.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [stalePost_actual_decode](declarations/stalepost-actual-decode--7c4cd9c1bc5529f686b0dbfd.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [stale_slots_change_histories](declarations/stale-slots-change-histories--e88db344799c6f8df9c43ecb.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `example` | [(anonymous)](declarations/example--ad368bb9826c284e8ee47ad6.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `example` | [(anonymous)](declarations/example--9b9c51430ff305e44e44b9bb.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `example` | [(anonymous)](declarations/example--5f105611fc0aa40771fadd63.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [boolQuiver](declarations/boolquiver--6cbb285abba66f6acd6289b4.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [boolTagDecidableEq](declarations/booltagdecidableeq--362a0ffb54b23e8e92213828.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `example` | [(anonymous)](declarations/example--fea678b4ce2461d434f683be.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
