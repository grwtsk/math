# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LiteralObservationMapConstruction

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**82 observed declarations and anonymous commands**, 69 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralObservationMapConstruction.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07841b05191fe7607faa452d142813ea0cad0da1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralObservationMapConstruction.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Observation](declarations/observation--c34e6cf760a0c62e59ae1373.md) | 15 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Captured](declarations/captured--ebac782dc37f965fca12f039.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [observationRecord](declarations/observationrecord--51d33bc5ef900fb3dee1a40b.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [observationRecord_exact](declarations/observationrecord-exact--1d76e3e9620938678fe3f2bb.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [observationRecord_bytes](declarations/observationrecord-bytes--772744306b3bdc57cb0f09d3.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [observationRecord_label](declarations/observationrecord-label--9a6d2ac5e665a731ce50a60a.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [observationRecord_kind](declarations/observationrecord-kind--48ab4d19c54f368e71711142.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [acceptsPrefix](declarations/acceptsprefix--2bd49b08438b4e046a6b47d9.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [acceptsPrefix_exact](declarations/acceptsprefix-exact--e7997885dc17a797a4691ad0.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [acceptsPrefix_nonwrapping](declarations/acceptsprefix-nonwrapping--c8376ce5c268248464c925a0.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [prepend](declarations/prepend--bc9f76d984f0f12b7bee7533.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [eventFold](declarations/eventfold--eae29130dc6beab8c12ada21.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [build](declarations/build--045ded967774ce217069ba05.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [construct](declarations/construct--102c19ed22c0d0769ccd6eab.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [observedBytes](declarations/observedbytes--71f6c2c416a74622adc38b99.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [coherent](declarations/coherent--4b9cf05815d3653399a9483d.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [empty_coherent](declarations/empty-coherent--a9e07c5d5b248c0612f9c3bb.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [prepend_coherent](declarations/prepend-coherent--2d8731dada9cf45926fdbd7c.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eventFold_coherent](declarations/eventfold-coherent--d2ea114958d675b1adb38ff9.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [eventFold_record_keys](declarations/eventfold-record-keys--d99eee9a8d2ed95249233311.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [eventFold_payload_keys](declarations/eventfold-payload-keys--417dd80dd4800665b208a905.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eventFold_records](declarations/eventfold-records--f27c03271cf315d1e10e52c0.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eventFold_payloads](declarations/eventfold-payloads--a0d1cf0c19a2b1f584d9df61.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eventFold_record_count](declarations/eventfold-record-count--9badeab49d7cf86ecba6f806.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [eventFold_payload_count](declarations/eventfold-payload-count--5383660ad547e12e94a32b80.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [eventFold_record_bytes](declarations/eventfold-record-bytes--6e3cf8421338a421140a8fa9.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eventFold_payload_bytes](declarations/eventfold-payload-bytes--c72acd1c754f9d0e1b3fc0c1.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [lookup_none_iff_absent](declarations/lookup-none-iff-absent--e26cfae76d0aea79180a5ab6.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [prepend_unique](declarations/prepend-unique--b84827709083dbda00dc7910.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [build_success_exact](declarations/build-success-exact--82c9babd1b6837e55aba867b.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [build_success_unique](declarations/build-success-unique--6cacb041d83d7c8c21d67bf1.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [build_success_budgets](declarations/build-success-budgets--3da2d93855385a9442594275.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [build_success_file_bounds](declarations/build-success-file-bounds--1badd2f683f4863100e1bde2.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [construct_success_build](declarations/construct-success-build--20c190ca29be46fd48f1b8ba.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [construct_success_exact](declarations/construct-success-exact--8e1744e906022f712bc39940.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [construct_success_records](declarations/construct-success-records--f805c41da10f40620198a661.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [construct_success_payloads](declarations/construct-success-payloads--0367b8f58354c22aca013f9b.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [construct_success_coherent](declarations/construct-success-coherent--2259625aad8fd6ffc99ef8d7.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [construct_success_unique](declarations/construct-success-unique--2fbc06ca93d3ace7b723b2a0.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [construct_success_key_domain](declarations/construct-success-key-domain--c502792784aced7f30cb25f1.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [construct_success_payload_unique](declarations/construct-success-payload-unique--692cd6e050d59db3c4fc7a2a.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [construct_success_observation_unique](declarations/construct-success-observation-unique--cee71e07df7e814e94862dcb.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [construct_success_counts](declarations/construct-success-counts--fcee2b3cb06e3ba91fad3f15.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [construct_success_exact_byte_totals](declarations/construct-success-exact-byte-totals--efa7181356ff7c9e8d51dc86.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [construct_success_bounds](declarations/construct-success-bounds--aa0f9073954f787d2c32e6b3.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [construct_success_file_bounds](declarations/construct-success-file-bounds--88b114c01db82b92aae78581.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [construct_success_metadata_quota](declarations/construct-success-metadata-quota--97881b1e8b7bb8c9bc40c72d.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [construct_success_every_record_has_literal](declarations/construct-success-every-record-has-literal--ddeacb7e9dec77c112e75c8c.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [construct_success_every_literal_has_record](declarations/construct-success-every-literal-has-record--16c890a6cc123a74436fd676.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [build_complete](declarations/build-complete--ca308776686b09c5afc94682.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [admitted](declarations/admitted--2d181039305d869c43606936.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [construct_complete](declarations/construct-complete--2f714453975200bdc4ff8a55.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [construct_success_iff](declarations/construct-success-iff--7bf702c510df18a33f8065ac.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [construct_failure_iff](declarations/construct-failure-iff--3adf4389be593063f710cb49.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [construct_success_event_record](declarations/construct-success-event-record--7dc281409b4dd37e9d9a757a.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [construct_success_event_payload](declarations/construct-success-event-payload--5dc788cfa8ab9dc93c5d2973.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [construct_success_full_record](declarations/construct-success-full-record--078be69122d03b7529831989.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [construct_success_enumeration_bounds](declarations/construct-success-enumeration-bounds--4190fecb0ebc2d8c89aef2d3.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [represents](declarations/represents--359b954e0bb775f9bf48e478.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [represents_permutation](declarations/represents-permutation--9ce480d9a92c6c47799a78ba.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [construct_native_enumeration_exact](declarations/construct-native-enumeration-exact--1ae6436717f9207ada7b86c6.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [construct_native_enumeration_bounds](declarations/construct-native-enumeration-bounds--08d043c02653738af54137dc.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [construct_excess_count_rejected](declarations/construct-excess-count-rejected--81ce2370655768d3e30ef006.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [construct_excess_total_rejected](declarations/construct-excess-total-rejected--97e060033ae0c1b7a588c123.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [construct_excess_file_rejected](declarations/construct-excess-file-rejected--91c52c44fe54ab67d2782bf6.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [construct_duplicate_rejected](declarations/construct-duplicate-rejected--8cb06773fb2ba2f0ded427bd.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [construct_failure_has_no_result](declarations/construct-failure-has-no-result--e305e636f3f50a1169361add.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [sampleEvents](declarations/sampleevents--ec54b1ccb7171ee3022eb5c5.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [fixture_capture_accepted](declarations/fixture-capture-accepted--387199442e303e6c6171da62.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [fixture_capture_actual_bytes](declarations/fixture-capture-actual-bytes--016d1e2abf4167d43e8cafea.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [fixture_shared_payload_counts_per_path](declarations/fixture-shared-payload-counts-per-path--08d1af7bbb13275f6eb6509f.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [fixture_empty_capture_accepted](declarations/fixture-empty-capture-accepted--7647ae7fa312a836b1d1f3be.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [fixture_empty_payload_retained](declarations/fixture-empty-payload-retained--33a829aefe552946cc99309b.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [fixture_duplicate_equal_payload_rejected](declarations/fixture-duplicate-equal-payload-rejected--45a227f2831c864438809d1f.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [fixture_duplicate_different_payload_rejected](declarations/fixture-duplicate-different-payload-rejected--02bd36af1ddf764fbfbe79ca.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [fixture_exact_prefix_total_accepted](declarations/fixture-exact-prefix-total-accepted--9f6150e6e006ac63197ea2e2.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [fixture_prefix_total_excess_rejected](declarations/fixture-prefix-total-excess-rejected--48a4707fe2989d5ce0e2fe5f.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [fixture_exact_file_cap_accepted](declarations/fixture-exact-file-cap-accepted--dc8210b2b3f4bbf5cbaf0802.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [fixture_file_cap_plus_one_rejected](declarations/fixture-file-cap-plus-one-rejected--2e549bb68325a1dfe54f7469.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [fixture_final_count_slot_accepted](declarations/fixture-final-count-slot-accepted--35c622a128e87c8e480d4240.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [fixture_count_cap_rejected](declarations/fixture-count-cap-rejected--d43a3ef45dddaaf5eb17ee2e.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [fixture_oversized_total_no_subtraction_wrap](declarations/fixture-oversized-total-no-subtraction-wrap--f93980a18010eab9231bcc4d.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
