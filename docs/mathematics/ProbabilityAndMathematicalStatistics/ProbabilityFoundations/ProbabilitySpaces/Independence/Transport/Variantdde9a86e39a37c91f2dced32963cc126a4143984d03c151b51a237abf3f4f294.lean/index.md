# GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.Transport.Variantdde9a86e39a37c91f2dced32963cc126a4143984d03c151b51a237abf3f4f294

[Complete source index](../../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantdde9a86e39a37c91f2dced32963cc126a4143984d03c151b51a237abf3f4f294.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95a5172640f15d73127accaf507f1a991cdb5d93`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantdde9a86e39a37c91f2dced32963cc126a4143984d03c151b51a237abf3f4f294.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [leanExpectedUpdate](declarations/leanexpectedupdate--16d542a446b99584c121a3e4.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [expectedUpdate_preserves_channelBounds](declarations/expectedupdate-preserves-channelbounds--32543dc8cc13d8297cb0d50e.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [expectedUpdate_preserves_revision](declarations/expectedupdate-preserves-revision--2898abfe876a5b72228ac1ae.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [expectedUpdate_preserves_colorInvariant](declarations/expectedupdate-preserves-colorinvariant--6a55621c5f446a20ef739f6d.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [expectedUpdate_idempotent](declarations/expectedupdate-idempotent--fe60ace362d070f581b74fce.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [expectedUpdate_route_independent](declarations/expectedupdate-route-independent--8fb81a6bb3ae9e1ffd1ab140.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [RawProposal](declarations/rawproposal--647bff74a40e60246bd606d3.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [ProposalRejection](declarations/proposalrejection--5a874427cec70c5f687c8c7e.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [MergeAdmissible](declarations/mergeadmissible--c051540a7f5341c5e4f77163.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance--4a03821dda7ca0345a102ae6.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [AdmittedProposal](declarations/admittedproposal--cce1fb43402c1bbe47189c26.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `inductive` | [VerificationResult](declarations/verificationresult--ab771ee5e86c1ea86e9a2137.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [RangeCheckedXYZ](declarations/rangecheckedxyz--1bf74a48f5843d58672f4820.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [rangeCheckedXYZ?](declarations/rangecheckedxyz--f5087a319eb2463dab315a84.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [findDeclaredEdge](declarations/finddeclarededge--4501df17a2da721ab5e72424.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [verifyProposal](declarations/verifyproposal--8f02f38e5a47b16fe3e8415c.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [verifyProposal_sound](declarations/verifyproposal-sound--2742182420f8edd0923ba2e1.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [admittedProposal_edge_declared](declarations/admittedproposal-edge-declared--75f8e8d8d519b829be60c86e.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [admittedProposal_endpoints_match](declarations/admittedproposal-endpoints-match--3f9b8b26b615b6722e6fe573.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [admittedProposal_expected_output](declarations/admittedproposal-expected-output--935ee0b5164c4cbde8cda03c.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [admittedProposal_channels_in_range](declarations/admittedproposal-channels-in-range--524e216d8b3123169f872a3e.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [verifyProposal_rejects_undeclared_edge](declarations/verifyproposal-rejects-undeclared-edge--96c8890595d4eac1d1f5094f.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [verifyProposal_rejects_wrong_endpoint](declarations/verifyproposal-rejects-wrong-endpoint--3a558f8752ad846e7e4c14d6.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [verifyProposal_rejects_out_of_range_channel](declarations/verifyproposal-rejects-out-of-range-channel--77c838040d82fece06bf1d34.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [verifyProposal_rejects_wrong_expected_output](declarations/verifyproposal-rejects-wrong-expected-output--0bff2845a2dba693daf5dd40.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [apply_idempotent_of_merge_replay](declarations/apply-idempotent-of-merge-replay--4205b5569882ad3f2887459f.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [identicalReplay_admitted_idempotently](declarations/identicalreplay-admitted-idempotently--db049908e7c160736fa9bde3.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
