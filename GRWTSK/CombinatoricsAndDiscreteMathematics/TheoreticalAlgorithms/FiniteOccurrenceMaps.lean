import Std

/-!
Finite desired-plan contracts. Payload equality is actual equality in the chosen
type; no digest, source authenticity, filesystem, or Rust refinement axiom is used.
The output dictionary and every occurrence reference remain distinct inventories.
-/

namespace GRWTSK.OccurrencePlans

universe u v w r s

structure Occurrence (Id : Type u) (Path : Type v) (Payload : Type w) where
  id : Id
  path : Path
  payload : Payload

structure Output (Path : Type v) (Payload : Type w) where
  path : Path
  payload : Payload

structure Reference (Id : Type u) (Path : Type v) where
  id : Id
  path : Path

structure Woven (Id : Type u) (Path : Type v) (Payload : Type w) where
  outputs : List (Output Path Payload)
  references : List (Reference Id Path)

variable {Id : Type u} {Path : Type v} {Payload : Type w}

def OutputsConsistent (outputs : List (Output Path Payload)) : Prop :=
  ∀ x ∈ outputs, ∀ y ∈ outputs, x.path = y.path → x.payload = y.payload

def OccurrencesConsistent (occurrences : List (Occurrence Id Path Payload)) : Prop :=
  ∀ x ∈ occurrences, ∀ y ∈ occurrences, x.path = y.path → x.payload = y.payload

def outputConsistencyCheck [DecidableEq Path] [DecidableEq Payload]
    (outputs : List (Output Path Payload)) : Bool :=
  outputs.all fun x => outputs.all fun y => decide (x.path = y.path → x.payload = y.payload)

def occurrenceConsistencyCheck [DecidableEq Path] [DecidableEq Payload]
    (occurrences : List (Occurrence Id Path Payload)) : Bool :=
  occurrences.all fun x => occurrences.all fun y => decide (x.path = y.path → x.payload = y.payload)

theorem outputConsistencyCheck_eq_true_iff [DecidableEq Path] [DecidableEq Payload]
    (outputs : List (Output Path Payload)) :
    outputConsistencyCheck outputs = true ↔ OutputsConsistent outputs := by
  simp only [outputConsistencyCheck, List.all_eq_true, decide_eq_true_eq, OutputsConsistent]

theorem occurrenceConsistencyCheck_eq_true_iff [DecidableEq Path] [DecidableEq Payload]
    (occurrences : List (Occurrence Id Path Payload)) :
    occurrenceConsistencyCheck occurrences = true ↔ OccurrencesConsistent occurrences := by
  simp only [occurrenceConsistencyCheck, List.all_eq_true, decide_eq_true_eq, OccurrencesConsistent]

def lookup [DecidableEq Path] (path : Path) : List (Output Path Payload) → Option Payload
  | [] => none
  | output :: rest => if path = output.path then some output.payload else lookup path rest

def Covered [DecidableEq Path] (outputs : List (Output Path Payload))
    (occurrences : List (Occurrence Id Path Payload)) : Prop :=
  ∀ occurrence ∈ occurrences, lookup occurrence.path outputs = some occurrence.payload

def coverageCheck [DecidableEq Path] [DecidableEq Payload]
    (outputs : List (Output Path Payload)) (occurrences : List (Occurrence Id Path Payload)) : Bool :=
  occurrences.all fun occurrence => decide (lookup occurrence.path outputs = some occurrence.payload)

theorem coverageCheck_eq_true_iff [DecidableEq Path] [DecidableEq Payload]
    (outputs : List (Output Path Payload)) (occurrences : List (Occurrence Id Path Payload)) :
    coverageCheck outputs occurrences = true ↔ Covered outputs occurrences := by
  simp [coverageCheck, Covered]

theorem covered_occurrences_consistent [DecidableEq Path]
    {outputs : List (Output Path Payload)} {occurrences : List (Occurrence Id Path Payload)}
    (covered : Covered outputs occurrences) : OccurrencesConsistent occurrences := by
  intro x hx y hy samePath
  have first := covered x hx
  have second := covered y hy
  rw [samePath] at first
  exact Option.some.inj (first.symm.trans second)

def references (occurrences : List (Occurrence Id Path Payload)) : List (Reference Id Path) :=
  occurrences.map fun occurrence => ⟨occurrence.id, occurrence.path⟩

def decode [DecidableEq Path] (outputs : List (Output Path Payload)) :
    List (Reference Id Path) → Option (List (Occurrence Id Path Payload))
  | [] => some []
  | reference :: rest =>
      match lookup reference.path outputs, decode outputs rest with
      | some payload, some tail => some (⟨reference.id, reference.path, payload⟩ :: tail)
      | _, _ => none

theorem reference_length_preserved (occurrences : List (Occurrence Id Path Payload)) :
    (references occurrences).length = occurrences.length := by
  simp [references]

theorem decode_references_of_coverage [DecidableEq Path]
    {outputs : List (Output Path Payload)} {occurrences : List (Occurrence Id Path Payload)}
    (covered : Covered outputs occurrences) :
    decode outputs (references occurrences) = some occurrences := by
  induction occurrences with
  | nil => rfl
  | cons occurrence rest ih =>
      have head := covered occurrence (by simp)
      have tail : Covered outputs rest := by
        intro item member
        exact covered item (by simp [member])
      have decoded := ih tail
      simp only [references] at decoded
      simp only [references, List.map_cons, decode, head, decoded]

def PlanValid [DecidableEq Path] (occurrenceBound outputBound : Nat)
    (outputs : List (Output Path Payload)) (occurrences : List (Occurrence Id Path Payload)) : Prop :=
  occurrences.length ≤ occurrenceBound ∧ outputs.length ≤ outputBound ∧
  OutputsConsistent outputs ∧ OccurrencesConsistent occurrences ∧ Covered outputs occurrences

def planCheck [DecidableEq Path] [DecidableEq Payload] (occurrenceBound outputBound : Nat)
    (outputs : List (Output Path Payload)) (occurrences : List (Occurrence Id Path Payload)) : Bool :=
  decide (occurrences.length ≤ occurrenceBound) && decide (outputs.length ≤ outputBound) &&
  outputConsistencyCheck outputs && occurrenceConsistencyCheck occurrences && coverageCheck outputs occurrences

theorem planCheck_eq_true_iff [DecidableEq Path] [DecidableEq Payload]
    (occurrenceBound outputBound : Nat) (outputs : List (Output Path Payload))
    (occurrences : List (Occurrence Id Path Payload)) :
    planCheck occurrenceBound outputBound outputs occurrences = true ↔
      PlanValid occurrenceBound outputBound outputs occurrences := by
  simp [planCheck, PlanValid, outputConsistencyCheck_eq_true_iff,
    occurrenceConsistencyCheck_eq_true_iff, coverageCheck_eq_true_iff, and_assoc]

def weave [DecidableEq Path] [DecidableEq Payload] (occurrenceBound outputBound : Nat)
    (outputs : List (Output Path Payload)) (occurrences : List (Occurrence Id Path Payload)) :
    Option (Woven Id Path Payload) :=
  if planCheck occurrenceBound outputBound outputs occurrences then
    some ⟨outputs, references occurrences⟩
  else none

theorem weave_success_iff [DecidableEq Path] [DecidableEq Payload]
    (occurrenceBound outputBound : Nat) (outputs : List (Output Path Payload))
    (occurrences : List (Occurrence Id Path Payload)) :
    (∃ woven, weave occurrenceBound outputBound outputs occurrences = some woven) ↔
      PlanValid occurrenceBound outputBound outputs occurrences := by
  simp [weave, planCheck_eq_true_iff]

theorem weave_preserves_every_occurrence [DecidableEq Path] [DecidableEq Payload]
    {occurrenceBound outputBound : Nat} {outputs : List (Output Path Payload)}
    {occurrences : List (Occurrence Id Path Payload)} {woven : Woven Id Path Payload}
    (accepted : weave occurrenceBound outputBound outputs occurrences = some woven) :
    decode woven.outputs woven.references = some occurrences := by
  unfold weave at accepted
  split at accepted
  next checked =>
    have valid := (planCheck_eq_true_iff _ _ _ _).mp checked
    cases Option.some.inj accepted
    exact decode_references_of_coverage valid.2.2.2.2
  next => simp at accepted

theorem weave_respects_finite_bounds [DecidableEq Path] [DecidableEq Payload]
    {occurrenceBound outputBound : Nat} {outputs : List (Output Path Payload)}
    {occurrences : List (Occurrence Id Path Payload)} {woven : Woven Id Path Payload}
    (accepted : weave occurrenceBound outputBound outputs occurrences = some woven) :
    woven.references.length ≤ occurrenceBound ∧ woven.outputs.length ≤ outputBound := by
  unfold weave at accepted
  split at accepted
  next checked =>
    have valid := (planCheck_eq_true_iff _ _ _ _).mp checked
    cases Option.some.inj accepted
    exact ⟨(reference_length_preserved _).symm ▸ valid.1, valid.2.1⟩
  next => simp at accepted

theorem over_occurrence_bound_rejected [DecidableEq Path] [DecidableEq Payload]
    (occurrenceBound outputBound : Nat) (outputs : List (Output Path Payload))
    (occurrences : List (Occurrence Id Path Payload)) (over : occurrenceBound < occurrences.length) :
    weave occurrenceBound outputBound outputs occurrences = none := by
  simp [weave, planCheck, Nat.not_le.mpr over]

theorem same_path_conflicting_payloads_rejected [DecidableEq Path] [DecidableEq Payload]
    {occurrences : List (Occurrence Id Path Payload)}
    {x y : Occurrence Id Path Payload} (hx : x ∈ occurrences) (hy : y ∈ occurrences)
    (samePath : x.path = y.path) (different : x.payload ≠ y.payload) :
    occurrenceConsistencyCheck occurrences = false := by
  cases checked : occurrenceConsistencyCheck occurrences with
  | false => rfl
  | true =>
      exact False.elim (different ((occurrenceConsistencyCheck_eq_true_iff _).mp checked x hx y hy samePath))

theorem conflict_blocks_weave [DecidableEq Path] [DecidableEq Payload]
    (occurrenceBound outputBound : Nat) (outputs : List (Output Path Payload))
    {occurrences : List (Occurrence Id Path Payload)}
    {x y : Occurrence Id Path Payload} (hx : x ∈ occurrences) (hy : y ∈ occurrences)
    (samePath : x.path = y.path) (different : x.payload ≠ y.payload) :
    weave occurrenceBound outputBound outputs occurrences = none := by
  have rejected := same_path_conflicting_payloads_rejected hx hy samePath different
  simp [weave, planCheck, rejected]

theorem shared_output_preserves_two_occurrences [DecidableEq Path]
    (first second : Id) (path : Path) (payload : Payload) :
    decode [⟨path, payload⟩] [⟨first, path⟩, ⟨second, path⟩] =
      some [⟨first, path, payload⟩, ⟨second, path, payload⟩] := by
  simp [decode, lookup]

theorem missing_slot_decode_failure [DecidableEq Path]
    (outputs : List (Output Path Payload)) (reference : Reference Id Path)
    (rest : List (Reference Id Path)) (missing : lookup reference.path outputs = none) :
    decode outputs (reference :: rest) = none := by
  simp [decode, missing]

variable {ReadKey : Type r} {ReadValue : Type s}

def readsetCheck [DecidableEq ReadKey] [DecidableEq ReadValue] (readBound : Nat)
    (expected observed : List (ReadKey × ReadValue)) : Bool :=
  decide (expected.length ≤ readBound) && decide (observed.length ≤ readBound) && decide (expected = observed)

theorem readsetCheck_eq_true_iff [DecidableEq ReadKey] [DecidableEq ReadValue]
    (readBound : Nat) (expected observed : List (ReadKey × ReadValue)) :
    readsetCheck readBound expected observed = true ↔
      expected.length ≤ readBound ∧ observed.length ≤ readBound ∧ expected = observed := by
  simp [readsetCheck, and_assoc]

def transition [DecidableEq ReadKey] [DecidableEq ReadValue]
    [DecidableEq Path] [DecidableEq Payload] (readBound occurrenceBound outputBound : Nat)
    (expected observed : List (ReadKey × ReadValue)) (outputs : List (Output Path Payload))
    (occurrences : List (Occurrence Id Path Payload)) : Option (Woven Id Path Payload) :=
  if readsetCheck readBound expected observed then weave occurrenceBound outputBound outputs occurrences else none

theorem stale_readset_blocks_transition [DecidableEq ReadKey] [DecidableEq ReadValue]
    [DecidableEq Path] [DecidableEq Payload] (readBound occurrenceBound outputBound : Nat)
    {expected observed : List (ReadKey × ReadValue)} (stale : expected ≠ observed)
    (outputs : List (Output Path Payload)) (occurrences : List (Occurrence Id Path Payload)) :
    transition readBound occurrenceBound outputBound expected observed outputs occurrences = none := by
  simp [transition, readsetCheck, stale]

theorem transition_success_iff [DecidableEq ReadKey] [DecidableEq ReadValue]
    [DecidableEq Path] [DecidableEq Payload] (readBound occurrenceBound outputBound : Nat)
    (expected observed : List (ReadKey × ReadValue)) (outputs : List (Output Path Payload))
    (occurrences : List (Occurrence Id Path Payload)) :
    (∃ woven, transition readBound occurrenceBound outputBound expected observed outputs occurrences = some woven) ↔
      (expected.length ≤ readBound ∧ observed.length ≤ readBound ∧ expected = observed) ∧
      PlanValid occurrenceBound outputBound outputs occurrences := by
  simp [transition, readsetCheck_eq_true_iff, weave_success_iff]

example : planCheck 2 1 ([⟨0, 7⟩] : List (Output Nat Nat))
    ([⟨1, 0, 7⟩, ⟨2, 0, 7⟩] : List (Occurrence Nat Nat Nat)) = true := by decide

example : planCheck 2 1 ([⟨0, 7⟩] : List (Output Nat Nat))
    ([⟨1, 0, 7⟩, ⟨2, 0, 9⟩] : List (Occurrence Nat Nat Nat)) = false := by decide

example : weave 1 1 ([⟨0, 7⟩] : List (Output Nat Nat))
    ([⟨1, 0, 7⟩, ⟨2, 0, 7⟩] : List (Occurrence Nat Nat Nat)) = none := by rfl

end GRWTSK.OccurrencePlans
