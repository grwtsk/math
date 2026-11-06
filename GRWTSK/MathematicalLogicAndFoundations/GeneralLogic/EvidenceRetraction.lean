/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.EvidenceSupport
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.RevocableAuthorization
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.PartialChannels

/-!
# Retained reports and retractable interpretations

A record retains the existing provenance entries and a chronological selection
trace. `Authorization.Trace.run` interprets that trace; selected entries impose
explicit semantic constraints. An entry's presence is never a proof of its truth.

Reuse comparison: `EvidenceSupport.update` adds a constraint and narrows possible
worlds. Retraction is a different operation: it changes selection, can widen the
world set, and need not preserve previous consequences. The original entries are
unchanged. The primary argument splits on whether the queried row is the changed
row. Append semantics is reused, not reconstructed.

Consumers: correction without erasure of reports; separately identifying what was
recorded and what is currently accepted. Counterexamples retain a withdrawn
claim's provenance while refuting its current entailment, and distinguish output
extension from an actual change of answer. No empirical reliability is asserted.
Independent review, compilation, kernel checking, and axiom audit: NOT_RUN.
Target: Lean v4.34.1; no new axioms or external execution machinery.
-/

namespace GRWTSK.Logic.Evidence.Retraction

open Provenance VersionSpace
open Authorization.Trace

universe u v w z

variable {Row : Type u} {Origin : Type v} {Claim : Type w} {World : Type z}

/-- Reports are immutable here; only their current selection has a change history. -/
structure Record (Row : Type u) (Origin : Type v) (Claim : Type w) where
  entries : Row → Entry Origin Claim
  initial : State Row
  changes : List (Change Row)

/-- The current selection is computed using the existing chronological semantics. -/
def Record.active [DecidableEq Row] (record : Record Row Origin Claim) : State Row :=
  run record.initial record.changes

/-- Adding decisions leaves all original report entries intact. -/
def Record.append (record : Record Row Origin Claim) (events : List (Change Row)) :
    Record Row Origin Claim :=
  { record with changes := record.changes ++ events }

/-- Semantic worlds satisfy precisely the currently selected constraints. -/
def Constraints (entries : Row → Entry Origin Claim)
    (meaning : Claim → World → Prop) (selected : State Row) : Space World :=
  fun world => ∀ row, selected row = true → meaning (entries row).claim world

/-- The current interpretation is distinct from historical provenance. -/
def Record.worlds [DecidableEq Row] (record : Record Row Origin Claim)
    (meaning : Claim → World → Prop) : Space World :=
  Constraints record.entries meaning record.active

/-- The appended history starts from the previous current selection. -/
theorem Record.append_active [DecidableEq Row] (record : Record Row Origin Claim)
    (events : List (Change Row)) :
    (record.append events).active = run record.active events := by
  exact run_append record.initial record.changes events

/-- A change of interpretation does not rewrite any report. -/
theorem Record.append_entry (record : Record Row Origin Claim)
    (events : List (Change Row)) (row : Row) :
    (record.append events).entries row = record.entries row := rfl

/-- Every origin/claim support judgment is identical before and after decisions. -/
theorem Record.append_support_iff (record : Record Row Origin Claim)
    (events : List (Change Row)) (claim : Claim) (origin : Origin) :
    Supports (record.append events).entries claim origin ↔
      Supports record.entries claim origin := Iff.rfl

/-- Selecting more rows narrows worlds, with the original refinement orientation. -/
theorem constraints_refine_of_selection
    (entries : Row → Entry Origin Claim) (meaning : Claim → World → Prop)
    {before after : State Row}
    (included : ∀ row, before row = true → after row = true) :
    Refines (Constraints entries meaning before) (Constraints entries meaning after) := by
  intro world compatible row selected
  exact compatible row (included row selected)

/-- Withdrawal removes exactly one constraint, leaving every other selected row. -/
theorem constraints_withdraw_iff [DecidableEq Row]
    (entries : Row → Entry Origin Claim) (meaning : Claim → World → Prop)
    (selected : State Row) (withdrawn : Row) (world : World) :
    Constraints entries meaning (step selected ⟨withdrawn, false⟩) world ↔
      ∀ row, row ≠ withdrawn → selected row = true → meaning (entries row).claim world := by
  constructor
  · intro h row different chosen
    apply h row
    simpa [step, different] using chosen
  · intro h row chosen
    by_cases same : row = withdrawn
    · subst row
      simp [step] at chosen
    · apply h row same
      simpa [step, same] using chosen

/-- Selection adds exactly the named constraint, without modifying other rows. -/
theorem constraints_select_iff [DecidableEq Row]
    (entries : Row → Entry Origin Claim) (meaning : Claim → World → Prop)
    (selected : State Row) (added : Row) (world : World) :
    Constraints entries meaning (step selected ⟨added, true⟩) world ↔
      meaning (entries added).claim world ∧
        ∀ row, row ≠ added → selected row = true → meaning (entries row).claim world := by
  constructor
  · intro h
    constructor
    · exact h added (step_named selected ⟨added, true⟩)
    · intro row different chosen
      apply h row
      simpa [step, different] using chosen
  · intro h row chosen
    by_cases same : row = added
    · subst row
      exact h.1
    · apply h.2 row same
      simpa [step, same] using chosen

/-- Withdrawal preserves every already compatible world; it does not assert truth. -/
theorem withdrawal_preserves_world [DecidableEq Row]
    (entries : Row → Entry Origin Claim) (meaning : Claim → World → Prop)
    (selected : State Row) (withdrawn : Row) {world : World}
    (compatible : Constraints entries meaning selected world) :
    Constraints entries meaning (step selected ⟨withdrawn, false⟩) world := by
  apply (constraints_withdraw_iff entries meaning selected withdrawn world).mpr
  intro row _ chosen
  exact compatible row chosen

/-- In particular, withdrawal cannot destroy an existing consistency witness. -/
theorem withdrawal_preserves_consistency [DecidableEq Row]
    (entries : Row → Entry Origin Claim) (meaning : Claim → World → Prop)
    (selected : State Row) (withdrawn : Row)
    (consistent : Consistent (Constraints entries meaning selected)) :
    Consistent (Constraints entries meaning (step selected ⟨withdrawn, false⟩)) := by
  obtain ⟨world, compatible⟩ := consistent
  exact ⟨world, withdrawal_preserves_world entries meaning selected withdrawn compatible⟩

/-- The latest withdrawal has its stated operational effect. -/
theorem Record.append_withdrawal [DecidableEq Row]
    (record : Record Row Origin Claim) (row : Row) :
    (record.append [⟨row, false⟩]).active row = false := by
  rw [record.append_active]
  exact step_named record.active ⟨row, false⟩

/-- Withdrawal changes acceptance but preserves the original report's support. -/
theorem Record.withdrawal_retains_support [DecidableEq Row]
    (record : Record Row Origin Claim) (row : Row) (claim : Claim) (origin : Origin)
    (supported : Supports record.entries claim origin) :
    (record.append [⟨row, false⟩]).active row = false ∧
      Supports (record.append [⟨row, false⟩]).entries claim origin :=
  ⟨record.append_withdrawal row,
    (record.append_support_iff [⟨row, false⟩] claim origin).mpr supported⟩

/-- A local decision cannot silently deselect another row. -/
theorem Record.withdrawal_preserves_other [DecidableEq Row]
    (record : Record Row Origin Claim) {withdrawn other : Row}
    (different : other ≠ withdrawn) :
    (record.append [⟨withdrawn, false⟩]).active other = record.active other := by
  rw [record.append_active]
  exact step_other record.active ⟨withdrawn, false⟩ other different

/-- A consistent interpretation can lose a consequence without losing its report. -/
theorem withdrawal_need_not_preserve_entailment :
    ∃ entries : Bool → Entry Unit Bool,
      let meaning := fun claim world : Bool => world = claim
      let before := Constraints entries meaning (fun row => row)
      let after := Constraints entries meaning (step (fun row => row) ⟨true, false⟩)
      Consistent before ∧ Entails before (fun world => world = true) ∧
        Consistent after ∧ ¬ Entails after (fun world => world = true) ∧
          Supports entries true () := by
  refine ⟨fun row => ⟨(), row⟩, ?_⟩
  dsimp only
  have beforeTrue : Constraints (fun row : Bool => (⟨(), row⟩ : Entry Unit Bool))
      (fun claim world : Bool => world = claim) (fun row => row) true := by
    intro row selected
    exact selected.symm
  have afterFalse : Constraints (fun row : Bool => (⟨(), row⟩ : Entry Unit Bool))
      (fun claim world : Bool => world = claim)
      (step (fun row : Bool => row) ⟨true, false⟩) false := by
    intro row selected
    cases row <;> simp [step] at selected
  refine ⟨⟨true, beforeTrue⟩, ?_, ⟨false, afterFalse⟩, ?_, ⟨true, rfl, rfl⟩⟩
  · intro world compatible
    exact compatible true rfl
  · intro entails
    have impossible : (false : Bool) = true := entails false afterFalse
    cases impossible

end GRWTSK.Logic.Evidence.Retraction

namespace GRWTSK.Logic.Channel

universe u v

/-- A correction that changes a returned value is not a partial-function extension. -/
theorem changed_answer_not_extension {α : Type u} {β : Type v}
    {before after : Partial α β} {x : α} {old new : β}
    (reported : before x = some old) (corrected : after x = some new)
    (different : old ≠ new) : ¬ Extends before after := by
  intro extension
  exact different (returned_value_unique after (extension x old reported) corrected)

end GRWTSK.Logic.Channel
