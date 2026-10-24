# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variante2f9fb7e6a70ad7bb71c743179dd1449c83fd5f03503250e8291ac33b2edb6da

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**86 observed declarations and anonymous commands**, 68 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante2f9fb7e6a70ad7bb71c743179dd1449c83fd5f03503250e8291ac33b2edb6da.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6c431b2fa322f7cef5fcc09b696f5759aee50c4`.

**Verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante2f9fb7e6a70ad7bb71c743179dd1449c83fd5f03503250e8291ac33b2edb6da.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [candidateIndices](declarations/candidateindices--575a6d61e04e6df59f79d585.md) | 15 | `BLOCKED_SOURCE_DEPENDENCY` |
| 2 | `theorem` | [candidateIndices_valid](declarations/candidateindices-valid--a4cfc2cf487506677767746b.md) | 21 | `BLOCKED_SOURCE_DEPENDENCY` |
| 3 | `theorem` | [candidateIndices_complete](declarations/candidateindices-complete--f728d03bade49da7ab50923c.md) | 41 | `BLOCKED_SOURCE_DEPENDENCY` |
| 4 | `theorem` | [candidateIndices_append_one](declarations/candidateindices-append-one--b64c88042f5b75d72a0b6865.md) | 58 | `BLOCKED_SOURCE_DEPENDENCY` |
| 5 | `structure` | [BucketState](declarations/bucketstate--b17eac4ee655261daa2e358e.md) | 70 | `BLOCKED_SOURCE_DEPENDENCY` |
| 6 | `def` | [BucketInvariant](declarations/bucketinvariant--1dae901bc62d2ebef7e8a402.md) | 75 | `BLOCKED_SOURCE_DEPENDENCY` |
| 7 | `def` | [emptyBuckets](declarations/emptybuckets--660bede1def745453bcb4ceb.md) | 78 | `BLOCKED_SOURCE_DEPENDENCY` |
| 8 | `def` | [appendBucket](declarations/appendbucket--aa28ebd5acdf3f237118f4c3.md) | 80 | `BLOCKED_SOURCE_DEPENDENCY` |
| 9 | `theorem` | [emptyBuckets_invariant](declarations/emptybuckets-invariant--4370003bb689d365049cec1b.md) | 85 | `BLOCKED_SOURCE_DEPENDENCY` |
| 10 | `theorem` | [appendBucket_selected](declarations/appendbucket-selected--aa7e0363c3f21587916ef43d.md) | 89 | `BLOCKED_SOURCE_DEPENDENCY` |
| 11 | `theorem` | [appendBucket_other](declarations/appendbucket-other--265972fbfcc8bf5ee89db8fc.md) | 93 | `BLOCKED_SOURCE_DEPENDENCY` |
| 12 | `theorem` | [appendBucket_preserves_invariant](declarations/appendbucket-preserves-invariant--41a265a9257fd90eb04d2783.md) | 98 | `BLOCKED_SOURCE_DEPENDENCY` |
| 13 | `theorem` | [bucket_valid](declarations/bucket-valid--5fbe16c8bb43d2606bbd8e94.md) | 107 | `BLOCKED_SOURCE_DEPENDENCY` |
| 14 | `theorem` | [bucket_complete](declarations/bucket-complete--9d0006d10a00b3197acce893.md) | 113 | `BLOCKED_SOURCE_DEPENDENCY` |
| 15 | `theorem` | [bucket_miss_implies_absent](declarations/bucket-miss-implies-absent--d28d6ebe7cd58bfab694abf7.md) | 119 | `BLOCKED_SOURCE_DEPENDENCY` |
| 16 | `theorem` | [bucket_existing_literal_found](declarations/bucket-existing-literal-found--2afdede715f8a84135600fb0.md) | 125 | `BLOCKED_SOURCE_DEPENDENCY` |
| 17 | `def` | [maintainBuckets](declarations/maintainbuckets--661a9b93578763ad14fcdbe8.md) | 134 | `BLOCKED_SOURCE_DEPENDENCY` |
| 18 | `theorem` | [maintain_hit](declarations/maintain-hit--1da0dee8507ae9a7b7466c30.md) | 141 | `BLOCKED_SOURCE_DEPENDENCY` |
| 19 | `theorem` | [maintain_miss](declarations/maintain-miss--115861b91148e1a75fb4d574.md) | 146 | `BLOCKED_SOURCE_DEPENDENCY` |
| 20 | `theorem` | [maintain_invalid_rejects](declarations/maintain-invalid-rejects--16a7a76f404b569f9ba90b4c.md) | 151 | `BLOCKED_SOURCE_DEPENDENCY` |
| 21 | `theorem` | [maintain_preserves_invariant](declarations/maintain-preserves-invariant--1f2b99970af00f29ef90e07b.md) | 155 | `BLOCKED_SOURCE_DEPENDENCY` |
| 22 | `theorem` | [maintain_literal_exact](declarations/maintain-literal-exact--37ff18e7134b734acfb6075a.md) | 173 | `BLOCKED_SOURCE_DEPENDENCY` |
| 23 | `theorem` | [maintain_old_slots](declarations/maintain-old-slots--c6effbf9f9cb762512fc1d2d.md) | 191 | `BLOCKED_SOURCE_DEPENDENCY` |
| 24 | `theorem` | [maintain_preserves_nodup](declarations/maintain-preserves-nodup--3f99e0593c122874e042b631.md) | 212 | `BLOCKED_SOURCE_DEPENDENCY` |
| 25 | `theorem` | [maintain_existing_never_appends](declarations/maintain-existing-never-appends--89b53fe62e57b07ea1a4a2ab.md) | 233 | `BLOCKED_SOURCE_DEPENDENCY` |
| 26 | `def` | [maintainMany](declarations/maintainmany--18d1fab88c22864a581b4007.md) | 239 | `BLOCKED_SOURCE_DEPENDENCY` |
| 27 | `theorem` | [maintainMany_preserves_invariant](declarations/maintainmany-preserves-invariant--5427b6ccd5faa5713bf9b6bf.md) | 245 | `BLOCKED_SOURCE_DEPENDENCY` |
| 28 | `theorem` | [constant_label_maintained_collision](declarations/constant-label-maintained-collision--2c50b8df82f69aa80c77d223.md) | 262 | `BLOCKED_SOURCE_DEPENDENCY` |
| 29 | `abbrev` | [Targets](declarations/targets--b44d72901f946e0f20584f94.md) | 271 | `BLOCKED_SOURCE_DEPENDENCY` |
| 30 | `def` | [targetLookup](declarations/targetlookup--2c843736b807a2a97a133b82.md) | 273 | `BLOCKED_SOURCE_DEPENDENCY` |
| 31 | `def` | [targetInsert](declarations/targetinsert--5c268982d2705f29f617fd32.md) | 279 | `BLOCKED_SOURCE_DEPENDENCY` |
| 32 | `theorem` | [targetLookup_sound](declarations/targetlookup-sound--b70cefbd21dbbadfb3c7f262.md) | 284 | `BLOCKED_SOURCE_DEPENDENCY` |
| 33 | `theorem` | [targetLookup_none_iff](declarations/targetlookup-none-iff--b5c97e2e999d3f000dfe4432.md) | 303 | `BLOCKED_SOURCE_DEPENDENCY` |
| 34 | `theorem` | [targetLookup_append_old](declarations/targetlookup-append-old--05132f6c2fc34ecb48c548e3.md) | 313 | `BLOCKED_SOURCE_DEPENDENCY` |
| 35 | `theorem` | [targetLookup_append_new](declarations/targetlookup-append-new--241b4b7b4c5fde3eef91fdae.md) | 331 | `BLOCKED_SOURCE_DEPENDENCY` |
| 36 | `theorem` | [targetInsert_hit](declarations/targetinsert-hit--6ae34d7a6aaf6e66d04de73f.md) | 344 | `BLOCKED_SOURCE_DEPENDENCY` |
| 37 | `theorem` | [targetInsert_conflict](declarations/targetinsert-conflict--413731b5fc20f2232ba0604a.md) | 348 | `BLOCKED_SOURCE_DEPENDENCY` |
| 38 | `theorem` | [targetInsert_fresh](declarations/targetinsert-fresh--3c28926bdd7162e1a05b942b.md) | 352 | `BLOCKED_SOURCE_DEPENDENCY` |
| 39 | `theorem` | [targetInsert_lookup](declarations/targetinsert-lookup--4309de164a8ebef27a6901f1.md) | 357 | `BLOCKED_SOURCE_DEPENDENCY` |
| 40 | `theorem` | [targetInsert_stable_slots](declarations/targetinsert-stable-slots--457afe3107d22c63b2a0d34f.md) | 374 | `BLOCKED_SOURCE_DEPENDENCY` |
| 41 | `theorem` | [targetInsert_unique](declarations/targetinsert-unique--25eeb28d5666076dbb43ce52.md) | 393 | `BLOCKED_SOURCE_DEPENDENCY` |
| 42 | `theorem` | [target_slot_in_range](declarations/target-slot-in-range--7e31a2b23f79cbf0dd5236e1.md) | 418 | `BLOCKED_SOURCE_DEPENDENCY` |
| 43 | `theorem` | [target_slot_injective](declarations/target-slot-injective--81b68f23f4b8670ddae13f65.md) | 422 | `BLOCKED_SOURCE_DEPENDENCY` |
| 44 | `structure` | [Route](declarations/route--8031488f311517a087cb2f39.md) | 428 | `BLOCKED_SOURCE_DEPENDENCY` |
| 45 | `structure` | [Lowered](declarations/lowered--ee7ecc47f12aa6ceaafff55e.md) | 434 | `BLOCKED_SOURCE_DEPENDENCY` |
| 46 | `def` | [lowerRoute](declarations/lowerroute--a66923aa9e55e06a15ff902c.md) | 439 | `BLOCKED_SOURCE_DEPENDENCY` |
| 47 | `theorem` | [lowerRoute_routes_exact](declarations/lowerroute-routes-exact--8b5506fd0fb80816ae5dddfc.md) | 443 | `BLOCKED_SOURCE_DEPENDENCY` |
| 48 | `theorem` | [lowerRoute_metadata_exact](declarations/lowerroute-metadata-exact--1df9903f6194ccf8161623d9.md) | 448 | `BLOCKED_SOURCE_DEPENDENCY` |
| 49 | `theorem` | [lowerRoute_preserves_alignment](declarations/lowerroute-preserves-alignment--775f9ed4955ed073e9723964.md) | 452 | `BLOCKED_SOURCE_DEPENDENCY` |
| 50 | `theorem` | [lowerRoute_metadata_slot](declarations/lowerroute-metadata-slot--484a487946ab10601df50e06.md) | 458 | `BLOCKED_SOURCE_DEPENDENCY` |
| 51 | `def` | [attachOutputs](declarations/attachoutputs--b0ee84fc2cca6e6d5a1a8d3b.md) | 465 | `BLOCKED_SOURCE_DEPENDENCY` |
| 52 | `theorem` | [attachOutputs_keys_exact](declarations/attachoutputs-keys-exact--c75a72e4642f657db868964a.md) | 472 | `BLOCKED_SOURCE_DEPENDENCY` |
| 53 | `theorem` | [attachOutputs_length](declarations/attachoutputs-length--9871304cc5135c99d5f1e168.md) | 490 | `BLOCKED_SOURCE_DEPENDENCY` |
| 54 | `theorem` | [attachOutputs_missing_rejects](declarations/attachoutputs-missing-rejects--c4403b94234a1f623bd38dcf.md) | 496 | `BLOCKED_SOURCE_DEPENDENCY` |
| 55 | `theorem` | [attachOutputs_exact_records](declarations/attachoutputs-exact-records--14851de485197b7760d9b48f.md) | 500 | `BLOCKED_SOURCE_DEPENDENCY` |
| 56 | `def` | [attachOccurrences](declarations/attachoccurrences--b737359b37b6d344105d0b0f.md) | 511 | `BLOCKED_SOURCE_DEPENDENCY` |
| 57 | `theorem` | [attachOccurrences_exact](declarations/attachoccurrences-exact--2993cbc2729d1be5cddaa08f.md) | 520 | `BLOCKED_SOURCE_DEPENDENCY` |
| 58 | `theorem` | [attachOccurrences_length](declarations/attachoccurrences-length--8bae1344509adbac894b084f.md) | 541 | `BLOCKED_SOURCE_DEPENDENCY` |
| 59 | `theorem` | [attachOccurrences_missing_rejects](declarations/attachoccurrences-missing-rejects--b557d435676faabd75aff4ba.md) | 546 | `BLOCKED_SOURCE_DEPENDENCY` |
| 60 | `theorem` | [attachOccurrences_unmarked_rejects](declarations/attachoccurrences-unmarked-rejects--a851d949436e2e3914dfb0ba.md) | 550 | `BLOCKED_SOURCE_DEPENDENCY` |
| 61 | `theorem` | [attachOccurrences_append](declarations/attachoccurrences-append--74ffb489c126c6b2f8a30da3.md) | 554 | `BLOCKED_SOURCE_DEPENDENCY` |
| 62 | `theorem` | [attachOccurrences_repetition](declarations/attachoccurrences-repetition--5644cec091ed2f2fdf0956f8.md) | 573 | `BLOCKED_SOURCE_DEPENDENCY` |
| 63 | `theorem` | [distinct_metadata_shared_output](declarations/distinct-metadata-shared-output--7e795dd0ed39c20b27a704ec.md) | 578 | `BLOCKED_SOURCE_DEPENDENCY` |
| 64 | `def` | [markedIndices](declarations/markedindices--10e4681e484758f94a46887b.md) | 585 | `BLOCKED_SOURCE_DEPENDENCY` |
| 65 | `def` | [MetadataAligned](declarations/metadataaligned--e503bf3da0faaeb250f4f5b4.md) | 591 | `BLOCKED_SOURCE_DEPENDENCY` |
| 66 | `theorem` | [empty_lowering_aligned](declarations/empty-lowering-aligned--3ac48c101c75798a993958ef.md) | 594 | `BLOCKED_SOURCE_DEPENDENCY` |
| 67 | `theorem` | [lowerRoute_flags_exact](declarations/lowerroute-flags-exact--3d5ad57dcd87af72c0affbc7.md) | 597 | `BLOCKED_SOURCE_DEPENDENCY` |
| 68 | `theorem` | [alignment_includes_lengths](declarations/alignment-includes-lengths--132db89be95cbaf2545d1ec8.md) | 602 | `BLOCKED_SOURCE_DEPENDENCY` |
| 69 | `theorem` | [attachOccurrences_shift](declarations/attachoccurrences-shift--3ad3813defd74d6cb106f700.md) | 607 | `BLOCKED_SOURCE_DEPENDENCY` |
| 70 | `theorem` | [reattach_all_marked_metadata](declarations/reattach-all-marked-metadata--9f9a85fbf3e454a4e99b7700.md) | 619 | `BLOCKED_SOURCE_DEPENDENCY` |
| 71 | `theorem` | [lowering_assembly_reattachment_history](declarations/lowering-assembly-reattachment-history--a145558fc16473c618d2ef25.md) | 635 | `BLOCKED_SOURCE_DEPENDENCY` |
| 72 | `theorem` | [lowering_assembly_reattachment_outputs](declarations/lowering-assembly-reattachment-outputs--367810b630f3e7becb01b081.md) | 645 | `BLOCKED_SOURCE_DEPENDENCY` |
| 73 | `theorem` | [reattached_occurrences_are_exact_history](declarations/reattached-occurrences-are-exact-history--b6aa8e98afc80a62225ceb0d.md) | 656 | `BLOCKED_SOURCE_DEPENDENCY` |
| 74 | `theorem` | [repeated_metadata_route_preserves_multiplicity](declarations/repeated-metadata-route-preserves-multiplicity--34f827cd1f90e9deac2c9484.md) | 662 | `BLOCKED_SOURCE_DEPENDENCY` |
| 75 | `theorem` | [candidateIndices_exact_labels](declarations/candidateindices-exact-labels--4e2f09e59be09755224cb6be.md) | 666 | `BLOCKED_SOURCE_DEPENDENCY` |
| 76 | `theorem` | [maintained_bucket_labels](declarations/maintained-bucket-labels--8dbbf1d23db60eacaef937a3.md) | 687 | `BLOCKED_SOURCE_DEPENDENCY` |
| 77 | `theorem` | [valid_candidates_never_malformed](declarations/valid-candidates-never-malformed--4b3f57a0d4fabf720651a1c5.md) | 694 | `BLOCKED_SOURCE_DEPENDENCY` |
| 78 | `theorem` | [valid_maintained_bucket_total](declarations/valid-maintained-bucket-total--4515d3edaf5a9a277eed1a8b.md) | 704 | `BLOCKED_SOURCE_DEPENDENCY` |
| 79 | `theorem` | [literal_metadata_roundtrip](declarations/literal-metadata-roundtrip--4f434560a0fd676324ffc8bc.md) | 716 | `BLOCKED_SOURCE_DEPENDENCY` |
| 80 | `theorem` | [produced_metadata_roundtrip](declarations/produced-metadata-roundtrip--8a5de2ef409083c49900d25e.md) | 724 | `BLOCKED_SOURCE_DEPENDENCY` |
| 81 | `def` | [TargetRepresentation](declarations/targetrepresentation--97cc0e65719f2ee5194cb6ea.md) | 737 | `BLOCKED_SOURCE_DEPENDENCY` |
| 82 | `theorem` | [targetLookup_append_unrelated](declarations/targetlookup-append-unrelated--c969e3f7ca15a9eb2ea867d8.md) | 740 | `BLOCKED_SOURCE_DEPENDENCY` |
| 83 | `theorem` | [targetInsert_other_lookup](declarations/targetinsert-other-lookup--6190f57e7265b6426cf9d820.md) | 749 | `BLOCKED_SOURCE_DEPENDENCY` |
| 84 | `theorem` | [dictionary_insert_correspondence](declarations/dictionary-insert-correspondence--6ac6b17106fed8f377dad167.md) | 766 | `BLOCKED_SOURCE_DEPENDENCY` |
| 85 | `theorem` | [targetLookup_complete](declarations/targetlookup-complete--838127cbc66adfaba9132070.md) | 779 | `BLOCKED_SOURCE_DEPENDENCY` |
| 86 | `theorem` | [target_slots_dense](declarations/target-slots-dense--44c6379c7ed9588232e491b4.md) | 799 | `BLOCKED_SOURCE_DEPENDENCY` |
