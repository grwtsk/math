/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.OrderLatticesOrderedAlgebraicStructures.OrderedSets.WellFoundedReachability
import GRWTSK.DynamicalSystemsAndErgodicTheory.VerificationReachability
import Mathlib.Data.Finset.Card

/-!
# Bounded completion of source-bound certificate ledgers

This extends `RevisionWorkflow`, `RevisionLedger`, and `CertificateAdmission`
and reuses the existing exact-length `GRWTSK.Order.Ranking.Path`. No replacement
ledger, certificate format, or path model is introduced.

A strict admission contains a nonempty batch of already pending claims with the
existing checked evidence and prerequisite fields. Removing such a batch makes
the pending finset a proper subset. Its cardinality is therefore a decreasing
rank, and every path has length plus final pending count at most the original
pending count. Empty batches supply the boundary case: evidence may be appended
without decreasing that rank.

`complete_from_available_batches` separately assumes that an admissible nonempty
batch exists at every safe unfinished state. Restricting ranked reachability to
the safety invariant then supplies an actual bounded terminal path. This
availability premise is not manufactured by the proof. The return theorem
provides exact-source terminal caps, ledger safety, historical archive prefixes,
and unchanged effect receipts. A finite correction phase may precede this
completion phase; the returned proofs then concern the corrected source.

Analytic argument: proper finite-set inclusion gives strict cardinal descent;
the existing invariant-restricted rank theorem gives a terminal path; existing
coverage and evidence soundness then give every issued claim's exact target.
This does not establish termination of arbitrary correction/admission
interleavings, external evidence discovery, or any operational authority.
Dependencies inspected at 7d33cee521e3f1c27ffce510a6894bf15b42c89b.
No prior-art novelty or independent-review claim is made.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap

open GRWTSK.Order.Ranking

universe u v w x y z

variable {Artifact : Type u} {Revision : Type v} {Claim : Type w}
  {Effect : Type x} {Grant : Type y} {Surface : Type z}
  [DecidableEq Claim]

local notation "Policy" =>
  ControllerPolicy (SourceSnapshot Artifact Revision) Claim Effect Grant Surface

/-- An evidence-bearing admission that removes at least one pending claim. -/
def StrictAdmission (schema : DependencySchema Artifact Claim) (policy : Policy)
    (before after : RevisionLedger policy) : Prop :=
  ∃ admission : CertificateAdmission schema policy before,
    admission.claims.Nonempty ∧ after = before.admit schema policy admission

/-- Nonempty admitted subsets give proper decrease independently of the source's size. -/
theorem nonempty_admission_decreases_pending
    (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (admission : CertificateAdmission schema policy ledger)
    (nonempty : admission.claims.Nonempty) :
    (ledger.admit schema policy admission).pending.card < ledger.pending.card := by
  change (ledger.pending \ admission.claims).card < ledger.pending.card
  apply Finset.card_lt_card
  apply Finset.ssubset_def.mpr
  refine ⟨Finset.sdiff_subset, ?_⟩
  intro reverseSubset
  obtain ⟨claim, member⟩ := nonempty
  have retained := reverseSubset (admission.pending_only member)
  exact (Finset.mem_sdiff.mp retained).2 member

/-- Appending an empty admission batch does not make pending-cardinality progress. -/
theorem empty_admission_preserves_pending
    (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (admission : CertificateAdmission schema policy ledger)
    (empty : admission.claims = ∅) :
    (ledger.admit schema policy admission).pending = ledger.pending := by
  change ledger.pending \ admission.claims = ledger.pending
  rw [empty, Finset.sdiff_empty]

theorem strict_admission_decreases_rank
    (schema : DependencySchema Artifact Claim) (policy : Policy)
    {before after : RevisionLedger policy} (step : StrictAdmission schema policy before after) :
    after.pending.card < before.pending.card := by
  rcases step with ⟨admission, nonempty, rfl⟩
  exact nonempty_admission_decreases_pending schema policy before admission nonempty

/-- The existing path-rank theorem gives an exact additive completion budget. -/
theorem strict_admission_path_bound
    (schema : DependencySchema Artifact Claim) (policy : Policy)
    {length : Nat} {initial final : RevisionLedger policy}
    (path : Path (StrictAdmission schema policy) length initial final) :
    length + final.pending.card ≤ initial.pending.card :=
  path_rank_bound (StrictAdmission schema policy) (fun ledger => ledger.pending.card)
    (fun _ _ step => strict_admission_decreases_rank schema policy step) path

/-- The bound applies to every finite path, whether or not its endpoint is terminal. -/
theorem strict_admission_length_bound
    (schema : DependencySchema Artifact Claim) (policy : Policy)
    {length : Nat} {initial final : RevisionLedger policy}
    (path : Path (StrictAdmission schema policy) length initial final) :
    length ≤ initial.pending.card :=
  path_length_bound (StrictAdmission schema policy) (fun ledger => ledger.pending.card)
    (fun _ _ step => strict_admission_decreases_rank schema policy step) path

theorem strict_admission_snapshot
    (schema : DependencySchema Artifact Claim) (policy : Policy)
    {before after : RevisionLedger policy} (step : StrictAdmission schema policy before after) :
    after.snapshot = before.snapshot := by
  rcases step with ⟨admission, _, rfl⟩
  rfl

theorem strict_admission_path_snapshot
    (schema : DependencySchema Artifact Claim) (policy : Policy)
    {length : Nat} {initial final : RevisionLedger policy}
    (path : Path (StrictAdmission schema policy) length initial final) :
    final.snapshot = initial.snapshot := by
  induction path with
  | nil ledger => rfl
  | cons edge tail ih => exact ih.trans (strict_admission_snapshot schema policy edge)

section Safety

variable [DecidableEq Revision] [Fintype Claim]

/-- Concatenation retains the actual correction and admission constructors. -/
theorem RevisionWorkflow.trans
    {schema : DependencySchema Artifact Claim} {policy : Policy}
    {initial middle final : RevisionLedger policy}
    (first : RevisionWorkflow schema policy initial middle)
    (second : RevisionWorkflow schema policy middle final) :
    RevisionWorkflow schema policy initial final := by
  induction second with
  | refl => exact first
  | correct earlier request ih => exact .correct ih request
  | admit earlier admission ih => exact .admit ih admission

/-- Exact-length productive paths are workflows in the existing ledger semantics. -/
theorem strict_admission_path_workflow
    (schema : DependencySchema Artifact Claim) (policy : Policy)
    {length : Nat} {initial final : RevisionLedger policy}
    (path : Path (StrictAdmission schema policy) length initial final) :
    RevisionWorkflow schema policy initial final := by
  induction path with
  | nil ledger => exact .refl
  | cons edge tail ih =>
    rcases edge with ⟨admission, _, rfl⟩
    have first : RevisionWorkflow schema policy _ _ := .admit .refl admission
    exact first.trans ih

theorem strict_admission_preserves_safe
    (schema : DependencySchema Artifact Claim) (policy : Policy)
    {before after : RevisionLedger policy} (safe : RevisionSafe schema policy before)
    (step : StrictAdmission schema policy before after) : RevisionSafe schema policy after := by
  rcases step with ⟨admission, _, rfl⟩
  exact admission_preserves_safe schema policy before admission safe

/-- An issued claim cannot disappear from pending without an exact current proof. -/
theorem workflow_no_silent_discharge
    (schema : DependencySchema Artifact Claim) (policy : Policy)
    {initial final : RevisionLedger policy}
    (workflow : RevisionWorkflow schema policy initial final)
    (safe : RevisionSafe schema policy initial) {claim : Claim}
    (issued : claim ∈ initial.issued) (notPending : claim ∉ final.pending) :
    claim ∈ final.verified ∧ policy.statement final.snapshot claim := by
  rcases workflow_obligation_retained schema policy workflow safe issued with pending | verified
  · exact False.elim (notPending pending)
  · exact ⟨verified, workflow_verified_target schema policy workflow safe verified⟩

/-- Unverified status keeps an issued obligation pending; it does not assert falsity. -/
theorem workflow_pending_of_unverified
    (schema : DependencySchema Artifact Claim) (policy : Policy)
    {initial final : RevisionLedger policy}
    (workflow : RevisionWorkflow schema policy initial final)
    (safe : RevisionSafe schema policy initial) {claim : Claim}
    (issued : claim ∈ initial.issued) (notVerified : claim ∉ final.verified) :
    claim ∈ final.pending := by
  rcases workflow_obligation_retained schema policy workflow safe issued with pending | verified
  · exact pending
  · exact False.elim (notVerified verified)

/-- Empty pending status yields all issued targets only through the coverage invariant. -/
theorem workflow_empty_pending_returns_targets
    (schema : DependencySchema Artifact Claim) (policy : Policy)
    {initial final : RevisionLedger policy}
    (workflow : RevisionWorkflow schema policy initial final)
    (safe : RevisionSafe schema policy initial) (finished : final.pending = ∅) :
    ∀ claim ∈ initial.issued, policy.statement final.snapshot claim := by
  intro claim issued
  have notPending : claim ∉ final.pending := by
    rw [finished]
    exact Finset.not_mem_empty claim
  exact (workflow_no_silent_discharge schema policy workflow safe issued notPending).2

/-- Availability is a separate premise required only at safe unfinished states. -/
theorem complete_from_available_batches
    (schema : DependencySchema Artifact Claim) (policy : Policy)
    (available : ∀ ledger : RevisionLedger policy, RevisionSafe schema policy ledger →
      ledger.pending.Nonempty →
      ∃ admission : CertificateAdmission schema policy ledger, admission.claims.Nonempty)
    (initial : RevisionLedger policy) (safe : RevisionSafe schema policy initial) :
    ∃ length final, Path (StrictAdmission schema policy) length initial final ∧
      final.pending = ∅ ∧ RevisionSafe schema policy final ∧ length ≤ initial.pending.card := by
  apply reaches_terminal_within (StrictAdmission schema policy) (fun ledger => ledger.pending.card)
    (fun ledger => ledger.pending = ∅) (RevisionSafe schema policy)
  · intro current currentSafe unfinished
    obtain ⟨admission, nonempty⟩ := available current currentSafe
      (Finset.nonempty_iff_ne_empty.mpr unfinished)
    exact ⟨current.admit schema policy admission, admission, nonempty, rfl⟩
  · intro before after step
    exact strict_admission_decreases_rank schema policy step
  · intro before after currentSafe step
    exact strict_admission_preserves_safe schema policy currentSafe step
  · exact safe

/-- Completion returns exact-source proofs, retained archives, and unchanged effect receipts. -/
theorem strict_completion_return
    (schema : DependencySchema Artifact Claim) (policy : Policy)
    {length : Nat} {initial final : RevisionLedger policy}
    (path : Path (StrictAdmission schema policy) length initial final)
    (safe : RevisionSafe schema policy initial) (finished : final.pending = ∅) :
    RevisionSafe schema policy final ∧
      final.snapshot = initial.snapshot ∧
      initial.archive <+: final.archive ∧
      final.receipts = initial.receipts ∧
      ∀ claim ∈ initial.issued,
        TerminalCap initial.snapshot (policy.statement initial.snapshot claim) := by
  have workflow := strict_admission_path_workflow schema policy path
  have sameSource := strict_admission_path_snapshot schema policy path
  refine ⟨workflow_safe schema policy workflow safe, sameSource,
    workflow_archive_prefix schema policy workflow,
    workflow_receipts_preserved schema policy workflow, ?_⟩
  intro claim issued
  have target := workflow_empty_pending_returns_targets schema policy workflow safe finished claim issued
  exact ⟨by simpa only [sameSource] using target⟩

/-- A correction phase may reopen obligations; completion returns proofs at the corrected source. -/
theorem corrected_then_completed
    (schema : DependencySchema Artifact Claim) (policy : Policy)
    {initial current : RevisionLedger policy}
    (earlier : RevisionWorkflow schema policy initial current)
    (safe : RevisionSafe schema policy initial)
    (available : ∀ ledger : RevisionLedger policy, RevisionSafe schema policy ledger →
      ledger.pending.Nonempty →
      ∃ admission : CertificateAdmission schema policy ledger, admission.claims.Nonempty) :
    ∃ length final, Path (StrictAdmission schema policy) length current final ∧
      RevisionWorkflow schema policy initial final ∧
      final.snapshot = current.snapshot ∧ final.pending = ∅ ∧
      length ≤ current.pending.card ∧
      ∀ claim ∈ initial.issued, policy.statement final.snapshot claim := by
  obtain ⟨length, final, path, finished, finalSafe, bound⟩ :=
    complete_from_available_batches schema policy available current
      (workflow_safe schema policy earlier safe)
  have whole := earlier.trans (strict_admission_path_workflow schema policy path)
  exact ⟨length, final, path, whole, strict_admission_path_snapshot schema policy path,
    finished, bound, workflow_empty_pending_returns_targets schema policy whole safe finished⟩

end Safety

end GRWTSK.ProofHorizon.CorkscrewChamberCap
