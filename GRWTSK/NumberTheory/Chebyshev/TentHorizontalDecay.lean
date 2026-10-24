/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ReflectedStripDecay
import GRWTSK.NumberTheory.Chebyshev.TentHorizontalRays

set_option autoImplicit false

/-!
# Growing-height decay of the actual tent horizontal rays

The old fixed-strip and rate suppliers are discharged by the actual source
bounds. Each full horizontal norm integral tends to zero separately. The
combined oriented correction therefore vanishes without cancellation being
used to infer separate convergence. Geometry x,h is FIXED as N tends to infinity.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.TentHorizontalDecay

open MeasureTheory Filter Set
open scoped Topology BigOperators
open GRWTSK.Analysis.ComplexAnalysis.TentContourMajorants
open GRWTSK.Analysis.ComplexAnalysis.TentHorizontalRayMajorant
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.SeparatedContourHeights
open GRWTSK.RiemannHypothesis.ReflectedStripBudget
open GRWTSK.RiemannHypothesis.ReflectedStripDecay
open TentAdmissibleContours TentPerronLine TentHorizontalRays

noncomputable section

/-- An explicit scalar bound for EACH complete ray's norm integral. -/
def selectedRayBudget (x h : ℝ) (N : ℕ) : ℝ :=
  affineRayBudget x h (stripBudget N + 2 * mangoldtLineMass) / (separatedHeight N) ^ 2

theorem selectedRayBudget_nonneg (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) (N : ℕ) :
    0 ≤ selectedRayBudget x h N := by
  exact div_nonneg (affineRayBudget_nonneg x h _ hh ha
    (by linarith [stripBudget_nonneg N, mangoldtLineMass_nonneg])) (sq_nonneg _)

/-- The extra affine-shift moment remains; there is no growing width factor. -/
theorem selectedRayBudget_eq (x h : ℝ) (N : ℕ) :
    selectedRayBudget x h N =
      ((stripBudget N + 2 * mangoldtLineMass) * horizontalBudget x h +
        shiftMomentBudget x h) / (separatedHeight N) ^ 2 := by
  rw [selectedRayBudget, affineRayBudget_eq]

theorem selectedRayBudget_tendsto_zero (x h : ℝ) :
    Tendsto (selectedRayBudget x h) atTop (𝓝 0) := by
  unfold selectedRayBudget
  simpa only [affineRayBudget_eq] using weighted_strip_div_height_sq_tendsto_zero
    (2 * mangoldtLineMass) (horizontalBudget x h) (shiftMomentBudget x h)

/-- Actual all-point strip control supplies the old full-ray estimate. -/
theorem integral_norm_selected_ray_le (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (hN : 2 ≤ N) (y : ℝ) (hy : |y| = separatedHeight N) :
    (∫ σ in Iic (2 : ℝ), ‖integrand x h ((σ : ℂ) + (y : ℂ) * Complex.I)‖) ≤
      selectedRayBudget x h N := by
  have hy0 : y ≠ 0 := by
    intro he
    rw [he, abs_zero] at hy
    linarith [separatedHeight_pos N]
  have havoid : ∀ z : ZeroPoint, height z ≠ |y| := by
    rw [hy]
    exact separatedHeight_avoids N
  have hcore : ∀ σ ∈ Icc (-3 : ℝ) 2,
      ‖-logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤ stripBudget N := by
    intro σ hσ
    simpa only [norm_neg] using norm_logDeriv_fixedStrip N hN σ y hσ hy
  have hsq : y ^ 2 = (separatedHeight N) ^ 2 := by rw [← hy, sq_abs]
  simpa only [selectedRayBudget, hsq] using
    integral_norm_horizontal_ray_le x h y (stripBudget N) hh ha hy0 havoid
      (stripBudget_nonneg N) hcore

theorem norm_selected_ray_le (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (hN : 2 ≤ N) (y : ℝ) (hy : |y| = separatedHeight N) :
    ‖horizontalRay x h y‖ ≤ selectedRayBudget x h N :=
  (norm_integral_le_integral_norm _).trans (integral_norm_selected_ray_le x h hh ha N hN y hy)

/-- Any sign choices at the same selected absolute heights have vanishing FULL norm mass. -/
theorem integral_norm_selected_ray_tendsto_zero (x h : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (y : ℕ → ℝ)
    (hy : ∀ N, |y N| = separatedHeight N) :
    Tendsto (fun N : ℕ => ∫ σ in Iic (2 : ℝ),
      ‖integrand x h ((σ : ℂ) + (y N : ℂ) * Complex.I)‖) atTop (𝓝 0) := by
  apply squeeze_zero' (Eventually.of_forall (fun _ => integral_nonneg (fun _ => norm_nonneg _)))
    ?_ (selectedRayBudget_tendsto_zero x h)
  filter_upwards [eventually_ge_atTop 2] with N hN
  exact integral_norm_selected_ray_le x h hh ha N hN (y N) (hy N)

theorem selected_ray_tendsto_zero (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (y : ℕ → ℝ) (hy : ∀ N, |y N| = separatedHeight N) :
    Tendsto (fun N : ℕ => horizontalRay x h (y N)) atTop (𝓝 0) := by
  rw [tendsto_zero_iff_norm_tendsto_zero]
  apply squeeze_zero' (Eventually.of_forall (fun _ => norm_nonneg _))
    ?_ (selectedRayBudget_tendsto_zero x h)
  filter_upwards [eventually_ge_atTop 2] with N hN
  exact norm_selected_ray_le x h hh ha N hN (y N) (hy N)

theorem upper_ray_tendsto_zero (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    Tendsto (fun N : ℕ => horizontalRay x h (separatedHeight N)) atTop (𝓝 0) :=
  selected_ray_tendsto_zero x h hh ha separatedHeight
    (fun N => abs_of_pos (separatedHeight_pos N))

theorem lower_ray_tendsto_zero (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    Tendsto (fun N : ℕ => horizontalRay x h (-separatedHeight N)) atTop (𝓝 0) :=
  selected_ray_tendsto_zero x h hh ha (fun N => -separatedHeight N)
    (fun N => by rw [abs_neg, abs_of_pos (separatedHeight_pos N)])

/-- Keep top-minus-bottom and the full 2*pi*i differential normalization. -/
theorem combined_rays_tendsto_zero (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    Tendsto (fun N : ℕ =>
      (horizontalRay x h (separatedHeight N) - horizontalRay x h (-separatedHeight N)) /
        (((2 * Real.pi : ℝ) : ℂ) * Complex.I)) atTop (𝓝 0) := by
  simpa only [sub_self, zero_div] using
    ((upper_ray_tendsto_zero x h hh ha).sub (lower_ray_tendsto_zero x h hh ha)).div_const
      (((2 * Real.pi : ℝ) : ℂ) * Complex.I)

theorem norm_combined_selected_rays_le (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (hN : 2 ≤ N) :
    ‖(horizontalRay x h (separatedHeight N) - horizontalRay x h (-separatedHeight N)) /
      (((2 * Real.pi : ℝ) : ℂ) * Complex.I)‖ ≤ selectedRayBudget x h N / Real.pi := by
  have hb := norm_combined_horizontalRays_le x h (separatedHeight N) (stripBudget N)
    hh ha (separatedHeight_pos N) (separatedHeight_avoids N) (stripBudget_nonneg N)
    (fun y hy σ hσ => by simpa only [norm_neg] using
      norm_logDeriv_fixedStrip N hN σ y hσ hy)
  convert hb using 1
  unfold selectedRayBudget
  ring

end
end GRWTSK.NumberTheory.Chebyshev.TentHorizontalDecay
