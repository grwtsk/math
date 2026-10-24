# GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.Transport.Variant6a25ce4215235a1f4658636f15bb37ebea98372c69e0e78ca71f72931384ff74

[Complete source index](../../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant6a25ce4215235a1f4658636f15bb37ebea98372c69e0e78ca71f72931384ff74.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e89ee461a50673d52726e6777fd76aba34d21c48`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant6a25ce4215235a1f4658636f15bb37ebea98372c69e0e78ca71f72931384ff74.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [leanExpectedUpdate](declarations/leanexpectedupdate--d743e4dabdecd8d3e48baf62.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [expectedUpdate_preserves_channelBounds](declarations/expectedupdate-preserves-channelbounds--eaa0a2a38b4625e83acb9312.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [expectedUpdate_preserves_revision](declarations/expectedupdate-preserves-revision--d1e2e0608589991c7f5346fd.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [expectedUpdate_preserves_colorInvariant](declarations/expectedupdate-preserves-colorinvariant--f3552cc25bcbe2eb39f66e4a.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [expectedUpdate_idempotent](declarations/expectedupdate-idempotent--757ac1d91759466b4785734a.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [expectedUpdate_route_independent](declarations/expectedupdate-route-independent--7495ca6d4f8ee6b98648b408.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [RawProposal](declarations/rawproposal--1dee2795958033b3cd9b1a23.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [ProposalRejection](declarations/proposalrejection--e2d6f538dc78f79f7f10ffe2.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [MergeAdmissible](declarations/mergeadmissible--fa033fd2f0c9f7e392d65908.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance--21517e7fc085c8316a9b48fe.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [AdmittedProposal](declarations/admittedproposal--fa92a770363dd50c9b97c3ae.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `inductive` | [VerificationResult](declarations/verificationresult--bff2c854417daf2f4f8d57db.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [RangeCheckedXYZ](declarations/rangecheckedxyz--2e35b59fdee8aa28230e6c66.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [rangeCheckedXYZ?](declarations/rangecheckedxyz--48dadb100fc27a8b7298468c.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [findDeclaredEdge](declarations/finddeclarededge--52c6da1d61cd8d6763e1a1c1.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [verifyProposal](declarations/verifyproposal--160d7f31ca5575429388d462.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [verifyProposal_sound](declarations/verifyproposal-sound--2b610458945b02abc6311d89.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [admittedProposal_edge_declared](declarations/admittedproposal-edge-declared--5879ed2818357bd6b093e8c2.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [admittedProposal_endpoints_match](declarations/admittedproposal-endpoints-match--3686afc3c192029fe1810691.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [admittedProposal_expected_output](declarations/admittedproposal-expected-output--6da1226b00ce6eea79097427.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [admittedProposal_channels_in_range](declarations/admittedproposal-channels-in-range--e460455064ad6a9c3b393078.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [verifyProposal_rejects_undeclared_edge](declarations/verifyproposal-rejects-undeclared-edge--46f7620c16e4ce76df41e130.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [verifyProposal_rejects_wrong_endpoint](declarations/verifyproposal-rejects-wrong-endpoint--5f442535f5a78c9dddcb218a.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [verifyProposal_rejects_out_of_range_channel](declarations/verifyproposal-rejects-out-of-range-channel--c4c2147671efc38d64405736.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [verifyProposal_rejects_wrong_expected_output](declarations/verifyproposal-rejects-wrong-expected-output--beda03f974498fe80ef50e82.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [apply_idempotent_of_merge_replay](declarations/apply-idempotent-of-merge-replay--9e7991ea51c2c871132a4b04.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [identicalReplay_admitted_idempotently](declarations/identicalreplay-admitted-idempotently--5d136c53374d18a622671e4a.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
