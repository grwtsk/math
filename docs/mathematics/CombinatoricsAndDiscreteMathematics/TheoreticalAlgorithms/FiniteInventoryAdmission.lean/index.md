# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteInventoryAdmission

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**93 observed declarations and anonymous commands**, 68 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteInventoryAdmission.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2766654d41cae1efbcc98c39867930654a3b347e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteInventoryAdmission.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ExpectedSet](declarations/expectedset--62915f9c33fe91ae82d41dc0.md) | 13 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [RawBatch](declarations/rawbatch--c5e480df25f857504fe28359.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Mapping](declarations/mapping--7339c43bbfe293a3d2f726d9.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [Capture](declarations/capture--2cf136259b206551691f529f.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [retainedLabel](declarations/retainedlabel--315b829f50b868d52de11e9c.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [rawAt](declarations/rawat--f42747aef65f2c41a05d543b.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [rawRoutes](declarations/rawroutes--90634903293a4fd0e4d7e768.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [prepared](declarations/prepared--79e8d2985232e9425ad6cf3d.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [frozen](declarations/frozen--b22aff6ddf5ebd24b6a74396.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [CanonicalFileMaps](declarations/canonicalfilemaps--0c09fe79ae408a03d81137c9.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance--b9aa4d1e5e2a30d7db742f66.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [AdjacentSorted](declarations/adjacentsorted--97d474c90505fbfdbab4c2ba.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance--8e9c22445a30b4cd1a6d1d8a.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [adjacent_implies_pairwise](declarations/adjacent-implies-pairwise--2b763d70669a728838a7de7c.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [pairwise_implies_adjacent](declarations/pairwise-implies-adjacent--3c20f06014c84afefb82ebe0.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [adjacent_iff_pairwise](declarations/adjacent-iff-pairwise--4b092b76bd7af0ccd5de39f3.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sorted_strings_nodup](declarations/sorted-strings-nodup--dc422dbfe062efe78097ee39.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [canonical_key_domain_equal](declarations/canonical-key-domain-equal--cd6b0632f3d656861630a5c4.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [captureCheck](declarations/capturecheck--0669cdd7c5e50d5bdc8ec88f.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [readsetMatches](declarations/readsetmatches--a51fade42b1b8471d6f036a0.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [mappingCoverage](declarations/mappingcoverage--9b002cbbeeaba66a3d6cb13d.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [planCoverage](declarations/plancoverage--b5eb2c0f0aeb83a2f2d40bfa.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [rawRetention](declarations/rawretention--a9fc4403dcea4c15e39371d5.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [admissionCheck](declarations/admissioncheck--2067e9993e5531dd425d6f2c.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [captureCheck_exact](declarations/capturecheck-exact--6d5eff604eac0695ff2fd907.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [readsetMatches_exact](declarations/readsetmatches-exact--de06e2cc4247d56f24ab48d6.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mappingCoverage_exact](declarations/mappingcoverage-exact--6b65d36bd7cfa99f1c605a56.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [planCoverage_exact](declarations/plancoverage-exact--1224cb9cc8401eca6243ee73.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [readset_domain_exact](declarations/readset-domain-exact--502fe01d93498f7926ad4f7b.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mapping_coverage_ordered_keys](declarations/mapping-coverage-ordered-keys--1446ad9c20b527d8fab87c24.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [plan_and_capture_establish_mapping_coverage](declarations/plan-and-capture-establish-mapping-coverage--64983d076381b66603a997bf.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [rawRetention_exact](declarations/rawretention-exact--78879fd65331daa73cf9902b.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [expected_label_lookup_of_unique_member](declarations/expected-label-lookup-of-unique-member--743a7c2f1fe57da982d1067f.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [raw_retention_from_finite_membership](declarations/raw-retention-from-finite-membership--3980ad1fbc78b2d084996db7.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [admissionCheck_exact](declarations/admissioncheck-exact--8edcec8d20fa58672f4205b8.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [bounded_capture_canonical](declarations/bounded-capture-canonical--a8c054984270d9fbb9e2f233.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [admitted_named_capture_checks](declarations/admitted-named-capture-checks--ad2a823e5565a38b7dd0150f.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [admitted_all_readsets_canonical](declarations/admitted-all-readsets-canonical--288aaf9855e10bcf66e539ca.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [rawAt_keys](declarations/rawat-keys--4d635737064ace6e748895f4.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [prepared_keys](declarations/prepared-keys--f02a6b0112406784eeef44ef.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [rawRoutes_keys](declarations/rawroutes-keys--9f3051573877ea08d9593f37.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [complete_source_keys_decompose](declarations/complete-source-keys-decompose--ae607b7777447df4b461baee.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [admitted_ordered_complete_source_keys](declarations/admitted-ordered-complete-source-keys--4ff10c36000fd66e90093ee2.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [raw_route_witness](declarations/raw-route-witness--86f78c2462c3b5ed014fc20f.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [admitted_raw_retention](declarations/admitted-raw-retention--1910ae858c2c922a14ea87a3.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [admitted_prepared_source_only](declarations/admitted-prepared-source-only--11b9c7e2d5a2ddb932e15737.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [admitted_mapping_origins_source](declarations/admitted-mapping-origins-source--550a2d6ef3b5cc3c9fede622.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [capture_establishes_input_admission](declarations/capture-establishes-input-admission--5297b54bf8081fecb055be5e.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [capture_establishes_executable_input_gate](declarations/capture-establishes-executable-input-gate--a2a78dc266885681378cd637.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [capture_successful_source_contract_transports](declarations/capture-successful-source-contract-transports--542bfe97a175930058b01179.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [capture_successful_producer_checked](declarations/capture-successful-producer-checked--63eac1bdbbda7142f8523975.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [capture_successful_producer_has_lean_execution](declarations/capture-successful-producer-has-lean-execution--816f5e195c15e3cb2469da75.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [capture_successful_producer_exact_decode](declarations/capture-successful-producer-exact-decode--0a6721799aed2a1092469dd4.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [bindRaw](declarations/bindraw--08a1844a4e41d91f8631846e.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [zipRaw_projections](declarations/zipraw-projections--7d4110391d2777b135eb170e.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [bindRaw_exact](declarations/bindraw-exact--e61d2343608f0ca402cca84f.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [bindRaw_rejects_truncation](declarations/bindraw-rejects-truncation--ec29dd4069edc1cf55e15216.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [bindRaw_accepts_equal_length](declarations/bindraw-accepts-equal-length--fa18c53b7f41587f7efc199c.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [canonical_readset_survives_intern](declarations/canonical-readset-survives-intern--54dd24c0432b887fab4ad31f.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [interning_empty_preserves_captured_slots](declarations/interning-empty-preserves-captured-slots--f04ee87c6f9cc0f2ec5ad2a3.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [fixtureCapture](declarations/fixturecapture--a51370e65249404cff0d4e3d.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [fixtureCertificate](declarations/fixturecertificate--313d14797c1827a2f590a96d.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [fixture_capture_accepted](declarations/fixture-capture-accepted--50d57da26c9c85d8042818a0.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [fixture_maps_canonical](declarations/fixture-maps-canonical--dbe4e46a078468ba723e75e3.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [fixture_plan_coverage](declarations/fixture-plan-coverage--5d4aa7cdfb275da36b505dc8.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [fixture_admitted_by_capture](declarations/fixture-admitted-by-capture--e6dcf40f4f2a17228c0651eb.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [fixture_native_postcondition](declarations/fixture-native-postcondition--89cac1d3beb8518c7938039b.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [fixture_transported_certificate_accepted](declarations/fixture-transported-certificate-accepted--47cb51d09fb4c01f25218a3c.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [fixture_lean_execution_exists](declarations/fixture-lean-execution-exists--31364ff223fc8fbebac3ceb5.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [fixture_inventory_namespace_distinct_from_retention](declarations/fixture-inventory-namespace-distinct-from-retention--bf9ce8a70a7278a7a8b99458.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [repeatedRootCapture](declarations/repeatedrootcapture--919d368eaae7e618b3c5a61e.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [fixture_repeated_roots_remain_positional](declarations/fixture-repeated-roots-remain-positional--ba67a3eb06c62b57e50ea699.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [repeated_root_observations_agree](declarations/repeated-root-observations-agree--95619b1d3b41dc844235d94e.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [omitted_mapping_rejected](declarations/omitted-mapping-rejected--3a077df45e6443726929fa91.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [nonsource_mapping_rejected](declarations/nonsource-mapping-rejected--0e844e454dd9493abeef31fb.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [duplicate_mapping_rejected](declarations/duplicate-mapping-rejected--57dd365b1fac6a1efb4132c4.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [unused_invalid_slot_rejected](declarations/unused-invalid-slot-rejected--c0f4aa181d52afd62278aa39.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [absent_nonempty_directory_rejected](declarations/absent-nonempty-directory-rejected--1f29915fab10ca2b75b25617.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [noncanonical_directory_order_rejected](declarations/noncanonical-directory-order-rejected--155e47d87004496d3ccb5f60.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [changed_root_metadata_rejected](declarations/changed-root-metadata-rejected--e3ea432ab2805c44a983ea8b.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [extra_expected_raw_key_rejected](declarations/extra-expected-raw-key-rejected--ebec139224f7f429f16af87f.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [wrong_retained_literal_slot_rejected](declarations/wrong-retained-literal-slot-rejected--4fdd207d95064c577078e678.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [nonempty_empty_slot_rejected](declarations/nonempty-empty-slot-rejected--530a800d02ccc7eec3a8c37b.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [absent_empty_slot_rejected](declarations/absent-empty-slot-rejected--f3431793dd4f70726aaa53b4.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [twoSourceCapture](declarations/twosourcecapture--56c9fb711d57fcf16720318e.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [two_source_fixture_accepted](declarations/two-source-fixture-accepted--fef5dacd475476ebc4b8a13d.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [reversed_source_mapping_order_rejected](declarations/reversed-source-mapping-order-rejected--fdd4ae717ab50c6ba30a3ca4.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [repeated_source_mapping_at_equal_length_rejected](declarations/repeated-source-mapping-at-equal-length-rejected--73e3dd9542bb943de0f984a3.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [raw_array_length_mismatch_rejected](declarations/raw-array-length-mismatch-rejected--5b64512fca3d9a057d7103ac.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [emptyCapture](declarations/emptycapture--cd05bb2abcfb90658c95d9a3.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [empty_capture_accepted](declarations/empty-capture-accepted--a3ccc485b80632e2ece36097.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [empty_capture_canonical](declarations/empty-capture-canonical--9408dfb9fff180ffb8f01ce4.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [empty_capture_admitted](declarations/empty-capture-admitted--5682805ce5cb061e692cae2d.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
