module

public import Surface.Core.NetworkSurgery.Bracket
public import Surface.Core.NetworkSurgery.Boundary
public import Surface.Core.Transport.Register

/-!
# Typed moves and proof-bearing proposal verification

The executable reducer is pure.  Language-parser, compiler, and kernel results
enter only as bounded runtime observations and do not become theorem proofs.
-/

public section

namespace Surface.Core.NetworkSurgery

open Surface.Core.Transport

@[surface_novel]
inductive GamePhase where
  | idle
  | snapshotLoaded
  | selectionDrafted
  | intentPrepared
  | proposalVerified
  | repairing
  | languageValidated
  | reviewReady
  | commitRequested
  | committed
  | rejected
  | cancelled
deriving DecidableEq, Repr, BEq

@[expose] def GamePhase.rank : GamePhase → Nat
  | .idle => 0
  | .snapshotLoaded => 1
  | .selectionDrafted => 2
  | .intentPrepared => 3
  | .proposalVerified => 4
  | .repairing => 4
  | .languageValidated => 5
  | .reviewReady => 6
  | .commitRequested => 7
  | .committed | .rejected | .cancelled => 8

@[surface_novel]
inductive GamePhaseStep : GamePhase → GamePhase → Type where
  | loadSnapshot : GamePhaseStep .idle .snapshotLoaded
  | draftSelection : GamePhaseStep .snapshotLoaded .selectionDrafted
  | prepareIntent : GamePhaseStep .selectionDrafted .intentPrepared
  | verifyProposal : GamePhaseStep .intentPrepared .proposalVerified
  | rejectPrepared : GamePhaseStep .intentPrepared .rejected
  | cancelPrepared : GamePhaseStep .intentPrepared .cancelled
  | beginRepair : GamePhaseStep .proposalVerified .repairing
  | validateLanguage : GamePhaseStep .proposalVerified .languageValidated
  | rejectVerified : GamePhaseStep .proposalVerified .rejected
  | cancelVerified : GamePhaseStep .proposalVerified .cancelled
  | repairCandidate : GamePhaseStep .repairing .proposalVerified
  | rejectRepair : GamePhaseStep .repairing .rejected
  | cancelRepair : GamePhaseStep .repairing .cancelled
  | prepareReview : GamePhaseStep .languageValidated .reviewReady
  | rejectValidation : GamePhaseStep .languageValidated .rejected
  | requestCommit : GamePhaseStep .reviewReady .commitRequested
  | cancelReview : GamePhaseStep .reviewReady .cancelled
  | commit : GamePhaseStep .commitRequested .committed
  | rejectCommit : GamePhaseStep .commitRequested .rejected

@[surface_novel, surface_published]
theorem gamePhase_rank_nonDecreasing {before after : GamePhase}
    (_step : GamePhaseStep before after) : before.rank ≤ after.rank := by
  cases _step <;> decide

@[surface_novel, surface_published]
theorem committed_requires_reviewReady_and_commitRequest
    {before : GamePhase} (step : GamePhaseStep before .committed) :
    before = .commitRequested ∧
      Nonempty (GamePhaseStep .reviewReady .commitRequested) := by
  cases step
  exact ⟨rfl, ⟨GamePhaseStep.requestCommit⟩⟩

@[surface_novel, surface_published]
theorem rejected_terminal {after : GamePhase} :
    ¬ Nonempty (GamePhaseStep .rejected after) := by
  intro step
  rcases step with ⟨step⟩
  cases step

@[surface_novel, surface_published]
theorem cancelled_terminal {after : GamePhase} :
    ¬ Nonempty (GamePhaseStep .cancelled after) := by
  intro step
  rcases step with ⟨step⟩
  cases step

@[surface_novel, surface_published]
theorem committed_terminal {after : GamePhase} :
    ¬ Nonempty (GamePhaseStep .committed after) := by
  intro step
  rcases step with ⟨step⟩
  cases step

@[surface_novel]
inductive MoveKind where
  | inspectNode
  | selectSubtree
  | moveDeclaration
  | moveSyntaxSubtreeWithinFile
  | extractDeclaration
  | inlineGeneratedAuxiliary
  | renamePrivateDeclaration
  | addImport
  | removeUnusedImport
  | rewriteReference
  | createCandidateModule
  | deleteGeneratedCandidate
  | applyExactTextEdit
  | requestRepair
  | requestValidation
  | requestReview
  | commitReviewedBundle
  | undoCommittedBundle
deriving DecidableEq, Repr, BEq

@[expose] def RepositoryBoard.containsPiece
    (board : RepositoryBoard) : PieceId → Prop
  | .file id => id ∈ board.allowedFiles
  | .declaration id => id ∈ board.declarations
  | .syntaxNode id => ∃ host ∈ board.hosts,
      host.id = id ∧ host.kind = .syntaxNode
  | .importEdge id => id ∈ board.imports
  | .reference id => id ∈ board.references
  | .buildTarget id => id ∈ board.buildTargets
  | .generatedCandidate id => id ∈ board.allowedFiles

@[surface_novel]
structure NetworkSurgeryAdmissionContext where
  contractHash : Hash256
  sourceSnapshotHash : Hash256
  sessionId : SessionId
  revision : Revision
  board : RepositoryBoard
  currentProposal? : Option (Revisioned Hash256)
deriving DecidableEq, Repr

@[surface_novel]
structure PreparedNetworkSurgeryProposal where
  internalContractValid : Bool
  contractHash : Hash256
  sourceSnapshotHash : Hash256
  sessionId : SessionId
  baseRevision : Revision
  proposalRevision : Revision
  proposalId : ProposalId
  proposalHash : Hash256
  moveKind : MoveKind
  selectedPieces : List PieceId
  operationIds : List OperationId
  declaredEdgeIds : List StableCode
  boundary : PreparedBoundaryLedger
  beforeProjection : BracketProgram
  afterProjection : BracketProgram
  beforeDeclaration? : Option DeclarationId
  afterDeclaration? : Option DeclarationId
  beforeStatementHash? : Option Hash256
  afterStatementHash? : Option Hash256
  sourceRangesMatch : Bool
  operationsOrderedAndNonoverlapping : Bool
  capacityWithinLimits : Bool
  publicApiPreserved : Bool
  classificationsPreserved : Bool
  axiomPolicyPreserved : Bool
  languageValidationObserved : Bool
  expectedDeterministicResult : Bool
deriving DecidableEq, Repr

@[expose] def PreparedNetworkSurgeryProposal.IsReplay
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal) : Prop :=
  context.currentProposal? =
    some ⟨proposal.proposalRevision, proposal.proposalHash⟩

@[expose] def PreparedNetworkSurgeryProposal.HasEqualRevisionConflict
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal) : Prop :=
  ∃ currentHash,
    context.currentProposal? = some ⟨proposal.proposalRevision, currentHash⟩ ∧
      currentHash ≠ proposal.proposalHash

@[expose] def PreparedNetworkSurgeryProposal.PiecesDeclared
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal) : Prop :=
  ∀ piece ∈ proposal.selectedPieces, context.board.containsPiece piece

@[expose] def PreparedNetworkSurgeryProposal.EdgesDeclared
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal) : Prop :=
  ∀ edgeId ∈ proposal.declaredEdgeIds,
    ∃ edge ∈ context.board.edges, edge.id = edgeId

@[surface_novel]
structure PreparedNetworkSurgeryProposal.Valid
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal) : Prop where
  internalContractValid : proposal.internalContractValid = true
  contractIdentity : proposal.contractHash = context.contractHash
  sourceIdentity : proposal.sourceSnapshotHash = context.sourceSnapshotHash
  sessionIdentity : proposal.sessionId = context.sessionId
  baseRevisionFresh : proposal.baseRevision = context.revision
  proposalRevisionFresh : context.revision < proposal.proposalRevision
  notEqualRevisionConflict : ¬ proposal.HasEqualRevisionConflict context
  notReplay : ¬ proposal.IsReplay context
  piecesDeclared : proposal.PiecesDeclared context
  edgesDeclared : proposal.EdgesDeclared context
  operationIdsNodup : proposal.operationIds.Nodup
  sourceRangesMatch : proposal.sourceRangesMatch = true
  operationsOrderedAndNonoverlapping :
    proposal.operationsOrderedAndNonoverlapping = true
  capacityWithinLimits : proposal.capacityWithinLimits = true
  boundaryBalanced : BoundaryBalanced proposal.boundary
  bracketProjectionValid : balanced proposal.afterProjection
  declarationIdentity :
    proposal.beforeDeclaration? = proposal.afterDeclaration?
  theoremStatementIdentity :
    proposal.beforeStatementHash? = proposal.afterStatementHash?
  publicApiPreserved : proposal.publicApiPreserved = true
  classificationsPreserved : proposal.classificationsPreserved = true
  axiomPolicyPreserved : proposal.axiomPolicyPreserved = true
  languageValidationObserved : proposal.languageValidationObserved = true
  expectedDeterministicResult : proposal.expectedDeterministicResult = true

/-!
This is the finite Lean verifier's currently modeled rejection subset, not the
wire-level V1 registry.  The specification/Rust registry additionally orders
`invalidSchema`, `unsupportedVersion`, `invalidHashFraming`,
`invalidParserFingerprint`, `revisionOutOfRange`, `pathOutsideRoot`,
`pathSymlinkEscape`, `sourceTextHashMismatch`, `packetInvalid`, `importCycle`,
`unresolvedReference`, four language/build-specific failures,
`patchRoundtripFailure`, `reviewDigestMismatch`, `applyBaseChanged`, and
`applyRollback`.  Conversely, the two final constructors below are Lean-local
aggregate/model failures.  Do not claim cross-language rejection conformance
until those stage-specific receipt gates replace the aggregates under a
versioned protocol migration.
-/
@[surface_novel]
inductive NetworkSurgeryRejectionCode where
  | internalContractInvalid
  | invalidContractHash
  | invalidSourceSnapshotHash
  | invalidSession
  | staleRevision
  | equalRevisionConflict
  | unknownPiece
  | unknownEdge
  | sourceRangeMismatch
  | overlappingEdits
  | capacityExceeded
  | bracketProjectionInvalid
  | boundaryLedgerUnbalanced
  | identityChange
  | statementChange
  | publicApiChange
  | classificationChange
  | axiomGrowth
  | languageValidationError
  | deterministicResultMismatch
deriving DecidableEq, Repr, BEq

@[expose] noncomputable def firstProposalFailure
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal) : NetworkSurgeryRejectionCode := by
  classical
  exact if proposal.internalContractValid ≠ true then .internalContractInvalid
  else if proposal.contractHash ≠ context.contractHash then .invalidContractHash
  else if proposal.sourceSnapshotHash ≠ context.sourceSnapshotHash then
    .invalidSourceSnapshotHash
  else if proposal.sessionId ≠ context.sessionId then .invalidSession
  else if proposal.baseRevision ≠ context.revision ∨
      ¬ context.revision < proposal.proposalRevision then .staleRevision
  else if proposal.HasEqualRevisionConflict context then .equalRevisionConflict
  else if ¬ proposal.PiecesDeclared context then .unknownPiece
  else if ¬ proposal.EdgesDeclared context then .unknownEdge
  else if proposal.sourceRangesMatch ≠ true then .sourceRangeMismatch
  else if proposal.operationsOrderedAndNonoverlapping ≠ true then .overlappingEdits
  else if proposal.capacityWithinLimits ≠ true then .capacityExceeded
  else if ¬ BoundaryBalanced proposal.boundary then .boundaryLedgerUnbalanced
  else if ¬ balanced proposal.afterProjection then .bracketProjectionInvalid
  else if proposal.beforeDeclaration? ≠ proposal.afterDeclaration? then .identityChange
  else if proposal.beforeStatementHash? ≠ proposal.afterStatementHash? then .statementChange
  else if proposal.publicApiPreserved ≠ true then .publicApiChange
  else if proposal.classificationsPreserved ≠ true then .classificationChange
  else if proposal.axiomPolicyPreserved ≠ true then .axiomGrowth
  else if proposal.languageValidationObserved ≠ true then .languageValidationError
  else .deterministicResultMismatch

@[surface_novel, surface_published]
theorem firstProposalFailure_of_internalContractInvalid
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (invalid : proposal.internalContractValid = false) :
    firstProposalFailure context proposal = .internalContractInvalid := by
  classical
  simp [firstProposalFailure, invalid]

@[surface_novel, surface_published]
theorem firstProposalFailure_of_invalidContractHash
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (internal : proposal.internalContractValid = true)
    (invalid : proposal.contractHash ≠ context.contractHash) :
    firstProposalFailure context proposal = .invalidContractHash := by
  classical
  simp [firstProposalFailure, internal, invalid]

@[surface_novel, surface_published]
theorem firstProposalFailure_of_invalidSession
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (internal : proposal.internalContractValid = true)
    (contract : proposal.contractHash = context.contractHash)
    (snapshot : proposal.sourceSnapshotHash = context.sourceSnapshotHash)
    (invalid : proposal.sessionId ≠ context.sessionId) :
    firstProposalFailure context proposal = .invalidSession := by
  classical
  simp [firstProposalFailure, internal, contract, snapshot, invalid]

@[surface_novel, surface_published]
theorem firstProposalFailure_of_equalRevisionConflict
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (internal : proposal.internalContractValid = true)
    (contract : proposal.contractHash = context.contractHash)
    (snapshot : proposal.sourceSnapshotHash = context.sourceSnapshotHash)
    (session : proposal.sessionId = context.sessionId)
    (base : proposal.baseRevision = context.revision)
    (fresh : context.revision < proposal.proposalRevision)
    (conflict : proposal.HasEqualRevisionConflict context) :
    firstProposalFailure context proposal = .equalRevisionConflict := by
  classical
  simp [firstProposalFailure, internal, contract, snapshot, session, base, fresh,
    conflict]

@[surface_novel, surface_published]
theorem firstProposalFailure_of_invalidSourceSnapshotHash
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (internal : proposal.internalContractValid = true)
    (contract : proposal.contractHash = context.contractHash)
    (stale : proposal.sourceSnapshotHash ≠ context.sourceSnapshotHash) :
    firstProposalFailure context proposal = .invalidSourceSnapshotHash := by
  classical
  simp [firstProposalFailure, internal, contract, stale]

@[surface_novel, surface_published]
theorem firstProposalFailure_of_unknownPiece
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (internal : proposal.internalContractValid = true)
    (contract : proposal.contractHash = context.contractHash)
    (snapshot : proposal.sourceSnapshotHash = context.sourceSnapshotHash)
    (session : proposal.sessionId = context.sessionId)
    (base : proposal.baseRevision = context.revision)
    (fresh : context.revision < proposal.proposalRevision)
    (noConflict : ¬ proposal.HasEqualRevisionConflict context)
    (unknown : ¬ proposal.PiecesDeclared context) :
    firstProposalFailure context proposal = .unknownPiece := by
  classical
  simp [firstProposalFailure, internal, contract, snapshot, session, base,
    fresh, noConflict, unknown]

@[surface_novel, surface_published]
theorem firstProposalFailure_of_unknownEdge
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (internal : proposal.internalContractValid = true)
    (contract : proposal.contractHash = context.contractHash)
    (snapshot : proposal.sourceSnapshotHash = context.sourceSnapshotHash)
    (session : proposal.sessionId = context.sessionId)
    (base : proposal.baseRevision = context.revision)
    (fresh : context.revision < proposal.proposalRevision)
    (noConflict : ¬ proposal.HasEqualRevisionConflict context)
    (pieces : proposal.PiecesDeclared context)
    (unknown : ¬ proposal.EdgesDeclared context) :
    firstProposalFailure context proposal = .unknownEdge := by
  classical
  simp [firstProposalFailure, internal, contract, snapshot, session, base,
    fresh, noConflict, pieces, unknown]

@[surface_novel, surface_published]
theorem firstProposalFailure_of_sourceRangeMismatch
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (internal : proposal.internalContractValid = true)
    (contract : proposal.contractHash = context.contractHash)
    (snapshot : proposal.sourceSnapshotHash = context.sourceSnapshotHash)
    (session : proposal.sessionId = context.sessionId)
    (base : proposal.baseRevision = context.revision)
    (fresh : context.revision < proposal.proposalRevision)
    (noConflict : ¬ proposal.HasEqualRevisionConflict context)
    (pieces : proposal.PiecesDeclared context)
    (edges : proposal.EdgesDeclared context)
    (mismatch : proposal.sourceRangesMatch = false) :
    firstProposalFailure context proposal = .sourceRangeMismatch := by
  classical
  simp [firstProposalFailure, internal, contract, snapshot, session, base,
    fresh, noConflict, pieces, edges, mismatch]

@[surface_novel, surface_published]
theorem firstProposalFailure_of_overlappingEdits
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (internal : proposal.internalContractValid = true)
    (contract : proposal.contractHash = context.contractHash)
    (snapshot : proposal.sourceSnapshotHash = context.sourceSnapshotHash)
    (session : proposal.sessionId = context.sessionId)
    (base : proposal.baseRevision = context.revision)
    (fresh : context.revision < proposal.proposalRevision)
    (noConflict : ¬ proposal.HasEqualRevisionConflict context)
    (pieces : proposal.PiecesDeclared context)
    (edges : proposal.EdgesDeclared context)
    (ranges : proposal.sourceRangesMatch = true)
    (overlap : proposal.operationsOrderedAndNonoverlapping = false) :
    firstProposalFailure context proposal = .overlappingEdits := by
  classical
  simp [firstProposalFailure, internal, contract, snapshot, session, base,
    fresh, noConflict, pieces, edges, ranges, overlap]

@[surface_novel, surface_published]
theorem firstProposalFailure_of_capacityExceeded
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (internal : proposal.internalContractValid = true)
    (contract : proposal.contractHash = context.contractHash)
    (snapshot : proposal.sourceSnapshotHash = context.sourceSnapshotHash)
    (session : proposal.sessionId = context.sessionId)
    (base : proposal.baseRevision = context.revision)
    (fresh : context.revision < proposal.proposalRevision)
    (noConflict : ¬ proposal.HasEqualRevisionConflict context)
    (pieces : proposal.PiecesDeclared context)
    (edges : proposal.EdgesDeclared context)
    (ranges : proposal.sourceRangesMatch = true)
    (ordered : proposal.operationsOrderedAndNonoverlapping = true)
    (exceeded : proposal.capacityWithinLimits = false) :
    firstProposalFailure context proposal = .capacityExceeded := by
  classical
  simp [firstProposalFailure, internal, contract, snapshot, session, base,
    fresh, noConflict, pieces, edges, ranges, ordered, exceeded]

@[surface_novel, surface_published]
theorem firstProposalFailure_of_boundaryLedgerUnbalanced
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (internal : proposal.internalContractValid = true)
    (contract : proposal.contractHash = context.contractHash)
    (snapshot : proposal.sourceSnapshotHash = context.sourceSnapshotHash)
    (session : proposal.sessionId = context.sessionId)
    (base : proposal.baseRevision = context.revision)
    (fresh : context.revision < proposal.proposalRevision)
    (noConflict : ¬ proposal.HasEqualRevisionConflict context)
    (pieces : proposal.PiecesDeclared context)
    (edges : proposal.EdgesDeclared context)
    (ranges : proposal.sourceRangesMatch = true)
    (ordered : proposal.operationsOrderedAndNonoverlapping = true)
    (capacity : proposal.capacityWithinLimits = true)
    (unbalanced : ¬ BoundaryBalanced proposal.boundary) :
    firstProposalFailure context proposal = .boundaryLedgerUnbalanced := by
  classical
  simp [firstProposalFailure, internal, contract, snapshot, session, base,
    fresh, noConflict, pieces, edges, ranges, ordered, capacity, unbalanced]

@[surface_novel, surface_published]
theorem firstProposalFailure_of_identityChange
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (internal : proposal.internalContractValid = true)
    (contract : proposal.contractHash = context.contractHash)
    (snapshot : proposal.sourceSnapshotHash = context.sourceSnapshotHash)
    (session : proposal.sessionId = context.sessionId)
    (base : proposal.baseRevision = context.revision)
    (fresh : context.revision < proposal.proposalRevision)
    (noConflict : ¬ proposal.HasEqualRevisionConflict context)
    (pieces : proposal.PiecesDeclared context)
    (edges : proposal.EdgesDeclared context)
    (ranges : proposal.sourceRangesMatch = true)
    (ordered : proposal.operationsOrderedAndNonoverlapping = true)
    (capacity : proposal.capacityWithinLimits = true)
    (boundary : BoundaryBalanced proposal.boundary)
    (projection : balanced proposal.afterProjection)
    (changed : proposal.beforeDeclaration? ≠ proposal.afterDeclaration?) :
    firstProposalFailure context proposal = .identityChange := by
  classical
  simp [firstProposalFailure, internal, contract, snapshot, session, base,
    fresh, noConflict, pieces, edges, ranges, ordered, capacity, boundary,
    projection, changed]

@[surface_novel, surface_published]
theorem firstProposalFailure_of_classificationChange
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (internal : proposal.internalContractValid = true)
    (contract : proposal.contractHash = context.contractHash)
    (snapshot : proposal.sourceSnapshotHash = context.sourceSnapshotHash)
    (session : proposal.sessionId = context.sessionId)
    (base : proposal.baseRevision = context.revision)
    (fresh : context.revision < proposal.proposalRevision)
    (noConflict : ¬ proposal.HasEqualRevisionConflict context)
    (pieces : proposal.PiecesDeclared context)
    (edges : proposal.EdgesDeclared context)
    (ranges : proposal.sourceRangesMatch = true)
    (ordered : proposal.operationsOrderedAndNonoverlapping = true)
    (capacity : proposal.capacityWithinLimits = true)
    (boundary : BoundaryBalanced proposal.boundary)
    (projection : balanced proposal.afterProjection)
    (declarationIdentity : proposal.beforeDeclaration? = proposal.afterDeclaration?)
    (statementIdentity : proposal.beforeStatementHash? = proposal.afterStatementHash?)
    (publicApi : proposal.publicApiPreserved = true)
    (changed : proposal.classificationsPreserved = false) :
    firstProposalFailure context proposal = .classificationChange := by
  classical
  simp [firstProposalFailure, internal, contract, snapshot, session, base,
    fresh, noConflict, pieces, edges, ranges, ordered, capacity, boundary,
    projection, declarationIdentity, statementIdentity, publicApi, changed]

@[surface_novel, surface_published]
theorem firstProposalFailure_of_languageValidationError
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (internal : proposal.internalContractValid = true)
    (contract : proposal.contractHash = context.contractHash)
    (snapshot : proposal.sourceSnapshotHash = context.sourceSnapshotHash)
    (session : proposal.sessionId = context.sessionId)
    (base : proposal.baseRevision = context.revision)
    (fresh : context.revision < proposal.proposalRevision)
    (noConflict : ¬ proposal.HasEqualRevisionConflict context)
    (pieces : proposal.PiecesDeclared context)
    (edges : proposal.EdgesDeclared context)
    (ranges : proposal.sourceRangesMatch = true)
    (ordered : proposal.operationsOrderedAndNonoverlapping = true)
    (capacity : proposal.capacityWithinLimits = true)
    (boundary : BoundaryBalanced proposal.boundary)
    (projection : balanced proposal.afterProjection)
    (declarationIdentity : proposal.beforeDeclaration? = proposal.afterDeclaration?)
    (statementIdentity : proposal.beforeStatementHash? = proposal.afterStatementHash?)
    (publicApi : proposal.publicApiPreserved = true)
    (classifications : proposal.classificationsPreserved = true)
    (axioms : proposal.axiomPolicyPreserved = true)
    (failed : proposal.languageValidationObserved = false) :
    firstProposalFailure context proposal = .languageValidationError := by
  classical
  simp [firstProposalFailure, internal, contract, snapshot, session, base,
    fresh, noConflict, pieces, edges, ranges, ordered, capacity, boundary,
    projection, declarationIdentity, statementIdentity, publicApi,
    classifications, axioms, failed]

@[surface_novel, surface_published]
theorem firstProposalFailure_of_deterministicResultMismatch
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (internal : proposal.internalContractValid = true)
    (contract : proposal.contractHash = context.contractHash)
    (snapshot : proposal.sourceSnapshotHash = context.sourceSnapshotHash)
    (session : proposal.sessionId = context.sessionId)
    (base : proposal.baseRevision = context.revision)
    (fresh : context.revision < proposal.proposalRevision)
    (noConflict : ¬ proposal.HasEqualRevisionConflict context)
    (pieces : proposal.PiecesDeclared context)
    (edges : proposal.EdgesDeclared context)
    (ranges : proposal.sourceRangesMatch = true)
    (ordered : proposal.operationsOrderedAndNonoverlapping = true)
    (capacity : proposal.capacityWithinLimits = true)
    (boundary : BoundaryBalanced proposal.boundary)
    (projection : balanced proposal.afterProjection)
    (declarationIdentity : proposal.beforeDeclaration? = proposal.afterDeclaration?)
    (statementIdentity : proposal.beforeStatementHash? = proposal.afterStatementHash?)
    (publicApi : proposal.publicApiPreserved = true)
    (classifications : proposal.classificationsPreserved = true)
    (axioms : proposal.axiomPolicyPreserved = true)
    (language : proposal.languageValidationObserved = true) :
    firstProposalFailure context proposal = .deterministicResultMismatch := by
  classical
  simp [firstProposalFailure, internal, contract, snapshot, session, base,
    fresh, noConflict, pieces, edges, ranges, ordered, capacity, boundary,
    projection, declarationIdentity, statementIdentity, publicApi,
    classifications, axioms, language]

@[surface_novel, surface_published]
theorem firstProposalFailure_of_bracketProjectionInvalid
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (internal : proposal.internalContractValid = true)
    (contract : proposal.contractHash = context.contractHash)
    (snapshot : proposal.sourceSnapshotHash = context.sourceSnapshotHash)
    (session : proposal.sessionId = context.sessionId)
    (base : proposal.baseRevision = context.revision)
    (fresh : context.revision < proposal.proposalRevision)
    (noConflict : ¬ proposal.HasEqualRevisionConflict context)
    (pieces : proposal.PiecesDeclared context)
    (edges : proposal.EdgesDeclared context)
    (ranges : proposal.sourceRangesMatch = true)
    (ordered : proposal.operationsOrderedAndNonoverlapping = true)
    (capacity : proposal.capacityWithinLimits = true)
    (boundary : BoundaryBalanced proposal.boundary)
    (invalidProjection : ¬ balanced proposal.afterProjection) :
    firstProposalFailure context proposal = .bracketProjectionInvalid := by
  classical
  simp [firstProposalFailure, contract, snapshot, session, base, fresh,
    internal, noConflict, pieces, edges, ranges, ordered, capacity, boundary,
    invalidProjection]

@[surface_novel, surface_published]
theorem firstProposalFailure_of_publicApiChange
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (internal : proposal.internalContractValid = true)
    (contract : proposal.contractHash = context.contractHash)
    (snapshot : proposal.sourceSnapshotHash = context.sourceSnapshotHash)
    (session : proposal.sessionId = context.sessionId)
    (base : proposal.baseRevision = context.revision)
    (fresh : context.revision < proposal.proposalRevision)
    (noConflict : ¬ proposal.HasEqualRevisionConflict context)
    (pieces : proposal.PiecesDeclared context)
    (edges : proposal.EdgesDeclared context)
    (ranges : proposal.sourceRangesMatch = true)
    (ordered : proposal.operationsOrderedAndNonoverlapping = true)
    (capacity : proposal.capacityWithinLimits = true)
    (boundary : BoundaryBalanced proposal.boundary)
    (projection : balanced proposal.afterProjection)
    (declarationIdentity : proposal.beforeDeclaration? = proposal.afterDeclaration?)
    (statementIdentity : proposal.beforeStatementHash? = proposal.afterStatementHash?)
    (changed : proposal.publicApiPreserved = false) :
    firstProposalFailure context proposal = .publicApiChange := by
  classical
  simp [firstProposalFailure, contract, snapshot, session, base, fresh,
    internal, noConflict, pieces, edges, ranges, ordered, capacity, boundary, projection,
    declarationIdentity, statementIdentity, changed]

@[surface_novel, surface_published]
theorem firstProposalFailure_of_statementChange
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (internal : proposal.internalContractValid = true)
    (contract : proposal.contractHash = context.contractHash)
    (snapshot : proposal.sourceSnapshotHash = context.sourceSnapshotHash)
    (session : proposal.sessionId = context.sessionId)
    (base : proposal.baseRevision = context.revision)
    (fresh : context.revision < proposal.proposalRevision)
    (noConflict : ¬ proposal.HasEqualRevisionConflict context)
    (pieces : proposal.PiecesDeclared context)
    (edges : proposal.EdgesDeclared context)
    (ranges : proposal.sourceRangesMatch = true)
    (ordered : proposal.operationsOrderedAndNonoverlapping = true)
    (capacity : proposal.capacityWithinLimits = true)
    (boundary : BoundaryBalanced proposal.boundary)
    (projection : balanced proposal.afterProjection)
    (declarationIdentity : proposal.beforeDeclaration? = proposal.afterDeclaration?)
    (changed : proposal.beforeStatementHash? ≠ proposal.afterStatementHash?) :
    firstProposalFailure context proposal = .statementChange := by
  classical
  simp [firstProposalFailure, contract, snapshot, session, base, fresh,
    internal, noConflict, pieces, edges, ranges, ordered, capacity, boundary, projection,
    declarationIdentity, changed]

@[surface_novel, surface_published]
theorem firstProposalFailure_of_axiomGrowth
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (internal : proposal.internalContractValid = true)
    (contract : proposal.contractHash = context.contractHash)
    (snapshot : proposal.sourceSnapshotHash = context.sourceSnapshotHash)
    (session : proposal.sessionId = context.sessionId)
    (base : proposal.baseRevision = context.revision)
    (fresh : context.revision < proposal.proposalRevision)
    (noConflict : ¬ proposal.HasEqualRevisionConflict context)
    (pieces : proposal.PiecesDeclared context)
    (edges : proposal.EdgesDeclared context)
    (ranges : proposal.sourceRangesMatch = true)
    (ordered : proposal.operationsOrderedAndNonoverlapping = true)
    (capacity : proposal.capacityWithinLimits = true)
    (boundary : BoundaryBalanced proposal.boundary)
    (projection : balanced proposal.afterProjection)
    (declarationIdentity : proposal.beforeDeclaration? = proposal.afterDeclaration?)
    (statementIdentity : proposal.beforeStatementHash? = proposal.afterStatementHash?)
    (publicApi : proposal.publicApiPreserved = true)
    (classifications : proposal.classificationsPreserved = true)
    (growth : proposal.axiomPolicyPreserved = false) :
    firstProposalFailure context proposal = .axiomGrowth := by
  classical
  simp [firstProposalFailure, contract, snapshot, session, base, fresh,
    internal, noConflict, pieces, edges, ranges, ordered, capacity, boundary, projection,
    declarationIdentity, statementIdentity, publicApi, classifications, growth]

/- The context-indexed admitted wrapper avoids erasing verification premises. -/
@[surface_novel]
structure AdmittedMove (context : NetworkSurgeryAdmissionContext) where
  proposal : PreparedNetworkSurgeryProposal
  validity : proposal.Valid context

@[surface_novel]
inductive NetworkSurgeryVerificationResult
    (context : NetworkSurgeryAdmissionContext) where
  | admitted (move : AdmittedMove context)
  | replay (proposal : PreparedNetworkSurgeryProposal)
  | rejected (code : NetworkSurgeryRejectionCode)

@[expose] noncomputable def verifyNetworkSurgeryProposal
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal) :
    NetworkSurgeryVerificationResult context := by
  classical
  exact if valid : proposal.Valid context then
    .admitted ⟨proposal, valid⟩
  else if proposal.IsReplay context then
    .replay proposal
  else
    .rejected (firstProposalFailure context proposal)

@[surface_novel, surface_published]
theorem verifyNetworkSurgeryProposal_sound
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (move : AdmittedMove context)
    (admitted : verifyNetworkSurgeryProposal context proposal = .admitted move) :
    move.proposal = proposal ∧ proposal.Valid context := by
  classical
  unfold verifyNetworkSurgeryProposal at admitted
  split at admitted
  · cases admitted
    exact ⟨rfl, ‹proposal.Valid context›⟩
  · split at admitted <;> simp_all

@[surface_novel, surface_published]
theorem verifyNetworkSurgeryProposal_rejected_of_invalid
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (code : NetworkSurgeryRejectionCode)
    (invalid : ¬ proposal.Valid context)
    (notReplay : ¬ proposal.IsReplay context)
    (classified : firstProposalFailure context proposal = code) :
    verifyNetworkSurgeryProposal context proposal = .rejected code := by
  classical
  simp [verifyNetworkSurgeryProposal, invalid, notReplay, classified]

@[surface_novel, surface_published]
theorem legalMove_preserves_sourceSnapshotIdentity
    (context : NetworkSurgeryAdmissionContext) (move : AdmittedMove context) :
    move.proposal.sourceSnapshotHash = context.sourceSnapshotHash :=
  move.validity.sourceIdentity

@[surface_novel, surface_published]
theorem legalMove_preserves_declarationIdentity
    (context : NetworkSurgeryAdmissionContext) (move : AdmittedMove context) :
    move.proposal.beforeDeclaration? = move.proposal.afterDeclaration? :=
  move.validity.declarationIdentity

@[surface_novel, surface_published]
theorem legalTheoremMove_preserves_statementIdentity
    (context : NetworkSurgeryAdmissionContext) (move : AdmittedMove context) :
    move.proposal.beforeStatementHash? = move.proposal.afterStatementHash? :=
  move.validity.theoremStatementIdentity

end Surface.Core.NetworkSurgery
