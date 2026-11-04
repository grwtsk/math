/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.ObservationDescent
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.RevisionCertificates

/-!
# Finite snapshot observations and composition of local certificates

Reuse: `SourceSnapshot`, `SnapshotAgreesOn`, `RevisionCertificate`, and the
existing observation library's `Refines` and `Determined`. Restriction to
specified reads is an observation, and agreement is exactly equality of that
observation. The existing certificate locality theorem therefore gives an
actual descended target, rather than merely a name for a dependency set.

The main compositional consumer is `conjunction_fresh_iff`: two certificates
fresh at a common snapshot produce a new conjunction certificate whose later
freshness is equivalent to freshness of both originals. Their historical
snapshots and proof objects are not rewritten. The proof restricts union
agreement in one direction and glues the two agreements in the other.

Function-valued descent uses an inhabited revision type to extend restricted
assignments outside the reads. Predicate descent does not need that premise.
The final counterexample shows why implication alone cannot replace locality:
adding a disjunct may introduce dependence on an unobserved coordinate.

Completeness of an external dependency inventory, source authenticity, and
independence from external interests are not supplied by these abstract proofs.
Dependencies inspected at 7d33cee521e3f1c27ffce510a6894bf15b42c89b.
No prior-art novelty or independent-review claim is made.
-/

namespace GRWTSK.Logic.Snapshot

open GRWTSK.Logic.Observation
open GRWTSK.ProofHorizon.CorkscrewChamberCap

universe u v w

variable {Artifact : Type u} {Revision : Type v} {Result : Type w}

/-- The exact readout retains its indexing set in its type. -/
def restrict (reads : Finset Artifact) (snapshot : SourceSnapshot Artifact Revision) :
    {a : Artifact // a ∈ reads} → Revision :=
  fun a => snapshot a.val

theorem agrees_iff_restrict_eq (reads : Finset Artifact)
    (recorded current : SourceSnapshot Artifact Revision) :
    SnapshotAgreesOn reads recorded current ↔ restrict reads current = restrict reads recorded := by
  constructor
  · intro h
    funext a
    exact h a.val a.property
  · intro h a ha
    exact congrFun h ⟨a, ha⟩

theorem restrict_refines_of_subset {small large : Finset Artifact}
    (hsub : small ⊆ large) :
    Refines (restrict (Revision := Revision) large) (restrict small) := by
  intro left right heq
  funext a
  exact congrFun heq ⟨a.val, hsub a.property⟩

/-- A readout extends when a default revision is available for unread artifacts. -/
theorem all_restrictions_surjective (reads : Finset Artifact) [Inhabited Revision] :
    Function.Surjective (restrict (Revision := Revision) reads) := by
  classical
  intro values
  refine ⟨fun a => if h : a ∈ reads then values ⟨a, h⟩ else default, ?_⟩
  funext a
  simp [restrict, a.property]

/-- Function-valued locality is exactly factorization through the specified readout. -/
theorem function_locality_iff_descent (reads : Finset Artifact) [Inhabited Revision]
    (result : SourceSnapshot Artifact Revision → Result) :
    (∀ left right, SnapshotAgreesOn reads left right → result left = result right) ↔
      ∃ decoder : ({a : Artifact // a ∈ reads} → Revision) → Result,
        ∀ snapshot, decoder (restrict reads snapshot) = result snapshot := by
  rw [← refines_iff_function_factors (restrict reads) result (all_restrictions_surjective reads)]
  constructor
  · intro locality left right heq
    change restrict reads left = restrict reads right at heq
    exact locality left right ((agrees_iff_restrict_eq reads left right).mpr heq.symm)
  · intro refinement left right agreement
    exact refinement left right ((agrees_iff_restrict_eq reads left right).mp agreement).symm

/-- Two-way semantic locality, rather than a read-set label, gives determination. -/
theorem certificate_target_determined {Target : SourceSnapshot Artifact Revision → Prop}
    (certificate : RevisionCertificate Artifact Revision Target) :
    Determined (restrict certificate.reads) Target := by
  intro left right heq
  change restrict certificate.reads left = restrict certificate.reads right at heq
  constructor
  · exact certificate.locality left right
      ((agrees_iff_restrict_eq certificate.reads left right).mpr heq.symm)
  · exact certificate.locality right left
      ((agrees_iff_restrict_eq certificate.reads right left).mpr heq)

/-- Predicate descent is available even when the revision type is empty. -/
theorem certificate_target_descends {Target : SourceSnapshot Artifact Revision → Prop}
    (certificate : RevisionCertificate Artifact Revision Target) :
    ∃ restrictedTarget : ({a : Artifact // a ∈ certificate.reads} → Revision) → Prop,
      ∀ snapshot, restrictedTarget (restrict certificate.reads snapshot) ↔ Target snapshot := by
  obtain ⟨target, correct⟩ :=
    (determined_iff_factors _ _).mp (certificate_target_determined certificate)
  exact ⟨target, fun snapshot => (correct snapshot).symm⟩

/-- Construct the existing certificate from an actual proof and a determined target. -/
def certificateOfObservation (reads : Finset Artifact)
    (Target : SourceSnapshot Artifact Revision → Prop)
    (recorded : SourceSnapshot Artifact Revision) (proved : Target recorded)
    (locality : Determined (restrict reads) Target) :
    RevisionCertificate Artifact Revision Target where
  recorded := recorded
  reads := reads
  proved := proved
  locality := by
    intro left right agreement hleft
    exact (locality left right
      ((agrees_iff_restrict_eq reads left right).mp agreement).symm).mp hleft

/-- Larger read sets preserve locality but can make freshness stricter. -/
def widenCertificate {Target : SourceSnapshot Artifact Revision → Prop}
    (certificate : RevisionCertificate Artifact Revision Target)
    (reads : Finset Artifact) (contains : certificate.reads ⊆ reads) :
    RevisionCertificate Artifact Revision Target where
  recorded := certificate.recorded
  reads := reads
  proved := certificate.proved
  locality := by
    intro left right agreement hleft
    apply certificate.locality left right _ hleft
    intro a ha
    exact agreement a (contains ha)

theorem widened_fresh_implies_original_fresh
    {Target : SourceSnapshot Artifact Revision → Prop}
    (certificate : RevisionCertificate Artifact Revision Target)
    (reads : Finset Artifact) (contains : certificate.reads ⊆ reads)
    (current : SourceSnapshot Artifact Revision)
    (fresh : (widenCertificate certificate reads contains).Fresh current) :
    certificate.Fresh current :=
  fun a ha => fresh a (contains ha)

section Union

variable [DecidableEq Artifact]

theorem agrees_union_iff (leftReads rightReads : Finset Artifact)
    (recorded current : SourceSnapshot Artifact Revision) :
    SnapshotAgreesOn (leftReads ∪ rightReads) recorded current ↔
      SnapshotAgreesOn leftReads recorded current ∧
        SnapshotAgreesOn rightReads recorded current := by
  constructor
  · intro h
    exact ⟨fun a ha => h a (Finset.mem_union.mpr (Or.inl ha)),
      fun a ha => h a (Finset.mem_union.mpr (Or.inr ha))⟩
  · rintro ⟨hl, hr⟩ a ha
    rcases Finset.mem_union.mp ha with ha | ha
    · exact hl a ha
    · exact hr a ha

/-- A joint certificate is based at a common fresh snapshot; neither input is mutated. -/
def conjunctionCertificate
    {P Q : SourceSnapshot Artifact Revision → Prop}
    (left : RevisionCertificate Artifact Revision P)
    (right : RevisionCertificate Artifact Revision Q)
    (current : SourceSnapshot Artifact Revision)
    (leftFresh : left.Fresh current) (rightFresh : right.Fresh current) :
    RevisionCertificate Artifact Revision (fun s => P s ∧ Q s) where
  recorded := current
  reads := left.reads ∪ right.reads
  proved := ⟨left.current_target leftFresh, right.current_target rightFresh⟩
  locality := by
    intro before after agreement proved
    have parts := (agrees_union_iff left.reads right.reads before after).mp agreement
    exact ⟨left.locality before after parts.1 proved.1,
      right.locality before after parts.2 proved.2⟩

/-- Joint freshness is exactly the conjunction of the original freshness checks. -/
theorem conjunction_fresh_iff
    {P Q : SourceSnapshot Artifact Revision → Prop}
    (left : RevisionCertificate Artifact Revision P)
    (right : RevisionCertificate Artifact Revision Q)
    (current : SourceSnapshot Artifact Revision)
    (leftFresh : left.Fresh current) (rightFresh : right.Fresh current)
    (later : SourceSnapshot Artifact Revision) :
    (conjunctionCertificate left right current leftFresh rightFresh).Fresh later ↔
      left.Fresh later ∧ right.Fresh later := by
  change SnapshotAgreesOn (left.reads ∪ right.reads) current later ↔ _
  rw [agrees_union_iff]
  constructor
  · rintro ⟨hl, hr⟩
    exact ⟨snapshot_agrees_trans leftFresh hl, snapshot_agrees_trans rightFresh hr⟩
  · rintro ⟨hl, hr⟩
    constructor
    · intro a ha
      exact (hl a ha).trans (leftFresh a ha).symm
    · intro a ha
      exact (hr a ha).trans (rightFresh a ha).symm

theorem conjunction_acceptance_iff
    {P Q : SourceSnapshot Artifact Revision → Prop}
    (left : RevisionCertificate Artifact Revision P)
    (right : RevisionCertificate Artifact Revision Q)
    (current : SourceSnapshot Artifact Revision)
    (leftFresh : left.Fresh current) (rightFresh : right.Fresh current)
    (later : SourceSnapshot Artifact Revision) :
    (conjunctionCertificate left right current leftFresh rightFresh).Accepted later ↔
      left.Accepted later ∧ right.Accepted later := by
  constructor
  · intro accepted
    have fresh := (conjunction_fresh_iff left right current leftFresh rightFresh later).mp accepted.1
    exact ⟨left.fresh_accepts fresh.1, right.fresh_accepts fresh.2⟩
  · rintro ⟨leftAccepted, rightAccepted⟩
    apply (conjunctionCertificate left right current leftFresh rightFresh).fresh_accepts
    exact (conjunction_fresh_iff left right current leftFresh rightFresh later).mpr
      ⟨leftAccepted.1, rightAccepted.1⟩

end Union

/-- Logical consequence can add unobserved dependence; locality still needs a proof. -/
theorem implication_does_not_preserve_determination :
    Determined (Prod.fst : Bool × Bool → Bool) (fun x => x.1 = true) ∧
      (∀ x : Bool × Bool, x.1 = true → x.1 = true ∨ x.2 = true) ∧
      ¬ Determined (Prod.fst : Bool × Bool → Bool)
        (fun x => x.1 = true ∨ x.2 = true) := by
  refine ⟨?_, fun _ hx => Or.inl hx, ?_⟩
  · intro x y heq
    change x.1 = y.1 at heq
    exact ⟨fun hx => heq.symm.trans hx, fun hy => heq.trans hy⟩
  · apply not_determined_of_collision (Prod.fst : Bool × Bool → Bool)
      (fun x => x.1 = true ∨ x.2 = true)
      (x := (false, true)) (y := (false, false)) rfl (Or.inr rfl)
    intro wrong
    rcases wrong with impossible | impossible <;> cases impossible

end GRWTSK.Logic.Snapshot
