/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.PartialChannels
import Lean.Elab.Tactic.Omega

/-!
# Persistent partial channels and asynchronous composition

This extends the existing `Channel.Partial`, `Extends`, `serial`, and `fallback`
objects. A trace preserves an already published value; it does not require a
uniform response deadline. Correction of a published value belongs to a separate
versioned record rather than this monotone-output abstraction.

Primary argument: move two finite witnesses to their maximum time using
`Extends`, then apply the existing exact composition theorem. This proves the
existential interchange only under the stated persistence hypotheses. Fallback
requires an additional compatibility premise: a newly available preferred answer
must agree with a previously available alternative.

Counterexamples separate eventual service from uniformly bounded service and
show that persistent components need not give persistent left-biased fallback.
These are availability theorems, not claims that a scheduler actually delivers.
Novelty and independent review are not claimed. Compilation, fresh kernel
checking, and axiom audit: NOT_RUN. Target: Lean v4.34.1; standard library only.
-/

namespace GRWTSK.Logic.Channel.Time

universe u v w

variable {α : Type u} {β : Type v} {γ : Type w}

/-- A partial channel indexed by discrete time. -/
abbrev Trace (α : Type u) (β : Type v) := Nat → Partial α β

/-- Once published, an output remains available with exactly the same value. -/
def Persistent (trace : Trace α β) : Prop :=
  ∀ s t, s ≤ t → Extends (trace s) (trace t)

/-- An actual finite witness of availability, without a shared deadline. -/
def Eventually (trace : Trace α β) (x : α) : Prop :=
  ∃ t y, trace t x = some y

/-- Outputs returned for one input at different times must agree. -/
theorem published_value_unique {trace : Trace α β}
    (persistent : Persistent trace) {s t : Nat} {x : α} {a b : β}
    (hs : trace s x = some a) (ht : trace t x = some b) : a = b := by
  apply returned_value_unique (trace (max s t))
  · exact persistent s (max s t) (by omega) x a hs
  · exact persistent t (max s t) (by omega) x b ht

/-- The existing composition extension law lifts pointwise to persistent traces. -/
theorem persistent_serial {f : Trace α β} {g : Trace β γ}
    (hf : Persistent f) (hg : Persistent g) :
    Persistent (fun t => serial (f t) (g t)) := by
  intro s t hst
  exact serial_extends (hf s t hst) (hg s t hst)

/-- Independent eventual stages synchronize precisely because results persist. -/
theorem eventual_serial_iff {f : Trace α β} {g : Trace β γ}
    (hf : Persistent f) (hg : Persistent g) (x : α) :
    Eventually (fun t => serial (f t) (g t)) x ↔
      ∃ y, (∃ t, f t x = some y) ∧ Eventually g y := by
  constructor
  · intro h
    obtain ⟨t, z, hz⟩ := h
    obtain ⟨y, hy, hyz⟩ := (serial_some_iff (f t) (g t) x z).mp hz
    exact ⟨y, ⟨t, hy⟩, t, z, hyz⟩
  · intro h
    obtain ⟨y, ⟨s, hs⟩, t, z, ht⟩ := h
    refine ⟨max s t, z, ?_⟩
    apply (serial_some_iff (f (max s t)) (g (max s t)) x z).mpr
    exact ⟨y, hf s (max s t) (by omega) x y hs,
      hg t (max s t) (by omega) y z ht⟩

/-- Eventual availability of fallback is a disjunction, without persistence. -/
theorem eventual_fallback_iff (f g : Trace α β) (x : α) :
    Eventually (fun t => fallback (f t) (g t)) x ↔
      Eventually f x ∨ Eventually g x := by
  constructor
  · intro h
    obtain ⟨t, y, hy⟩ := h
    cases (fallback_available_iff (f t) (g t) x).mp ⟨y, hy⟩ with
    | inl hf =>
      obtain ⟨a, ha⟩ := hf
      exact Or.inl ⟨t, a, ha⟩
    | inr hg =>
      obtain ⟨a, ha⟩ := hg
      exact Or.inr ⟨t, a, ha⟩
  · intro h
    cases h with
    | inl hf =>
      obtain ⟨t, a, ha⟩ := hf
      obtain ⟨b, hb⟩ := (fallback_available_iff (f t) (g t) x).mpr (Or.inl ⟨a, ha⟩)
      exact ⟨t, b, hb⟩
    | inr hg =>
      obtain ⟨t, a, ha⟩ := hg
      obtain ⟨b, hb⟩ := (fallback_available_iff (f t) (g t) x).mpr (Or.inr ⟨a, ha⟩)
      exact ⟨t, b, hb⟩

/-- Two partial channels agree wherever they are both defined. -/
def Compatible (f g : Partial α β) : Prop :=
  ∀ x a b, f x = some a → g x = some b → a = b

/-- A compatible preferred channel cannot overwrite a different fallback value. -/
theorem persistent_fallback_of_compatible {f g : Trace α β}
    (hf : Persistent f) (hg : Persistent g)
    (compatible : ∀ t, Compatible (f t) (g t)) :
    Persistent (fun t => fallback (f t) (g t)) := by
  intro s t hst x y hs
  cases hfs : f s x with
  | none =>
    have hgs : g s x = some y := by simpa [fallback, hfs] using hs
    have hgt := hg s t hst x y hgs
    cases hft : f t x with
    | none => simpa [fallback, hft] using hgt
    | some a =>
      have hay := compatible t x a y hft hgt
      simp [fallback, hft, hay]
  | some a =>
    have hay : a = y := Option.some.inj (by simpa [fallback, hfs] using hs)
    have hft := hf s t hst x a hfs
    simp [fallback, hft, hay]

/-- Each input may have its own finite readiness time. -/
def delayed (ready : α → Nat) (answer : α → β) : Trace α β :=
  fun t x => if ready x ≤ t then some (answer x) else none

/-- Input-dependent delays still produce persistent channels. -/
theorem delayed_persistent (ready : α → Nat) (answer : α → β) :
    Persistent (delayed ready answer) := by
  intro s t hst x y hs
  by_cases hrs : ready x ≤ s
  · have hrt : ready x ≤ t := Nat.le_trans hrs hst
    simpa [delayed, hrt] using (show some (answer x) = some y from
      by simpa [delayed, hrs] using hs)
  · simp [delayed, hrs] at hs

/-- Each input has an explicit finite publication witness. -/
theorem delayed_eventually (ready : α → Nat) (answer : α → β) (x : α) :
    Eventually (delayed ready answer) x :=
  ⟨ready x, answer x, by simp [delayed]⟩

/-- All inputs can eventually succeed while every fixed deadline excludes one. -/
theorem eventual_does_not_imply_uniform_deadline :
    (∀ x : Nat, Eventually (delayed (fun x => x) (fun x => x)) x) ∧
      ¬ (∃ t, ∀ x : Nat, Available (delayed (fun x => x) (fun x => x) t) x) := by
  constructor
  · exact delayed_eventually (fun x => x) (fun x => x)
  · intro h
    obtain ⟨t, ht⟩ := h
    obtain ⟨y, hy⟩ := ht (t + 1)
    simp [delayed, Nat.not_succ_le_self] at hy

/-- Without agreement, persistent alternatives can change their selected output. -/
theorem fallback_persistence_needs_more_than_component_persistence :
    ∃ f g : Trace Unit Bool, Persistent f ∧ Persistent g ∧
      ¬ Persistent (fun t => fallback (f t) (g t)) := by
  let f : Trace Unit Bool := delayed (fun _ => 1) (fun _ => true)
  let g : Trace Unit Bool := delayed (fun _ => 0) (fun _ => false)
  refine ⟨f, g, delayed_persistent _ _, delayed_persistent _ _, ?_⟩
  intro h
  have bad := h 0 1 (by omega) () false (by simp [f, g, fallback, delayed])
  simp [f, g, fallback, delayed] at bad

/-- Eventual stage witnesses alone need not occur at a common time. -/
theorem transient_stages_need_not_compose :
    ∃ f g : Trace Unit Unit,
      Eventually f () ∧ Eventually g () ∧
        ¬ Eventually (fun t => serial (f t) (g t)) () := by
  let f : Trace Unit Unit := fun t _ => if t = 0 then some () else none
  let g : Trace Unit Unit := fun t _ => if t = 0 then none else some ()
  refine ⟨f, g, ⟨0, (), rfl⟩, ⟨1, (), rfl⟩, ?_⟩
  intro h
  obtain ⟨t, y, hy⟩ := h
  by_cases ht : t = 0
  · simp [f, g, serial, ht] at hy
  · simp [f, g, serial, ht] at hy

end GRWTSK.Logic.Channel.Time
