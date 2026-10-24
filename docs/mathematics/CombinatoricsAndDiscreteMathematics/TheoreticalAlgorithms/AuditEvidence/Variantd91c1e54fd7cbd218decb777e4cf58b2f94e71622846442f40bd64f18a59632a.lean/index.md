# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AuditEvidence.Variantd91c1e54fd7cbd218decb777e4cf58b2f94e71622846442f40bd64f18a59632a

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 8 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AuditEvidence/Variantd91c1e54fd7cbd218decb777e4cf58b2f94e71622846442f40bd64f18a59632a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9904f326ed80a0161a3baab82474fd9dffc98ec8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AuditEvidence/Variantd91c1e54fd7cbd218decb777e4cf58b2f94e71622846442f40bd64f18a59632a.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [AuditEvidenceClass](declarations/auditevidenceclass--f3e8d5543089276c8c918eb6.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [AuditEvidencePayload](declarations/auditevidencepayload--8bd152ef5b7ab31d3d549972.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [IndependentAuditValidation](declarations/independentauditvalidation--50bda3880c8b48128b045a70.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [AcceptedAuditEvidence](declarations/acceptedauditevidence--8c4a81b238bafa182d92a512.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [snapshot_exact](declarations/snapshot-exact--32d8dd9b54c2bdf04806be39.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [validationReceipt](declarations/validationreceipt--5beaa8a50b5932eebee03dc7.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [authorityKind](declarations/authoritykind--f16dbd4395a3d45f801819e5.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [AuditFindingClaim](declarations/auditfindingclaim--8546e8757727f0e1e45b4508.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `inductive` | [FindingProposalSource](declarations/findingproposalsource--a9d1870869e16f212583c0af.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [FindingProposalSource.authority](declarations/findingproposalsource-authority--3230528dc7652e21f9262ae8.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [AuditFindingProposal](declarations/auditfindingproposal--699ad2b272429a342766721d.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [finding_proposal_source_is_nonauthoritative](declarations/finding-proposal-source-is-nonauthoritative--eb4e591aaa316cac17c70bb3.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [AcceptedAuditFinding](declarations/acceptedauditfinding--a5ffcfd938ded8dbf35c6458.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [has_accepted_evidence](declarations/has-accepted-evidence--36b9360665553e549da6e889.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [evidence_targets_finding](declarations/evidence-targets-finding--356144d49ab671d2d6102d94.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [snapshot_exact](declarations/snapshot-exact--7d01bf6bd8f11b932603e90f.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [proposal_is_not_accepted_finding](declarations/proposal-is-not-accepted-finding--5d32f1cd0a13a211f02e87f2.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [AuditConflictBranch](declarations/auditconflictbranch--6a6052d58f3e2a4efef098fd.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `inductive` | [AuditFindingReduction](declarations/auditfindingreduction--3f810ac0f45a3314e03e1b92.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [AuditWorkItem](declarations/auditworkitem--790c674252f7f10d1749ed53.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [ImplementedAuditWork](declarations/implementedauditwork--93d0cf6d6117ac9080905fe2.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [DischargedAuditWork](declarations/dischargedauditwork--eccc9a41f8e116cef02883da.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `inductive` | [AuditWorkDisposition](declarations/auditworkdisposition--e33771209596b33087c2ef40.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [implemented_is_not_discharged](declarations/implemented-is-not-discharged--6272168c72022c3f73030ef9.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [discharge_requires_exact_accepted_evidence](declarations/discharge-requires-exact-accepted-evidence--eb5e6ce5854945b7e5d2e406.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
