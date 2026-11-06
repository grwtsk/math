/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.ObservationFibers

/-!
# Partial functions, serial composition, and alternative observations

A channel is a partial function represented by `Option`. `none` states only
that this function returned no value. It is not an assertion about an arbitrary
predicate on its input. Serial composition has an exact intermediate-witness
criterion; fallback has an exact disjunction-of-availability criterion.

Primary argument: case analysis on the first partial result. A successful serial
result must exhibit an intermediate value and successful second result. A
fallback preserves an existing result and otherwise delegates. Paired
observations refine each component, even when neither component is injective.
Consumers: information-preserving accommodation and multi-stage observation.
Boundary: two distinct latent values can have identical absent outputs;
left-biased alternatives are not commutative. No liveness or clinical
interpretation follows from these algebraic statements.

Originality: not assessed; these are standard partial-function constructions.
Independent review, compilation, fresh kernel checking, axiom audit: NOT_RUN.
Toolchain scope: leanprover/lean4:v4.34.1; no mathlib dependency.
-/

namespace GRWTSK.Logic.Channel

universe u v w z

variable {α : Type u} {β : Type v} {γ : Type w} {δ : Type z}

abbrev Partial (α : Type u) (β : Type v) := α → Option β

/-- Definedness, with its returned value retained as a witness. -/
def Available (f : Partial α β) (x : α) : Prop := ∃ y, f x = some y

/-- A partial function extension must preserve every already-defined value. -/
def Extends (f g : Partial α β) : Prop :=
  ∀ x y, f x = some y → g x = some y

/-- Composition does not replace absence with an invented intermediate value. -/
def serial (f : Partial α β) (g : Partial β γ) : Partial α γ :=
  fun x => match f x with
    | none => none
    | some y => g y

/-- Use the second channel only where the first has no value. -/
def fallback (f g : Partial α β) : Partial α β :=
  fun x => match f x with
    | none => g x
    | some y => some y

/-- Both observations are kept; no selection or truth judgment is performed. -/
def paired (f : α → β) (g : α → γ) : α → β × γ :=
  fun x => (f x, g x)

/-- Complete characterization of success, not just a necessary condition. -/
theorem serial_some_iff (f : Partial α β) (g : Partial β γ)
    (x : α) (z : γ) :
    serial f g x = some z ↔ ∃ y, f x = some y ∧ g y = some z := by
  cases h : f x <;> simp [serial, h]

/-- Failure can occur at either stage; the theorem keeps them distinct. -/
theorem serial_none_iff (f : Partial α β) (g : Partial β γ) (x : α) :
    serial f g x = none ↔
      f x = none ∨ ∃ y, f x = some y ∧ g y = none := by
  cases h : f x <;> simp [serial, h]

theorem serial_available_iff (f : Partial α β) (g : Partial β γ) (x : α) :
    Available (serial f g) x ↔ ∃ y, f x = some y ∧ Available g y := by
  constructor
  · intro h
    obtain ⟨z, hz⟩ := h
    obtain ⟨y, hy, hyz⟩ := (serial_some_iff f g x z).mp hz
    exact ⟨y, hy, z, hyz⟩
  · intro h
    obtain ⟨y, hy, z, hz⟩ := h
    exact ⟨z, (serial_some_iff f g x z).mpr ⟨y, hy, hz⟩⟩

theorem serial_available_left (f : Partial α β) (g : Partial β γ) (x : α)
    (h : Available (serial f g) x) : Available f x := by
  obtain ⟨y, hy, _⟩ := (serial_available_iff f g x).mp h
  exact ⟨y, hy⟩

theorem serial_assoc (f : Partial α β) (g : Partial β γ) (h : Partial γ δ) :
    serial (serial f g) h = serial f (serial g h) := by
  funext x
  cases hx : f x <;> simp [serial, hx]

theorem serial_identity_left (f : Partial α β) :
    serial (fun x : α => some x) f = f := by
  funext x
  rfl

theorem serial_identity_right (f : Partial α β) :
    serial f (fun y : β => some y) = f := by
  funext x
  cases hx : f x <;> simp [serial, hx]

theorem extends_refl (f : Partial α β) : Extends f f := by
  intro x y h
  exact h

theorem extends_trans {f g h : Partial α β}
    (hfg : Extends f g) (hgh : Extends g h) : Extends f h := by
  intro x y hx
  exact hgh x y (hfg x y hx)

theorem extends_antisymm {f g : Partial α β}
    (hfg : Extends f g) (hgf : Extends g f) : f = g := by
  funext x
  cases hf : f x with
  | some y => exact (hfg x y hf).symm
  | none =>
    cases hg : g x with
    | none => rfl
    | some y =>
      have impossible : (none : Option β) = some y :=
        hf.symm.trans (hgf x y hg)
      cases impossible

theorem available_of_extends {f g : Partial α β}
    (hfg : Extends f g) (x : α) (hf : Available f x) : Available g x := by
  obtain ⟨y, hy⟩ := hf
  exact ⟨y, hfg x y hy⟩

/-- Refining both stages preserves the values of every successful composite. -/
theorem serial_extends {f f' : Partial α β} {g g' : Partial β γ}
    (hf : Extends f f') (hg : Extends g g') :
    Extends (serial f g) (serial f' g') := by
  intro x z hz
  obtain ⟨y, hy, hyz⟩ := (serial_some_iff f g x z).mp hz
  exact (serial_some_iff f' g' x z).mpr ⟨y, hf x y hy, hg y z hyz⟩

theorem fallback_extends_left (f g : Partial α β) : Extends f (fallback f g) := by
  intro x y h
  simp [fallback, h]

theorem fallback_available_iff (f g : Partial α β) (x : α) :
    Available (fallback f g) x ↔ Available f x ∨ Available g x := by
  cases h : f x <;> simp [Available, fallback, h]

theorem fallback_assoc (f g h : Partial α β) :
    fallback (fallback f g) h = fallback f (fallback g h) := by
  funext x
  cases hx : f x <;> simp [fallback, hx]

theorem fallback_idempotent (f : Partial α β) : fallback f f = f := by
  funext x
  cases hx : f x <;> simp [fallback, hx]

/-- Adding an alternative cannot eliminate availability. -/
theorem fallback_preserves_availability (f g : Partial α β) (x : α)
    (h : Available f x) : Available (fallback f g) x :=
  (fallback_available_iff f g x).mpr (Or.inl h)

/-- Alternatives cannot fabricate availability when every channel fails. -/
theorem fallback_none_iff (f g : Partial α β) (x : α) :
    fallback f g x = none ↔ f x = none ∧ g x = none := by
  cases hx : f x <;> simp [fallback, hx]

/-- The returned value of a deterministic channel is unique. -/
theorem returned_value_unique (f : Partial α β) {x : α} {y z : β}
    (hy : f x = some y) (hz : f x = some z) : y = z :=
  Option.some.inj (hy.symm.trans hz)

theorem paired_same_iff (f : α → β) (g : α → γ) (x y : α) :
    Observation.Same (paired f g) x y ↔
      Observation.Same f x y ∧ Observation.Same g x y := by
  constructor
  · intro h
    exact ⟨congrArg Prod.fst h, congrArg Prod.snd h⟩
  · intro h
    obtain ⟨hf, hg⟩ := h
    change (f x, g x) = (f y, g y)
    rw [hf, hg]

theorem paired_determined_left (f : α → β) (g : α → γ) {P : α → Prop}
    (h : Observation.Determined f P) : Observation.Determined (paired f g) P := by
  intro x y hxy
  exact h x y ((paired_same_iff f g x y).mp hxy).1

theorem paired_determined_right (f : α → β) (g : α → γ) {P : α → Prop}
    (h : Observation.Determined g P) : Observation.Determined (paired f g) P := by
  intro x y hxy
  exact h x y ((paired_same_iff f g x y).mp hxy).2

/-- Joint observations can reconstruct although each marginal loses information. -/
theorem paired_projections_injective :
    ∀ x y : Bool × Bool,
      paired Prod.fst Prod.snd x = paired Prod.fst Prod.snd y → x = y := by
  intro x y h
  cases x
  cases y
  exact h

theorem first_projection_not_injective :
    ¬ (∀ x y : Bool × Bool, x.1 = y.1 → x = y) := by
  intro h
  have bad := h (false, false) (false, true) rfl
  have : (false : Bool) = true := congrArg Prod.snd bad
  cases this

theorem second_projection_not_injective :
    ¬ (∀ x y : Bool × Bool, x.2 = y.2 → x = y) := by
  intro h
  have bad := h (false, false) (true, false) rfl
  have : (false : Bool) = true := congrArg Prod.fst bad
  cases this

/-- First coordinate controls availability; second is the latent value. -/
def gatedBit : Partial (Bool × Bool) Bool :=
  fun x => if x.1 then some x.2 else none

theorem absence_does_not_determine_latent_bit :
    ¬ Observation.Determined gatedBit (fun x => x.2 = true) := by
  apply Observation.not_determined_of_collision gatedBit (fun x => x.2 = true)
    (x := (false, true)) (y := (false, false))
  · rfl
  · rfl
  · decide

theorem absence_compatible_with_both_values :
    gatedBit (false, false) = none ∧ gatedBit (false, true) = none :=
  ⟨rfl, rfl⟩

/-- Availability alone does not make left-biased choice order-independent. -/
theorem fallback_not_commutative :
    fallback (fun _ : Unit => some false) (fun _ => some true) ≠
      fallback (fun _ : Unit => some true) (fun _ => some false) := by
  intro h
  have bad : (some false : Option Bool) = some true := congrArg (fun f => f ()) h
  have : (false : Bool) = true := Option.some.inj bad
  cases this

end GRWTSK.Logic.Channel
