# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ByteDictionaryAndOutputMaps

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**81 observed declarations and anonymous commands**, 61 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteDictionaryAndOutputMaps.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d90a5f4c93ca32408a1fc00881a04b0ffd43a7ae`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteDictionaryAndOutputMaps.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [findSlot](declarations/findslot--e88176a450f7d8a996c7d587.md) | 14 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [intern](declarations/intern--8e8ec5798a77e496d38bff06.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [findSlot_sound](declarations/findslot-sound--9cfd5b888121a11110c8b6b2.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [findSlot_none_iff](declarations/findslot-none-iff--07de946b1e74ebb3322f2651.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [intern_literal](declarations/intern-literal--8ea95ec7046ad02597ec1bdf.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [intern_old_slots](declarations/intern-old-slots--e502a8a85cf33b1659706794.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [intern_prefix](declarations/intern-prefix--ebcdaca02010c52dd90f69d5.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [intern_reuses_exact_slot](declarations/intern-reuses-exact-slot--eabd983ef56eb6a604b06202.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [intern_appends_iff_missing](declarations/intern-appends-iff-missing--dd0de8cf9335e899be50274b.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [intern_preserves_nodup](declarations/intern-preserves-nodup--cfc60de06f9efef4f595167d.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [sourceSlot](declarations/sourceslot--bed3ebba381930029e85a3d2.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [collect](declarations/collect--c604bf05481f9000fd287c0e.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sourcePayload_slot](declarations/sourcepayload-slot--6b9ffbb2a36a19129a546f72.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [collect_binding_order](declarations/collect-binding-order--eaf2f260241ec80685727ffd.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [collect_length](declarations/collect-length--e532c64b94fab548fd1689e3.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [collect_exact_realization](declarations/collect-exact-realization--cd612d0ab88967f9398b91b5.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [collect_complete_source_order](declarations/collect-complete-source-order--feb46fc9768f67366e79bd6a.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [missing_named_source_rejects](declarations/missing-named-source-rejects--510beb62605aa03b3832332e.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [missing_literal_slot_rejects](declarations/missing-literal-slot-rejects--fe3620486562df67eac895dc.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [outputKey](declarations/outputkey--a7d334f3b6234acfa6815ebd.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [outputLookup](declarations/outputlookup--a91072987ab7be5c0e31852a.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [insertOutput](declarations/insertoutput--45240c7d14ddc1b6586d2b5b.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [mergeOutputs](declarations/mergeoutputs--d4f5bcf5198d6ca43d3fa676.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [outputLookup_none_iff](declarations/outputlookup-none-iff--09f22bcf546cfd79f4308b75.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [outputLookup_append](declarations/outputlookup-append--4f950dcabd2318ba4d7d1661.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [insertOutput_preserves_lookup](declarations/insertoutput-preserves-lookup--5797ed3d3b7639f728a6a8c8.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [insertOutput_contains_row](declarations/insertoutput-contains-row--5dfa76a61de719cf775e698e.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [insertOutput_key_inventory](declarations/insertoutput-key-inventory--7052ab69fa5b483fedda5204.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [insertOutput_unique](declarations/insertoutput-unique--467eaf92bcfeb3fdf4a63911.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mergeOutputs_preserves_lookup](declarations/mergeoutputs-preserves-lookup--b0f9b570558406b82e5fcc54.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mergeOutputs_covers_rows](declarations/mergeoutputs-covers-rows--6a7161061086d53658c6f0dd.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mergeOutputs_key_inventory](declarations/mergeoutputs-key-inventory--8556450137be3672c6fae2db.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mergeOutputs_unique](declarations/mergeoutputs-unique--e6102eb7cc9df55d6fdebbd1.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [conflicting_output_rows_rejected](declarations/conflicting-output-rows-rejected--0a18cdc608ddab79a4265ced.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [renderOutputs_lookup](declarations/renderoutputs-lookup--8d0cd4ce6e06ee33b5f47522.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [occurrenceOutput](declarations/occurrenceoutput--cd8e68e95a7fadc1635521d5.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [renderOccurrences_covered](declarations/renderoccurrences-covered--bc64f11065c3ca91515f9419.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [RawRoute](declarations/rawroute--1791b6a208e802921ba79cb7.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [routeBindings](declarations/routebindings--866d86c388dbf1a1453e2ed5.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [retentionCheck](declarations/retentioncheck--5298de82de67e1ef8ac250d4.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [archiveOutputs](declarations/archiveoutputs--b8673ec13ec16df446f84deb.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [placeholderOutputs](declarations/placeholderoutputs--6ad23cab28fe5ae42ba4816b.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `structure` | [Produced](declarations/produced--093907114161e76d8bea34ae.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [inputCheck](declarations/inputcheck--65aac0de2c341ca51d0a98e7.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [produce](declarations/produce--53d3edfeaa5cc1ab98031075.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [inputCheck_spec](declarations/inputcheck-spec--9a2e3cfc97f1fd235415fa5e.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [produce_spec](declarations/produce-spec--365770be99f84facb1873647.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [produced_occurrence_order](declarations/produced-occurrence-order--28ac196ab09e0df771e5229b.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [produced_occurrence_count](declarations/produced-occurrence-count--7d9e70ccc4896d901ebf9384.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [produced_complete_source_occurrences](declarations/produced-complete-source-occurrences--278c7cffbf1eecfc13a9f78b.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [produced_output_keys_unique](declarations/produced-output-keys-unique--8634715dbfcfbb6c51923df3.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [produced_complete_output_inventory](declarations/produced-complete-output-inventory--ef257cb86f7a506efa4800b6.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [produced_exact_decode](declarations/produced-exact-decode--e114ba4183e9dda3401811e6.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [retentionCheck_exact](declarations/retentioncheck-exact--fab84b2ee35ccb3557e008e3.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [produced_raw_retention_exact_bytes](declarations/produced-raw-retention-exact-bytes--e8caa2dff01e433547ce3ff5.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [collect_source_payloads](declarations/collect-source-payloads--29896bea7d0f325b6aca0e8f.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [produced_raw_retained_payload](declarations/produced-raw-retained-payload--885bfbe7850d976e1c7e5eda.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [produced_binding_multiplicity](declarations/produced-binding-multiplicity--94af41f14251dcad0a716736.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [intern_preserves_sourcePayload](declarations/intern-preserves-sourcepayload--7974b335d2cdb6b6ae05b430.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [candidateLookup](declarations/candidatelookup--83a288b6d44dc269032c36e0.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [candidateLookup_hit_sound](declarations/candidatelookup-hit-sound--f6babe2608afdaf69b3a83bf.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [candidateLookup_miss_iff](declarations/candidatelookup-miss-iff--19b0f3adb005287056842a21.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [CandidateCoverage](declarations/candidatecoverage--5348bf90c649ad0f83a2bd99.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [complete_candidate_miss_implies_absent](declarations/complete-candidate-miss-implies-absent--452e7a0d72dc3733f22bd8fc.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [complete_valid_candidates_find_existing](declarations/complete-valid-candidates-find-existing--46bef00519f9906219b420d4.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [same_digest_does_not_justify_bucket_omission](declarations/same-digest-does-not-justify-bucket-omission--d47f77f181f25073c010fdf2.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [produced_certificate_check](declarations/produced-certificate-check--d373975d18a5402723934071.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [incomplete_source_routes_rejected](declarations/incomplete-source-routes-rejected--dc875bdbe2002df4fa16a5b8.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [unretained_raw_routes_rejected](declarations/unretained-raw-routes-rejected--57e5d482b7e554bac7c6fe6a.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [nonempty_placeholder_bytes_rejected](declarations/nonempty-placeholder-bytes-rejected--729af55864920967349d04e2.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [successful_production_example](declarations/successful-production-example--baf2ea7163f2ef1a33092d6d.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [outputLookup_witness](declarations/outputlookup-witness--ae73094eb6aceee5fe41be4e.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [equal_output_identity](declarations/equal-output-identity--c95d31fbfa95790a917218df.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [insertOutput_record_inventory](declarations/insertoutput-record-inventory--d76de520dedbdd5f0bb0a561.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [mergeOutputs_record_inventory](declarations/mergeoutputs-record-inventory--4b9caf8372d6cd379ab01b3c.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [produced_complete_output_records](declarations/produced-complete-output-records--45e77b2cfeb11bb4bda1c96a.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [labelCandidates](declarations/labelcandidates--fee9f4779cd957ef76f8368a.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [labelCandidates_valid](declarations/labelcandidates-valid--5d5f946980422b691e55a42e.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [labelCandidates_complete](declarations/labelcandidates-complete--69a9422bf6ef3970c8cb4081.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [digest_bucket_finds_literal](declarations/digest-bucket-finds-literal--88e8404e1ecf63aa6b643553.md) | 908 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [constant_digest_collision_example](declarations/constant-digest-collision-example--1e83e026c42e7ea37d96fd2b.md) | 917 | `BLOCKED_NATIVE_ADMISSION` |
