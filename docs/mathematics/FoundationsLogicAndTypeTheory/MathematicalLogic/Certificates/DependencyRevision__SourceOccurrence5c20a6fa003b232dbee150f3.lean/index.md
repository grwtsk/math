# GRWTSK.Logic.Certificates.DependencyRevision

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Logic/Certificates/DependencyRevision.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f21c84fcb80892a5ba4a1da7df0e89e78a73c37`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevision__SourceOccurrence5c20a6fa003b232dbee150f3.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [DependencySchema](declarations/dependencyschema--1a404a0e40684302c0ad41e7.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [ArchivedClaim](declarations/archivedclaim--f9a1680d34b63beb2ecfecaf.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [CorrectionRecord](declarations/correctionrecord--d56a371e5b1ef7052fa934cd.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [RevisionLedger](declarations/revisionledger--5d0840c383af30f3c37cd6b0.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [directChanged](declarations/directchanged--fb8b704c230e21533a2c26d7.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mem_directChanged](declarations/mem-directchanged--5b36f9442740c4201c52923e.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [correctionAffected](declarations/correctionaffected--aa03c9ec0c400eabbb60211f.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [directChanged_subset_correctionAffected](declarations/directchanged-subset-correctionaffected--f58844468333acd538cb8050.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mem_correctionAffected_iff](declarations/mem-correctionaffected-iff--da10e88712ccf1a74706ecc4.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [directChanged_self](declarations/directchanged-self--44e2245b579c50429fea81e7.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [correctionAffected_self](declarations/correctionaffected-self--59891b77a2f6b1f92eb72a42.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [unchanged_reads_of_unaffected](declarations/unchanged-reads-of-unaffected--47ccf42449abafeebf46013f.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [RevisionSafe](declarations/revisionsafe--dd8b4a113214cbb08df495b8.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [RevisionLedger.correct](declarations/revisionledger-correct--131b2a7ab90df2502f8175f3.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [correction_same_snapshot_status](declarations/correction-same-snapshot-status--16ce17273f16159281b57184.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [correction_records_append](declarations/correction-records-append--90bfb125fcdd875ea81a7bd1.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [correction_archive_preserved](declarations/correction-archive-preserved--36a215a22a104bad0b7413bf.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [correction_receipts_preserved](declarations/correction-receipts-preserved--c2936a79cf186f623e392454.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [correction_issued_preserved](declarations/correction-issued-preserved--3e490580f8cd1d9e468d2129.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [correction_verified_iff](declarations/correction-verified-iff--89e889356492fd13acb6edd5.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [affected_verified_reopened](declarations/affected-verified-reopened--4d4ea211568afc8f0d88b429.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [correction_preserves_safe](declarations/correction-preserves-safe--26a1ce38ba56350b9cba22c7.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [revision_verified_to_terminal](declarations/revision-verified-to-terminal--409477bd37a4f9b59ba47895.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [CurrentReceiptValid](declarations/currentreceiptvalid--5bd69c15f57e721d0d5ab0bd.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [changed_snapshot_receipt_not_current](declarations/changed-snapshot-receipt-not-current--b88e7604ec58e8f2ff637faa.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
