# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.XYZDomModel.Variant521083dc18b9bc50946f76d4fde2158c689ed0b4cd0d79b4ef591f16804356b1

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant521083dc18b9bc50946f76d4fde2158c689ed0b4cd0d79b4ef591f16804356b1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c56f8430c3020f368f5772bfce226c0761d224f7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZDomModel/Variant521083dc18b9bc50946f76d4fde2158c689ed0b4cd0d79b4ef591f16804356b1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [DomNode](declarations/domnode--fcdacd680fb5e4d825dd97c5.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [DomModel](declarations/dommodel--8f7c6945625d095bf837f695.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [targetHostCode](declarations/targethostcode--fdaec1248b79570f507bbd7e.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [DomNode.withRevisionedXYZ](declarations/domnode-withrevisionedxyz--3f48ab2a76d467a203f73a2c.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [DomNode.fromRevisionedXYZ](declarations/domnode-fromrevisionedxyz--0502ce6f852546c9ded2428b.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [applyAdmittedProjection](declarations/applyadmittedprojection--e7c2184039357aa501bf73c4.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [applyAdmittedProjection_publishes_output_revision](declarations/applyadmittedprojection-publishes-output-revision--bd4c739cbb63953d095627db.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [applyAdmittedProjection_preserves_sourceSnapshotHash](declarations/applyadmittedprojection-preserves-sourcesnapshothash--44756cee648f9099ab0f1b06.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [applyAdmittedProjection_target_present](declarations/applyadmittedprojection-target-present--f6c3a499e3a716c0dbca40d6.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [DomModel.revisionAt?](declarations/dommodel-revisionat--3416ce79b4265075a0ddf02e.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [verifiedTargetRevision?](declarations/verifiedtargetrevision--1971b3ecf149b7ae146e2e61.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [precommitStateMatches](declarations/precommitstatematches--7fad69c8498b19c0e6169f16.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance--bdb6c9bade166a1aaae97652.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [commitAfterRecheck](declarations/commitafterrecheck--585bc607ccee82bd8453a072.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [commitAfterRecheck_eq_some_iff](declarations/commitafterrecheck-eq-some-iff--6194c9842e7a3f4b81d7525f.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sourceSnapshotRace_preventsCommit](declarations/sourcesnapshotrace-preventscommit--63033082106a8d752802ecd0.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [targetRevisionRace_preventsCommit](declarations/targetrevisionrace-preventscommit--02c7ef88b941a9ee9f5b280a.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [commitAdmitted](declarations/commitadmitted--32b5f9eeefcc52af18250bed.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [commitAdmitted_of_precommitStateMatches](declarations/commitadmitted-of-precommitstatematches--6238b5eb207921d50ca41e29.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [commitAdmitted_of_precommitStateMismatch](declarations/commitadmitted-of-precommitstatemismatch--904dea011d67f41894793a8f.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [commitAdmitted_target_present](declarations/commitadmitted-target-present--094317c3b19f54d35e0d4cc0.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [commitAdmitted_publishes_output_revision](declarations/commitadmitted-publishes-output-revision--63de11cc51d6e3c683eac634.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [commitAdmitted_preserves_sourceSnapshotHash](declarations/commitadmitted-preserves-sourcesnapshothash--5e36cdacb6e39df8e1daa0b3.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [handleVerificationResult](declarations/handleverificationresult--cfc6acedd5daea9fcab0505f.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [rejectedProposal_leavesDomModelUnchanged](declarations/rejectedproposal-leavesdommodelunchanged--fc7db19473f8e67ee8c34256.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [admittedSourceSnapshotRace_leavesDomModelUnchanged](declarations/admittedsourcesnapshotrace-leavesdommodelunchanged--36e1e244cda7a40542c9d517.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [admittedTargetRevisionRace_leavesDomModelUnchanged](declarations/admittedtargetrevisionrace-leavesdommodelunchanged--c7e53a18f6be4f87cf7823bb.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
