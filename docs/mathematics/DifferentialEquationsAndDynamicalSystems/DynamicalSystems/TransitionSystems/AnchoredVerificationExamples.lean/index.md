# GRWTSK.DynamicalSystems.TransitionSystems.AnchoredVerificationExamples

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6324c4f142f26943ac9c782480700d58ddec699`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [schema](declarations/schema--4d608ab600b0e9589a580deb.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [policy](declarations/policy--fc0bd7a47076087ccb75c7bc.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [replayP](declarations/replayp--af36a71977588f8a2dc3a55d.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [replayQ](declarations/replayq--2a3da4de0df37d5e575b529d.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [replay_P_reads](declarations/replay-p-reads--eda3d2dcd111715fe3d5acb7.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [replay_Q_reads](declarations/replay-q-reads--9ce14d1a56d61b5a348dbaca.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [recordP](declarations/recordp--8bbfb727da4bd3c5606d8370.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [recordQ](declarations/recordq--eba55815ca4a5e0d74333488.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [batchRecords](declarations/batchrecords--7fd7db622de502af2a008988.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [baseLedger](declarations/baseledger--c4dfaf9bef3fe9b502c58fc1.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [base_revision_safe](declarations/base-revision-safe--eea14d3994592ae6a0cfa20d.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [initialLedger](declarations/initialledger--2d1e9eeef49e61c477c7889b.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [initial_replay_safe](declarations/initial-replay-safe--d6fb820895fe84db63edddcf.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [batchAdmission](declarations/batchadmission--80f19bcb3ff2332737018684.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [admittedLedger](declarations/admittedledger--5c0c988009481078a1fc62b8.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [admitted_replay_safe](declarations/admitted-replay-safe--c0a83569957c660a72558f23.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [admitted_status](declarations/admitted-status--c25b12e23e9b9efca3e99f24.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [admitted_current_target](declarations/admitted-current-target--bab5a4f76c1dc900607594ad.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [admitted_archive_exact](declarations/admitted-archive-exact--53ef2fa8a6a2f64dc11584be.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [admitted_base_not_revision_safe](declarations/admitted-base-not-revision-safe--8a780a72e79394b57c93675c.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [same_footprint_Q_global_blocked](declarations/same-footprint-q-global-blocked--1a9cc903b913e7d1be7abc4b.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [config](declarations/config--3bd4c145b04f39f6e814197b.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [session](declarations/session--e9fc39d8e9c42ac2b46ccdf1.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [restarted_safe](declarations/restarted-safe--e6900a9e3e152e4702be779d.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [restarted_history_exact](declarations/restarted-history-exact--ebcd079dabf0e519a4dd27fd.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [restarted_has_no_effects](declarations/restarted-has-no-effects--784e355a850a36d91dcb54f7.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [unreadChange](declarations/unreadchange--1ca65310eeb8114302076c66.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [readChange](declarations/readchange--aa6a07a28e04d69c625e6fea.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [unread_change_tokens](declarations/unread-change-tokens--61bbafb2ffda771e39652985.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [unread_change_affected_empty](declarations/unread-change-affected-empty--9e7ff94f5004628152ed5fa0.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [read_change_affected_all](declarations/read-change-affected-all--1bc91a600b0413922657320b.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [unreadLedger](declarations/unreadledger--19e887617e661d1931f8553b.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [changedLedger](declarations/changedledger--f50d54a81558623628ebbe01.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [unread_corrected_safe](declarations/unread-corrected-safe--57e7e84fe1a17a63e1f29715.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [changed_corrected_safe](declarations/changed-corrected-safe--be95ae7ee9c5acde14b1e6e3.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [unread_verified_all](declarations/unread-verified-all--775c8ff9e2d1859f8bd66e5a.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [unread_current_targets](declarations/unread-current-targets--0694a28f50669850ac69ee45.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [changed_status](declarations/changed-status--d0ecfdb534c2732b2382b50b.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Q_true_but_reopened](declarations/q-true-but-reopened--384c168c05b47daa64c7c944.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [correction_archives_literal](declarations/correction-archives-literal--5cc65b1c5b12151aaa4177fc.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
