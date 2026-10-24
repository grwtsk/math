# Verification target: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableCheckpoint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f2c0d66b71552c1f2c6fcd1aaa3880f7b126333",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f2c0d66b71552c1f2c6fcd1aaa3880f7b126333`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableCheckpoint`](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCheckpoint.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [loopVertexDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/loopvertexdecidableeq--62f1a593b10773296e95cd2b.md) | 17 | `declaration-track:62f1a593b10773296e95cd2bdbe110a526548d3a261fd7f6028fc4b4f8111020` |
| 2 | `instance` | [loopTagDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/looptagdecidableeq--3bb94ca726b68ae57e9341f4.md) | 20 | `declaration-track:3bb94ca726b68ae57e9341f4d95591152ef840b44617a4bf50dfc4641c051e99` |
| 3 | `def` | [falseTag](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/falsetag--9be14629ed899a2aeca38138.md) | 23 | `declaration-track:9be14629ed899a2aeca381387e897041ce90d19961f064b116c29db5120b2445` |
| 4 | `def` | [trueTag](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/truetag--a8314ff7ab028518b2991aa0.md) | 26 | `declaration-track:a8314ff7ab028518b2991aa01c66a3653ab78b8fbf92c98c416f4e6f567e9b51` |
| 5 | `theorem` | [tags_distinct](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/tags-distinct--009a46ed54d2406cf0c87ad3.md) | 29 | `result-track:009a46ed54d2406cf0c87ad30198e632c9d9f0e9dff3896c407261c081654ced` |
| 6 | `def` | [falseOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/falseoccurrence--8c334219af193004324e7ca8.md) | 35 | `declaration-track:8c334219af193004324e7ca891926a56d06f449b7140820f67910baa6958ce02` |
| 7 | `def` | [trueOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/trueoccurrence--44417fa7be4f5fe3a592d948.md) | 38 | `declaration-track:44417fa7be4f5fe3a592d948651edbd91d86ec75f4611ac965738373fc29b932` |
| 8 | `def` | [seedRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/seedrows--02b287db841d36f4c95a7735.md) | 41 | `declaration-track:02b287db841d36f4c95a7735175e21ed1d3ef661dd6d046c4089e7e120fc01d5` |
| 9 | `def` | [seed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/seed--22805bd2d9aded8d4e8a00ec.md) | 44 | `declaration-track:22805bd2d9aded8d4e8a00ecf639d3366a2ef590ffd41f00bfb212b2cac748ef` |
| 10 | `def` | [before](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/before--68fa47cba739dcbf41585b5a.md) | 47 | `declaration-track:68fa47cba739dcbf41585b5a31406dc400b1af6d0689e7fe11cd1fd08302ef93` |
| 11 | `def` | [retainedRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/retainedrows--bc0fb4884860ecfdd11fed2a.md) | 50 | `declaration-track:bc0fb4884860ecfdd11fed2a01af9d3a8e4d2cc0a4fc580e08a1b234ffc7168e` |
| 12 | `theorem` | [seed_inventory](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/seed-inventory--fe3c6a46b5b609f26f5b18fd.md) | 53 | `result-track:fe3c6a46b5b609f26f5b18fdec63add97baae68238f70d61a9c1a2d52817e84e` |
| 13 | `theorem` | [before_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/before-dictionary--da67cc3eb44ab0d115e4bd8b.md) | 58 | `result-track:da67cc3eb44ab0d115e4bd8ba1a8d0bfb35e5cac5dee840bbd8449c67b05daa3` |
| 14 | `theorem` | [before_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/before-wellformed--b918e11799718dfd2d4a7ece.md) | 64 | `result-track:b918e11799718dfd2d4a7ecee22a12e530fcaec36442172ed86f6622f946c59c` |
| 15 | `theorem` | [before_nodes](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/before-nodes--eadfed8d224ed006b382d414.md) | 73 | `result-track:eadfed8d224ed006b382d414205c1394d0e6d4956203033b9e14ee78c19ee2ac` |
| 16 | `theorem` | [before_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/before-actual-decode--4fa27e57f249b8bdaa50800f.md) | 78 | `result-track:4fa27e57f249b8bdaa50800ffb7e46ee17d7a45e55c033b20eea54b9dd67291b` |
| 17 | `theorem` | [before_realEntries](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/before-realentries--6441f1b333f160e7b952a35e.md) | 84 | `result-track:6441f1b333f160e7b952a35eea6b8c8281072ff3c0d77a7441597853a187d7e8` |
| 18 | `theorem` | [before_realRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/before-realrows--364b5252cee8172c43b461d1.md) | 88 | `result-track:364b5252cee8172c43b461d1afa6c658d103566e003da7fd8032401dbd550bb8` |
| 19 | `def` | [after](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/after--f6289e3b5206a61d497910ba.md) | 91 | `declaration-track:f6289e3b5206a61d497910bad76a6f045cb90a0064ad69017d4683c7023871c8` |
| 20 | `theorem` | [retained_inventory](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/retained-inventory--0313a7e825f68d63c2567bd1.md) | 93 | `result-track:0313a7e825f68d63c2567bd181c3458190bb33617481cd96cf4614a16376f838` |
| 21 | `theorem` | [after_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/after-wellformed--b23d445cb3a7378d8af2af2d.md) | 98 | `result-track:b23d445cb3a7378d8af2af2dff43b36b88832987b56405bd653c5b650d5ad4f6` |
| 22 | `theorem` | [after_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/after-dictionary--a1eb4af3002afcbc73cd67a0.md) | 100 | `result-track:a1eb4af3002afcbc73cd67a07c359f0c6f2c593cfef16b58be4cd3265cb37024` |
| 23 | `theorem` | [after_nodes](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/after-nodes--6e890dfdf6a864e2775b0ea8.md) | 103 | `result-track:6e890dfdf6a864e2775b0ea83875c4a52d817efc3aa1eb632cae19af6d73b970` |
| 24 | `theorem` | [after_references](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/after-references--7f0a6a35aa42713ed14c0728.md) | 107 | `result-track:7f0a6a35aa42713ed14c072845c556c4eb12159551241aa888002fc4a4c34b98` |
| 25 | `theorem` | [after_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/after-actual-decode--ae196e4a247d9d775b4ca542.md) | 114 | `result-track:ae196e4a247d9d775b4ca54268b1e49813687fc670c6c0d96fc076f06178c570` |
| 26 | `theorem` | [actual_unused_branch_removed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/actual-unused-branch-removed--8bf4e8bbbe555d91119f23d7.md) | 117 | `result-track:8bf4e8bbbe555d91119f23d743c605b884616e58b0b2d1868f0f5fa8a6a0b970` |
| 27 | `theorem` | [actual_old_false_slot_remapped](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/actual-old-false-slot-remapped--d56ebf2b6cd4c6a614df95a9.md) | 123 | `result-track:d56ebf2b6cd4c6a614df95a95cce81ab191f44a59db78bfa2642f00243453ff4` |
| 28 | `theorem` | [actual_parent_slot_remapped](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/actual-parent-slot-remapped--5fd866b66c08a7af60a039a6.md) | 132 | `result-track:5fd866b66c08a7af60a039a620b989a20bb74a94ed752bc3154ef32da49eb936` |
| 29 | `theorem` | [actual_old_true_slot_removed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/actual-old-true-slot-removed--ac80bbf73e79049fb4f7ae7b.md) | 141 | `result-track:ac80bbf73e79049fb4f7ae7b97710dec31a9792125db1cad6515384f576675aa` |
| 30 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/example--94caf81f4f0e893e7d00bbb5.md) | 149 | `declaration-track:94caf81f4f0e893e7d00bbb532e1a5616049f40962e0b97f932cdaa2a0cbd8e9` |
| 31 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/example--f1284cd0607612fd4f75bd4b.md) | 153 | `declaration-track:f1284cd0607612fd4f75bd4b0414173df0dd07db81932054903bd110d6dafe23` |
| 32 | `def` | [stale](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/stale--14ce462c0a50d282eb72eb30.md) | 159 | `declaration-track:14ce462c0a50d282eb72eb30a87c86c107482258a4107c186f746fc3f4bfc461` |
| 33 | `theorem` | [stale_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/stale-wellformed--7f163359f3765c31ff5cf156.md) | 162 | `result-track:7f163359f3765c31ff5cf156baceec7b31b0fa5ce006ecec0fff7a46b77efc55` |
| 34 | `theorem` | [stale_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/stale-actual-decode--1c20f113667b404b9ba3430f.md) | 173 | `result-track:1c20f113667b404b9ba3430fac18902167619be24a235f38198796760168c9be` |
| 35 | `theorem` | [stale_histories_changed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/stale-histories-changed--0cc2eb34d5523cbf8b9bf694.md) | 179 | `result-track:0cc2eb34d5523cbf8b9bf6946b9f4d6ef6116a4eef8dedd747275bced131f5a3` |
| 36 | `def` | [parallelRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/parallelrows--002d09dfcc274e8dfadab541.md) | 186 | `declaration-track:002d09dfcc274e8dfadab541227ec089a2567c31babe34eb5a24d68d77b20293` |
| 37 | `def` | [post](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/post--71e624a93fc6f7711dd3e3d5.md) | 189 | `declaration-track:71e624a93fc6f7711dd3e3d5d6ca78afd43eb4e7c58d792e6453f542154636d7` |
| 38 | `def` | [direct](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/direct--ce35dca1b0c7cddbe038caf0.md) | 190 | `declaration-track:ce35dca1b0c7cddbe038caf01a12323b8dd77c333a901ba72fe5fce9b2753c18` |
| 39 | `def` | [stalePost](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/stalepost--b1491c72375520d76b072239.md) | 191 | `declaration-track:b1491c72375520d76b0722395adb3c166d3fb724e6e52972edea721ab5516af4` |
| 40 | `theorem` | [post_actual_update](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/post-actual-update--da32b3f1b25739c57b78dd24.md) | 193 | `result-track:da32b3f1b25739c57b78dd2468930b83a937effd7f9b949d3822fa1a23485c68` |
| 41 | `theorem` | [post_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/post-wellformed--95eb2059489b8b5f0bbcc520.md) | 195 | `result-track:95eb2059489b8b5f0bbcc52016d23ce6c92519ff87b594b236d1aa1f9aa65b10` |
| 42 | `theorem` | [post_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/post-dictionary--cfc0445228f23722a0a52366.md) | 197 | `result-track:cfc0445228f23722a0a52366c95a70a909254194e6d18c559372f7dc3d4a58df` |
| 43 | `theorem` | [post_references](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/post-references--b154a4476a349c17b2263350.md) | 207 | `result-track:b154a4476a349c17b2263350542bc6cd817654569f9239d4441f8ae406fd844e` |
| 44 | `theorem` | [post_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/post-actual-decode--00d3c344665e74886752de94.md) | 219 | `result-track:00d3c344665e74886752de94364eae09f7e4fa174165e661c2692e104fa8e8a5` |
| 45 | `theorem` | [direct_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/direct-dictionary--a2deda8439ac76f8b614af8c.md) | 226 | `result-track:a2deda8439ac76f8b614af8c8eeb4f6a4b645dc86ea1f67591336ac21c8158a6` |
| 46 | `theorem` | [direct_references](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/direct-references--aa8cc0d950502005504bb18b.md) | 237 | `result-track:aa8cc0d950502005504bb18bec6cf48339639fee35fc27c1640149acac322deb` |
| 47 | `theorem` | [actual_checkpoint_histories](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/actual-checkpoint-histories--befc485c92e4bd7694c15271.md) | 249 | `result-track:befc485c92e4bd7694c1527139b7323d0bad14f31cc3ce84fc2b380e92af5268` |
| 48 | `theorem` | [actual_arrays_differ](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/actual-arrays-differ--ccce8515f20ad3813afcdff5.md) | 254 | `result-track:ccce8515f20ad3813afcdff557007209921e3d7e2e237996c6c2f1a0bfb8e0f5` |
| 49 | `theorem` | [stalePost_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/stalepost-wellformed--fd085a32ffe4dc58e8787a91.md) | 260 | `result-track:fd085a32ffe4dc58e8787a91a00c85b96d8eef9dfd8699eb9bbbab1ef0ed6ff9` |
| 50 | `theorem` | [stalePost_bounds](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/stalepost-bounds--b732a761315b7c4d2caf9466.md) | 263 | `result-track:b732a761315b7c4d2caf9466a822afe7279ba9f8f24e09c3184212138f9c1aa7` |
| 51 | `theorem` | [stalePost_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/stalepost-actual-decode--7c4cd9c1bc5529f686b0dbfd.md) | 265 | `result-track:7c4cd9c1bc5529f686b0dbfd2f879584bb2b2eacf92301428ed971837c3cb57b` |
| 52 | `theorem` | [stale_slots_change_histories](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/stale-slots-change-histories--e88db344799c6f8df9c43ecb.md) | 274 | `result-track:e88db344799c6f8df9c43ecb5b039cf944d0aebb834fa4c70d0b76d68aab176a` |
| 53 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/example--ad368bb9826c284e8ee47ad6.md) | 282 | `declaration-track:ad368bb9826c284e8ee47ad6e5c39b5418c01c58b0be715e4468ad9a5acb715c` |
| 54 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/example--9b9c51430ff305e44e44b9bb.md) | 285 | `declaration-track:9b9c51430ff305e44e44b9bbedc3ac63227d45214c26a29cdd8377743003ffe7` |
| 55 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/example--5f105611fc0aa40771fadd63.md) | 292 | `declaration-track:5f105611fc0aa40771fadd6339db2c976a9a1753eab5847a47002a730f15d25b` |
| 56 | `instance` | [boolQuiver](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/boolquiver--6cbb285abba66f6acd6289b4.md) | 302 | `declaration-track:6cbb285abba66f6acd6289b432fe5d9cc30cd7d913cad525ccc9949fe9132024` |
| 57 | `instance` | [boolTagDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/booltagdecidableeq--362a0ffb54b23e8e92213828.md) | 304 | `declaration-track:362a0ffb54b23e8e9221382806b8841cd8856fa0f305d2d70e0c8fe6904a1f45` |
| 58 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCheckpoint.lean/declarations/example--fea678b4ce2461d434f683be.md) | 307 | `declaration-track:fea678b4ce2461d434f683beff283473eb52ba9d90b9afae4621a5ee55740b7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
