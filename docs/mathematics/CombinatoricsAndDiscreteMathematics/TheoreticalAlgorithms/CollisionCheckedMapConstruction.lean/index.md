# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CollisionCheckedMapConstruction

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**156 observed declarations and anonymous commands**, 124 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CollisionCheckedMapConstruction.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `684e8c0936705c83918d1dc59e13dfb153b48034`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CollisionCheckedMapConstruction.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [ConstructionError](declarations/constructionerror--329a200b4d16d6a66479e73b.md) | 15 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [copyRecord](declarations/copyrecord--b00cc25d616a2014518bb8e9.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [equalRecord](declarations/equalrecord--f6dca81289cfc86316301b6b.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [copyRecord_exact](declarations/copyrecord-exact--89e28fe2bb8bee9a62c4f371.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [copyRecord_label](declarations/copyrecord-label--6ea239c1fbe796519e887677.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [copyRecord_bytes](declarations/copyrecord-bytes--be6785a7d8b6658438111eb7.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [copyRecord_kind](declarations/copyrecord-kind--fc3e8213a5d07cafa1a085d9.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [equalRecord_exact](declarations/equalrecord-exact--d118c7648ae6b0b4ea912fbc.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [equalRecord_false](declarations/equalrecord-false--bbcfbf0f07de3f482915d952.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [seedFiles](declarations/seedfiles--f20d7408835ae8576da8c854.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [seedFiles_exact](declarations/seedfiles-exact--bc9b641752605a56b37452eb.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [taxonomy_seed_empty](declarations/taxonomy-seed-empty--d45b3dac66faaaed4f4e5ddd.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [archive_seed_complete](declarations/archive-seed-complete--d09f6c2493c1e383427b4c2a.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [actionLoop](declarations/actionloop--cb86333c1383e73d504ce026.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [actionLoop_toOption](declarations/actionloop-tooption--934cbb820eef5d3f02df25e9.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [actionLoop_success_iff](declarations/actionloop-success-iff--19827b58007c821123d85335.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [actionLoop_success_exact](declarations/actionloop-success-exact--90d05c170f18e5f630fe2c00.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [actionLoop_unique](declarations/actionloop-unique--ef3f14116bb3a5dbea7ecab6.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [actionLoop_other_area](declarations/actionloop-other-area--7747f56b0b3bc6a8f10ce013.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [actionLoop_missing_inserted](declarations/actionloop-missing-inserted--6f5f5035193e4bbab2337608.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [actionLoop_equal_coalesced](declarations/actionloop-equal-coalesced--37f5d75072dc6321cb24f997.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [actionLoop_unequal_rejected](declarations/actionloop-unequal-rejected--086bbdd991a632ae577dffa3.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [actionLoop_never_limit](declarations/actionloop-never-limit--47c8308155bc54b1deb37801.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [actionLoop_collision_selected](declarations/actionloop-collision-selected--cb721b0306b76939297f9ba8.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [placeholderLoop](declarations/placeholderloop--1b3d58269004807750ae47f0.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [placeholderLoop_exact](declarations/placeholderloop-exact--82d8176ee1099728a42e17b2.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [placeholderLoop_remove_noop](declarations/placeholderloop-remove-noop--ef2799783c69eab5240ff82e.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [placeholderLoop_write_overwrites](declarations/placeholderloop-write-overwrites--23bc8662ebf6a74f38a98c8f.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [placeholderLoop_existing_overwrites](declarations/placeholderloop-existing-overwrites--066bf1ed8fba34c8879a84f5.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [finishFiles](declarations/finishfiles--49ddf9fac475ba6237cc3042.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [constructFiles](declarations/constructfiles--f6bb8245214c8d57ad9e7254.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [constructFiles_success_iff](declarations/constructfiles-success-iff--45178396a448a47d5a340d47.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [constructFiles_success_expected](declarations/constructfiles-success-expected--38dfb05f2e9f3d7385508a30.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [constructFiles_success_exact](declarations/constructfiles-success-exact--0523589b507229f785d769df.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [constructFiles_success_costs](declarations/constructfiles-success-costs--dfb78f6d916308fb09e1a588.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [constructFiles_success_quota](declarations/constructfiles-success-quota--1faf302b8b8403c954e8bffd.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [constructFiles_success_bounds](declarations/constructfiles-success-bounds--45ce7497ef72fca13f2d4f7f.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [constructFiles_success_unique](declarations/constructfiles-success-unique--a9d7dee8fc67518825b811ad.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [constructFiles_complete](declarations/constructfiles-complete--338521fb5f4f5ac145de8399.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [constructFiles_checked_complete](declarations/constructfiles-checked-complete--fbe0b675c767ddfeb7ae8f31.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [constructFiles_limit_iff](declarations/constructfiles-limit-iff--42cbdb7e61c7ff3c29f6df8e.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [constructFiles_collision_iff](declarations/constructfiles-collision-iff--0735e6a8675f9ebe87c6fe46.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [constructFiles_collision_selected](declarations/constructfiles-collision-selected--7f394fe694b3bd60907a7128.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [constructFiles_excess_rejected](declarations/constructfiles-excess-rejected--81e28005f783303dd3b38d2a.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [constructFiles_enumeration_bounds](declarations/constructfiles-enumeration-bounds--5d39ebdc869b47fd8bddfc13.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [constructFiles_literal_exact](declarations/constructfiles-literal-exact--6740adbb06ca09a19e567c6d.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [constructFiles_literal_bounds](declarations/constructfiles-literal-bounds--d4500e69977c5984bd12b16f.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [constructFiles_decoded_literal_bounds](declarations/constructfiles-decoded-literal-bounds--f91d2bacd72349c50cea1d53.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `inductive` | [Origin](declarations/origin--e472429b4082c0a3cb83a380.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `structure` | [Roots](declarations/roots--b01c8e30be4a1fa4ba49a728.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `structure` | [RoutedAction](declarations/routedaction--3b663a088cd6f686b40bacdd.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `structure` | [WriteSource](declarations/writesource--f36325175551678683a82962.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [originRoot](declarations/originroot--ca4a1d9bf4d764c57d4e32c7.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [writeSource](declarations/writesource--368af8563314536b3656bd8b.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [writeSource_exact](declarations/writesource-exact--d3e6a10e86273777d9a3ea88.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [source_origin_root](declarations/source-origin-root--4670f461176bf9e87250d87c.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [destination_origin_root](declarations/destination-origin-root--1f5a96a0533b5cf7167934a0.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [preservation_origin_root](declarations/preservation-origin-root--5179bb497bbfa3d4a24907f7.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [archiveWrites](declarations/archivewrites--16d923b61aa3a6b0d8116cf1.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [actionWrites](declarations/actionwrites--9d7ec6a4a25fb79aea675ce2.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [emptyWrites](declarations/emptywrites--ee2145d59bf1214536cd7cad.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [writesMatch](declarations/writesmatch--8934ae2614c45611114b8328.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [constructWrites](declarations/constructwrites--15accf84ace27138bdf7a215.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [archiveWrites_keys](declarations/archivewrites-keys--138c87fd7d7a5a6ff0003519.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [archiveWrites_records](declarations/archivewrites-records--51ce30754dd5cbfaab8ee27b.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [archiveWrites_unique](declarations/archivewrites-unique--57430a63e65d08da7dd53531.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [actionWrites_unique](declarations/actionwrites-unique--72377f1c3024d223b5454240.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [actionWrites_other_area](declarations/actionwrites-other-area--347ec0d2d797d5e71e4676c7.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [actionWrites_first_source_retained](declarations/actionwrites-first-source-retained--367dc1f99460daa7cd7d4ba3.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [actionWrites_new_source_selected](declarations/actionwrites-new-source-selected--bfbd51638033c95cf219b7b5.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [emptyWrites_unique](declarations/emptywrites-unique--ab6feaa2b57160a52e5d300b.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [emptyWrites_missing_nonempty_rejected](declarations/emptywrites-missing-nonempty-rejected--b8a984a39bc39dc4f4c9d227.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [emptyWrites_present_source_retained](declarations/emptywrites-present-source-retained--43b441e62d54f628be704b9a.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [emptyWrites_empty_source_selected](declarations/emptywrites-empty-source-selected--b6c5f1c600bd75dfe2519688.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [writesMatch_exact](declarations/writesmatch-exact--219d9fa4defa9bc7566bbb08.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [writesMatch_record_permutation](declarations/writesmatch-record-permutation--930987ff4325104f9980b880.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [writesMatch_key_domain](declarations/writesmatch-key-domain--7893e9f220bea71a7702edde.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [writesMatch_payload_metadata_sum](declarations/writesmatch-payload-metadata-sum--a36a6df5fd45fd8857d9b078.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [fillEmptyWrites](declarations/fillemptywrites--2f71d19b7a9710733ebe2373.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [emptyAdmitted](declarations/emptyadmitted--95271641fec7597deddfdeda.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [emptyWrites_success_fill](declarations/emptywrites-success-fill--0f40a8fc6cd43fb99ae05b90.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [emptyWrites_complete](declarations/emptywrites-complete--73b11c1cd83d2ff84f10cf10.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [emptyWrites_success_allowed](declarations/emptywrites-success-allowed--f4a7773f5dd3fccfc39305e9.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [emptyWrites_success_iff](declarations/emptywrites-success-iff--dda1f58bbb8c27e3a302eda4.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [constructWrites_success_iff](declarations/constructwrites-success-iff--4533f0c50a7fd5f6f320c99c.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [constructWrites_success_match](declarations/constructwrites-success-match--496984cb5f3e02f4046cbebf.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [constructWrites_success_unique](declarations/constructwrites-success-unique--4bc06306f4a5db67e784fa4b.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [constructWrites_success_full_records](declarations/constructwrites-success-full-records--efbf5c77b35a1b3bdfc9222f.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [constructWrites_success_exact_keys](declarations/constructwrites-success-exact-keys--6e405e1462a63b95c407301b.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [constructWrites_success_byte_bounds](declarations/constructwrites-success-byte-bounds--292770763ddb5ef900ec9093.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [overwrite_member_sources](declarations/overwrite-member-sources--13f51e311e5d0359b05c2ac8.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [actionWrites_preserves](declarations/actionwrites-preserves--029c82c90baa76b837b25f34.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [emptyWrites_preserves](declarations/emptywrites-preserves--3c1469de52af42d87dd6842c.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [actionWrites_preserves_lookup](declarations/actionwrites-preserves-lookup--eb07457cc901ee1cfd7770f0.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [actionWrites_append](declarations/actionwrites-append--a5c1bfef9527814f36d2c72e.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [actionWrites_first_choice_exact](declarations/actionwrites-first-choice-exact--bd6103ff2b63f4223efc9157.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [emptyWrites_preserves_lookup](declarations/emptywrites-preserves-lookup--998873a2e5b6180e3d2c49c9.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [constructWrites_preserves_selected_source](declarations/constructwrites-preserves-selected-source--1c5bbb4b2d3583e1d3ae12d4.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [archiveWrites_lookup](declarations/archivewrites-lookup--dcdc45ed590a637265b97a5c.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [constructWrites_archive_source_priority](declarations/constructwrites-archive-source-priority--2741c5fa4424d2a29879b498.md) | 844 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [selectedSource](declarations/selectedsource--5ab739fce16aa0553a1d5df4.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [constructWrites_source_coverage](declarations/constructwrites-source-coverage--6f5ac207370168ef20883607.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `abbrev` | [DirectoryMap](declarations/directorymap--ae1959d2141f57e3afb1cdb3.md) | 896 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [seedDirectories](declarations/seeddirectories--54394ea7da7e495f08280abd.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [parentDirectoryFold](declarations/parentdirectoryfold--b7ba70a6a42dc5af61989124.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [constructDirectories](declarations/constructdirectories--5e357b02cc9c18baf042dc83.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [lexicalParents](declarations/lexicalparents--930bae8a148160cb8525c180.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [lexicalParent](declarations/lexicalparent--a253daa2b7a5e24c3ec3abd0.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [lexicalParents_exact](declarations/lexicalparents-exact--7b75f686226828fafcd6a17f.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `instance` | [(anonymous)](declarations/instance--4cf2b16b945b3836698d55ed.md) | 932 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [lexicalParent_strict_prefix](declarations/lexicalparent-strict-prefix--fb5a9361a4f21f3a77545c3a.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [lexicalParent_nonempty](declarations/lexicalparent-nonempty--ca9afeab1b5a32f0bd86d3bd.md) | 941 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [seedDirectories_empty](declarations/seeddirectories-empty--ce575a8982d7f5cb1559f4f7.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [seedDirectories_taxonomy_empty_ignored](declarations/seeddirectories-taxonomy-empty-ignored--fd77977bbc5f73b406e0aa81.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [seedDirectories_archive_empty_retained](declarations/seeddirectories-archive-empty-retained--5fbce60147b35762c99bec40.md) | 950 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [zeroFold_unique](declarations/zerofold-unique--28a9776bf40df244c247a4d2.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [seedDirectories_unique](declarations/seeddirectories-unique--582881c3d2e4c15692237ad1.md) | 958 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [parentDirectoryFold_unique](declarations/parentdirectoryfold-unique--f6ccd4f07bf90736177851c9.md) | 972 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [constructDirectories_unique](declarations/constructdirectories-unique--295e83da029730702deedaec.md) | 979 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [zeroFold_lookup](declarations/zerofold-lookup--e35967ca53695a91465e53e3.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [seedDirectories_lookup](declarations/seeddirectories-lookup--e4bb9a5214e345f16b91a3d8.md) | 994 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [parentDirectoryFold_lookup](declarations/parentdirectoryfold-lookup--e1b0b47593e31687a82a62fe.md) | 1012 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [lexicalParents_order_independent](declarations/lexicalparents-order-independent--0f75de070aaa9176d22d2b7f.md) | 1037 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [constructDirectories_lookup](declarations/constructdirectories-lookup--7e2de361d8639b9b299daf36.md) | 1049 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [constructDirectories_parent_coverage](declarations/constructdirectories-parent-coverage--49633f8e222fba5f6275aafa.md) | 1063 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [constructDirectories_no_extra](declarations/constructdirectories-no-extra--52ccccd61693d181adfecfb8.md) | 1070 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [fixture_taxonomy_constructed](declarations/fixture-taxonomy-constructed--68d0e00b8ab9e2d05f9393b3.md) | 1084 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [fixture_archive_constructed](declarations/fixture-archive-constructed--ff7ea406467cafc7a68f04d3.md) | 1087 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [fixture_conflict_rejected](declarations/fixture-conflict-rejected--049e5d238e226485493f2562.md) | 1090 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [fixture_kind_conflict_rejected](declarations/fixture-kind-conflict-rejected--ca7b8ad3e31d8677cf653ab3.md) | 1093 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [fixture_length_conflict_rejected](declarations/fixture-length-conflict-rejected--5a5e9dceb285c9ac46c17f17.md) | 1098 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [fixture_archive_seed_conflict_rejected](declarations/fixture-archive-seed-conflict-rejected--7c5f038229fecf1cff5e8c46.md) | 1103 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [fixture_other_area_conflict_ignored](declarations/fixture-other-area-conflict-ignored--de47d7b37f2e51082546a07e.md) | 1107 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [fixture_archive_placeholder_ignored](declarations/fixture-archive-placeholder-ignored--926ee1caa7001941186bd804.md) | 1111 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [fixture_nonempty_replaced_by_placeholder](declarations/fixture-nonempty-replaced-by-placeholder--19acab3108ced33574d87fc1.md) | 1115 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [fixture_final_quota_not_prefix_quota](declarations/fixture-final-quota-not-prefix-quota--4fed8aa350090fe2e97925ea.md) | 1119 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [fixture_excess_output_rejected](declarations/fixture-excess-output-rejected--b6e7ef519ed5de36cad138cb.md) | 1123 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [fixture_empty_both_constructed](declarations/fixture-empty-both-constructed--7745ac6c86178e2b67da216a.md) | 1127 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [concrete_directory_closure](declarations/concrete-directory-closure--dc6f98e52ecf02299936f8d2.md) | 1130 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [fixture_unicode_lexical_parents](declarations/fixture-unicode-lexical-parents--06edc804d704b21a6efa44e2.md) | 1138 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [fixture_leading_slash_has_no_empty_parent](declarations/fixture-leading-slash-has-no-empty-parent--dd747174016530a5e84ff417.md) | 1140 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [fixture_trailing_slash_parent_retained](declarations/fixture-trailing-slash-parent-retained--f8fcaef2f82feeb48634d54d.md) | 1142 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [fixture_no_slash_has_no_parent](declarations/fixture-no-slash-has-no-parent--65bbce5847a8207c73825858.md) | 1144 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `def` | [fixtureRoots](declarations/fixtureroots--69b8597fd8c1a1f7d39c65b2.md) | 1146 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `def` | [fixtureRoutedActions](declarations/fixtureroutedactions--865e1549a583004bf34dbad8.md) | 1148 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [fixture_write_origins_all_routed](declarations/fixture-write-origins-all-routed--d717719760c991350b94d5c0.md) | 1153 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [fixture_write_archive_source_first](declarations/fixture-write-archive-source-first--19e3655c427ec2d214de826a.md) | 1160 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [fixture_write_first_action_source_wins](declarations/fixture-write-first-action-source-wins--989920c988681e12296f1540.md) | 1164 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [fixture_write_empty_source_synthesized](declarations/fixture-write-empty-source-synthesized--6916cb163db9e61e0bc8f0f7.md) | 1170 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [fixture_write_missing_nonempty_rejected](declarations/fixture-write-missing-nonempty-rejected--190bd0dfcb1b0209fa10fcfa.md) | 1174 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [fixture_write_missing_zero_lean_rejected](declarations/fixture-write-missing-zero-lean-rejected--f276d2a0f188c9beb8c8356d.md) | 1178 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [fixture_write_metadata_mismatch_rejected](declarations/fixture-write-metadata-mismatch-rejected--b46e0ec7657681ac176ab67c.md) | 1182 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [fixture_write_extra_target_rejected](declarations/fixture-write-extra-target-rejected--5d78c80c272c14b67b66368b.md) | 1186 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `def` | [fixtureParents](declarations/fixtureparents--278c1b8a240b52915255d7ab.md) | 1190 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [fixture_taxonomy_directories_closed](declarations/fixture-taxonomy-directories-closed--eb28226ab627536063426387.md) | 1195 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [fixture_archive_directories_closed](declarations/fixture-archive-directories-closed--cd5acced66d0edf77db96105.md) | 1200 | `BLOCKED_NATIVE_ADMISSION` |
