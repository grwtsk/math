/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Certificates.DependencyRevision
import GRWTSK.FoundationsLogicAndTypeTheory.Order.Closure.FiniteDependencyExamples

/-!
# CCC selective revision fixtures

These kernel-checked finite fixtures use genuine snapshot-dependent targets.
A changed read seeds a cycle and its transitive consumer, while an unrelated
claim retains current evidence. Mathematical proofs and source-bound effect
receipts remain archived, but an old receipt does not become current authority.
The fixtures do not authenticate real artifacts or extract actual dependencies.

Research direction and conceptual selection: grwtsk contributors.
Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap

namespace RevisionFixtures

/-- Both artifact revisions originally equal seven. -/
def originalSnapshot : SourceSnapshot Bool ℕ := fun _ ↦ 7

/-- Only the false artifact changes. -/
def revisedSnapshot : SourceSnapshot Bool ℕ := fun artifact ↦ if artifact then 7 else 8

/-- Claim 2 reads the changed artifact. Other claims read the unchanged one. -/
def schema : DependencySchema Bool (Fin 5) where
  reads := fun claim ↦ if claim = 2 then {false} else {true}
  dependencies := DependencyFixtures.cyclicDependencies

/-- Every target depends on its declared source revision coordinate. -/
def target (snapshot : SourceSnapshot Bool ℕ) (claim : Fin 5) : Prop :=
  if claim = 2 then snapshot false = 7 else snapshot true = 7

/-- Operational guards are trivial in this fixture; mathematical targets are not. -/
def policy : ControllerPolicy (SourceSnapshot Bool ℕ) (Fin 5) Unit Unit Unit where
  statement := target
  typed := fun _ _ ↦ True
  authenticated := fun _ ↦ True
  permits := fun _ _ _ ↦ True
  rights := fun _ _ _ ↦ True

/-- A proof records its actual source snapshot and a proved local dependency. -/
def certificate (claim : Fin 5) :
    RevisionCertificate Bool ℕ (fun snapshot ↦ target snapshot claim) where
  recorded := originalSnapshot
  reads := schema.reads claim
  proved := by simp [target, originalSnapshot]
  locality := by
    intro left right agreement proved
    by_cases hclaim : claim = 2
    · have hread := agreement false (by simp [schema, hclaim])
      simp only [target, hclaim, ↓reduceIte] at proved ⊢
      exact hread.trans proved
    · have hread := agreement true (by simp [schema, hclaim])
      simp only [target, hclaim, ↓reduceIte] at proved ⊢
      exact hread.trans proved

def record (claim : Fin 5) : ArchivedClaim policy.statement where
  claim := claim
  certificate := certificate claim

/-- One historical receipt is bound to the original snapshot. -/
def historicalReceipt : EffectReceipt (SourceSnapshot Bool ℕ) Unit Unit Unit where
  source := originalSnapshot
  effect := ()
  grant := ()
  surface := ()

/-- All five original claims have real archived proofs before the correction. -/
def originalLedger : RevisionLedger policy where
  snapshot := originalSnapshot
  pending := ∅
  verified := Finset.univ
  issued := Finset.univ
  archive := List.ofFn record
  receipts := [historicalReceipt]
  corrections := []

theorem original_ledger_safe : RevisionSafe schema policy originalLedger := by
  constructor
  · exact Finset.empty_subset _
  · exact Finset.Subset.refl _
  · simp [originalLedger]
  · simp [originalLedger]
  · intro _ _ _ _
    exact Finset.mem_univ _
  · intro claim _
    refine ⟨record claim, ?_, rfl, rfl, ?_⟩
    · exact List.mem_ofFn.mpr ⟨claim, rfl⟩
    · exact (certificate claim).recorded_accepted
  · intro receipt member
    have receiptEq : receipt = historicalReceipt := by
      simpa [originalLedger] using member
    subst receipt
    simp [ReceiptValid, policy]
  · simp [originalLedger]

/-- Exact read comparison detects only claim 2 as directly changed. -/
theorem directly_changed_exact :
    directChanged schema originalSnapshot revisedSnapshot = {2} := by
  ext claim
  by_cases hclaim : claim = 2
  · simp [directChanged, schema, hclaim, originalSnapshot, revisedSnapshot]
  · simp [directChanged, schema, hclaim, originalSnapshot, revisedSnapshot]

/-- Saturation reopens the cycle and its consumer, preserving unrelated claim 4. -/
theorem correction_affected_exact :
    correctionAffected schema originalSnapshot revisedSnapshot ∅ = {0, 1, 2, 3} := by
  rw [correctionAffected, directly_changed_exact, Finset.union_empty]
  exact DependencyFixtures.cyclic_affected_exact

def correctedLedger : RevisionLedger policy :=
  originalLedger.correct schema policy revisedSnapshot ∅

theorem corrected_ledger_safe : RevisionSafe schema policy correctedLedger :=
  correction_preserves_safe schema policy originalLedger revisedSnapshot ∅ original_ledger_safe

theorem corrected_pending_exact : correctedLedger.pending = {0, 1, 2, 3} := by
  change ∅ ∪ (Finset.univ ∩ correctionAffected schema originalSnapshot revisedSnapshot ∅) = _
  rw [correction_affected_exact]
  simp

theorem corrected_verified_exact : correctedLedger.verified = {4} := by
  change Finset.univ \ correctionAffected schema originalSnapshot revisedSnapshot ∅ = _
  rw [correction_affected_exact]
  decide

/-- Unrelated evidence proves its exact revised-snapshot target. -/
theorem unrelated_current_target :
    (4 : Fin 5) ∈ correctedLedger.verified ∧ target revisedSnapshot 4 := by
  constructor
  · rw [corrected_verified_exact]
    simp
  · exact (revision_verified_to_terminal schema policy correctedLedger corrected_ledger_safe
      4 (by rw [corrected_verified_exact]; simp)).proved

/-- The cycle and transitive consumer reopen even though their own targets stay true. -/
theorem cyclic_and_transitive_reopened :
    (0 : Fin 5) ∈ correctedLedger.pending ∧
      (1 : Fin 5) ∈ correctedLedger.pending ∧
        (3 : Fin 5) ∈ correctedLedger.pending ∧
          (0 : Fin 5) ∉ correctedLedger.verified := by
  rw [corrected_pending_exact, corrected_verified_exact]
  decide

/-- Source correction preserves every old archived mathematical proof literally. -/
theorem archive_and_old_proofs_retained :
    correctedLedger.archive = originalLedger.archive ∧
      ∀ claim : Fin 5, target originalSnapshot claim := by
  constructor
  · rfl
  · intro claim
    exact (certificate claim).proved

/-- The changed source claim has no current target proof, although its old proof remains. -/
theorem changed_claim_keeps_historical_proof :
    target originalSnapshot 2 ∧ ¬ target revisedSnapshot 2 := by
  constructor
  · exact (certificate 2).proved
  · simp [target, revisedSnapshot]

/-- A preserved historical receipt is valid only at its recorded source snapshot. -/
theorem historical_receipt_not_current :
    correctedLedger.receipts = originalLedger.receipts ∧
      ReceiptValid policy historicalReceipt.source historicalReceipt ∧
        ¬ CurrentReceiptValid policy revisedSnapshot historicalReceipt := by
  refine ⟨rfl, ?_, ?_⟩
  · simp [ReceiptValid, policy]
  · apply changed_snapshot_receipt_not_current policy revisedSnapshot historicalReceipt false
    simp [historicalReceipt, originalSnapshot, revisedSnapshot]

/-- The first event retains both snapshots and its exact affected set. -/
def firstCorrection : CorrectionRecord Bool ℕ (Fin 5) where
  before := originalSnapshot
  after := revisedSnapshot
  withdrawn := ∅
  affected := {0, 1, 2, 3}

theorem correction_event_retained : correctedLedger.corrections = [firstCorrection] := by
  change [CorrectionRecord.mk originalSnapshot revisedSnapshot ∅
    (correctionAffected schema originalSnapshot revisedSnapshot ∅)] = [firstCorrection]
  rw [correction_affected_exact]
  rfl

/-- Rechecking records another event without erasing the first correction. -/
theorem recheck_preserves_status_and_history :
    (correctedLedger.correct schema policy revisedSnapshot ∅).verified =
      correctedLedger.verified ∧
        firstCorrection ∈ (correctedLedger.correct schema policy revisedSnapshot ∅).corrections ∧
          (correctedLedger.correct schema policy revisedSnapshot ∅).corrections.length = 2 := by
  constructor
  · exact (correction_same_snapshot_status schema policy correctedLedger).2
  · rw [correction_records_append, correction_event_retained]
    simp

end RevisionFixtures

end GRWTSK.ProofHorizon.CorkscrewChamberCap
