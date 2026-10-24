# GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableCompaction

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3d3198cda7884b91db996c0c461b24e9469a68a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableCompaction.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [loopVertexDecidableEq](declarations/loopvertexdecidableeq--a365bfb7c29fe2cdd878c6fd.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [loopTagDecidableEq](declarations/looptagdecidableeq--e86f43e457b3ac8ae0f524dc.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [falseTag](declarations/falsetag--b3412b6828ea526c3ba48b94.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [trueTag](declarations/truetag--bf3d6e4d6a621dafd7b76b64.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [tags_distinct](declarations/tags-distinct--3db9e27e42e7c1f5ae67115d.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [falseOccurrence](declarations/falseoccurrence--a342086e377c450832ca8749.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [trueOccurrence](declarations/trueoccurrence--3ddb4a860ac29fbb5b91572e.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [seedRows](declarations/seedrows--56a40e91cad2eebd679b3bdc.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [seed](declarations/seed--fbd4af4e3e86cb0545a9b735.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [before](declarations/before--7cd8a34df987a72734bdf48d.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [retainedRows](declarations/retainedrows--7d2fc06c2c26317551396964.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [seed_inventory](declarations/seed-inventory--fb1f94ef1b1563d8ce7cd8f1.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [before_dictionary](declarations/before-dictionary--c96a85d3dc65b796ca80a035.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [before_wellFormed](declarations/before-wellformed--a297e2139aaca70a463b5243.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [before_nodes](declarations/before-nodes--404e22bd4ccecbb781bb4107.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [before_actual_decode](declarations/before-actual-decode--1b18b2d4fdedaf2750440fc6.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [before_realEntries](declarations/before-realentries--9fde796aeaf5649ec303f472.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [before_realRows](declarations/before-realrows--43e2ce7b15d29040e62b2022.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [after](declarations/after--774e92627cf4122cff86ff65.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [retained_inventory](declarations/retained-inventory--764e1d31451934aa03387006.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [after_wellFormed](declarations/after-wellformed--3c90aa69c57d7112290bfbed.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [after_dictionary](declarations/after-dictionary--9583d5dea42e2c06db5d247d.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [after_nodes](declarations/after-nodes--d8831d9c2e77a1084fa704f8.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [after_references](declarations/after-references--94f98c95492f60b3d120bfdf.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [after_actual_decode](declarations/after-actual-decode--17461705803853ad6bf55c49.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [actual_unused_branch_removed](declarations/actual-unused-branch-removed--921139a8ce3a6c7323823ce2.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [actual_old_false_slot_remapped](declarations/actual-old-false-slot-remapped--f8b50c27a800004a1e1009f0.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [actual_parent_slot_remapped](declarations/actual-parent-slot-remapped--b1f7bac8d4de33bf252076c0.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [actual_old_true_slot_removed](declarations/actual-old-true-slot-removed--fbf3ad58325d1a2684b6ce88.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `example` | [(anonymous)](declarations/example--4f00442301766cafbf9b969b.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `example` | [(anonymous)](declarations/example--1d172965f80a9536910a7215.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [stale](declarations/stale--dcdffe4e64b01a2a99394c33.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [stale_wellFormed](declarations/stale-wellformed--e9d1a1b867f4c337c7ede6a7.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [stale_actual_decode](declarations/stale-actual-decode--a0f517fb2e9784b71f74dc9b.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [stale_histories_changed](declarations/stale-histories-changed--0132afcc74d99c2afeb15b32.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [oldCertificate](declarations/oldcertificate--81c896370c974489ccfb01bc.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `example` | [(anonymous)](declarations/example--53aaac4706213662c5bc6e62.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [boolQuiver](declarations/boolquiver--dd98e277cc1061392672608d.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [boolTagDecidableEq](declarations/booltagdecidableeq--c7228003b72b78495119c452.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `example` | [(anonymous)](declarations/example--df40c62d28d9bc8e62d0079e.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `example` | [(anonymous)](declarations/example--c5d2e6262b5ba5a536366ff6.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
