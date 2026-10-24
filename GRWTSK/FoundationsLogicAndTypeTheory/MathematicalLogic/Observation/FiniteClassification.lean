/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization developed with AI assistance. -/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Observation.SupportedClaims

/-!
# Finite classification of compatible observations

The executable scan records whether the supplied inventory contains a compatible
trace satisfying a claim, and whether it contains one refuting that claim. Its
four outcomes have exact meanings for the listed model. A separate coverage
premise connects that model to an independently supplied ambient trace model.
Ambiguity needs only its two witnesses and therefore needs no coverage premise.

`model_mismatch` means that this inventory contains no compatible trace. It is
not a parser error, an unavailable input, or a claim that an ambient model has no
compatible trace without coverage. Classification establishes no authority.

The row adapter is a pure finite-table function. Row identifiers, source and
claim identities, schema validation, byte bindings, and correspondence with an
external implementation remain separate obligations. Repeated rows do not add
information to this existence-based classifier.

Source status at introduction: SOURCE_ONLY / NOT_ELABORATED. Source-bound
execution and acceptance evidence is retained externally; this mathematical
source is not an execution receipt.
-/

set_option autoImplicit false

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Observation.FiniteClassification

universe u v

variable {Trace : Type u} {View : Type v}

/-- Four semantic outcomes for a completely inspected finite inventory. -/
inductive Outcome where
  | supported
  | refuted
  | ambiguous
  | model_mismatch
  deriving DecidableEq, Repr

/-- Existence flags; neither field counts observations or assigns confidence. -/
structure Flags where
  positive : Bool
  negative : Bool
  deriving DecidableEq, Repr

def Flags.classify (flags : Flags) : Outcome :=
  match flags.positive, flags.negative with
  | true, false => .supported
  | false, true => .refuted
  | true, true => .ambiguous
  | false, false => .model_mismatch

theorem Flags.eq_of_fields (left right : Flags)
    (positive : left.positive = right.positive)
    (negative : left.negative = right.negative) : left = right := by
  cases left with
  | mk leftPositive leftNegative =>
      cases right with
      | mk rightPositive rightNegative =>
          cases positive
          cases negative
          rfl

theorem Flags.classify_supported_iff (flags : Flags) :
    flags.classify = .supported ↔ flags.positive = true ∧ flags.negative = false := by
  cases flags with
  | mk positive negative =>
      cases positive with
      | false =>
          constructor
          · intro result
            cases negative <;> cases result
          · intro fields
            cases fields.1
      | true =>
          cases negative with
          | false => exact ⟨fun _ => ⟨rfl, rfl⟩, fun _ => rfl⟩
          | true =>
              constructor
              · intro result
                cases result
              · intro fields
                cases fields.2

theorem Flags.classify_refuted_iff (flags : Flags) :
    flags.classify = .refuted ↔ flags.positive = false ∧ flags.negative = true := by
  cases flags with
  | mk positive negative =>
      cases positive with
      | false =>
          cases negative with
          | false =>
              constructor
              · intro result
                cases result
              · intro fields
                cases fields.2
          | true => exact ⟨fun _ => ⟨rfl, rfl⟩, fun _ => rfl⟩
      | true =>
          constructor
          · intro result
            cases negative <;> cases result
          · intro fields
            cases fields.1

theorem Flags.classify_ambiguous_iff (flags : Flags) :
    flags.classify = .ambiguous ↔ flags.positive = true ∧ flags.negative = true := by
  cases flags with
  | mk positive negative =>
      cases positive with
      | false =>
          constructor
          · intro result
            cases negative <;> cases result
          · intro fields
            cases fields.1
      | true =>
          cases negative with
          | false =>
              constructor
              · intro result
                cases result
              · intro fields
                cases fields.2
          | true => exact ⟨fun _ => ⟨rfl, rfl⟩, fun _ => rfl⟩

theorem Flags.classify_model_mismatch_iff (flags : Flags) :
    flags.classify = .model_mismatch ↔
      flags.positive = false ∧ flags.negative = false := by
  cases flags with
  | mk positive negative =>
      cases positive with
      | false =>
          cases negative with
          | false => exact ⟨fun _ => ⟨rfl, rfl⟩, fun _ => rfl⟩
          | true =>
              constructor
              · intro result
                cases result
              · intro fields
                cases fields.2
      | true =>
          constructor
          · intro result
            cases negative <;> cases result
          · intro fields
            cases fields.1

/-- Direct finite witness construction for `List.any`, using list and Boolean
constructors rather than proposition-equality rewriting. -/
theorem any_true_iff (inventory : List Trace) (predicate : Trace → Bool) :
    inventory.any predicate = true ↔
      ∃ trace, trace ∈ inventory ∧ predicate trace = true := by
  have boolOr (left right : Bool) :
      (left || right) = true ↔ left = true ∨ right = true := by
    cases left with
    | false =>
        constructor
        · intro result
          exact Or.inr result
        · intro either
          cases either with
          | inl impossible => cases impossible
          | inr result => exact result
    | true => exact ⟨fun _ => Or.inl rfl, fun _ => rfl⟩
  induction inventory with
  | nil =>
      constructor
      · intro impossible
        cases impossible
      · intro witness
        obtain ⟨trace, member, _⟩ := witness
        cases member
  | cons head tail inductionHypothesis =>
      constructor
      · intro result
        cases (boolOr (predicate head) (tail.any predicate)).mp result with
        | inl first => exact ⟨head, List.Mem.head tail, first⟩
        | inr rest =>
            obtain ⟨trace, member, holds⟩ := inductionHypothesis.mp rest
            exact ⟨trace, List.Mem.tail head member, holds⟩
      · intro witness
        obtain ⟨trace, member, holds⟩ := witness
        cases member with
        | head =>
            exact (boolOr _ _).mpr (Or.inl holds)
        | tail _ member =>
            exact (boolOr _ _).mpr
              (Or.inr (inductionHypothesis.mpr ⟨trace, member, holds⟩))

/-- Admissibility in the explicitly listed model, without an ambient claim. -/
def ListedAdmissible (admissible : Trace → Prop) (inventory : List Trace)
    (trace : Trace) : Prop :=
  trace ∈ inventory ∧ admissible trace

/-- Every ambient trace compatible with this observation occurs in the list.
This is a semantic premise, not a flag inferred from list size or source names. -/
def CoversFiber (admissible : Trace → Prop) (observe : Trace → View)
    (seen : View) (inventory : List Trace) : Prop :=
  ∀ trace, Compatible admissible observe seen trace → trace ∈ inventory

/-- Enumerating every admissible trace is sufficient, but stronger than needed. -/
theorem coversFiber_of_admissible_enumeration
    (admissible : Trace → Prop) (observe : Trace → View)
    (seen : View) (inventory : List Trace)
    (enumerates : ∀ trace, admissible trace → trace ∈ inventory) :
    CoversFiber admissible observe seen inventory :=
  fun trace compatible => enumerates trace compatible.1

theorem listed_nonempty_iff (admissible : Trace → Prop) (observe : Trace → View)
    (seen : View) (inventory : List Trace)
    (covers : CoversFiber admissible observe seen inventory) :
    NonemptyFiber (ListedAdmissible admissible inventory) observe seen ↔
      NonemptyFiber admissible observe seen := by
  constructor
  · intro listed
    obtain ⟨trace, compatible⟩ := listed
    exact ⟨trace, compatible.1.2, compatible.2⟩
  · intro ambient
    obtain ⟨trace, compatible⟩ := ambient
    exact ⟨trace, ⟨covers trace compatible, compatible.1⟩, compatible.2⟩

theorem listed_support_iff (admissible : Trace → Prop) (observe : Trace → View)
    (claim : Trace → Prop) (seen : View) (inventory : List Trace)
    (covers : CoversFiber admissible observe seen inventory) :
    Supports (ListedAdmissible admissible inventory) observe claim seen ↔
      Supports admissible observe claim seen := by
  constructor
  · intro listed
    refine ⟨(listed_nonempty_iff admissible observe seen inventory covers).mp listed.1, ?_⟩
    intro trace compatible
    exact listed.2 trace ⟨⟨covers trace compatible, compatible.1⟩, compatible.2⟩
  · intro ambient
    refine ⟨(listed_nonempty_iff admissible observe seen inventory covers).mpr ambient.1, ?_⟩
    intro trace compatible
    exact ambient.2 trace ⟨compatible.1.2, compatible.2⟩

theorem listed_refutation_iff (admissible : Trace → Prop) (observe : Trace → View)
    (claim : Trace → Prop) (seen : View) (inventory : List Trace)
    (covers : CoversFiber admissible observe seen inventory) :
    Refutes (ListedAdmissible admissible inventory) observe claim seen ↔
      Refutes admissible observe claim seen :=
  listed_support_iff admissible observe (fun trace => ¬ claim trace) seen inventory covers

section Computation

variable (admissible : Trace → Prop) (observe : Trace → View)
    (claim : Trace → Prop) (seen : View) (inventory : List Trace)
variable [DecidablePred admissible] [DecidablePred claim] [DecidableEq View]

/-- Two finite existence checks over the supplied list. The admissibility and
claim deciders are inputs; their source meaning is not established by scanning.
The conjunction defining `Compatible` is explicit for decidability synthesis. -/
def scan : Flags where
  positive := inventory.any (fun trace => decide ((admissible trace ∧ observe trace = seen) ∧ claim trace))
  negative := inventory.any (fun trace => decide ((admissible trace ∧ observe trace = seen) ∧ ¬ claim trace))

def classify : Outcome :=
  (scan admissible observe claim seen inventory).classify

theorem scan_positive_iff :
    (scan admissible observe claim seen inventory).positive = true ↔
      ∃ trace, trace ∈ inventory ∧ Compatible admissible observe seen trace ∧ claim trace := by
  constructor
  · intro result
    obtain ⟨trace, member, decided⟩ :=
      (any_true_iff inventory
        (fun trace => decide ((admissible trace ∧ observe trace = seen) ∧ claim trace))).mp result
    have decoded : (admissible trace ∧ observe trace = seen) ∧ claim trace :=
      of_decide_eq_true decided
    exact ⟨trace, member, decoded⟩
  · intro witness
    obtain ⟨trace, member, compatible, holds⟩ := witness
    exact (any_true_iff inventory
      (fun trace => decide ((admissible trace ∧ observe trace = seen) ∧ claim trace))).mpr
      ⟨trace, member, decide_eq_true ⟨compatible, holds⟩⟩

theorem scan_negative_iff :
    (scan admissible observe claim seen inventory).negative = true ↔
      ∃ trace, trace ∈ inventory ∧ Compatible admissible observe seen trace ∧ ¬ claim trace := by
  constructor
  · intro result
    obtain ⟨trace, member, decided⟩ :=
      (any_true_iff inventory
        (fun trace => decide ((admissible trace ∧ observe trace = seen) ∧ ¬ claim trace))).mp result
    have decoded : (admissible trace ∧ observe trace = seen) ∧ ¬ claim trace :=
      of_decide_eq_true decided
    exact ⟨trace, member, decoded⟩
  · intro witness
    obtain ⟨trace, member, compatible, fails⟩ := witness
    exact (any_true_iff inventory
      (fun trace => decide ((admissible trace ∧ observe trace = seen) ∧ ¬ claim trace))).mpr
      ⟨trace, member, decide_eq_true ⟨compatible, fails⟩⟩

theorem scan_positive_false_iff :
    (scan admissible observe claim seen inventory).positive = false ↔
      ∀ trace, trace ∈ inventory → Compatible admissible observe seen trace → ¬ claim trace := by
  constructor
  · intro flagFalse trace member compatible holds
    have flagTrue := (scan_positive_iff admissible observe claim seen inventory).mpr
      ⟨trace, member, compatible, holds⟩
    exact ne_true_of_eq_false flagFalse flagTrue
  · intro allFalse
    apply eq_false_of_ne_true
    intro flagTrue
    obtain ⟨trace, member, compatible, holds⟩ :=
      (scan_positive_iff admissible observe claim seen inventory).mp flagTrue
    exact allFalse trace member compatible holds

theorem scan_negative_false_iff :
    (scan admissible observe claim seen inventory).negative = false ↔
      ∀ trace, trace ∈ inventory → Compatible admissible observe seen trace → claim trace := by
  constructor
  · intro flagFalse trace member compatible
    cases (inferInstance : Decidable (claim trace)) with
    | isTrue holds => exact holds
    | isFalse fails =>
        have flagTrue := (scan_negative_iff admissible observe claim seen inventory).mpr
          ⟨trace, member, compatible, fails⟩
        exact False.elim (ne_true_of_eq_false flagFalse flagTrue)
  · intro allTrue
    apply eq_false_of_ne_true
    intro flagTrue
    obtain ⟨trace, member, compatible, fails⟩ :=
      (scan_negative_iff admissible observe claim seen inventory).mp flagTrue
    exact fails (allTrue trace member compatible)

/-- Exact support in the listed model; no ambient enumeration is asserted. -/
theorem classify_supported_iff_listed :
    classify admissible observe claim seen inventory = .supported ↔
      Supports (ListedAdmissible admissible inventory) observe claim seen := by
  constructor
  · intro result
    have fields :=
      (Flags.classify_supported_iff (scan admissible observe claim seen inventory)).mp result
    obtain ⟨trace, member, compatible, _⟩ :=
      (scan_positive_iff admissible observe claim seen inventory).mp fields.1
    have allTrue := (scan_negative_false_iff admissible observe claim seen inventory).mp fields.2
    refine ⟨⟨trace, ⟨member, compatible.1⟩, compatible.2⟩, ?_⟩
    intro other otherCompatible
    exact allTrue other otherCompatible.1.1 ⟨otherCompatible.1.2, otherCompatible.2⟩
  · intro supported
    obtain ⟨trace, compatible⟩ := supported.1
    apply (Flags.classify_supported_iff (scan admissible observe claim seen inventory)).mpr
    constructor
    · exact (scan_positive_iff admissible observe claim seen inventory).mpr
        ⟨trace, compatible.1.1, ⟨compatible.1.2, compatible.2⟩,
          supported.2 trace compatible⟩
    · apply (scan_negative_false_iff admissible observe claim seen inventory).mpr
      intro other member otherCompatible
      exact supported.2 other ⟨⟨member, otherCompatible.1⟩, otherCompatible.2⟩

theorem classify_refuted_iff_listed :
    classify admissible observe claim seen inventory = .refuted ↔
      Refutes (ListedAdmissible admissible inventory) observe claim seen := by
  constructor
  · intro result
    have fields :=
      (Flags.classify_refuted_iff (scan admissible observe claim seen inventory)).mp result
    obtain ⟨trace, member, compatible, _⟩ :=
      (scan_negative_iff admissible observe claim seen inventory).mp fields.2
    have allFalse := (scan_positive_false_iff admissible observe claim seen inventory).mp fields.1
    refine ⟨⟨trace, ⟨member, compatible.1⟩, compatible.2⟩, ?_⟩
    intro other otherCompatible
    exact allFalse other otherCompatible.1.1 ⟨otherCompatible.1.2, otherCompatible.2⟩
  · intro refuted
    obtain ⟨trace, compatible⟩ := refuted.1
    apply (Flags.classify_refuted_iff (scan admissible observe claim seen inventory)).mpr
    constructor
    · apply (scan_positive_false_iff admissible observe claim seen inventory).mpr
      intro other member otherCompatible
      exact refuted.2 other ⟨⟨member, otherCompatible.1⟩, otherCompatible.2⟩
    · exact (scan_negative_iff admissible observe claim seen inventory).mpr
        ⟨trace, compatible.1.1, ⟨compatible.1.2, compatible.2⟩,
        refuted.2 trace compatible⟩

theorem classify_model_mismatch_iff_listed :
    classify admissible observe claim seen inventory = .model_mismatch ↔
      ¬ NonemptyFiber (ListedAdmissible admissible inventory) observe seen := by
  constructor
  · intro result nonempty
    have fields :=
      (Flags.classify_model_mismatch_iff (scan admissible observe claim seen inventory)).mp result
    have allFalse := (scan_positive_false_iff admissible observe claim seen inventory).mp fields.1
    have allTrue := (scan_negative_false_iff admissible observe claim seen inventory).mp fields.2
    obtain ⟨trace, compatible⟩ := nonempty
    have ambient : Compatible admissible observe seen trace :=
      ⟨compatible.1.2, compatible.2⟩
    exact allFalse trace compatible.1.1 ambient (allTrue trace compatible.1.1 ambient)
  · intro absent
    have forbidden : ∀ trace, trace ∈ inventory →
        Compatible admissible observe seen trace → False := by
      intro trace member compatible
      exact absent ⟨trace, ⟨member, compatible.1⟩, compatible.2⟩
    apply (Flags.classify_model_mismatch_iff (scan admissible observe claim seen inventory)).mpr
    constructor
    · exact (scan_positive_false_iff admissible observe claim seen inventory).mpr
        (fun trace member compatible => False.elim (forbidden trace member compatible))
    · exact (scan_negative_false_iff admissible observe claim seen inventory).mpr
        (fun trace member compatible => False.elim (forbidden trace member compatible))

/-- Two listed compatible witnesses suffice, without a coverage hypothesis. -/
theorem classify_ambiguous_iff :
    classify admissible observe claim seen inventory = .ambiguous ↔
      (∃ trace, trace ∈ inventory ∧ Compatible admissible observe seen trace ∧ claim trace) ∧
      (∃ trace, trace ∈ inventory ∧ Compatible admissible observe seen trace ∧ ¬ claim trace) := by
  constructor
  · intro result
    have fields :=
      (Flags.classify_ambiguous_iff (scan admissible observe claim seen inventory)).mp result
    exact ⟨(scan_positive_iff admissible observe claim seen inventory).mp fields.1,
      (scan_negative_iff admissible observe claim seen inventory).mp fields.2⟩
  · intro witnesses
    exact (Flags.classify_ambiguous_iff (scan admissible observe claim seen inventory)).mpr
      ⟨(scan_positive_iff admissible observe claim seen inventory).mpr witnesses.1,
        (scan_negative_iff admissible observe claim seen inventory).mpr witnesses.2⟩

theorem classify_ambiguous_no_certainty
    (result : classify admissible observe claim seen inventory = .ambiguous) :
    ¬ Supports admissible observe claim seen ∧ ¬ Refutes admissible observe claim seen := by
  obtain ⟨positiveWitness, negativeWitness⟩ :=
    (classify_ambiguous_iff admissible observe claim seen inventory).mp result
  obtain ⟨positive, _, positiveCompatible, positiveClaim⟩ := positiveWitness
  obtain ⟨negative, _, negativeCompatible, negativeClaim⟩ := negativeWitness
  exact ambiguity_of_opposite_compatible admissible observe claim seen positive negative
    positiveCompatible negativeCompatible positiveClaim negativeClaim

/-- Ambient support requires independently established compatible-trace coverage. -/
theorem classify_supported_iff
    (covers : CoversFiber admissible observe seen inventory) :
    classify admissible observe claim seen inventory = .supported ↔
      Supports admissible observe claim seen :=
  (classify_supported_iff_listed admissible observe claim seen inventory).trans
    (listed_support_iff admissible observe claim seen inventory covers)

theorem classify_refuted_iff
    (covers : CoversFiber admissible observe seen inventory) :
    classify admissible observe claim seen inventory = .refuted ↔
      Refutes admissible observe claim seen :=
  (classify_refuted_iff_listed admissible observe claim seen inventory).trans
    (listed_refutation_iff admissible observe claim seen inventory covers)

theorem classify_model_mismatch_iff
    (covers : CoversFiber admissible observe seen inventory) :
    classify admissible observe claim seen inventory = .model_mismatch ↔
      ¬ NonemptyFiber admissible observe seen := by
  constructor
  · intro result ambientNonempty
    have listedEmpty :=
      (classify_model_mismatch_iff_listed admissible observe claim seen inventory).mp result
    exact listedEmpty ((listed_nonempty_iff admissible observe seen inventory covers).mpr
      ambientNonempty)
  · intro ambientEmpty
    apply (classify_model_mismatch_iff_listed admissible observe claim seen inventory).mpr
    intro listedNonempty
    exact ambientEmpty ((listed_nonempty_iff admissible observe seen inventory covers).mp
      listedNonempty)

theorem classified_support_sound
    (covers : CoversFiber admissible observe seen inventory)
    (result : classify admissible observe claim seen inventory = .supported)
    (actual : Trace) (actualAdmissible : admissible actual)
    (actualObservation : observe actual = seen) : claim actual :=
  supports_sound admissible observe claim seen actual
    ((classify_supported_iff admissible observe claim seen inventory covers).mp result)
    actualAdmissible actualObservation

theorem empty_inventory_model_mismatch :
    classify admissible observe claim seen ([] : List Trace) = .model_mismatch := rfl

omit [DecidablePred admissible] [DecidablePred claim] [DecidableEq View] in
/-- Empty input cannot acquire either nonvacuous certainty in the listed model. -/
theorem empty_inventory_no_certainty :
    ¬ Supports (ListedAdmissible admissible []) observe claim seen ∧
      ¬ Refutes (ListedAdmissible admissible []) observe claim seen := by
  have empty : ¬ NonemptyFiber (ListedAdmissible admissible []) observe seen := by
    intro nonempty
    obtain ⟨trace, compatible⟩ := nonempty
    cases compatible.1.1
  exact ⟨not_supports_of_empty_fiber _ _ _ _ empty,
    not_refutes_of_empty_fiber _ _ _ _ empty⟩

/-- Only membership matters: reordering and repeated rows do not change flags. -/
theorem scan_inventory_congr (other : List Trace)
    (sameMembers : ∀ trace, trace ∈ inventory ↔ trace ∈ other) :
    scan admissible observe claim seen inventory = scan admissible observe claim seen other := by
  have boolExt (left right : Bool)
      (sameTruth : left = true ↔ right = true) : left = right := by
    cases left with
    | false =>
        cases right with
        | false => rfl
        | true =>
            have impossible : false = true := sameTruth.mpr rfl
            cases impossible
    | true =>
        cases right with
        | false =>
            have impossible : false = true := sameTruth.mp rfl
            cases impossible
        | true => rfl
  have transfer (predicate : Trace → Prop) :
      (∃ trace, trace ∈ inventory ∧ predicate trace) ↔
        ∃ trace, trace ∈ other ∧ predicate trace := by
    constructor
    · intro witness
      obtain ⟨trace, member, holds⟩ := witness
      exact ⟨trace, (sameMembers trace).mp member, holds⟩
    · intro witness
      obtain ⟨trace, member, holds⟩ := witness
      exact ⟨trace, (sameMembers trace).mpr member, holds⟩
  apply Flags.eq_of_fields
  · apply boolExt
    exact (scan_positive_iff admissible observe claim seen inventory).trans
      ((transfer (fun trace => Compatible admissible observe seen trace ∧ claim trace)).trans
        (scan_positive_iff admissible observe claim seen other).symm)
  · apply boolExt
    exact (scan_negative_iff admissible observe claim seen inventory).trans
      ((transfer (fun trace => Compatible admissible observe seen trace ∧ ¬ claim trace)).trans
        (scan_negative_iff admissible observe claim seen other).symm)

theorem classify_inventory_congr (other : List Trace)
    (sameMembers : ∀ trace, trace ∈ inventory ↔ trace ∈ other) :
    classify admissible observe claim seen inventory =
      classify admissible observe claim seen other :=
  congrArg Flags.classify
    (scan_inventory_congr admissible observe claim seen inventory other sameMembers)

end Computation

/-- A finite mathematical row. `trace_id` is retained data, not authentication;
identifier uniqueness and exact byte bindings belong to the external profile. -/
structure Row where
  trace_id : String
  admissible : Bool
  view : String
  claim : Bool
  deriving DecidableEq, Repr

/-- The table adapter classifies only the supplied rows at the requested view. -/
def classifyRows (rows : List Row) (seen : String) : Outcome :=
  classify (fun row : Row => row.admissible = true) (fun row => row.view)
    (fun row => row.claim = true) seen rows

theorem classifyRows_supported_iff (rows : List Row) (seen : String) :
    classifyRows rows seen = .supported ↔
      Supports (ListedAdmissible (fun row : Row => row.admissible = true) rows)
        (fun row => row.view) (fun row => row.claim = true) seen :=
  classify_supported_iff_listed (fun row : Row => row.admissible = true)
    (fun row => row.view) (fun row => row.claim = true) seen rows

namespace Fixtures

abbrev admitted (_ : Bool) : Prop := True

def lostReceipt (_ : Bool) : Bool := false

abbrev occurred (trace : Bool) : Prop := trace = true

def completeInventory : List Bool := [false, true]

theorem complete_inventory_covers (seen : Bool) :
    CoversFiber admitted lostReceipt seen completeInventory := by
  intro trace _
  cases trace with
  | false => exact List.Mem.head [true]
  | true => exact List.Mem.tail false (List.Mem.head [])

theorem supported_control :
    classify admitted lostReceipt (fun _ => True) false completeInventory = .supported := rfl

theorem refuted_control :
    classify admitted lostReceipt (fun _ => False) false completeInventory = .refuted := rfl

theorem ambiguous_control :
    classify admitted lostReceipt occurred false completeInventory = .ambiguous := rfl

theorem model_mismatch_control :
    classify admitted lostReceipt occurred true completeInventory = .model_mismatch := rfl

theorem different_view_ignored :
    classify admitted (fun trace : Bool => trace) occurred true completeInventory = .supported := rfl

theorem inadmissible_trace_ignored :
    classify (fun trace : Bool => trace = true) lostReceipt occurred false completeInventory =
      .supported := rfl

/-- Omitting the negative trace changes the list result without proving ambient support. -/
theorem omission_can_report_list_support :
    classify admitted lostReceipt occurred false [true] = .supported ∧
      ¬ Supports admitted lostReceipt occurred false := by
  constructor
  · rfl
  · intro supported
    have impossible : (false : Bool) = true := supported.2 false ⟨True.intro, rfl⟩
    cases impossible

theorem omitted_counterexample_breaks_coverage :
    ¬ CoversFiber admitted lostReceipt false [true] := by
  have singletonTrue : ∀ trace : Bool, trace ∈ [true] → trace = true := by
    intro trace member
    cases member with
    | head => rfl
    | tail _ missing => cases missing
  intro covers
  have impossible : (false : Bool) = true :=
    singletonTrue false (covers false ⟨True.intro, rfl⟩)
  cases impossible

/-- A list mismatch is not ambient emptiness unless the coverage bridge is supplied. -/
theorem empty_inventory_can_miss_real_fiber :
    classify admitted lostReceipt occurred false [] = .model_mismatch ∧
      NonemptyFiber admitted lostReceipt false :=
  ⟨rfl, ⟨false, True.intro, rfl⟩⟩

theorem repeated_and_reordered_inventory :
    classify admitted lostReceipt occurred false completeInventory =
      classify admitted lostReceipt occurred false [true, false, true] := by
  apply classify_inventory_congr
  intro trace
  cases trace with
  | false => exact ⟨fun _ => List.Mem.tail true (List.Mem.head [true]),
      fun _ => List.Mem.head [true]⟩
  | true => exact ⟨fun _ => List.Mem.head [false, true],
      fun _ => List.Mem.tail false (List.Mem.head [])⟩

end Fixtures

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Observation.FiniteClassification
