/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Elaborate/axiom audit/kernel replay: NOT_RUN.
-/
import Mathlib.Tactic

/-!
# RH-free transport of Alpoge-style one-sided power windows

The actual Alpoge source defines Formalism.HC.HasWindows and
Level.Gm, with Level.LandauWinAt and Level.FormBAt as separate
zero-free-region obligations. This file copies neither the original
RH theorem nor any analytic zero-free conclusion.

HasPowerWindows is exactly the source shape
  HasWindows {x | F x <= x ^ theta} la.
An eventual error/margin bound transfers every sufficiently late
closed window without changing its original endpoint quantifiers.
The adjacent mathematical proof shows that O(log x) errors can be
absorbed in any theta -> theta + eta slack when theta,eta > 0.

This elementary transport does NOT supply CoreAtH, EAtH, or
Alpoge's main one-sided estimate and makes no RH claim.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.AlpogeWindowSourceTransport

/-- Source-faithful closed power windows, including arbitrarily late starts. -/
def HasPowerWindows (F : ℝ → ℝ) (theta la : ℝ) : Prop :=
  ∀ y : ℝ, ∃ Y : ℝ, y ≤ Y ∧
    ∀ x : ℝ, Y ≤ x → x ≤ Y ^ la → F x ≤ x ^ theta

/-- Adding an error smaller than the available pointwise power margin
preserves a one-sided envelope. -/
theorem ceiling_of_error_margin
    (F G : ℝ → ℝ) (x theta theta' err : ℝ)
    (hF : F x ≤ x ^ theta)
    (herror : |G x - F x| ≤ err)
    (hmargin : err ≤ x ^ theta' - x ^ theta) :
    G x ≤ x ^ theta' := by
  have hupper := (abs_le.mp herror).2
  linarith

/-- The exact quantified transfer of Alpoge's HasWindows shape.
All needed error bounds remain explicit; no analytic arithmetic theorem
is smuggled in as an assumption on an unrelated RH source. -/
theorem power_windows_of_eventual_error
    (F G : ℝ → ℝ) (theta theta' la x0 : ℝ)
    (err : ℝ → ℝ)
    (hwin : HasPowerWindows F theta la)
    (herror : ∀ x : ℝ, x0 ≤ x → |G x - F x| ≤ err x)
    (hmargin : ∀ x : ℝ, x0 ≤ x →
      err x ≤ x ^ theta' - x ^ theta) :
    HasPowerWindows G theta' la := by
  intro y
  obtain ⟨Y, hY, hbound⟩ := hwin (max y x0)
  refine ⟨Y, (le_max_left _ _).trans hY, ?_⟩
  intro x hx hupper
  have hx0 : x0 ≤ x :=
    (le_max_right y x0).trans (hY.trans hx)
  exact ceiling_of_error_margin F G x theta theta' (err x)
    (hbound x hx hupper) (herror x hx0) (hmargin x hx0)

/-- An exact source equality preserves the same exponent and windows. -/
theorem power_windows_congr
    (F G : ℝ → ℝ) (theta la : ℝ)
    (heq : ∀ x, F x = G x)
    (hF : HasPowerWindows F theta la) :
    HasPowerWindows G theta la := by
  intro y
  obtain ⟨Y, hY, hbound⟩ := hF y
  refine ⟨Y, hY, ?_⟩
  intro x hx hupper
  rw [← heq x]
  exact hbound x hx hupper

end GRWTSK.NumberTheory.AlpogeWindowSourceTransport
