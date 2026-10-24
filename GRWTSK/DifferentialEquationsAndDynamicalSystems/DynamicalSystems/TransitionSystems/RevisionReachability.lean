/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Certificates.DependencyRevision

/-!
# CCC repeated revision correction

Finite correction sequences execute the existing selective-withdrawal update.
Their reachability relation is witnessed by the actual sequence of requests,
rather than by arbitrary assignments of a purported final ledger. Safety follows
from one-step correction safety. Issued claims, archived proof payloads, and
historical effect receipts remain literally equal; pending claims grow and active
verified claims can only shrink. Each request appends exactly one correction
record, including an unchanged-snapshot recheck. The final snapshot is exactly
the snapshot in the last request.

These are finite bookkeeping theorems for the fixed declared dependency schema.
They assert no resource bound, non-Zeno theorem, runtime authentication, or
convergence to a proof. Corrections neither grant effect authority nor replace
the immutable-source guarded controller's admission checks.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap

universe u v w x y z

/-- Correction data declares a current source snapshot and explicit withdrawal
roots. Its type contains no proof of authentication or operational permission. -/
structure CorrectionRequest (Artifact : Type u) (Revision : Type v) (Claim : Type w) where
  current : SourceSnapshot Artifact Revision
  withdrawn : Finset Claim

section RepeatedCorrection

variable {Artifact : Type u} {Revision : Type v} {Claim : Type w}
  {Effect : Type x} {Grant : Type y} {Surface : Type z}
  [DecidableEq Revision] [Fintype Claim] [DecidableEq Claim]

local notation "Snapshot" => SourceSnapshot Artifact Revision
local notation "Policy" =>
  ControllerPolicy (SourceSnapshot Artifact Revision) Claim Effect Grant Surface
local notation "Request" => CorrectionRequest Artifact Revision Claim

/-- Execute each finite correction request in order, with its actual preceding
snapshot retained by the one-step correction record. -/
def RevisionLedger.correctMany (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (requests : List Request) : RevisionLedger policy :=
  requests.foldl (fun previous request =>
    previous.correct schema policy request.current request.withdrawn) ledger

@[simp]
theorem correctMany_nil (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) : ledger.correctMany schema policy [] = ledger := rfl

@[simp]
theorem correctMany_cons (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (request : Request) (requests : List Request) :
    ledger.correctMany schema policy (request :: requests) =
      (ledger.correct schema policy request.current request.withdrawn).correctMany
        schema policy requests := rfl

theorem correctMany_append (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (first second : List Request) :
    ledger.correctMany schema policy (first ++ second) =
      (ledger.correctMany schema policy first).correctMany schema policy second := by
  exact List.foldl_append

/-- Every finite correction trajectory starting from safe evidence stays safe. -/
theorem correctMany_safe (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (requests : List Request)
    (safe : RevisionSafe schema policy ledger) :
    RevisionSafe schema policy (ledger.correctMany schema policy requests) := by
  induction requests generalizing ledger with
  | nil => exact safe
  | cons request requests ih =>
    exact ih _ (correction_preserves_safe schema policy ledger request.current
      request.withdrawn safe)

theorem correctMany_issued_preserved (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (requests : List Request) :
    (ledger.correctMany schema policy requests).issued = ledger.issued := by
  induction requests generalizing ledger with
  | nil => rfl
  | cons request requests ih =>
    rw [correctMany_cons, ih, correction_issued_preserved]

/-- Original certificate objects and their proofs are retained without rewriting. -/
theorem correctMany_archive_preserved (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (requests : List Request) :
    (ledger.correctMany schema policy requests).archive = ledger.archive := by
  induction requests generalizing ledger with
  | nil => rfl
  | cons request requests ih =>
    rw [correctMany_cons, ih, correction_archive_preserved]

/-- Historical receipts stay attached to their original snapshots. This equality
does not convert old receipts into authorization at the final snapshot. -/
theorem correctMany_receipts_preserved (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (requests : List Request) :
    (ledger.correctMany schema policy requests).receipts = ledger.receipts := by
  induction requests generalizing ledger with
  | nil => rfl
  | cons request requests ih =>
    rw [correctMany_cons, ih, correction_receipts_preserved]

theorem correctMany_verified_subset (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (requests : List Request) :
    (ledger.correctMany schema policy requests).verified ⊆ ledger.verified := by
  induction requests generalizing ledger with
  | nil => exact Finset.Subset.refl _
  | cons request requests ih =>
    exact (ih _).trans Finset.sdiff_subset

theorem correctMany_pending_superset (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (requests : List Request) :
    ledger.pending ⊆ (ledger.correctMany schema policy requests).pending := by
  induction requests generalizing ledger with
  | nil => exact Finset.Subset.refl _
  | cons request requests ih =>
    exact Finset.subset_union_left.trans
      (ih (ledger.correct schema policy request.current request.withdrawn))

/-- Every issued claim remains covered by exactly the current status ledger;
safety also retains disjoint pending and verified sets. -/
theorem correctMany_issued_covered (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (requests : List Request)
    (safe : RevisionSafe schema policy ledger) :
    ledger.issued ⊆ (ledger.correctMany schema policy requests).pending ∪
      (ledger.correctMany schema policy requests).verified := by
  rw [← correctMany_issued_preserved schema policy ledger requests]
  exact (correctMany_safe schema policy ledger requests safe).issued_covered

/-- Withdrawn active evidence is reopened, not erased from the issued ledger. -/
theorem correctMany_initial_verified_accounted (schema : DependencySchema Artifact Claim)
    (policy : Policy) (ledger : RevisionLedger policy) (requests : List Request)
    (safe : RevisionSafe schema policy ledger) {claim : Claim}
    (verified : claim ∈ ledger.verified) :
    claim ∈ (ledger.correctMany schema policy requests).pending ∨
      claim ∈ (ledger.correctMany schema policy requests).verified :=
  Finset.mem_union.mp
    (correctMany_issued_covered schema policy ledger requests safe (safe.verified_issued verified))

/-- The log has a literal appended suffix, and one event is retained per request. -/
theorem correctMany_correction_suffix (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (requests : List Request) :
    ∃ suffix, (ledger.correctMany schema policy requests).corrections =
      ledger.corrections ++ suffix ∧ suffix.length = requests.length := by
  induction requests generalizing ledger with
  | nil => exact ⟨[], by simp, rfl⟩
  | cons request requests ih =>
    rcases ih (ledger.correct schema policy request.current request.withdrawn) with
      ⟨suffix, logEq, lengthEq⟩
    let record : CorrectionRecord Artifact Revision Claim := {
      before := ledger.snapshot
      after := request.current
      withdrawn := request.withdrawn
      affected := correctionAffected schema ledger.snapshot request.current request.withdrawn }
    refine ⟨record :: suffix, ?_, ?_⟩
    · rw [correctMany_cons, logEq, correction_records_append]
      simp only [List.append_assoc, List.singleton_append, record]
    · simp only [List.length_cons, lengthEq]

theorem correctMany_correction_prefix (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (requests : List Request) :
    ledger.corrections <+: (ledger.correctMany schema policy requests).corrections := by
  rcases correctMany_correction_suffix schema policy ledger requests with ⟨suffix, logEq, _⟩
  exact ⟨suffix, logEq.symm⟩

theorem correctMany_correction_length (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (requests : List Request) :
    (ledger.correctMany schema policy requests).corrections.length =
      ledger.corrections.length + requests.length := by
  rcases correctMany_correction_suffix schema policy ledger requests with ⟨suffix, logEq, lengthEq⟩
  rw [logEq, List.length_append, lengthEq]

/-- The last correction's requested snapshot is the exact final snapshot. -/
theorem correctMany_append_snapshot (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (requests : List Request) (request : Request) :
    (ledger.correctMany schema policy (requests ++ [request])).snapshot = request.current := by
  rw [correctMany_append]
  rfl

theorem correctMany_last_snapshot (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) (requests : List Request) (request : Request)
    (lastRequest : requests.getLast? = some request) :
    (ledger.correctMany schema policy requests).snapshot = request.current := by
  rcases List.getLast?_eq_some_iff.mp lastRequest with ⟨earlier, requestsEq⟩
  rw [requestsEq]
  exact correctMany_append_snapshot schema policy ledger earlier request

/-- Reachability requires an actual finite execution witness; arbitrary final
ledger assignments are not admitted by this relation. -/
def CorrectionReachable (schema : DependencySchema Artifact Claim) (policy : Policy)
    (initial final : RevisionLedger policy) : Prop :=
  ∃ requests : List Request, final = initial.correctMany schema policy requests

theorem correction_reachable_refl (schema : DependencySchema Artifact Claim) (policy : Policy)
    (ledger : RevisionLedger policy) : CorrectionReachable schema policy ledger ledger :=
  ⟨[], rfl⟩

theorem correction_reachable_step (schema : DependencySchema Artifact Claim) (policy : Policy)
    {initial previous : RevisionLedger policy}
    (reachable : CorrectionReachable schema policy initial previous) (request : Request) :
    CorrectionReachable schema policy initial
      (previous.correct schema policy request.current request.withdrawn) := by
  rcases reachable with ⟨requests, previousEq⟩
  refine ⟨requests ++ [request], ?_⟩
  rw [previousEq, correctMany_append]
  rfl

theorem correction_reachable_trans (schema : DependencySchema Artifact Claim) (policy : Policy)
    {initial middle final : RevisionLedger policy}
    (first : CorrectionReachable schema policy initial middle)
    (second : CorrectionReachable schema policy middle final) :
    CorrectionReachable schema policy initial final := by
  rcases first with ⟨firstRequests, middleEq⟩
  rcases second with ⟨secondRequests, finalEq⟩
  refine ⟨firstRequests ++ secondRequests, ?_⟩
  rw [finalEq, middleEq, correctMany_append]

theorem correction_reachable_safe (schema : DependencySchema Artifact Claim) (policy : Policy)
    {initial final : RevisionLedger policy} (safe : RevisionSafe schema policy initial)
    (reachable : CorrectionReachable schema policy initial final) :
    RevisionSafe schema policy final := by
  rcases reachable with ⟨requests, rfl⟩
  exact correctMany_safe schema policy initial requests safe

/-- An existential finite trajectory preserves exact history and issued claims,
with a literal correction-log suffix and a count equal to its request count. -/
theorem correction_reachable_history (schema : DependencySchema Artifact Claim) (policy : Policy)
    {initial final : RevisionLedger policy}
    (reachable : CorrectionReachable schema policy initial final) :
    final.issued = initial.issued ∧ final.archive = initial.archive ∧
      final.receipts = initial.receipts ∧
        ∃ requests : List Request, ∃ suffix,
          final = initial.correctMany schema policy requests ∧
          final.corrections = initial.corrections ++ suffix ∧ suffix.length = requests.length := by
  rcases reachable with ⟨requests, rfl⟩
  refine ⟨correctMany_issued_preserved schema policy initial requests,
    correctMany_archive_preserved schema policy initial requests,
    correctMany_receipts_preserved schema policy initial requests, requests, ?_⟩
  rcases correctMany_correction_suffix schema policy initial requests with ⟨suffix, logEq, lengthEq⟩
  exact ⟨suffix, rfl, logEq, lengthEq⟩

theorem correction_reachable_status (schema : DependencySchema Artifact Claim) (policy : Policy)
    {initial final : RevisionLedger policy} (safe : RevisionSafe schema policy initial)
    (reachable : CorrectionReachable schema policy initial final) :
    final.verified ⊆ initial.verified ∧ initial.pending ⊆ final.pending ∧
      initial.issued ⊆ final.pending ∪ final.verified := by
  rcases reachable with ⟨requests, rfl⟩
  exact ⟨correctMany_verified_subset schema policy initial requests,
    correctMany_pending_superset schema policy initial requests,
    correctMany_issued_covered schema policy initial requests safe⟩

end RepeatedCorrection

end GRWTSK.ProofHorizon.CorkscrewChamberCap
