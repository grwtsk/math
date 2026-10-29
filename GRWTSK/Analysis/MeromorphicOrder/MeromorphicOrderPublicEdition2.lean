module

public import Surface.Core.ComplexAnalysis.RectangleContour
public import Mathlib.Analysis.Meromorphic.Divisor
import Mathlib.Tactic

/-!
# Meromorphic orders on compact rectangles

This module packages the multiplicity-bearing divisor already supplied by
mathlib and proves that its support on a compact rectangle is finite.  It does
not identify divisor coefficients with contour residues.
-/

public section

namespace Surface.Core.ComplexAnalysis

noncomputable section

open Set Complex

/-- Integer-valued meromorphic divisor restricted to a closed rectangle. -/
def rectangleDivisor (f : ℂ → ℂ) (z w : ℂ) :
    Function.locallyFinsuppWithin (closedRectangle z w) ℤ :=
  MeromorphicOn.divisor f (closedRectangle z w)

/-- Pointwise divisor coefficients are totalized meromorphic orders. -/
theorem rectangleDivisor_apply
    {f : ℂ → ℂ} {z w s : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w))
    (hs : s ∈ closedRectangle z w) :
    rectangleDivisor f z w s = (meromorphicOrderAt f s).untop₀ := by
  exact MeromorphicOn.divisor_apply hf hs

/-- A compact rectangle meets the zero/pole divisor in only finitely many
points. -/
theorem rectangleDivisor_support_finite
    {f : ℂ → ℂ} {z w : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w)) :
    (rectangleDivisor f z w).support.Finite := by
  exact hf.divisor_support_finite_of_subset
    (isCompact_closedRectangle z w) Subset.rfl

/-- Finite support set used by future finite contour bookkeeping. -/
def rectangleDivisorSupportFinset
    (f : ℂ → ℂ) (z w : ℂ)
    (hf : MeromorphicOn f (closedRectangle z w)) : Finset ℂ :=
  (rectangleDivisor_support_finite hf).toFinset

@[simp]
theorem mem_rectangleDivisorSupportFinset
    {f : ℂ → ℂ} {z w s : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w)) :
    s ∈ rectangleDivisorSupportFinset f z w hf ↔
      rectangleDivisor f z w s ≠ 0 := by
  simp [rectangleDivisorSupportFinset, Function.mem_support]

end

end Surface.Core.ComplexAnalysis
