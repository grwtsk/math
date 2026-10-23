/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

set_option autoImplicit false

/-!
# Oriented rectangular edge integrals

Horizontal integrals run left-to-right; vertical integrals run bottom-to-top
and omit the differential factor I. The positively oriented boundary is
bottom - top + I*right - I*left. Its normalization is kept distinct from a
real-parameter vertical integral. All limit theorems require actual absolute
integrability. No meromorphic residue theorem is asserted here.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.OrientedRectangle

open MeasureTheory Filter Set
open scoped Topology Interval

noncomputable section

/-- Left-to-right horizontal integral, including both finite endpoints. -/
def horizontal (f : ℂ → ℂ) (l r y : ℝ) : ℂ :=
  ∫ u in l..r, f ((u : ℂ) + (y : ℂ) * Complex.I)

/-- Upward vertical parameter integral; its contour differential is I dt. -/
def vertical (f : ℂ → ℂ) (c T : ℝ) : ℂ :=
  ∫ t in (-T)..T, f ((c : ℂ) + (t : ℂ) * Complex.I)

/-- Counterclockwise boundary when l<r and T>0. -/
def boundaryIntegral (f : ℂ → ℂ) (l r T : ℝ) : ℂ :=
  horizontal f l r (-T) - horizontal f l r T +
    Complex.I * vertical f r T - Complex.I * vertical f l T

/-- Match the exact orientation of the upstream rectangular Cauchy theorem. -/
theorem boundaryIntegral_eq_zero_of_differentiable (f : ℂ → ℂ)
    (hf : Differentiable ℂ f) (l r T : ℝ) : boundaryIntegral f l r T = 0 := by
  simpa only [boundaryIntegral, horizontal, vertical, smul_eq_mul] using
    Complex.integral_boundary_rect_eq_zero_of_differentiableOn f
      (⟨l, -T⟩ : ℂ) (⟨r, T⟩ : ℂ) hf.differentiableOn

/-- Solve for the upward right integral. The correction is top minus bottom.
The theorem is algebraic; it does not set either correction to zero. -/
theorem normalized_right_decomposition (f : ℂ → ℂ) (l r T : ℝ)
    (q : ℂ) (hq : q ≠ 0) :
    vertical f r T / q =
      boundaryIntegral f l r T / (q * Complex.I) + vertical f l T / q +
        (horizontal f l r T - horizontal f l r (-T)) / (q * Complex.I) := by
  unfold boundaryIntegral
  field_simp [hq, Complex.I_ne_zero]; ring

/-- A finite horizontal edge bound retains the actual edge length. -/
theorem norm_horizontal_le (f : ℂ → ℂ) (l r y C : ℝ) (hlr : l ≤ r)
    (hf : ∀ u ∈ Icc l r, ‖f ((u : ℂ) + (y : ℂ) * Complex.I)‖ ≤ C) :
    ‖horizontal f l r y‖ ≤ (r - l) * C := by
  have h := intervalIntegral.norm_integral_le_of_norm_le_const
    (a := l) (b := r) (f := fun u : ℝ => f ((u : ℂ) + (y : ℂ) * Complex.I))
    (C := C) (fun u hu => by
      rw [uIoc_of_le hlr] at hu
      exact hf u ⟨hu.1.le, hu.2⟩)
  simpa only [horizontal, abs_of_nonneg (sub_nonneg.mpr hlr), mul_comm] using h

/-- Both horizontal edges are charged. A uniform norm bound does not assert decay. -/
theorem norm_horizontal_difference_le (f : ℂ → ℂ) (l r T C : ℝ) (hlr : l ≤ r)
    (hup : ∀ u ∈ Icc l r, ‖f ((u : ℂ) + (T : ℂ) * Complex.I)‖ ≤ C)
    (hdown : ∀ u ∈ Icc l r, ‖f ((u : ℂ) + ((-T : ℝ) : ℂ) * Complex.I)‖ ≤ C) :
    ‖horizontal f l r T - horizontal f l r (-T)‖ ≤ 2 * ((r - l) * C) := by
  calc
    _ ≤ ‖horizontal f l r T‖ + ‖horizontal f l r (-T)‖ := norm_sub_le _ _
    _ ≤ (r - l) * C + (r - l) * C := add_le_add
      (norm_horizontal_le f l r T C hlr hup)
      (norm_horizontal_le f l r (-T) C hlr hdown)
    _ = _ := by ring

/-- Absolute integrability, not formal improper notation, supplies this limit. -/
theorem vertical_tendsto (f : ℂ → ℂ) (c : ℝ) (H : ℕ → ℝ)
    (hf : Integrable (fun t : ℝ => f ((c : ℂ) + (t : ℂ) * Complex.I)))
    (hH : Tendsto H atTop atTop) :
    Tendsto (fun N => vertical f c (H N)) atTop
      (𝓝 (∫ t : ℝ, f ((c : ℂ) + (t : ℂ) * Complex.I))) := by
  exact intervalIntegral_tendsto_integral hf (tendsto_neg_atTop_atBot.comp hH) hH

end
end GRWTSK.Analysis.Complex.OrientedRectangle
