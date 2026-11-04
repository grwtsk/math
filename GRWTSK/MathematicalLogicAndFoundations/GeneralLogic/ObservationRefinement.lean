/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.PartialChannels

/-!
# Refinement of observations and the limits of displayed information

Reuse: `ObservationFibers` supplies `Same`, `Determined`, `May`, `Must`, and
predicate descent; `PartialChannels` supplies paired observations. This file
compares their actual fibers rather than introducing a second observation model.

The primary argument identifies refinement with preservation of all determined
predicates, and independently with the appropriate transport of universal and
existential information. Joint observation is the greatest lower bound for this
orientation of refinement. No surjectivity or global decoder is assumed.

The hidden-cost counterexample is a consumer: arbitrarily large costs may lie
behind an identical displayed value. It concerns a product projection, not an
empirical assertion that any particular observation has this information loss.
No novelty or independent-review claim is made. Compilation, fresh kernel
checking, and transitive axiom auditing: NOT_RUN. Target: Lean v4.34.1.
-/

namespace GRWTSK.Logic.Observation

universe u v w z

variable {α : Type u} {β : Type v} {γ : Type w} {δ : Type z}

/-- The fine observation identifies no pair distinguished by the coarse one. -/
def Refines (fine : α → β) (coarse : α → γ) : Prop :=
  ∀ x y, Same fine x y → Same coarse x y

/-- Every observation retains its own distinctions. -/
theorem refines_refl (f : α → β) : Refines f f := fun _ _ h => h

/-- Refinement composes without selecting representatives of any fiber. -/
theorem refines_trans {f : α → β} {g : α → γ} {h : α → δ}
    (hfg : Refines f g) (hgh : Refines g h) : Refines f h :=
  fun x y hxy => hgh x y (hfg x y hxy)

/-- Postprocessing cannot add distinctions to its input. -/
theorem refines_postprocess (f : α → β) (g : β → γ) :
    Refines f (fun x => g (f x)) :=
  fun x y hxy => same_postprocess f g hxy

/-- A predicate observable before an enrichment stays observable afterward. -/
theorem determined_of_refines {fine : α → β} {coarse : α → γ}
    (refinement : Refines fine coarse) {P : α → Prop}
    (known : Determined coarse P) : Determined fine P :=
  fun x y hxy => known x y (refinement x y hxy)

/-- Preservation of every observable predicate characterizes refinement exactly. -/
theorem refines_iff_determined (fine : α → β) (coarse : α → γ) :
    Refines fine coarse ↔
      ∀ P : α → Prop, Determined coarse P → Determined fine P := by
  constructor
  · intro h P hp
    exact determined_of_refines h hp
  · intro h x y hxy
    have fiberKnown : Determined coarse (fun a => coarse a = coarse x) := by
      intro a b hab
      constructor
      · intro ha
        exact (Eq.symm hab).trans ha
      · intro hb
        exact hab.trans hb
    exact ((h _ fiberKnown x y hxy).mp rfl).symm

/-- A universal claim on a coarse fiber holds on every contained fine fiber. -/
theorem must_of_refines {fine : α → β} {coarse : α → γ}
    (refinement : Refines fine coarse) (P : α → Prop) (x : α)
    (known : Must coarse P (coarse x)) : Must fine P (fine x) := by
  intro y hy
  exact known y (refinement y x hy)

/-- A witness in a fine fiber is also a witness in its coarse fiber. -/
theorem may_of_refines {fine : α → β} {coarse : α → γ}
    (refinement : Refines fine coarse) (P : α → Prop) (x : α)
    (possible : May fine P (fine x)) : May coarse P (coarse x) := by
  obtain ⟨y, hy, hp⟩ := possible
  exact ⟨y, refinement y x hy, hp⟩

/-- Universal-information transport is also a complete test for refinement. -/
theorem refines_iff_must (fine : α → β) (coarse : α → γ) :
    Refines fine coarse ↔
      ∀ P : α → Prop, ∀ x, Must coarse P (coarse x) → Must fine P (fine x) := by
  constructor
  · intro h P x hp
    exact must_of_refines h P x hp
  · intro h x y hxy
    have known : Must coarse (fun a => coarse a = coarse x) (coarse x) :=
      fun _ ha => ha
    exact (h _ x known y (Eq.symm hxy)).symm

/-- Existential-information transport supplies a third exact characterization. -/
theorem refines_iff_may (fine : α → β) (coarse : α → γ) :
    Refines fine coarse ↔
      ∀ P : α → Prop, ∀ x, May fine P (fine x) → May coarse P (coarse x) := by
  constructor
  · intro h P x hp
    exact may_of_refines h P x hp
  · intro h x y hxy
    obtain ⟨a, ha, hax⟩ := h (fun a => a = x) y ⟨x, hxy, rfl⟩
    subst a
    exact ha

/-- Existential fiber transport composes by an explicit intermediate witness. -/
theorem may_comp_iff (f : α → β) (g : β → γ) (P : α → Prop) (c : γ) :
    May (fun x => g (f x)) P c ↔ May g (May f P) c := by
  constructor
  · intro h
    obtain ⟨x, hx, hp⟩ := h
    exact ⟨f x, hx, x, rfl, hp⟩
  · intro h
    obtain ⟨b, hb, x, hx, hp⟩ := h
    exact ⟨x, (congrArg g hx).trans hb, hp⟩

/-- Universal fiber transport composes even when some fibers are empty. -/
theorem must_comp_iff (f : α → β) (g : β → γ) (P : α → Prop) (c : γ) :
    Must (fun x => g (f x)) P c ↔ Must g (Must f P) c := by
  constructor
  · intro h b hb x hx
    exact h x ((congrArg g hx).trans hb)
  · intro h x hx
    exact h (f x) hx x rfl

/-- Keeping both observations refines the first one. -/
theorem paired_refines_left (f : α → β) (g : α → γ) :
    Refines (Channel.paired f g) f :=
  fun x y h => ((Channel.paired_same_iff f g x y).mp h).1

/-- Keeping both observations refines the second one. -/
theorem paired_refines_right (f : α → β) (g : α → γ) :
    Refines (Channel.paired f g) g :=
  fun x y h => ((Channel.paired_same_iff f g x y).mp h).2

/-- Joint observation has the exact greatest-lower-bound universal property. -/
theorem refines_paired_iff (h : α → δ) (f : α → β) (g : α → γ) :
    Refines h (Channel.paired f g) ↔ Refines h f ∧ Refines h g := by
  constructor
  · intro hh
    exact ⟨refines_trans hh (paired_refines_left f g),
      refines_trans hh (paired_refines_right f g)⟩
  · intro hh x y hxy
    exact (Channel.paired_same_iff f g x y).mpr ⟨hh.1 x y hxy, hh.2 x y hxy⟩

/-- Observing a product's first coordinate cannot determine a bound on its second. -/
theorem hidden_cost_not_determined (display : β) (bound : Nat) :
    ¬ Determined (fun x : β × Nat => x.1) (fun x => x.2 ≤ bound) := by
  apply not_determined_of_collision (fun x : β × Nat => x.1)
    (fun x => x.2 ≤ bound) (x := (display, 0)) (y := (display, bound + 1))
  · rfl
  · exact Nat.zero_le bound
  · exact Nat.not_succ_le_self bound

/-- No finite estimate based only on that projection bounds every hidden cost. -/
theorem no_display_only_cost_bound (display : β) (estimate : β → Nat) :
    ∃ state : β × Nat, state.1 = display ∧ estimate state.1 < state.2 :=
  ⟨(display, estimate display + 1), rfl, Nat.lt_succ_self _⟩

end GRWTSK.Logic.Observation
