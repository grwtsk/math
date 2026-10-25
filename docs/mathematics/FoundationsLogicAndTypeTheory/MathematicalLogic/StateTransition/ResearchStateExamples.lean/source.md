# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StateTransition.ResearchStateExamples

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ee98d56d4faa86da6839f6f7edc3cbf3d27f043` · SHA-256 `aabd578f771934b36b4e2e4a3b18b32f91f3c721c40ee221e29b9c39049f9759`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StateTransition.ResearchState

/-!
# Finite research-state examples and rejected proposals

These examples are pure propositions and kernel-checked proofs. They make no
assertion that a repository program replayed the corresponding transitions.
The positive example moves a target token to two explicit premises before
discharging them. The negative examples expose absent debt, ungrounded cycles,
non-entailment metadata, and changed source identities.
-/

namespace GRWTSK.Logic.StateTransition.ResearchState.Examples

open GRWTSK.Logic.Inference
open GRWTSK.ProofHorizon.CorkscrewChamberCap

/-- Fixture identities distinguish revisions even for an unchanged printed name. -/
def oldSource : SourceIdentity where
  repository := "finite-fixture"
  commit := "revision-a"
  tree := "tree-a"
  path := "Fixture.lean"
  blob := "blob-a"
  declarationName := "Fixture.claim"

def changedSource : SourceIdentity :=
  { oldSource with commit := "revision-b", tree := "tree-b", blob := "blob-b" }

def oldCatalog : Catalog Unit where
  statement := fun _ ↦ True
  hypotheses := fun _ ↦ []
  source := fun _ ↦ oldSource

def changedCatalog : Catalog Unit where
  statement := fun _ ↦ False
  hypotheses := fun _ ↦ []
  source := fun _ ↦ changedSource

theorem unchanged_name_does_not_identify_revision :
    oldSource.declarationName = changedSource.declarationName ∧
      oldSource ≠ changedSource := by
  constructor
  · rfl
  · intro equality
    have commits := congrArg SourceIdentity.commit equality
    simp [oldSource, changedSource] at commits

/-- A proof of the old statement cannot supply the false revised statement. -/
theorem same_name_revision_transport_rejected :
    ¬ (Meaning oldCatalog () → Meaning changedCatalog ()) := by
  simp [Meaning, oldCatalog, changedCatalog]

/-- A contextual implication may be proved while its hypothesis remains false. -/
def contextualCatalog : Catalog Unit where
  statement := fun _ ↦ False
  hypotheses := fun _ ↦ [False]
  source := fun _ ↦ oldSource

theorem contextual_claim_proved : Meaning contextualCatalog () := by
  intro hypotheses
  exact hypotheses False (by simp [contextualCatalog])

theorem contextual_hypothesis_erasure_rejected :
    ¬ (Meaning contextualCatalog () → contextualCatalog.statement ()) := by
  intro erasure
  exact erasure contextual_claim_proved

theorem contextual_hypothesis_remains_unproved :
    ¬ (∀ hypothesis ∈ contextualCatalog.hypotheses (), hypothesis) := by
  intro purportedDischarge
  exact purportedDischarge False (by simp [contextualCatalog])

/-- The auxiliary premise is separate debt, not a hidden adapter assumption. -/
inductive Debt where
  | target
  | supplier
  | auxiliary
  deriving DecidableEq, Repr

def arithmeticCatalog : Catalog Debt where
  statement
    | .target => (2 : Nat) ≠ 0 ∧ 2 + 2 = 4
    | .supplier => (2 : Nat) + 2 = 4
    | .auxiliary => (2 : Nat) ≠ 0
  hypotheses := fun _ ↦ []
  source := fun claim ↦
    { oldSource with declarationName := match claim with
        | .target => "Fixture.target"
        | .supplier => "Fixture.supplier"
        | .auxiliary => "Fixture.auxiliary" }

def arithmeticReduction : Reduction arithmeticCatalog where
  rule :=
    { premises := {.supplier, .auxiliary}
      sideCondition := fun _ ↦ True
      conclusion := .target }
  sound := by
    intro _ _ premises
    have supplier := premises .supplier (by simp)
    have auxiliary := premises .auxiliary (by simp)
    exact fun _ ↦ ⟨auxiliary (by simp [arithmeticCatalog]),
      supplier (by simp [arithmeticCatalog])⟩

theorem arithmetic_supplier : Meaning arithmeticCatalog .supplier := by
  simp [Meaning, arithmeticCatalog]

theorem arithmetic_auxiliary : Meaning arithmeticCatalog .auxiliary := by
  simp [Meaning, arithmeticCatalog]

/-- A valid finite route initially owes its exact target. -/
def pendingState : State arithmeticCatalog Unit :=
  { initialState arithmeticCatalog ()
      [arithmeticCatalog.source .target, arithmeticCatalog.source .supplier,
        arithmeticCatalog.source .auxiliary] with
    target := some .target
    obligations := {.target, .supplier, .auxiliary}
    frontier := {.target} }

theorem pending_state_valid : Valid arithmeticCatalog (fun _ : Unit ↦ True) pendingState := by
  constructor
  · simp [pendingState, initialState]
  · simp [pendingState, initialState]
  · intro claim _
    cases claim <;> simp [pendingState, initialState]
  · simp [pendingState, initialState]
  · trivial
  · intro claim selected
    have equal : Debt.target = claim := Option.some.inj selected
    subst claim
    simp [pendingState, initialState]
  · intro claim selected holds
    have equal : Debt.target = claim := Option.some.inj selected
    subst claim
    exact holds .target (by simp [pendingState, initialState])

/-- Transfer replaces one token by both premises, including the auxiliary debt. -/
def transferredState : State arithmeticCatalog Unit :=
  advance { pendingState with
    frontier := (pendingState.frontier.erase arithmeticReduction.rule.conclusion) ∪
      arithmeticReduction.rule.premises
    relations := pendingState.relations ++
      [.conditional arithmeticReduction.rule.premises arithmeticReduction.rule.conclusion
        (arithmeticReduction.sound () True.intro)] }
    .transferDebt { id := 1 }

theorem transfer_step : Change (fun _ : Unit ↦ True) pendingState transferredState := by
  apply Change.transfer pendingState { id := 1 } arithmeticReduction
  · simp [pendingState, initialState, SelfSpecification.unrestricted]
  · simp [pendingState, arithmeticReduction]
  · simp [pendingState, arithmeticReduction]
  · trivial

theorem transfer_retains_every_premise :
    transferredState.frontier = {.supplier, .auxiliary} := by
  simp [transferredState, advance, pendingState, arithmeticReduction]

/-- Even an identity adapter leaves the original debt token outstanding. -/
def selfReduction : Reduction arithmeticCatalog where
  rule := { premises := {.target}, sideCondition := fun _ ↦ True, conclusion := .target }
  sound := by
    intro _ _ premises
    exact premises .target (by simp)

def selfTransferredState : State arithmeticCatalog Unit :=
  advance { pendingState with
    frontier := (pendingState.frontier.erase selfReduction.rule.conclusion) ∪
      selfReduction.rule.premises
    relations := pendingState.relations ++
      [.conditional selfReduction.rule.premises selfReduction.rule.conclusion
        (selfReduction.sound () True.intro)] }
    .transferDebt { id := 4 }

theorem self_reduction_step : Change (fun _ : Unit ↦ True) pendingState selfTransferredState := by
  apply Change.transfer pendingState { id := 4 } selfReduction
  · simp [pendingState, initialState, SelfSpecification.unrestricted]
  · simp [pendingState, selfReduction]
  · simp [pendingState, selfReduction]
  · trivial

theorem self_reduction_retains_debt : selfTransferredState.frontier = {.target} := by
  simp [selfTransferredState, advance, pendingState, selfReduction]

def auxiliaryDischargedState : State arithmeticCatalog Unit :=
  advance { transferredState with
    frontier := transferredState.frontier.erase .auxiliary
    relations := transferredState.relations ++ [.discharge .auxiliary arithmetic_auxiliary] }
    .dischargeDebt { id := 2 }

theorem auxiliary_discharge_step :
    Change (fun _ : Unit ↦ True) transferredState auxiliaryDischargedState := by
  apply Change.discharge transferredState { id := 2 } .auxiliary
  · simp [transferredState, advance, pendingState, initialState,
      SelfSpecification.unrestricted]
  · rw [transfer_retains_every_premise]
    simp

theorem supplier_debt_survives : auxiliaryDischargedState.frontier = {.supplier} := by
  change transferredState.frontier.erase .auxiliary = {.supplier}
  rw [transfer_retains_every_premise]
  decide

def closedState : State arithmeticCatalog Unit :=
  advance { auxiliaryDischargedState with
    frontier := auxiliaryDischargedState.frontier.erase .supplier
    relations := auxiliaryDischargedState.relations ++ [.discharge .supplier arithmetic_supplier] }
    .dischargeDebt { id := 3 }

theorem supplier_discharge_step :
    Change (fun _ : Unit ↦ True) auxiliaryDischargedState closedState := by
  apply Change.discharge auxiliaryDischargedState { id := 3 } .supplier
  · simp [auxiliaryDischargedState, transferredState, advance, pendingState,
      initialState, SelfSpecification.unrestricted]
  · rw [supplier_debt_survives]
    simp

theorem closed_frontier : closedState.frontier = ∅ := by
  simp [closedState, advance, supplier_debt_survives]

theorem closed_state_valid : Valid arithmeticCatalog (fun _ : Unit ↦ True) closedState :=
  change_preserves_valid supplier_discharge_step
    (change_preserves_valid auxiliary_discharge_step
      (change_preserves_valid transfer_step pending_state_valid))

/-- Closure comes from the preserved route and discharged finite frontier. -/
theorem finite_target_closure : Meaning arithmeticCatalog .target := by
  apply closed_state_valid.route .target rfl
  intro claim member
  rw [closed_frontier] at member
  exact False.elim (Finset.notMem_empty claim member)

theorem finite_reachable_example :
    StateInvariant.Reachable (Change (fun _ : Unit ↦ True)) pendingState closedState :=
  .next (.next (.next .initial transfer_step) auxiliary_discharge_step) supplier_discharge_step

/-- A sound conditional implication may depend on a false unresolved premise. -/
def blockedCatalog : Catalog Debt where
  statement
    | .target => False
    | .supplier => True
    | .auxiliary => False
  hypotheses := fun _ ↦ []
  source := arithmeticCatalog.source

def blockedReduction : Reduction blockedCatalog where
  rule := arithmeticReduction.rule
  sound := by
    intro _ _ premises
    have auxiliary := premises .auxiliary (by simp [arithmeticReduction])
    exact fun _ ↦ auxiliary (by simp [blockedCatalog])

/-- Removing the auxiliary token destroys the conditional route. -/
theorem omitted_auxiliary_debt_rejected :
    ¬ (Holds blockedCatalog {.supplier} → Holds blockedCatalog {.target}) := by
  intro purportedConservation
  have supplier : Holds blockedCatalog {.supplier} := by
    intro claim member
    have equal : claim = .supplier := by simpa using member
    subst claim
    simp [Meaning, blockedCatalog]
  have target := purportedConservation supplier .target (by simp)
  exact target (by simp [blockedCatalog])

def blockedPendingState : State blockedCatalog Unit :=
  { initialState blockedCatalog ()
      [blockedCatalog.source .target, blockedCatalog.source .supplier,
        blockedCatalog.source .auxiliary] with
    target := some .target
    obligations := {.target, .supplier, .auxiliary}
    frontier := {.target} }

/-- The proposed replacement omits exactly the necessary auxiliary debt. -/
def missingDebtState : State blockedCatalog Unit :=
  advance { blockedPendingState with frontier := {.supplier} }
    .transferDebt { id := 10 }

theorem missing_debt_transition_rejected :
    ¬ Change (fun _ : Unit ↦ True) blockedPendingState missingDebtState := by
  intro proposed
  apply omitted_auxiliary_debt_rejected
  simpa [blockedPendingState, missingDebtState, advance] using change_conserves proposed

/-- A relevance edge records a score and words, with no implication term. -/
def relevanceOnlyClosureState : State blockedCatalog Unit :=
  advance { blockedPendingState with
    frontier := ∅
    relations := [.relevance .supplier .target 100 "conceptual comparison only"] }
    .revisePath { id := 11 }

theorem relevance_only_closure_rejected :
    ¬ Valid blockedCatalog (fun _ : Unit ↦ True) relevanceOnlyClosureState := by
  intro valid
  have target := valid.route .target rfl (by
    intro claim member
    exact False.elim (Finset.notMem_empty claim member))
  exact target (by simp [blockedCatalog])

theorem relevance_only_transition_rejected :
    ¬ Change (fun _ : Unit ↦ True) blockedPendingState relevanceOnlyClosureState := by
  intro proposed
  have old := change_conserves proposed (by
    intro claim member
    exact False.elim (Finset.notMem_empty claim member))
  have target := old .target (by simp [blockedPendingState])
  exact target (by simp [blockedCatalog])

/-- A reported kernel status is still only metadata when no proof is supplied. -/
def reportedMetadata : Metadata :=
  { verification :=
      [{ source := blockedCatalog.source .target, status := .kernelReported,
         description := "unsupported external status assertion" }] }

def observedState : State blockedCatalog Unit :=
  advance { blockedPendingState with metadata := reportedMetadata } .observe { id := 12 }

theorem status_observation_step :
    Change (fun _ : Unit ↦ True) blockedPendingState observedState := by
  apply Change.observe blockedPendingState { id := 12 } reportedMetadata
  simp [blockedPendingState, initialState, SelfSpecification.unrestricted]

theorem status_observation_preserves_proofs_and_debt :
    observedState.proved = blockedPendingState.proved ∧
      observedState.frontier = blockedPendingState.frontier := by
  exact ⟨rfl, rfl⟩

def unsupportedPromotionState : State blockedCatalog Unit :=
  { initialState blockedCatalog () [blockedCatalog.source .target] with
    obligations := {.target}
    proved := {.target}
    metadata := reportedMetadata }

theorem unsupported_status_promotion_rejected :
    ¬ Valid blockedCatalog (fun _ : Unit ↦ True) unsupportedPromotionState := by
  intro valid
  have target := valid.proved_sound .target (by simp [unsupportedPromotionState])
  exact target (by simp [blockedCatalog])

theorem unsupported_status_transition_rejected :
    ¬ Change (fun _ : Unit ↦ True)
      (initialState blockedCatalog () [blockedCatalog.source .target]) unsupportedPromotionState := by
  intro proposed
  apply unsupported_status_promotion_rejected
  exact change_preserves_valid proposed
    (initialState_valid blockedCatalog () [blockedCatalog.source .target] True.intro)

/-- A one-node conditional route has no ground provider. -/
def selfCycle : Unit → ProofRoute Unit := fun _ ↦
  { conclusion := (), premises := {()} }

theorem self_cycle_has_no_support : supportedClaims selfCycle {()} = ∅ := by
  apply supportedClaims_empty_of_no_ground
  intro provider _
  exact ⟨(), by simp [selfCycle]⟩

theorem circular_reduction_rejected : ¬ GroundedSupport selfCycle {()} () := by
  intro supported
  have member := (mem_supportedClaims_iff selfCycle {()} ()).mpr supported
  rw [self_cycle_has_no_support] at member
  exact Finset.notMem_empty () member

/-- Two mutually conditional providers still supply no ground proof. -/
def mutualCycle : Bool → ProofRoute Bool := fun provider ↦
  { conclusion := provider, premises := {!provider} }

theorem mutual_cycle_has_no_support :
    supportedClaims mutualCycle {false, true} = ∅ := by
  apply supportedClaims_empty_of_no_ground
  intro provider _
  exact ⟨!provider, by simp [mutualCycle]⟩

theorem mutual_circular_reduction_rejected (claim : Bool) :
    ¬ GroundedSupport mutualCycle {false, true} claim := by
  intro supported
  have member :=
    (mem_supportedClaims_iff mutualCycle {false, true} claim).mpr supported
  rw [mutual_cycle_has_no_support] at member
  exact Finset.notMem_empty claim member

#print axioms unchanged_name_does_not_identify_revision
#print axioms same_name_revision_transport_rejected
#print axioms contextual_claim_proved
#print axioms contextual_hypothesis_erasure_rejected
#print axioms contextual_hypothesis_remains_unproved
#print axioms arithmetic_supplier
#print axioms arithmetic_auxiliary
#print axioms pending_state_valid
#print axioms transfer_step
#print axioms transfer_retains_every_premise
#print axioms self_reduction_step
#print axioms self_reduction_retains_debt
#print axioms auxiliary_discharge_step
#print axioms supplier_debt_survives
#print axioms supplier_discharge_step
#print axioms closed_frontier
#print axioms closed_state_valid
#print axioms finite_target_closure
#print axioms finite_reachable_example
#print axioms omitted_auxiliary_debt_rejected
#print axioms missing_debt_transition_rejected
#print axioms relevance_only_closure_rejected
#print axioms relevance_only_transition_rejected
#print axioms status_observation_step
#print axioms status_observation_preserves_proofs_and_debt
#print axioms unsupported_status_promotion_rejected
#print axioms unsupported_status_transition_rejected
#print axioms self_cycle_has_no_support
#print axioms circular_reduction_rejected
#print axioms mutual_cycle_has_no_support
#print axioms mutual_circular_reduction_rejected

end GRWTSK.Logic.StateTransition.ResearchState.Examples
```
