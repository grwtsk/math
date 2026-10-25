# GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Observation.RevisionEvidence

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**52 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/RevisionEvidence.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43794780f6b098aae07889a9214c0b52c50b5895`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/RevisionEvidence.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Record](declarations/record--1a7ff01a4af475fe963a1558.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [State](declarations/state--edca531b1b4793ecd8402234.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [empty](declarations/empty--d61647023402cd24be7b7753.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [current](declarations/current--7eb213f6469b55d8bdcf87f3.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [query](declarations/query--cbf2906eb07777e778e17613.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [earliestTick](declarations/earliesttick--6d91938ba94694ae2c90f3a4.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [Timing](declarations/timing--30ac0b664aa78e0a476810f4.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [timing](declarations/timing--b7e06ddbac341befa02bfd8f.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [targetElapsed](declarations/targetelapsed--8ab0d574e4b4984b32a7fad6.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [WellFormed](declarations/wellformed--a1ff1c85fb5e2ca5d3c552c1.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [issue](declarations/issue--e660a1b8590331a864da9ae4.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [confirm](declarations/confirm--d4c7aff91444888ba4a082af.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [record](declarations/record--a810f2f88811d5fd08059ef0.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [advance](declarations/advance--28e32a47dd7e620823d8418f.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `inductive` | [Event](declarations/event--35b14bc2144561f92a8c877c.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `inductive` | [Step](declarations/step--8f73823103ed79cc53911396.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `inductive` | [Trace](declarations/trace--77a30f9dbbb967374bc755b8.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem_query_iff](declarations/mem-query-iff--616612a4010d5908e482f53b.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [query_record](declarations/query-record--2e504e74e063ee97f291965f.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [query_record_other](declarations/query-record-other--cb954aafc0b2d198d807f965.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [earliestTick_none_iff](declarations/earliesttick-none-iff--0b851a8acb7206628329144a.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [earliestTick_some_iff](declarations/earliesttick-some-iff--d26aaf63dca7db63057965fd.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [timing_unavailable_iff](declarations/timing-unavailable-iff--2e4d3a781eea9571e7059122.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [timing_byTarget_iff](declarations/timing-bytarget-iff--97749577dfaa05f7bfd34803.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [timing_afterTarget_iff](declarations/timing-aftertarget-iff--d3b0f05aba06cd81f81ed9b9.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_confirmed_iff](declarations/mem-confirmed-iff--a9208abe2fcf8fd8ae70d719.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [confirm_idempotent](declarations/confirm-idempotent--ccbc28f287eedb816b3ab52b.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [issue_keeps_current](declarations/issue-keeps-current--cdddb6431c49721ac5bd4092.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [current_confirm_of_upper](declarations/current-confirm-of-upper--d1bc806a244228b33aed0afa.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [old_confirmation_keeps_current](declarations/old-confirmation-keeps-current--34169e57bccb42b7f255836c.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [empty_wellFormed](declarations/empty-wellformed--afe4a8a9383992403a71cc4b.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [step_preserves_wellFormed](declarations/step-preserves-wellformed--5c44a9069e1b929f376f14ae.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [trace_preserves_wellFormed](declarations/trace-preserves-wellformed--c21d0d4358290dd376086f15.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [step_history_prefix](declarations/step-history-prefix--af6257c7058c09d2b82a1977.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [trace_history_prefix](declarations/trace-history-prefix--509faec822a8cdae2ede8639.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [trace_history_position](declarations/trace-history-position--de9881e04392e1f000e8dbb0.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [unissued_query_empty](declarations/unissued-query-empty--53c81dfe020e69a0bc58aab8.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [correct](declarations/correct--96c6ecc5f3461b782ca83ec4.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [correction_trace](declarations/correction-trace--b56314f605b19e859d3f16eb.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [fresh_confirmation_separates_evidence](declarations/fresh-confirmation-separates-evidence--6258494a6c11333e03ad4111.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [correction_timing_unavailable](declarations/correction-timing-unavailable--71f98cdb540f2099705c56cd.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [correction_preserves_historical_queries](declarations/correction-preserves-historical-queries--117c6fc01a3c1e1d7a112845.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [advance_preserves_evidence](declarations/advance-preserves-evidence--a54310f4da2bc6f19fe77dda.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [observed](declarations/observed--ecf7ef1e98692fbf1da52ef6.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [observed_wellFormed](declarations/observed-wellformed--73bcd4cacead58a7f4e0f52f.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [fresh_revision_control](declarations/fresh-revision-control--1585f7004aa4160847f54a70.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [unconfirmed_revision_keeps_current](declarations/unconfirmed-revision-keeps-current--6707d91018c32cd702bc0ba6.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [old_confirmation_control](declarations/old-confirmation-control--5963f6b565f1aa756b44e9be.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [distinct_kind_control](declarations/distinct-kind-control--fce163cf2441dba60000d955.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [elapsed_without_evidence_control](declarations/elapsed-without-evidence-control--727f229ba1613fb0a11645da.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [inclusive_timing_control](declarations/inclusive-timing-control--edc3a1eabce335d4aee09632.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [malformed_state_counterexample](declarations/malformed-state-counterexample--08706ebb69a12d30e0016e9a.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
