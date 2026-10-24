# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.XYZDomModel.Variant465210755dcfe2643a5a1b6b481265dfc4c81e1d1c3fb5d71a0d6c8ffaaf7875

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant465210755dcfe2643a5a1b6b481265dfc4c81e1d1c3fb5d71a0d6c8ffaaf7875.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c05cfe00e0a8d859f09a73d6c0e4aa6cee26934c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant465210755dcfe2643a5a1b6b481265dfc4c81e1d1c3fb5d71a0d6c8ffaaf7875.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [DomNode](declarations/domnode--9f03ef15e160099d2a4c803b.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [DomModel](declarations/dommodel--11d896a89ffc52c6ce3db7c3.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [targetHostCode](declarations/targethostcode--fe7303920b62af0e81977a71.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [DomNode.withRevisionedXYZ](declarations/domnode-withrevisionedxyz--66cce1c5399f8185f434b36d.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [DomNode.fromRevisionedXYZ](declarations/domnode-fromrevisionedxyz--478fae743a76db41032c988b.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [applyAdmittedProjection](declarations/applyadmittedprojection--fd1df0acfaafa5382feaafed.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [applyAdmittedProjection_publishes_output_revision](declarations/applyadmittedprojection-publishes-output-revision--9e5e3f95159d2f73daba8cb9.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [applyAdmittedProjection_preserves_sourceSnapshotHash](declarations/applyadmittedprojection-preserves-sourcesnapshothash--9539d4008e9e136ad9dfc89c.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [applyAdmittedProjection_target_present](declarations/applyadmittedprojection-target-present--c8755a28e30b97fcb14a12bc.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [DomModel.revisionAt?](declarations/dommodel-revisionat--541bc46bf842f939e68e27b9.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [verifiedTargetRevision?](declarations/verifiedtargetrevision--08566a5448886b528a70b0a2.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [precommitStateMatches](declarations/precommitstatematches--7086ca3f82cb027abcac443b.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance--f1bc5e39e7bed19dec201442.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [commitAfterRecheck](declarations/commitafterrecheck--c4cfe27c97c718be159f3ffc.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [commitAfterRecheck_eq_some_iff](declarations/commitafterrecheck-eq-some-iff--287f493c044c47c21972ad8d.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sourceSnapshotRace_preventsCommit](declarations/sourcesnapshotrace-preventscommit--fff099d72f5be6d662862a02.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [targetRevisionRace_preventsCommit](declarations/targetrevisionrace-preventscommit--8b5a94e41713c3203b952db1.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [commitAdmitted](declarations/commitadmitted--656eae913a71e1188368d848.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [commitAdmitted_of_precommitStateMatches](declarations/commitadmitted-of-precommitstatematches--b750617ce5e9acef8302aa2c.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [commitAdmitted_of_precommitStateMismatch](declarations/commitadmitted-of-precommitstatemismatch--f929683416a05d91ea75ee30.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [commitAdmitted_target_present](declarations/commitadmitted-target-present--625fe7718e2d54ee1632f66b.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [commitAdmitted_publishes_output_revision](declarations/commitadmitted-publishes-output-revision--d5e61c6e75ab21d62375e7a5.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [commitAdmitted_preserves_sourceSnapshotHash](declarations/commitadmitted-preserves-sourcesnapshothash--3ada8241441ac514508acdbb.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [handleVerificationResult](declarations/handleverificationresult--a39ae59b71ba3f9e646dfbb8.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [rejectedProposal_leavesDomModelUnchanged](declarations/rejectedproposal-leavesdommodelunchanged--a3233a81e73d805a7cd86de6.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [admittedSourceSnapshotRace_leavesDomModelUnchanged](declarations/admittedsourcesnapshotrace-leavesdommodelunchanged--61e055de7863813f6efcd19a.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [admittedTargetRevisionRace_leavesDomModelUnchanged](declarations/admittedtargetrevisionrace-leavesdommodelunchanged--3c8882285f719b661294cda4.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
