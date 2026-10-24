# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Move.Varianta6f3f6465657e6bd0d8ef3e9ead51a23f5fc44d7711c2d341f112e945f517217

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Move/Varianta6f3f6465657e6bd0d8ef3e9ead51a23f5fc44d7711c2d341f112e945f517217.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `551f4f6b5029625f9608b1c1c1478512d5979b06`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Move/Varianta6f3f6465657e6bd0d8ef3e9ead51a23f5fc44d7711c2d341f112e945f517217.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [GamePhase](declarations/gamephase--f75d116f44ed42329b2e5e04.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [GamePhase.rank](declarations/gamephase-rank--ea43f2a59cf266d02c8cfc86.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [GamePhaseStep](declarations/gamephasestep--a4d4ecbadc784f7bb6ccb7e5.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [gamePhase_rank_nonDecreasing](declarations/gamephase-rank-nondecreasing--76bfbe32433907d463e3faa1.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [committed_requires_reviewReady_and_commitRequest](declarations/committed-requires-reviewready-and-commitrequest--a69cbbc75d214062d777cbe1.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [rejected_terminal](declarations/rejected-terminal--5ae8c6756881f5ed60156384.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [cancelled_terminal](declarations/cancelled-terminal--9fd12b68eb9ea7997a4a4bc3.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [committed_terminal](declarations/committed-terminal--8514631518924fb21c424721.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `inductive` | [MoveKind](declarations/movekind--c34bacd4eb2774f3cb131259.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [RepositoryBoard.containsPiece](declarations/repositoryboard-containspiece--13ac23194f9a77d8aebf5fd7.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [NetworkSurgeryAdmissionContext](declarations/networksurgeryadmissioncontext--65ef2940da119e1560bad79a.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [PreparedNetworkSurgeryProposal](declarations/preparednetworksurgeryproposal--416a4d146cbf296408dc21fc.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [PreparedNetworkSurgeryProposal.IsReplay](declarations/preparednetworksurgeryproposal-isreplay--48dc0b5ea7177810fa3600e2.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [PreparedNetworkSurgeryProposal.HasEqualRevisionConflict](declarations/preparednetworksurgeryproposal-hasequalrevisionconflict--14ab917f59f3549c47334518.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [PreparedNetworkSurgeryProposal.PiecesDeclared](declarations/preparednetworksurgeryproposal-piecesdeclared--9d20826f7a0bc3b9a096d830.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [PreparedNetworkSurgeryProposal.EdgesDeclared](declarations/preparednetworksurgeryproposal-edgesdeclared--1c83de3f07967a1000d8bd10.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [PreparedNetworkSurgeryProposal.Valid](declarations/preparednetworksurgeryproposal-valid--49b98ccc7f2f577ea18f5615.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `inductive` | [NetworkSurgeryRejectionCode](declarations/networksurgeryrejectioncode--de655ba864fedffeace25d86.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [firstProposalFailure](declarations/firstproposalfailure--db6e083497ee579b2f33945c.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [firstProposalFailure_of_internalContractInvalid](declarations/firstproposalfailure-of-internalcontractinvalid--4dcaf5964268fcf13cf6ae56.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [firstProposalFailure_of_invalidContractHash](declarations/firstproposalfailure-of-invalidcontracthash--a6ba8e568fdaed7d613f727e.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [firstProposalFailure_of_invalidSession](declarations/firstproposalfailure-of-invalidsession--6bda5bce341c85447f5c953b.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [firstProposalFailure_of_equalRevisionConflict](declarations/firstproposalfailure-of-equalrevisionconflict--ff36c7b336665406c93c0234.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [firstProposalFailure_of_invalidSourceSnapshotHash](declarations/firstproposalfailure-of-invalidsourcesnapshothash--b7c9f5e49cd7a62e63db61ef.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [firstProposalFailure_of_unknownPiece](declarations/firstproposalfailure-of-unknownpiece--f7df5948e80d614496f817a3.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [firstProposalFailure_of_unknownEdge](declarations/firstproposalfailure-of-unknownedge--e065eee9281e822394758d0e.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [firstProposalFailure_of_sourceRangeMismatch](declarations/firstproposalfailure-of-sourcerangemismatch--3dbccd35cb27f75777790907.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [firstProposalFailure_of_overlappingEdits](declarations/firstproposalfailure-of-overlappingedits--6a71d1cdc93cd7ba714b500a.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [firstProposalFailure_of_capacityExceeded](declarations/firstproposalfailure-of-capacityexceeded--64d2df475cc3686f1413ffdf.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [firstProposalFailure_of_boundaryLedgerUnbalanced](declarations/firstproposalfailure-of-boundaryledgerunbalanced--f194173df97964d8c84adfc7.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [firstProposalFailure_of_identityChange](declarations/firstproposalfailure-of-identitychange--6389ffe7a61605501b376b70.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [firstProposalFailure_of_classificationChange](declarations/firstproposalfailure-of-classificationchange--7668f4b0b9dd37b12b7a9fef.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [firstProposalFailure_of_languageValidationError](declarations/firstproposalfailure-of-languagevalidationerror--fb877e43fcc68455cf315a32.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [firstProposalFailure_of_deterministicResultMismatch](declarations/firstproposalfailure-of-deterministicresultmismatch--22a1be4d8460f6a871726fb2.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [firstProposalFailure_of_bracketProjectionInvalid](declarations/firstproposalfailure-of-bracketprojectioninvalid--f1d0afdcbbc33cbcb5613956.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [firstProposalFailure_of_publicApiChange](declarations/firstproposalfailure-of-publicapichange--31051a11c198807420ef4c49.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [firstProposalFailure_of_statementChange](declarations/firstproposalfailure-of-statementchange--c26e549e3c3da34d022786f0.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [firstProposalFailure_of_axiomGrowth](declarations/firstproposalfailure-of-axiomgrowth--fde4f19227a04930092c1c08.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [AdmittedMove](declarations/admittedmove--778b811d636bef55aaaf49f1.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `inductive` | [NetworkSurgeryVerificationResult](declarations/networksurgeryverificationresult--5508e8d41ca95109254d2001.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [verifyNetworkSurgeryProposal](declarations/verifynetworksurgeryproposal--d04548bb14acafea83e15f1e.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [verifyNetworkSurgeryProposal_sound](declarations/verifynetworksurgeryproposal-sound--d06f8ef16fff45594647eb25.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [verifyNetworkSurgeryProposal_rejected_of_invalid](declarations/verifynetworksurgeryproposal-rejected-of-invalid--efeb5fa2525c85d825f781e7.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [legalMove_preserves_sourceSnapshotIdentity](declarations/legalmove-preserves-sourcesnapshotidentity--12cc9f7eec066291aa762a46.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [legalMove_preserves_declarationIdentity](declarations/legalmove-preserves-declarationidentity--222ec7764c89b573065a1516.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [legalTheoremMove_preserves_statementIdentity](declarations/legaltheoremmove-preserves-statementidentity--8f639baed89d0832f6ebd1f3.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
