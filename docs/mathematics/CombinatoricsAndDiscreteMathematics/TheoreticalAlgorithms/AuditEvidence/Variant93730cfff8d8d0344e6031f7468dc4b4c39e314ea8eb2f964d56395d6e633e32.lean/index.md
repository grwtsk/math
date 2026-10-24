# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AuditEvidence.Variant93730cfff8d8d0344e6031f7468dc4b4c39e314ea8eb2f964d56395d6e633e32

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 8 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AuditEvidence/Variant93730cfff8d8d0344e6031f7468dc4b4c39e314ea8eb2f964d56395d6e633e32.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c9c120f8f61a3230e8d72d53785bc2b743a001c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AuditEvidence/Variant93730cfff8d8d0344e6031f7468dc4b4c39e314ea8eb2f964d56395d6e633e32.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [AuditEvidenceClass](declarations/auditevidenceclass--99ffe2a418ad65dae4d2c8cf.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [AuditEvidencePayload](declarations/auditevidencepayload--29ffa97e8021c72d68cfc4b7.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [IndependentAuditValidation](declarations/independentauditvalidation--67d32cfe5eb90a5358d66202.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [AcceptedAuditEvidence](declarations/acceptedauditevidence--6709c2423db63e79cb28e7ee.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [snapshot_exact](declarations/snapshot-exact--60dc49fd4b71d52001c3834e.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [validationReceipt](declarations/validationreceipt--685e6245219dd86331cc12b3.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [authorityKind](declarations/authoritykind--e0555f1a5a78cf5baefa7b98.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [AuditFindingClaim](declarations/auditfindingclaim--74639d2ddf615f77d4364add.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `inductive` | [FindingProposalSource](declarations/findingproposalsource--b8f0d51d4b814eab0539b9f7.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [FindingProposalSource.authority](declarations/findingproposalsource-authority--0802ef1f3bb6f06a0a1026ea.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [AuditFindingProposal](declarations/auditfindingproposal--9bcd5c271dc6cef2efe622b5.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [finding_proposal_source_is_nonauthoritative](declarations/finding-proposal-source-is-nonauthoritative--a0c82a81c68bb89a1558ce8e.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [AcceptedAuditFinding](declarations/acceptedauditfinding--d0e4aabc8af9fae189c09fba.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [has_accepted_evidence](declarations/has-accepted-evidence--7d80dbfdffde0889d0659655.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [evidence_targets_finding](declarations/evidence-targets-finding--fa548f768607f1bef9ef99b1.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [snapshot_exact](declarations/snapshot-exact--272d47b50ffa181e33fbfbfa.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [proposal_is_not_accepted_finding](declarations/proposal-is-not-accepted-finding--46995469dfdd2e3c2148e023.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [AuditConflictBranch](declarations/auditconflictbranch--391090233e6545ca1ff4a499.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `inductive` | [AuditFindingReduction](declarations/auditfindingreduction--abd896aea3e1024ebc9c08fe.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [AuditWorkItem](declarations/auditworkitem--3aaf3e488c9432a9597b1a4c.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [ImplementedAuditWork](declarations/implementedauditwork--67fcbb4a32d405194e5ec73d.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [DischargedAuditWork](declarations/dischargedauditwork--b21097a12ca06ba7304837a6.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `inductive` | [AuditWorkDisposition](declarations/auditworkdisposition--8ecf0709632ec14fd2124ac7.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [implemented_is_not_discharged](declarations/implemented-is-not-discharged--60832433f4402952ad510ddc.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [discharge_requires_exact_accepted_evidence](declarations/discharge-requires-exact-accepted-evidence--767222bacdace0a43d6e175d.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
