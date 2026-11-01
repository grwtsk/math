/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib

/-!
# Positive phase cost on a finite additive torsion group

Local attribution: grwtsk contributors.

Every finite additive group is a torsion group, but an abstract torsion
element has no preferred sign or magnitude. Here the *discrete root defect*
is 0 at the additive identity and 1 elsewhere. Positive proportional
energy is an observable constructed FROM this defect, not a positive
ordering of the group or its torsion order.

It is invariant under additive equivalences and reflection. This
source also records explicitly why this construction cannot be used to
claim a modulus-independent *geometric* lower bound for a circle metric.
All results are at the stated finite-group scope.

Lean compilation, fresh kernel replay, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.GroupTheoryAndGeneralizations.RootedFiniteTorsionEnergy

universe u v

variable {G : Type u} [AddCommGroup G] [Finite G] [DecidableEq G]

/-- Zero only at the additive root, one at all other finite-order states. -/
def rootDefect (x : G) : ℝ :=
  if x = 0 then 0 else 1

theorem rootDefect_eq_zero_iff (x : G) :
    rootDefect x = 0 ↔ x = 0 := by
  by_cases h : x = 0 <;> simp [rootDefect, h]

/-- Explicit positive scale on the squared finite-phase indicator. -/
def energy (κ : ℝ) (x : G) : ℝ :=
  κ * (rootDefect x) ^ 2

theorem energy_nonneg (κ : ℝ) (hκ : 0 ≤ κ) (x : G) :
    0 ≤ energy κ x := by
  unfold energy
  exact mul_nonneg hκ (sq_nonneg _)

/-- Strict positivity for every non-root finite torsion element. -/
theorem energy_pos_off_root (κ : ℝ) (hκ : 0 < κ) (x : G)
    (hx : x ≠ 0) :
    0 < energy κ x := by
  simpa [energy, rootDefect, hx] using hκ

theorem energy_zero_iff_root (κ : ℝ) (hκ : 0 < κ) (x : G) :
    energy κ x = 0 ↔ x = 0 := by
  by_cases h : x = 0
  · simp [energy, rootDefect, h]
  · simp [energy, rootDefect, h, ne_of_gt hκ]

/-- Reflection changes the phase but not the root-relative defect. -/
theorem energy_neg (κ : ℝ) (x : G) :
    energy κ (-x) = energy κ x := by
  by_cases h : x = 0
  · subst x
    simp [energy, rootDefect]
  · have hn : -x ≠ 0 := by
      intro hz
      apply h
      have ht := congrArg (fun y : G => -y) hz
      simpa using ht
    simp [energy, rootDefect, h, hn]

/-- The same cost transports exactly through a genuine additive equivalence. -/
theorem energy_addEquiv
    {H : Type v} [AddCommGroup H] [Finite H] [DecidableEq H]
    (κ : ℝ) (e : G ≃+ H) (x : G) :
    energy κ (e x) = energy κ x := by
  by_cases h : x = 0
  · subst x
    simp [energy, rootDefect]
  · have hh : e x ≠ 0 := by
      intro hz
      apply h
      apply e.injective
      simpa using hz
    simp [energy, rootDefect, h, hh]

end GRWTSK.GroupTheoryAndGeneralizations.RootedFiniteTorsionEnergy

end
