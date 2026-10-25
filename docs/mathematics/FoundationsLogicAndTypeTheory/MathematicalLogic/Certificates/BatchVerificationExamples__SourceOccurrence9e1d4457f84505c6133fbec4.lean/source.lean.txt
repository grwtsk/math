/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Logic.Certificates.BatchVerification
import GRWTSK.Logic.Certificates.DependencyRevisionExamples

/-!
# CCC checked current-evidence admission fixtures

A withdrawn but still true source claim can be re-admitted by an actual current
revision certificate whose global locality theorem is independently proved.
A false current target cannot be admitted, and a missing prerequisite prevents
an incomplete singleton batch even when its own target remains true.

These exact finite fixtures create no effect permit and authenticate no files.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.EvidenceAdmissionFixtures

open RevisionFixtures

/-- Withdraw the surviving independent claim without changing the current snapshot. -/
def withdrawnLedger : RevisionLedger policy :=
  correctedLedger.correct schema policy revisedSnapshot {4}

theorem withdrawing_four_affected_exact :
    correctionAffected schema revisedSnapshot revisedSnapshot {4} = {4} := by
  simp only [correctionAffected, directChanged_self, Finset.empty_union]
  apply affectedClosure_eq_of_closed
  unfold DependencyClosed
  decide

theorem withdrawn_ledger_safe : RevisionSafe schema policy withdrawnLedger :=
  correction_preserves_safe schema policy correctedLedger revisedSnapshot {4} corrected_ledger_safe

theorem withdrawn_verified_empty : withdrawnLedger.verified = ∅ := by
  change correctedLedger.verified \
    correctionAffected schema revisedSnapshot revisedSnapshot {4} = _
  rw [corrected_verified_exact, withdrawing_four_affected_exact]
  simp

theorem withdrawn_pending_all : withdrawnLedger.pending = Finset.univ := by
  change correctedLedger.pending ∪
    (correctedLedger.verified ∩ correctionAffected schema revisedSnapshot revisedSnapshot {4}) = _
  rw [corrected_pending_exact, corrected_verified_exact, withdrawing_four_affected_exact]
  decide

/-- This is a new current-source certificate, not an inferred upgrade of a current cap. -/
def currentFourCertificate : RevisionCertificate Bool ℕ (fun snapshot ↦ target snapshot 4) where
  recorded := revisedSnapshot
  reads := schema.reads 4
  proved := by simp [target, revisedSnapshot]
  locality := by
    intro left right agreement proved
    have original : left true = 7 := by simpa [target] using proved
    have transferred := (agreement true (by simp [schema])).trans original
    simpa [target] using transferred

def currentFourRecord : ArchivedClaim policy.statement where
  claim := 4
  certificate := currentFourCertificate

/-- Re-admission checks pending membership, exact reads, current evidence and prerequisites. -/
def fourAdmission : CertificateAdmission schema policy withdrawnLedger where
  claims := {4}
  records := [currentFourRecord]
  pending_only := by
    intro claim _
    rw [withdrawn_pending_all]
    exact Finset.mem_univ claim
  current_evidence := by
    intro claim member
    have equal : claim = 4 := by simpa only [Finset.mem_singleton] using member
    subst claim
    refine ⟨currentFourRecord, by simp, rfl, rfl, ?_⟩
    exact currentFourCertificate.recorded_accepted
  prerequisites := by
    intro claim member prerequisite dependency
    have equal : claim = 4 := by simpa only [Finset.mem_singleton] using member
    subst claim
    simp [schema, DependencyFixtures.cyclicDependencies] at dependency

def readmittedLedger : RevisionLedger policy :=
  withdrawnLedger.admit schema policy fourAdmission

theorem readmitted_ledger_safe : RevisionSafe schema policy readmittedLedger :=
  admission_preserves_safe schema policy withdrawnLedger fourAdmission withdrawn_ledger_safe

theorem readmitted_statuses_exact :
    readmittedLedger.verified = {4} ∧ readmittedLedger.pending = {0, 1, 2, 3} := by
  constructor
  · change withdrawnLedger.verified ∪ {4} = _
    rw [withdrawn_verified_empty]
    simp
  · change withdrawnLedger.pending \ {4} = _
    rw [withdrawn_pending_all]
    decide

/-- Archive appending keeps the old proof history and the new current locality proof. -/
theorem readmission_retains_history :
    readmittedLedger.archive = withdrawnLedger.archive ++ [currentFourRecord] ∧
      readmittedLedger.receipts = withdrawnLedger.receipts ∧
        readmittedLedger.corrections = withdrawnLedger.corrections := ⟨rfl, rfl, rfl⟩

theorem readmitted_current_target : target revisedSnapshot 4 := by
  exact admitted_certificate_target schema policy withdrawnLedger fourAdmission 4
    (by simp [fourAdmission])

/-- An admission cannot turn the false revised source claim into a verified theorem. -/
theorem false_current_claim_not_admissible
    (admission : CertificateAdmission schema policy withdrawnLedger) :
    (2 : Fin 5) ∉ admission.claims := by
  intro member
  have currentTarget := admitted_certificate_target schema policy withdrawnLedger admission 2 member
  change target revisedSnapshot 2 at currentTarget
  exact changed_claim_keeps_historical_proof.2 currentTarget

/-- Claim 3 has a true current target, but its prerequisite 1 remains unresolved. -/
theorem incomplete_singleton_prerequisite_rejected
    (admission : CertificateAdmission schema policy withdrawnLedger)
    (singleton : admission.claims = {3}) : False := by
  have prerequisite := admission.prerequisites 3 (by rw [singleton]; simp) 1
    (by simp [schema, DependencyFixtures.cyclicDependencies])
  rw [withdrawn_verified_empty, singleton] at prerequisite
  simp at prerequisite

end GRWTSK.ProofHorizon.CorkscrewChamberCap.EvidenceAdmissionFixtures
