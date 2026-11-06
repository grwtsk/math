/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import Std

/-!
# Predicates determined by observations

An observation is an arbitrary function, not an identification of its domain
with its codomain. Existential and universal quantification over its fibers give
upper and lower predicate approximations. Their adjunctions characterize exactly
which conclusions survive a change of representation.

Primary argument: descend a fiber-invariant predicate by existential
quantification; conversely, a predicate pulled back from the codomain is constant
on every fiber. The two adjunctions follow by introducing or eliminating the
same fiber witness. Saturation is the least fiber-invariant enlargement.

Consumers: partial channels, evidence summaries, and observational authorization.
Hostile boundaries: an empty fiber makes universal claims vacuous; a collision
prevents reconstruction and can destroy predicate determination. These are
proved below, not ruled out by an implicit surjectivity assumption.

This is an elementary set-theoretic formalization, not a novelty claim or an
empirical theorem about persons. Independent mathematical review: NOT_RUN.
Lean target: leanprover/lean4:v4.34.1; only the standard library is imported.
Compilation, fresh kernel checking, transitive axiom audit: NOT_RUN.
-/

namespace GRWTSK.Logic.Observation

universe u v w

variable {α : Type u} {β : Type v} {γ : Type w}

/-- Two source points have the same observation. -/
def Same (f : α → β) (x y : α) : Prop := f x = f y

/-- A predicate has no variation hidden inside an observation fiber. -/
def Determined (f : α → β) (P : α → Prop) : Prop :=
  ∀ x y, Same f x y → (P x ↔ P y)

/-- At least one compatible source point satisfies the predicate. -/
def May (f : α → β) (P : α → Prop) (b : β) : Prop :=
  ∃ x, f x = b ∧ P x

/-- Every compatible source point satisfies the predicate. -/
def Must (f : α → β) (P : α → Prop) (b : β) : Prop :=
  ∀ x, f x = b → P x

/-- The smallest union of observation fibers containing a predicate. -/
def Saturate (f : α → β) (P : α → Prop) (x : α) : Prop :=
  May f P (f x)

theorem same_refl (f : α → β) (x : α) : Same f x x := rfl

theorem same_symm {f : α → β} {x y : α}
    (h : Same f x y) : Same f y x := Eq.symm h

theorem same_trans {f : α → β} {x y z : α}
    (hxy : Same f x y) (hyz : Same f y z) : Same f x z :=
  Eq.trans hxy hyz

/-- Existential image is left adjoint to predicate pullback. -/
theorem may_le_iff (f : α → β) (P : α → Prop) (Q : β → Prop) :
    (∀ b, May f P b → Q b) ↔ (∀ x, P x → Q (f x)) := by
  constructor
  · intro h x hx
    exact h (f x) ⟨x, rfl, hx⟩
  · intro h b hb
    obtain ⟨x, hx, hp⟩ := hb
    rw [← hx]
    exact h x hp

/-- Universal image is right adjoint to predicate pullback. -/
theorem le_must_iff (f : α → β) (P : α → Prop) (Q : β → Prop) :
    (∀ b, Q b → Must f P b) ↔ (∀ x, Q (f x) → P x) := by
  constructor
  · intro h x hx
    exact h (f x) hx x rfl
  · intro h b hb x hx
    apply h x
    rw [hx]
    exact hb

theorem may_mono (f : α → β) {P Q : α → Prop}
    (h : ∀ x, P x → Q x) : ∀ b, May f P b → May f Q b := by
  intro b hb
  obtain ⟨x, hx, hp⟩ := hb
  exact ⟨x, hx, h x hp⟩

theorem must_mono (f : α → β) {P Q : α → Prop}
    (h : ∀ x, P x → Q x) : ∀ b, Must f P b → Must f Q b := by
  intro b hb x hx
  exact h x (hb x hx)

/-- The nonempty-fiber hypothesis is necessary. -/
theorem must_implies_may (f : α → β) (P : α → Prop) (b : β)
    (inhabitedFiber : ∃ x, f x = b) : Must f P b → May f P b := by
  intro h
  obtain ⟨x, hx⟩ := inhabitedFiber
  exact ⟨x, hx, h x hx⟩

theorem must_at_observation (f : α → β) (P : α → Prop) (x : α) :
    Must f P (f x) → P x := fun h => h x rfl

theorem may_at_observation (f : α → β) (P : α → Prop) (x : α) :
    P x → May f P (f x) := fun h => ⟨x, rfl, h⟩

/-- Exact descent requires invariance, not an appealing interpretation. -/
theorem determined_iff_factors (f : α → β) (P : α → Prop) :
    Determined f P ↔ ∃ Q : β → Prop, ∀ x, P x ↔ Q (f x) := by
  constructor
  · intro h
    refine ⟨May f P, ?_⟩
    intro x
    constructor
    · exact may_at_observation f P x
    · intro hx
      obtain ⟨y, hy, hp⟩ := hx
      exact (h y x hy).mp hp
  · intro h x y hxy
    obtain ⟨Q, hQ⟩ := h
    change f x = f y at hxy
    constructor
    · intro hp
      apply (hQ y).mpr
      rw [← hxy]
      exact (hQ x).mp hp
    · intro hp
      apply (hQ x).mpr
      rw [hxy]
      exact (hQ y).mp hp

/-- Descent is unique only on observations that can actually occur. -/
theorem factor_unique_on_range (f : α → β) (P : α → Prop)
    {Q R : β → Prop} (hQ : ∀ x, P x ↔ Q (f x))
    (hR : ∀ x, P x ↔ R (f x)) (x : α) : Q (f x) ↔ R (f x) :=
  (hQ x).symm.trans (hR x)

theorem factor_unique_of_surjective (f : α → β) (P : α → Prop)
    (surjective : ∀ b, ∃ x, f x = b) {Q R : β → Prop}
    (hQ : ∀ x, P x ↔ Q (f x)) (hR : ∀ x, P x ↔ R (f x)) : Q = R := by
  funext b
  obtain ⟨x, hx⟩ := surjective b
  subst b
  exact propext (factor_unique_on_range f P hQ hR x)

/-- Upper and lower approximations agree exactly for determined predicates. -/
theorem determined_iff_may_implies_must (f : α → β) (P : α → Prop) :
    Determined f P ↔ ∀ b, May f P b → Must f P b := by
  constructor
  · intro h b hb y hy
    obtain ⟨x, hx, hp⟩ := hb
    exact (h x y (hx.trans hy.symm)).mp hp
  · intro h x y hxy
    constructor
    · intro hx
      exact h (f y) ⟨x, hxy, hx⟩ y rfl
    · intro hy
      exact h (f x) ⟨y, Eq.symm hxy, hy⟩ x rfl

theorem saturate_extensive (f : α → β) (P : α → Prop) :
    ∀ x, P x → Saturate f P x := by
  intro x hx
  exact ⟨x, rfl, hx⟩

theorem saturate_mono (f : α → β) {P Q : α → Prop}
    (h : ∀ x, P x → Q x) :
    ∀ x, Saturate f P x → Saturate f Q x := by
  intro x hx
  exact may_mono f h (f x) hx

theorem saturate_determined (f : α → β) (P : α → Prop) :
    Determined f (Saturate f P) := by
  intro x y hxy
  constructor
  · intro hx
    obtain ⟨z, hz, hp⟩ := hx
    exact ⟨z, Eq.trans hz hxy, hp⟩
  · intro hy
    obtain ⟨z, hz, hp⟩ := hy
    exact ⟨z, Eq.trans hz (Eq.symm hxy), hp⟩

theorem saturate_idempotent (f : α → β) (P : α → Prop) (x : α) :
    Saturate f (Saturate f P) x ↔ Saturate f P x := by
  constructor
  · intro h
    obtain ⟨y, hy, z, hz, hp⟩ := h
    exact ⟨z, hz.trans hy, hp⟩
  · exact saturate_extensive f (Saturate f P) x

theorem saturate_least (f : α → β) {P Q : α → Prop}
    (contains : ∀ x, P x → Q x) (invariant : Determined f Q) :
    ∀ x, Saturate f P x → Q x := by
  intro x hx
  obtain ⟨y, hy, hp⟩ := hx
  exact (invariant y x hy).mp (contains y hp)

theorem determined_iff_saturate_fixed (f : α → β) (P : α → Prop) :
    Determined f P ↔ ∀ x, Saturate f P x ↔ P x := by
  constructor
  · intro h x
    exact ⟨saturate_least f (fun _ hp => hp) h x,
      saturate_extensive f P x⟩
  · intro h x y hxy
    exact (h x).symm.trans ((saturate_determined f P x y hxy).trans (h y))

/-- Postprocessing cannot separate points already identified. -/
theorem same_postprocess (f : α → β) (g : β → γ) {x y : α}
    (h : Same f x y) : Same (fun a => g (f a)) x y := congrArg g h

theorem determined_before_postprocess (f : α → β) (g : β → γ)
    {P : α → Prop} (h : Determined (fun a => g (f a)) P) :
    Determined f P := by
  intro x y hxy
  exact h x y (same_postprocess f g hxy)

/-- Reconstruction requires injectivity; no cardinality assumptions are hidden. -/
theorem injective_of_left_inverse (f : α → β) (r : β → α)
    (roundtrip : ∀ x, r (f x) = x) : ∀ x y, f x = f y → x = y := by
  intro x y h
  calc
    x = r (f x) := (roundtrip x).symm
    _ = r (f y) := congrArg r h
    _ = y := roundtrip y

theorem no_left_inverse_of_collision (f : α → β) {x y : α}
    (distinct : x ≠ y) (collision : f x = f y) :
    ¬ ∃ r : β → α, ∀ a, r (f a) = a := by
  intro h
  obtain ⟨r, hr⟩ := h
  exact distinct (injective_of_left_inverse f r hr x y collision)

/-- Every source predicate is observable exactly when observations are injective. -/
theorem all_predicates_determined_iff_injective (f : α → β) :
    (∀ P : α → Prop, Determined f P) ↔
      (∀ x y, f x = f y → x = y) := by
  constructor
  · intro h x y hxy
    exact ((h (fun z => z = x) x y hxy).mp rfl).symm
  · intro h P x y hxy
    have heq := h x y hxy
    subst y
    exact Iff.rfl

/-- A single incompatible pair suffices to rule out a sound complete decoder. -/
theorem not_determined_of_collision (f : α → β) (P : α → Prop)
    {x y : α} (collision : f x = f y) (hx : P x) (hy : ¬ P y) :
    ¬ Determined f P := by
  intro h
  exact hy ((h x y collision).mp hx)

/-- Universal truth on an impossible observation does not produce a witness. -/
theorem empty_fiber_boundary :
    Must (fun _ : Unit => true) (fun _ => False) false ∧
      ¬ May (fun _ : Unit => true) (fun _ => False) false := by
  constructor
  · intro x hx
    cases hx
  · intro h
    obtain ⟨x, hx, hp⟩ := h
    exact hp

end GRWTSK.Logic.Observation
