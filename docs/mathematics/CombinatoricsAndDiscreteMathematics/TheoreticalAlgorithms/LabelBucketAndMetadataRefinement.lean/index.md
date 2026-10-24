# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LabelBucketAndMetadataRefinement

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**86 observed declarations and anonymous commands**, 68 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LabelBucketAndMetadataRefinement.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9e8928571e0ff6ef87651dca0baa00b51fb0b3c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LabelBucketAndMetadataRefinement.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [candidateIndices](declarations/candidateindices--a70843bf832ba30efddf2bb2.md) | 15 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [candidateIndices_valid](declarations/candidateindices-valid--d3e2d79d8a5815ea735eaab7.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [candidateIndices_complete](declarations/candidateindices-complete--550e49c7c57e158f05b292b3.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [candidateIndices_append_one](declarations/candidateindices-append-one--cf7c8d3a56eb94f7a57c972b.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [BucketState](declarations/bucketstate--ca7ebea0826a013c9cb62bda.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [BucketInvariant](declarations/bucketinvariant--8ff908cc54a611ce1a059b0f.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [emptyBuckets](declarations/emptybuckets--1e544d27aed343b48d000319.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [appendBucket](declarations/appendbucket--d0e894e30cf2f33a71829bf9.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [emptyBuckets_invariant](declarations/emptybuckets-invariant--d4628e7b9fbd04bdc4ea8ee2.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [appendBucket_selected](declarations/appendbucket-selected--fbc4ac73a2981003c03837ac.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [appendBucket_other](declarations/appendbucket-other--79f8e728bb8688d04959b8a0.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [appendBucket_preserves_invariant](declarations/appendbucket-preserves-invariant--3a9c701e61de547f75756c32.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [bucket_valid](declarations/bucket-valid--7bc8c3b50d56381d52543b3b.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [bucket_complete](declarations/bucket-complete--35587d1c7af07e2a3f7b12be.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [bucket_miss_implies_absent](declarations/bucket-miss-implies-absent--4e4c9547dcac7477be46d820.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [bucket_existing_literal_found](declarations/bucket-existing-literal-found--85ce4881289c3d2817ed25a7.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [maintainBuckets](declarations/maintainbuckets--8e55e71349424e63769d909e.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [maintain_hit](declarations/maintain-hit--3fc2a00ea743c7fdeab8e2cb.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [maintain_miss](declarations/maintain-miss--e20e5dffbae00b0abb79a58a.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [maintain_invalid_rejects](declarations/maintain-invalid-rejects--8eb54d5aa5c4cc8369b1ee7b.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [maintain_preserves_invariant](declarations/maintain-preserves-invariant--971e3a3fbf74a8c5123068e4.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [maintain_literal_exact](declarations/maintain-literal-exact--fccd1026e39b34bc59561e1e.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [maintain_old_slots](declarations/maintain-old-slots--5299c9301e8073c605d83fdc.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [maintain_preserves_nodup](declarations/maintain-preserves-nodup--bb089c1b0737f630c0640b87.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [maintain_existing_never_appends](declarations/maintain-existing-never-appends--5ca0731574c62d06c0192524.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [maintainMany](declarations/maintainmany--331d65353d63885da5bdcb84.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [maintainMany_preserves_invariant](declarations/maintainmany-preserves-invariant--08f166fa3e8b66b027b6e932.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [constant_label_maintained_collision](declarations/constant-label-maintained-collision--1e7cf6a66d8db21518c53e19.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `abbrev` | [Targets](declarations/targets--bf79f5e210f9336d8294d740.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [targetLookup](declarations/targetlookup--d547605b950d89ca825ffa73.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [targetInsert](declarations/targetinsert--f2ea9f9efb0d8c30dbe80f0e.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [targetLookup_sound](declarations/targetlookup-sound--9c0f30a697e9822c2917a930.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [targetLookup_none_iff](declarations/targetlookup-none-iff--d66a91ff1f3871ca48d9d395.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [targetLookup_append_old](declarations/targetlookup-append-old--8af827ecd8f492e185a81f9a.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [targetLookup_append_new](declarations/targetlookup-append-new--23184474555e2cbb3d8c5e8b.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [targetInsert_hit](declarations/targetinsert-hit--fbb6a57775f67a778c62ffa8.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [targetInsert_conflict](declarations/targetinsert-conflict--aac2f6602bfc3a689662d015.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [targetInsert_fresh](declarations/targetinsert-fresh--253c2c165c15dcdcb61cb8f2.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [targetInsert_lookup](declarations/targetinsert-lookup--21add951cf3ed01c3d1615a9.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [targetInsert_stable_slots](declarations/targetinsert-stable-slots--d67fcaefc01111892e2e5132.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [targetInsert_unique](declarations/targetinsert-unique--2f36a2217cee4411c533c52f.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [target_slot_in_range](declarations/target-slot-in-range--46a621c02dc7810f3236e81f.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [target_slot_injective](declarations/target-slot-injective--875518fcba4be5bf902881b8.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `structure` | [Route](declarations/route--2a6017f360eb246b5d4be2f3.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `structure` | [Lowered](declarations/lowered--e291c6acb6ce82afc673b506.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [lowerRoute](declarations/lowerroute--f5b088806a597200635e1c46.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [lowerRoute_routes_exact](declarations/lowerroute-routes-exact--d6d0071c74cb9a03c43e9c9c.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [lowerRoute_metadata_exact](declarations/lowerroute-metadata-exact--61f709af3e19de73744d5d15.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [lowerRoute_preserves_alignment](declarations/lowerroute-preserves-alignment--1205eb211f708488cca351ae.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [lowerRoute_metadata_slot](declarations/lowerroute-metadata-slot--39fadceb9728b4523ea47c0e.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [attachOutputs](declarations/attachoutputs--ceec571bb228fae1fbf86333.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [attachOutputs_keys_exact](declarations/attachoutputs-keys-exact--06d0cc554407196ee90d4580.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [attachOutputs_length](declarations/attachoutputs-length--68dff4a2bb740173caa22c1f.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [attachOutputs_missing_rejects](declarations/attachoutputs-missing-rejects--46620634d6eac73f66f1e82f.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [attachOutputs_exact_records](declarations/attachoutputs-exact-records--e36fdd7e9fc68bb8d548d04a.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [attachOccurrences](declarations/attachoccurrences--576727eb477b072c3773f613.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [attachOccurrences_exact](declarations/attachoccurrences-exact--bb7adf43b9afde90454d362b.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [attachOccurrences_length](declarations/attachoccurrences-length--5842efa7b321138fc5cf810d.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [attachOccurrences_missing_rejects](declarations/attachoccurrences-missing-rejects--a25c9af1f756d4345cce3455.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [attachOccurrences_unmarked_rejects](declarations/attachoccurrences-unmarked-rejects--a06583c176270df34149b015.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [attachOccurrences_append](declarations/attachoccurrences-append--215366658bae288408509784.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [attachOccurrences_repetition](declarations/attachoccurrences-repetition--f4488944c921de9b45005c98.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [distinct_metadata_shared_output](declarations/distinct-metadata-shared-output--e2113aacffc4bfbc6a6e4eb7.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [markedIndices](declarations/markedindices--cff142bd407407083b9209b1.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [MetadataAligned](declarations/metadataaligned--d15b0a11aa42d1bfed3e559a.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [empty_lowering_aligned](declarations/empty-lowering-aligned--50035776b687accec3031126.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [lowerRoute_flags_exact](declarations/lowerroute-flags-exact--bb30edf97ab3c6095359e17a.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [alignment_includes_lengths](declarations/alignment-includes-lengths--b8b5dec369c5ac086fc07148.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [attachOccurrences_shift](declarations/attachoccurrences-shift--3e1d93118a72cce07222c98b.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [reattach_all_marked_metadata](declarations/reattach-all-marked-metadata--82d7a135b693a1cac5f216f1.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [lowering_assembly_reattachment_history](declarations/lowering-assembly-reattachment-history--cf63a04439310ec751ec3eef.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [lowering_assembly_reattachment_outputs](declarations/lowering-assembly-reattachment-outputs--a23162be2158fa4ed03f6617.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [reattached_occurrences_are_exact_history](declarations/reattached-occurrences-are-exact-history--aeb7b0ceae4224d1991f0d4f.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [repeated_metadata_route_preserves_multiplicity](declarations/repeated-metadata-route-preserves-multiplicity--e98873c29e7404cd57b6c1e1.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [candidateIndices_exact_labels](declarations/candidateindices-exact-labels--c2b6c571468d34ca1ed181eb.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [maintained_bucket_labels](declarations/maintained-bucket-labels--4816c3d4e1c75a24f14b2fd4.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [valid_candidates_never_malformed](declarations/valid-candidates-never-malformed--c3f2fbab010ae0662383ef39.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [valid_maintained_bucket_total](declarations/valid-maintained-bucket-total--968709b8c6f5467ec9c8fd23.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [literal_metadata_roundtrip](declarations/literal-metadata-roundtrip--b2429f0dd2daf31bafcd9de5.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [produced_metadata_roundtrip](declarations/produced-metadata-roundtrip--db6f68d9e3fe8b8cfb11eb46.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [TargetRepresentation](declarations/targetrepresentation--1b0bee9f3c8a0674213230cc.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [targetLookup_append_unrelated](declarations/targetlookup-append-unrelated--4c8462953c5bc839f1fa7018.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [targetInsert_other_lookup](declarations/targetinsert-other-lookup--21fcae1965df5df2352f2559.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [dictionary_insert_correspondence](declarations/dictionary-insert-correspondence--03f84982e61a51dd0edd9fcd.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [targetLookup_complete](declarations/targetlookup-complete--26352e939d085a1a44763c09.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [target_slots_dense](declarations/target-slots-dense--3e72d5f899f9692068819cbc.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
