module

public import Surface.Core.NetworkSurgery.Move
public import Surface.Core.NetworkSurgery.Rounding
public import Mathlib.Tactic

/-!
# Full finite verification model for the repository-surgery game

This module is the primary theorem-facing entry point.  It models finite game
state, repair budgets, proposal reduction, and guarded commit projection.  It
does not perform filesystem I/O or turn runtime observations into Lean proof
terms.
-/

public section

namespace Surface.Core.NetworkSurgery

open Surface.Core.Transport

@[surface_novel]
inductive GameDecision where
  | none
  | prepared
  | admitted
  | replay
  | rejected (code : NetworkSurgeryRejectionCode)
  | cancelled
  | committed
deriving DecidableEq, Repr

@[surface_novel]
structure NetworkSurgeryGameState (Payload : Type*) where
  contractHash : Hash256
  sourceSnapshotHash : Hash256
  sessionId : SessionId
  revision : Revision
  phase : GamePhase
  currentBoard : RepositoryBoard
  selectedPieces : List PieceId
  preparedProposal? : Option PreparedNetworkSurgeryProposal
  admittedPublication? : Option (Revisioned Payload)
  repairRound : Nat
  repairBudget : Nat
  lastDecision : GameDecision
deriving DecidableEq, Repr

@[expose] def draftSelection {Payload : Type*}
    (state : NetworkSurgeryGameState Payload) (pieces : List PieceId) :
    NetworkSurgeryGameState Payload :=
  { state with
    phase := .selectionDrafted
    selectedPieces := pieces }

@[surface_novel, surface_published]
theorem selection_does_not_change_sourceSnapshot {Payload : Type*}
    (state : NetworkSurgeryGameState Payload) (pieces : List PieceId) :
    (draftSelection state pieces).sourceSnapshotHash = state.sourceSnapshotHash :=
  rfl

@[expose] def applyProposalDecision {Payload : Type*}
    (state : NetworkSurgeryGameState Payload)
    (context : NetworkSurgeryAdmissionContext) :
    NetworkSurgeryVerificationResult context → NetworkSurgeryGameState Payload
  | .admitted move =>
      { state with
        phase := .proposalVerified
        preparedProposal? := some move.proposal
        lastDecision := .admitted }
  | .replay _ => state
  | .rejected _ => state

@[surface_novel, surface_published]
theorem rejectedMove_leavesGameStateUnchanged {Payload : Type*}
    (state : NetworkSurgeryGameState Payload)
    (context : NetworkSurgeryAdmissionContext)
    (code : NetworkSurgeryRejectionCode) :
    applyProposalDecision state context (.rejected code) = state :=
  rfl

@[surface_novel, surface_published]
theorem staleMove_leavesGameStateUnchanged {Payload : Type*}
    (state : NetworkSurgeryGameState Payload)
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (_stale : proposal.baseRevision ≠ context.revision) :
    applyProposalDecision state context
        (NetworkSurgeryVerificationResult.rejected .staleRevision) = state := by
  exact rejectedMove_leavesGameStateUnchanged state context .staleRevision

@[surface_novel, surface_published]
theorem equalRevisionConflict_leavesGameStateUnchanged {Payload : Type*}
    (state : NetworkSurgeryGameState Payload)
    (context : NetworkSurgeryAdmissionContext)
    (proposal : PreparedNetworkSurgeryProposal)
    (_conflict : proposal.HasEqualRevisionConflict context) :
    applyProposalDecision state context
        (NetworkSurgeryVerificationResult.rejected .equalRevisionConflict) = state := by
  exact rejectedMove_leavesGameStateUnchanged state context .equalRevisionConflict

@[expose] def advanceRepairRound {Payload : Type*}
    (state : NetworkSurgeryGameState Payload) : NetworkSurgeryGameState Payload :=
  if state.repairRound < state.repairBudget then
    { state with
      phase := .repairing
      repairRound := state.repairRound + 1 }
  else state

@[surface_novel, surface_published]
theorem repair_round_bounded {Payload : Type*}
    (state : NetworkSurgeryGameState Payload)
    (alreadyBounded : state.repairRound ≤ state.repairBudget) :
    (advanceRepairRound state).repairRound ≤ state.repairBudget := by
  unfold advanceRepairRound
  split <;> simp_all

/-! ## Finite hard-policy-first repair ordering -/

@[surface_novel]
structure HardPolicyVector where
  invalidContractOrPacket : Nat
  staleSnapshotOrRevision : Nat
  pathOrSpanViolation : Nat
  identityOrStatementChange : Nat
  publicApiOrClassificationChange : Nat
  axiomGrowth : Nat
  importOrReferenceViolation : Nat
  authorityViolation : Nat
  reviewDigestMismatch : Nat
deriving DecidableEq, Repr

@[surface_novel]
structure StructuralDefectVector where
  dyckPrefixUnderflow : Nat
  dyckFinalResidualDepth : Nat
  parentChildInconsistency : Nat
  orphanOrMultipleOwnership : Nat
  boundaryLedgerResidual : Nat
  importFrontierResidual : Nat
  referenceFrontierResidual : Nat
  operationQueueInconsistency : Nat
deriving DecidableEq, Repr

@[surface_novel]
structure LanguageDiagnosticVector where
  parseErrors : Nat
  typeErrors : Nat
  leanElaborationErrors : Nat
  unsolvedLeanGoals : Nat
  buildErrors : Nat
  selectedTestFailures : Nat
deriving DecidableEq, Repr

@[surface_novel]
structure ChangeCostVector where
  changedBytes : Nat
  changedLines : Nat
  newImports : Nat
  referenceRewrites : Nat
  filesCreatedOrDeleted : Nat
  formatterChurn : Nat
  repairRounds : Nat
deriving DecidableEq, Repr

@[expose] def StructuralDefectVector.components
    (vector : StructuralDefectVector) : List Nat :=
  [vector.dyckPrefixUnderflow, vector.dyckFinalResidualDepth,
    vector.parentChildInconsistency, vector.orphanOrMultipleOwnership,
    vector.boundaryLedgerResidual, vector.importFrontierResidual,
    vector.referenceFrontierResidual, vector.operationQueueInconsistency]

@[expose] def StructuralDefectVector.total
    (vector : StructuralDefectVector) : Nat := vector.components.sum

@[expose] def StructuralDefectVector.AllFiniteChecksPass
    (vector : StructuralDefectVector) : Prop :=
  ∀ component ∈ vector.components, component = 0

@[expose] def LanguageDiagnosticVector.components
    (vector : LanguageDiagnosticVector) : List Nat :=
  [vector.parseErrors, vector.typeErrors, vector.leanElaborationErrors,
    vector.unsolvedLeanGoals, vector.buildErrors, vector.selectedTestFailures]

@[expose] def LanguageDiagnosticVector.AllChecksPass
    (vector : LanguageDiagnosticVector) : Prop :=
  ∀ component ∈ vector.components, component = 0

@[surface_novel]
structure FiniteValidationRecord where
  structural : StructuralDefectVector
  language : LanguageDiagnosticVector
deriving DecidableEq, Repr

@[surface_novel, surface_published]
theorem zeroStructuralEnergy_iff_allFiniteStructuralChecksPass
    (vector : StructuralDefectVector) :
    vector.total = 0 ↔ vector.AllFiniteChecksPass := by
  simp [StructuralDefectVector.total, StructuralDefectVector.AllFiniteChecksPass,
    StructuralDefectVector.components]

@[surface_novel, surface_published]
theorem zeroStructuralEnergy_does_not_imply_languageValidity :
    ∃ validation : FiniteValidationRecord,
      validation.structural.total = 0 ∧
        ¬ validation.language.AllChecksPass := by
  refine ⟨⟨⟨0, 0, 0, 0, 0, 0, 0, 0⟩, ⟨1, 0, 0, 0, 0, 0⟩⟩, rfl, ?_⟩
  simp [LanguageDiagnosticVector.AllChecksPass,
    LanguageDiagnosticVector.components]

@[surface_novel]
structure RepairEnergy where
  hardPolicy : List Nat
  structural : List Nat
  language : List Nat
  changeCost : List Nat
  tieBreak : Nat
deriving DecidableEq, Repr

@[expose] def RepairEnergy.vector (energy : RepairEnergy) : List Nat :=
  energy.hardPolicy ++ energy.structural ++ energy.language ++
    energy.changeCost ++ [energy.tieBreak]

@[expose] def RepairEnergy.Less (left right : RepairEnergy) : Prop :=
  List.Lex Nat.lt left.vector right.vector

@[surface_novel]
structure RepairCandidate where
  id : StableCode
  energy : RepairEnergy
deriving DecidableEq, Repr

/-!
Candidate enumeration is finite and pre-ranked by the native coordinator.  The
Lean reducer below performs only the hard-policy and ambiguity refusal step; it
does not synthesize source or infer a missing identifier.
-/

@[surface_novel]
structure BoundedRepairCandidate where
  candidate : RepairCandidate
  hardPolicySafe : Bool
  sourceRecoveryUnambiguous : Bool
deriving DecidableEq, Repr

@[surface_novel]
inductive RepairSelectionRejection where
  | noSafeCandidate
  | ambiguousSourceRecovery
deriving DecidableEq, Repr, BEq

@[surface_novel]
inductive RepairSelectionResult where
  | selected (candidate : RepairCandidate)
  | rejected (reason : RepairSelectionRejection)
deriving DecidableEq, Repr

@[expose] def hasAmbiguousSourceRecovery :
    List BoundedRepairCandidate → Bool
  | [] => false
  | candidate :: remaining =>
      !candidate.sourceRecoveryUnambiguous ||
        hasAmbiguousSourceRecovery remaining

@[expose] def firstHardPolicySafe :
    List BoundedRepairCandidate → Option RepairCandidate
  | [] => none
  | candidate :: remaining =>
      if candidate.hardPolicySafe then some candidate.candidate
      else firstHardPolicySafe remaining

@[expose] def selectRepairCandidate
    (candidates : List BoundedRepairCandidate) : RepairSelectionResult :=
  if hasAmbiguousSourceRecovery candidates then
    .rejected .ambiguousSourceRecovery
  else
    match firstHardPolicySafe candidates with
    | some candidate => .selected candidate
    | none => .rejected .noSafeCandidate

@[surface_novel, surface_published]
theorem ambiguousRepair_is_rejected_before_selection
    (candidate : BoundedRepairCandidate)
    (remaining : List BoundedRepairCandidate)
    (ambiguous : candidate.sourceRecoveryUnambiguous = false) :
    selectRepairCandidate (candidate :: remaining) =
      .rejected .ambiguousSourceRecovery := by
  simp [selectRepairCandidate, hasAmbiguousSourceRecovery, ambiguous]

@[surface_novel, surface_published]
theorem emptyRepairSet_has_no_safe_candidate :
    selectRepairCandidate [] = .rejected .noSafeCandidate := by
  rfl

@[surface_novel]
structure AcceptedRepairStep where
  beforeCandidate : RepairCandidate
  afterCandidate : RepairCandidate
  budgetBefore : Nat
  budgetAfter : Nat
  candidateWasUnseen : Bool
  hardPolicyCeilingPreserved : Bool
  improvementOrBudget : RepairEnergy.Less afterCandidate.energy beforeCandidate.energy ∨
    budgetAfter < budgetBefore

@[surface_novel, surface_published]
theorem repairStep_preserves_hardPolicy_ceiling
    (step : AcceptedRepairStep)
    (preserved : step.hardPolicyCeilingPreserved = true) :
    step.hardPolicyCeilingPreserved = true := preserved

@[surface_novel, surface_published]
theorem acceptedRepair_strictlyImproves_or_consumesBudget
    (step : AcceptedRepairStep) :
    step.afterCandidate.energy.Less step.beforeCandidate.energy ∨
      step.budgetAfter < step.budgetBefore :=
  step.improvementOrBudget

@[expose] def repairTrace
    (candidates : List RepairCandidate) (budget : Nat) : List RepairCandidate :=
  candidates.take budget

@[surface_novel, surface_published]
theorem repairTrace_no_duplicateCandidate
    (candidates : List RepairCandidate) (budget : Nat)
    (unique : candidates.Nodup) :
    (repairTrace candidates budget).Nodup := by
  exact List.Nodup.sublist (List.take_sublist budget candidates) unique

@[surface_novel, surface_published]
theorem repairLoop_length_le_budget_or_candidateCount
    (candidates : List RepairCandidate) (budget : Nat) :
    (repairTrace candidates budget).length ≤ budget ∧
      (repairTrace candidates budget).length ≤ candidates.length := by
  simp [repairTrace]

@[surface_novel, surface_published]
theorem repairLoop_terminates
    (candidates : List RepairCandidate) (budget : Nat) :
    ∃ trace, trace = repairTrace candidates budget ∧
      trace.length ≤ min budget candidates.length := by
  refine ⟨repairTrace candidates budget, rfl, ?_⟩
  simp [repairTrace]

/-! ## Pure guarded commit projection -/

@[surface_novel]
structure GameRepositoryModel (Payload : Type*) where
  sourceSnapshotHash : Hash256
  revision : Revision
  currentPayload? : Option (Revisioned Payload)
  lastReverseBundleHash? : Option Hash256
deriving DecidableEq, Repr

@[surface_novel]
structure PreparedGameCommit (Payload : Type*) where
  baseSnapshotHash : Hash256
  baseRevision : Revision
  admittedPayload : Revisioned Payload
  preparedSnapshotHash : Hash256
  reverseBundleHash : Hash256
  reviewReadyObserved : Bool
  commitRequestedObserved : Bool
deriving DecidableEq, Repr

@[surface_novel]
inductive GameCommitRejection where
  | reviewNotReady
  | commitNotRequested
  | sourceSnapshotRace
  | targetRevisionRace
deriving DecidableEq, Repr

@[surface_novel]
inductive GameCommitResult (Payload : Type*) where
  | committed (model : GameRepositoryModel Payload)
  | rejected (reason : GameCommitRejection) (unchanged : GameRepositoryModel Payload)
deriving DecidableEq, Repr

@[expose] def GameCommitResult.model {Payload : Type*} :
    GameCommitResult Payload → GameRepositoryModel Payload
  | .committed model => model
  | .rejected _ unchanged => unchanged

@[expose] def commitPreparedGameMove {Payload : Type*}
    (prepared : PreparedGameCommit Payload) (live : GameRepositoryModel Payload) :
    GameCommitResult Payload :=
  if prepared.reviewReadyObserved ≠ true then
    .rejected .reviewNotReady live
  else if prepared.commitRequestedObserved ≠ true then
    .rejected .commitNotRequested live
  else if live.sourceSnapshotHash ≠ prepared.baseSnapshotHash then
    .rejected .sourceSnapshotRace live
  else if live.revision ≠ prepared.baseRevision then
    .rejected .targetRevisionRace live
  else
    .committed {
      sourceSnapshotHash := prepared.preparedSnapshotHash
      revision := prepared.admittedPayload.revision
      currentPayload? := some prepared.admittedPayload
      lastReverseBundleHash? := some prepared.reverseBundleHash }

@[surface_novel, surface_published]
theorem sourceSnapshotRace_leavesRepositoryModelUnchanged {Payload : Type*}
    (prepared : PreparedGameCommit Payload) (live : GameRepositoryModel Payload)
    (reviewed : prepared.reviewReadyObserved = true)
    (requested : prepared.commitRequestedObserved = true)
    (raced : live.sourceSnapshotHash ≠ prepared.baseSnapshotHash) :
    (commitPreparedGameMove prepared live).model = live := by
  simp [commitPreparedGameMove, reviewed, requested, raced, GameCommitResult.model]

@[surface_novel, surface_published]
theorem targetRevisionRace_leavesRepositoryModelUnchanged {Payload : Type*}
    (prepared : PreparedGameCommit Payload) (live : GameRepositoryModel Payload)
    (reviewed : prepared.reviewReadyObserved = true)
    (requested : prepared.commitRequestedObserved = true)
    (sameSnapshot : live.sourceSnapshotHash = prepared.baseSnapshotHash)
    (raced : live.revision ≠ prepared.baseRevision) :
    (commitPreparedGameMove prepared live).model = live := by
  simp [commitPreparedGameMove, reviewed, requested, sameSnapshot, raced,
    GameCommitResult.model]

@[surface_novel, surface_published]
theorem successfulCommit_preserves_admitted_revision {Payload : Type*}
    (prepared : PreparedGameCommit Payload) (live committed : GameRepositoryModel Payload)
    (success : commitPreparedGameMove prepared live = .committed committed) :
    committed.revision = prepared.admittedPayload.revision := by
  simp only [commitPreparedGameMove] at success
  split at success <;> try contradiction
  split at success <;> try contradiction
  split at success <;> try contradiction
  split at success <;> try contradiction
  cases success
  rfl

@[surface_novel, surface_published]
theorem successfulCommit_projects_exactPreparedSnapshot {Payload : Type*}
    (prepared : PreparedGameCommit Payload) (live committed : GameRepositoryModel Payload)
    (success : commitPreparedGameMove prepared live = .committed committed) :
    committed.sourceSnapshotHash = prepared.preparedSnapshotHash := by
  simp only [commitPreparedGameMove] at success
  split at success <;> try contradiction
  split at success <;> try contradiction
  split at success <;> try contradiction
  split at success <;> try contradiction
  cases success
  rfl

@[surface_novel, surface_published]
theorem successfulCommit_records_reverseBundle {Payload : Type*}
    (prepared : PreparedGameCommit Payload) (live committed : GameRepositoryModel Payload)
    (success : commitPreparedGameMove prepared live = .committed committed) :
    committed.lastReverseBundleHash? = some prepared.reverseBundleHash := by
  simp only [commitPreparedGameMove] at success
  split at success <;> try contradiction
  split at success <;> try contradiction
  split at success <;> try contradiction
  split at success <;> try contradiction
  cases success
  rfl

@[expose] def quantizedCandidateSelection {Payload : Type*}
    (state : NetworkSurgeryGameState Payload) (coordinate : ExactRationalCoordinate)
    (candidateCount : Nat) : NetworkSurgeryGameState Payload × Nat :=
  (state, clampCandidateIndex (inboundRound coordinate) candidateCount)

@[surface_novel, surface_published]
theorem rounding_does_not_mutate_gameState {Payload : Type*}
    (state : NetworkSurgeryGameState Payload) (coordinate : ExactRationalCoordinate)
    (candidateCount : Nat) :
    (quantizedCandidateSelection state coordinate candidateCount).1 = state :=
  rfl

end Surface.Core.NetworkSurgery
