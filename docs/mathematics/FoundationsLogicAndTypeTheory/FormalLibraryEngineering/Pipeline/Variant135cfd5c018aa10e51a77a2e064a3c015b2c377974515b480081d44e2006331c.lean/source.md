# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pipeline.Variant135cfd5c018aa10e51a77a2e064a3c015b2c377974515b480081d44e2006331c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bca53772bfa87b8fcd889171e7fb55ea3f432c9f` · SHA-256 `135cfd5c018aa10e51a77a2e064a3c015b2c377974515b480081d44e2006331c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Refactor.Annealing

/-! # Indexed project refactor lifecycle -/

public section

namespace Surface.Refactor

@[surface_novel]
inductive RefactorPhase where
  | created
  | indexed
  | patternsRetrieved
  | modelRequested
  | proposalReceived
  | schemaValidated
  | policyValidated
  | overlayApplied
  | elaborated
  | repairing
  | kernelChecked
  | audited
  | reviewReady
  | applied
  | rejected
  | cancelled
deriving DecidableEq, Repr, BEq

@[expose] def RefactorPhase.rank : RefactorPhase → Nat
  | .created => 0
  | .indexed => 1
  | .patternsRetrieved => 2
  | .modelRequested => 3
  | .proposalReceived => 4
  | .schemaValidated => 5
  | .policyValidated => 6
  | .overlayApplied => 7
  | .elaborated => 8
  | .repairing => 8
  | .kernelChecked => 9
  | .audited => 10
  | .reviewReady => 11
  | .applied => 12
  | .rejected => 13
  | .cancelled => 13

@[surface_certificate]
structure ReviewApprovalReceipt where
  sessionId : String
  reviewDigest : ContentHash256
  confirmedDigest : ContentHash256
  digestMatches : confirmedDigest = reviewDigest
  unchangedBaseHashes : Bool
  unchangedBaseHashesConfirmed : unchangedBaseHashes = true
  immediatelyRevalidated : Bool
  immediateRevalidationConfirmed : immediatelyRevalidated = true
  exclusiveLockObserved : Bool
  exclusiveLockConfirmed : exclusiveLockObserved = true

@[surface_novel]
inductive ActiveRefactorPhase : RefactorPhase → Type where
  | created : ActiveRefactorPhase .created
  | indexed : ActiveRefactorPhase .indexed
  | patternsRetrieved : ActiveRefactorPhase .patternsRetrieved
  | modelRequested : ActiveRefactorPhase .modelRequested
  | proposalReceived : ActiveRefactorPhase .proposalReceived
  | schemaValidated : ActiveRefactorPhase .schemaValidated
  | policyValidated : ActiveRefactorPhase .policyValidated
  | overlayApplied : ActiveRefactorPhase .overlayApplied
  | elaborated : ActiveRefactorPhase .elaborated
  | repairing : ActiveRefactorPhase .repairing
  | kernelChecked : ActiveRefactorPhase .kernelChecked
  | audited : ActiveRefactorPhase .audited
  | reviewReady : ActiveRefactorPhase .reviewReady

@[surface_novel]
inductive RefactorPhaseStep : RefactorPhase → RefactorPhase → Type where
  | index : RefactorPhaseStep .created .indexed
  | retrievePatterns : RefactorPhaseStep .indexed .patternsRetrieved
  | requestModel : RefactorPhaseStep .patternsRetrieved .modelRequested
  | receiveProposal : RefactorPhaseStep .modelRequested .proposalReceived
  | validateSchema : RefactorPhaseStep .proposalReceived .schemaValidated
  | validatePolicy : RefactorPhaseStep .schemaValidated .policyValidated
  | applyOverlay : RefactorPhaseStep .policyValidated .overlayApplied
  | elaborate : RefactorPhaseStep .overlayApplied .elaborated
  | beginRepair : RefactorPhaseStep .elaborated .repairing
  | finishRepairElaboration : RefactorPhaseStep .repairing .elaborated
  | checkKernel : RefactorPhaseStep .elaborated .kernelChecked
  | audit : RefactorPhaseStep .kernelChecked .audited
  | prepareReview : RefactorPhaseStep .audited .reviewReady
  | approve (receipt : ReviewApprovalReceipt) :
      RefactorPhaseStep .reviewReady .applied
  | reject {phase : RefactorPhase} (active : ActiveRefactorPhase phase) :
      RefactorPhaseStep phase .rejected
  | cancel {phase : RefactorPhase} (active : ActiveRefactorPhase phase) :
      RefactorPhaseStep phase .cancelled

@[surface_novel, surface_published]
theorem phase_transition_rank_non_decreasing {source target : RefactorPhase}
    (step : RefactorPhaseStep source target) : source.rank ≤ target.rank := by
  cases step <;> try decide
  case reject active => cases active <;> decide
  case cancel active => cases active <;> decide

@[surface_novel, surface_published]
theorem kernel_checked_requires_elaboration {source : RefactorPhase}
    (step : RefactorPhaseStep source .kernelChecked) : source = .elaborated := by
  cases step
  rfl

@[surface_novel, surface_published]
theorem review_ready_requires_audit {source : RefactorPhase}
    (step : RefactorPhaseStep source .reviewReady) : source = .audited := by
  cases step
  rfl

@[expose] def RefactorPhaseStep.reviewApproval?
    {source : RefactorPhase} (_step : RefactorPhaseStep source .applied) :
    Option ReviewApprovalReceipt := by
  cases _step with
  | approve receipt => exact some receipt

@[surface_novel, surface_published]
theorem applied_requires_review_approval {source : RefactorPhase}
    (step : RefactorPhaseStep source .applied) :
    (step.reviewApproval?).isSome = true := by
  cases step
  rfl

@[surface_novel, surface_published]
theorem rejected_is_terminal (target : RefactorPhase) :
    IsEmpty (RefactorPhaseStep .rejected target) :=
  ⟨by
    intro step
    cases step with
    | reject active => cases active
    | cancel active => cases active⟩

@[surface_novel, surface_published]
theorem cancelled_is_terminal (target : RefactorPhase) :
    IsEmpty (RefactorPhaseStep .cancelled target) :=
  ⟨by
    intro step
    cases step with
    | reject active => cases active
    | cancel active => cases active⟩

@[surface_novel]
structure RefactorPipelineState (phase : RefactorPhase) where
  taskRequestId : String
  sessionId : String
  phase : RefactorPhase := phase
  repairCount : Nat
  repairBudget : Nat
  repairCountBounded : repairCount ≤ repairBudget
  lastArtifactHash : ContentHash256

end Surface.Refactor
```
