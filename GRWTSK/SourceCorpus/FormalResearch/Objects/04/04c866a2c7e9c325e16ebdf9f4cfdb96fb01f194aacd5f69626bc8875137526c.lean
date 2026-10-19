module

public meta import Surface.Core.Classification
public import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.Tactic

/-!
# Pole-free rectangular contour shifts

Pinned mathlib represents a rectangular contour by four interval integrals.
This module gives those edges stable Surface names and packages the exact
pole-free Cauchy--Goursat consequence used by future contour arguments.

It does not state a residue theorem and cannot be used to cross a pole: even
the off-countable mathlib theorem requires continuity on the whole closed
rectangle.
-/

public section

namespace Surface.Core.ComplexAnalysis

noncomputable section

open Set Complex MeasureTheory

/-- Closed axis-aligned rectangle with corners `z` and `w`; endpoint order is
irrelevant because `uIcc` is used on each coordinate. -/
@[expose]
def closedRectangle (z w : ℂ) : Set ℂ :=
  Set.uIcc z.re w.re ×ℂ Set.uIcc z.im w.im

@[surface_adapter]
theorem isCompact_closedRectangle (z w : ℂ) :
    IsCompact (closedRectangle z w) := by
  exact isCompact_uIcc.reProdIm isCompact_uIcc

/-- Horizontal integral at height `y`, oriented from `z.re` to `w.re`. -/
@[expose]
def rectangleHorizontalIntegral
    (f : ℂ → ℂ) (z w : ℂ) (y : ℝ) : ℂ :=
  ∫ x : ℝ in z.re..w.re, f (x + y * Complex.I)

/-- Vertical integral at real coordinate `x`, oriented from `z.im` to
`w.im`, including the differential factor `I`. -/
@[expose]
def rectangleVerticalIntegral
    (f : ℂ → ℂ) (z w : ℂ) (x : ℝ) : ℂ :=
  Complex.I • (∫ y : ℝ in z.im..w.im, f (x + y * Complex.I))

/-- Positively oriented rectangular boundary integral in mathlib's raw edge
normalization. -/
@[expose]
def rectangleBoundaryIntegral
    (f : ℂ → ℂ) (z w : ℂ) : ℂ :=
  rectangleHorizontalIntegral f z w z.im -
      rectangleHorizontalIntegral f z w w.im +
    rectangleVerticalIntegral f z w w.re -
      rectangleVerticalIntegral f z w z.re

/-- Cauchy--Goursat on a closed rectangle, exposed in the stable Surface edge
API. -/
@[surface_adapter, surface_published]
theorem rectangleBoundaryIntegral_eq_zero_of_differentiableOn
    (f : ℂ → ℂ) (z w : ℂ)
    (hf : DifferentiableOn ℂ f (closedRectangle z w)) :
    rectangleBoundaryIntegral f z w = 0 := by
  exact Complex.integral_boundary_rect_eq_zero_of_differentiableOn f z w hf

/-- The honest pole-free vertical-line shift: the change between the two
vertical edges equals the difference of the horizontal edges. -/
@[surface_novel, surface_published]
theorem rectangleVerticalShift_eq_horizontalDifference
    (f : ℂ → ℂ) (z w : ℂ)
    (hf : DifferentiableOn ℂ f (closedRectangle z w)) :
    rectangleVerticalIntegral f z w w.re -
        rectangleVerticalIntegral f z w z.re =
      rectangleHorizontalIntegral f z w w.im -
        rectangleHorizontalIntegral f z w z.im := by
  have h := rectangleBoundaryIntegral_eq_zero_of_differentiableOn f z w hf
  unfold rectangleBoundaryIntegral at h
  rw [← sub_eq_zero]
  calc
    (rectangleVerticalIntegral f z w w.re -
          rectangleVerticalIntegral f z w z.re) -
        (rectangleHorizontalIntegral f z w w.im -
          rectangleHorizontalIntegral f z w z.im) =
      rectangleHorizontalIntegral f z w z.im -
          rectangleHorizontalIntegral f z w w.im +
        rectangleVerticalIntegral f z w w.re -
          rectangleVerticalIntegral f z w z.re := by abel
    _ = 0 := h

/-- Variant with continuity on the closed rectangle and differentiability on
its open interior. -/
@[surface_adapter, surface_published]
theorem rectangleBoundaryIntegral_eq_zero_of_continuousOn_of_differentiableOn
    (f : ℂ → ℂ) (z w : ℂ)
    (hc : ContinuousOn f (closedRectangle z w))
    (hd : DifferentiableOn ℂ f
      (Set.Ioo (min z.re w.re) (max z.re w.re) ×ℂ
        Set.Ioo (min z.im w.im) (max z.im w.im))) :
    rectangleBoundaryIntegral f z w = 0 := by
  exact Complex.integral_boundary_rect_eq_zero_of_continuousOn_of_differentiableOn
    f z w hc hd

end

end Surface.Core.ComplexAnalysis
