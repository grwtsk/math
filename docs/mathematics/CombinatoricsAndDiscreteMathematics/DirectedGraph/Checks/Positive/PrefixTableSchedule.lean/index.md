# GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableSchedule

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**76 observed declarations and anonymous commands**, 47 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableSchedule.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `902c14fc3565e07c0380a1cb04860978835c7ce4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableSchedule.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [loopVertexDecidableEq](declarations/loopvertexdecidableeq--db30d287da545e023e572590.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [loopTagDecidableEq](declarations/looptagdecidableeq--d0477ed9b99687c7568f421a.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [falseTag](declarations/falsetag--b2f1bbed2594b95b6d67afd9.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [trueTag](declarations/truetag--d331b1afb38cb75022f8f92d.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [tags_distinct](declarations/tags-distinct--d3de482950af680bd91fa42c.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [falseOccurrence](declarations/falseoccurrence--91e47d741bf557e206a7b488.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [trueOccurrence](declarations/trueoccurrence--8668465f5678d16a228d6df5.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [seedRows](declarations/seedrows--1373b2afacabd56006bb74f0.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [seed](declarations/seed--343947836bac788c4cbbb1bc.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [before](declarations/before--484c1389281c1308089428e2.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [retainedRows](declarations/retainedrows--107637657e041cd49a13f05c.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [seed_inventory](declarations/seed-inventory--3a9069bd95e7a023ff618e91.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [before_dictionary](declarations/before-dictionary--b754b9636cbed67c57282a07.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [before_wellFormed](declarations/before-wellformed--044e6c7889e7d938d430f280.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [before_nodes](declarations/before-nodes--477e891acdae455e02d30147.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [before_actual_decode](declarations/before-actual-decode--98f5898b37f42689e188c082.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [before_realEntries](declarations/before-realentries--41655737121087618fb83665.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [before_realRows](declarations/before-realrows--d6df0916f605ec30629ef939.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [after](declarations/after--d39987d0efd07ad9ddb52c08.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [retained_inventory](declarations/retained-inventory--87372ab06f1efea14d7b6244.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [after_wellFormed](declarations/after-wellformed--9527f9ddec728f750feb73ea.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [after_dictionary](declarations/after-dictionary--70f8be674a15b2a771f78d80.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [after_nodes](declarations/after-nodes--a69baea547dafb041b68d072.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [after_references](declarations/after-references--d8d611df67cfc78c5f860eb6.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [after_actual_decode](declarations/after-actual-decode--3ade6b219b59e5b13e36da1e.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [actual_unused_branch_removed](declarations/actual-unused-branch-removed--ae617f591bc0b4c6f3eca981.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [actual_old_false_slot_remapped](declarations/actual-old-false-slot-remapped--7ac7ebbf5ab28fc659a055c5.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [actual_parent_slot_remapped](declarations/actual-parent-slot-remapped--47793a357409eebd3657f21b.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [actual_old_true_slot_removed](declarations/actual-old-true-slot-removed--ede9023574c6f621d90d54a1.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `example` | [(anonymous)](declarations/example--ee398c5376c9eff702c02a30.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `example` | [(anonymous)](declarations/example--ab058f67cba226134ced4132.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [stale](declarations/stale--60aa677af896013435878b01.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [stale_wellFormed](declarations/stale-wellformed--370be3904c5e7159c9fdea01.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [stale_actual_decode](declarations/stale-actual-decode--1b4d85caa0a68578c02cb8a5.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [stale_histories_changed](declarations/stale-histories-changed--2f12bc24cb14b43e6d69b671.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [parallelRows](declarations/parallelrows--5361edbdcf17f70651cd9b1e.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [post](declarations/post--34fc38493124ab53ea2a747b.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [direct](declarations/direct--024bbdf8a30a3420e46681b1.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [stalePost](declarations/stalepost--75f6e255fa250c58f420d1cb.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [post_actual_update](declarations/post-actual-update--e8c22e41b96352d2734481e0.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [post_wellFormed](declarations/post-wellformed--dcc47e603f544ed404115ed6.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [post_dictionary](declarations/post-dictionary--6150e2b192ee392eb9ff5427.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [post_references](declarations/post-references--6cab92d22b199b08cd7e6e53.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [post_actual_decode](declarations/post-actual-decode--143571e7c1cc1a8d57f34cdd.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [direct_dictionary](declarations/direct-dictionary--ab45dc621601815593da6c1f.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [direct_references](declarations/direct-references--67f0e5fb1a96b1a9c089f56e.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [actual_checkpoint_histories](declarations/actual-checkpoint-histories--d91cd88a9aadc2fed485e838.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [actual_arrays_differ](declarations/actual-arrays-differ--7ba51de138ca7afc2ccfcadb.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [stalePost_wellFormed](declarations/stalepost-wellformed--5b76fcd62ddbd022bd424aee.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [stalePost_bounds](declarations/stalepost-bounds--a8f53fb527e2b502382e6209.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [stalePost_actual_decode](declarations/stalepost-actual-decode--4592cee163a301f4ffe29d3a.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [stale_slots_change_histories](declarations/stale-slots-change-histories--77c4d64846eb570373b2d62b.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [actions](declarations/actions--c1d21cac7d7177cf63b31918.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [scheduled](declarations/scheduled--b102f6608935b63fbee688cc.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [finalRows](declarations/finalrows--0f16b72ddf179f0820518b81.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [scheduled_actual_producer](declarations/scheduled-actual-producer--c1a7feda0ea62107cc3a046c.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [post_realRows](declarations/post-realrows--ed8ce578f6941317bc580b11.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [final_inventory](declarations/final-inventory--c406e1bdbb9e99e6131824bc.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [scheduled_dictionary](declarations/scheduled-dictionary--7341935d749f8d1bda6ef829.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [scheduled_references](declarations/scheduled-references--f53f7f295025deeceede37b5.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [scheduled_wellFormed](declarations/scheduled-wellformed--d3748c21155c2c81583e52ba.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [scheduled_actual_decode](declarations/scheduled-actual-decode--53bfd3bbee3202a78bc2dcfc.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [actual_erased_schedule](declarations/actual-erased-schedule--a724ebf6a47953eda2f1d3ad.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [after_slots_preserved_to_post](declarations/after-slots-preserved-to-post--8a680832914846da27b0444e.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [composedLookup](declarations/composedlookup--e4c1190225b1964af4623570.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [directLookup](declarations/directlookup--0dcb574560cab358678270e4.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [composed_lookup_none](declarations/composed-lookup-none--eed103c5f9600a0ecd8bdae7.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [direct_lookup_some](declarations/direct-lookup-some--7162eb27a5a3bd51737fd842.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [matching_endpoint_dictionaries](declarations/matching-endpoint-dictionaries--6e8b7f9c98f03d2bc24aa922.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [actual_partial_remap_composition_failure](declarations/actual-partial-remap-composition-failure--8f84838540b54b2b78a44981.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `example` | [(anonymous)](declarations/example--a65f4d098e1cbe0c9f5cba9f.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `example` | [(anonymous)](declarations/example--b6fee8c5f883ed44764ad5a2.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `example` | [(anonymous)](declarations/example--e4ed0b36c6e543d3795278bc.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [boolQuiver](declarations/boolquiver--c0c038e536ae1ac1cc5de130.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [boolTagDecidableEq](declarations/booltagdecidableeq--048585d6634a3297664d165b.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `example` | [(anonymous)](declarations/example--6349376b6f3788a0c5f18e8f.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
