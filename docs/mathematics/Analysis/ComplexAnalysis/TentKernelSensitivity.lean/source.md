# Complete source: GRWTSK.Analysis.Complex.TentKernelSensitivity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `edba02e1a6c72fe2264645d0cac886ea56a5bf00` · SHA-256 `d3a5e4c172a9fc3f235736683e84c8e7bd52837451d7623aade8d3efe1b16954`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.TentMellinQuadrature

set_option autoImplicit false

/-!
# Direct parameter sensitivity of the existing normalized tent

Positive mass is h, not 2h. The estimate integrates that mass instead of
subtracting four separately enlarged interval estimates. Both actual parameters
must have real part at most one. No numerical evaluation at z+1 is required.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.TentKernelSensitivity

open MeasureTheory Set Filter
open scoped Interval BigOperators
open IntervalMellinKernel TentMellinKernel TentMellinQuadrature
open GRWTSK.Analysis.Real.TentWeight
noncomputable section

/-- Parameter sensitivity at one positive real node, not spatial sensitivity. -/
theorem density_parameter_error {t : ℝ} (ht : 1 < t) {z w : ℂ}
    (hz : z.re ≤ 1) (hw : w.re ≤ 1) :
    ‖density z t - density w t‖ ≤ Real.log t * ‖z - w‖ := by
  apply (convex_re_le 1).norm_image_sub_le_of_norm_hasDerivWithin_le
    (fun u _ => (hasDerivAt_density u t).hasDerivWithinAt) _ hw hz
  intro u hu
  simpa [densityBound] using
    (norm_weighted_density_le (a := t) (b := t) ht ⟨le_rfl, le_rfl⟩ hu)

/-- Integrate a nonnegative affine weight against the pointwise parameter bound. -/
theorem affine_parameter_error {c d b α β : ℝ} {z w : ℂ}
    (hc : 1 < c) (hcd : c ≤ d) (hdb : d ≤ b)
    (hz : z.re ≤ 1) (hw : w.re ≤ 1)
    (hweight : ∀ t ∈ Icc c d, 0 ≤ α * t + β) :
    ‖(∫ t in c..d, (α * t + β) • density z t) -
      (∫ t in c..d, (α * t + β) • density w t)‖ ≤
      affineMass α β c d * (Real.log b * ‖z - w‖) := by
  have hpoint (t : ℝ) (ht : t ∈ Icc c d) :
      ‖density z t - density w t‖ ≤ Real.log b * ‖z - w‖ := by
    apply (density_parameter_error (hc.trans_le ht.1) hz hw).trans
    exact mul_le_mul_of_nonneg_right
      (Real.log_le_log (by linarith [ht.1]) (ht.2.trans hdb)) (norm_nonneg _)
  have hi := intervalIntegral.norm_integral_le_of_norm_le
    (a := c) (b := d) (μ := volume) (f := fun t => (α * t + β) • (density z t - density w t))
    (g := fun t : ℝ => (α * t + β) * (Real.log b * ‖z - w‖)) hcd
    (Eventually.of_forall fun t ht => by
      have ht' : t ∈ Icc c d := ⟨ht.1.le, ht.2⟩
      simpa only [norm_smul, Real.norm_eq_abs, abs_of_nonneg (hweight t ht')] using
        mul_le_mul_of_nonneg_left (hpoint t ht') (hweight t ht'))
    ((((continuous_const.mul continuous_id).add continuous_const).mul
      continuous_const).intervalIntegrable c d)
  simp only [smul_sub] at hi
  rw [intervalIntegral.integral_sub
      (f := fun t : ℝ => (α*t+β) • density z t) (g := fun t : ℝ => (α*t+β) • density w t)
      (affine_density_integrable hc hcd α β z)
      (affine_density_integrable hc hcd α β w),
    intervalIntegral.integral_mul_const, integral_affine] at hi
  exact hi

/-- Reexpress the retained split integral using real scalar affine weights. -/
theorem tentKernel_eq_affine (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) (z : ℂ) :
    tentKernel x h z =
      (∫ t in (x - h)..x, ((1 / h) * t + (-(x - h) / h)) • density z t) +
      (∫ t in x..(x + h), ((-1 / h) * t + (x + h) / h) • density z t) := by
  rw [tentKernel_eq_split_integral x h hh ha z]
  congr 1
  · apply intervalIntegral.integral_congr
    intro t ht
    dsimp only
    rw [uIcc_of_le (show x - h ≤ x by linarith)] at ht
    rw [tent_on_left x h t hh ht.1 ht.2, Complex.real_smul]
    congr 1
    push_cast
    ring
  · apply intervalIntegral.integral_congr
    intro t ht
    dsimp only
    rw [uIcc_of_le (show x ≤ x + h by linarith)] at ht
    rw [tent_on_right x h t hh ht.1 ht.2, Complex.real_smul]
    congr 1
    push_cast
    ring

/-- Direct mass-based bound, valid at the removable parameters zero and minus one. -/
theorem norm_tent_sub_le (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    {z w : ℂ} (hz : z.re ≤ 1) (hw : w.re ≤ 1) :
    ‖tentKernel x h z - tentKernel x h w‖ ≤
      (h * Real.log (x + h)) * ‖z - w‖ := by
  have hL := affine_parameter_error (c := x - h) (d := x) (b := x + h)
    (α := 1 / h) (β := -(x - h) / h) ha (by linarith) (by linarith) hz hw
    (fun t ht => by
      have hp : 0 ≤ (t - (x - h)) / h := div_nonneg (by linarith [ht.1]) hh.le
      convert hp using 1
      ring)
  have hR := affine_parameter_error (c := x) (d := x + h) (b := x + h)
    (α := -1 / h) (β := (x + h) / h) (by linarith) (by linarith) le_rfl hz hw
    (fun t ht => by
      have hp : 0 ≤ (x + h - t) / h := div_nonneg (by linarith [ht.2]) hh.le
      convert hp using 1
      ring)
  have hmL : affineMass (1 / h) (-(x - h) / h) (x - h) x = h / 2 := by
    unfold affineMass
    field_simp [ne_of_gt hh]
    ring
  have hmR : affineMass (-1 / h) ((x + h) / h) x (x + h) = h / 2 := by
    unfold affineMass
    field_simp [ne_of_gt hh]
    ring
  rw [hmL] at hL
  rw [hmR] at hR
  rw [tentKernel_eq_affine x h hh ha z, tentKernel_eq_affine x h hh ha w]
  have htri := (norm_add_le
    ((∫ t in (x - h)..x, ((1 / h) * t + -(x - h) / h) • density z t) -
      (∫ t in (x - h)..x, ((1 / h) * t + -(x - h) / h) • density w t))
    ((∫ t in x..(x + h), ((-1 / h) * t + (x + h) / h) • density z t) -
      (∫ t in x..(x + h), ((-1 / h) * t + (x + h) / h) • density w t))).trans
      (add_le_add hL hR)
  calc
    _ = ‖((∫ t in (x - h)..x, ((1 / h) * t + -(x - h) / h) • density z t) -
        (∫ t in (x - h)..x, ((1 / h) * t + -(x - h) / h) • density w t)) +
      ((∫ t in x..(x + h), ((-1 / h) * t + (x + h) / h) • density z t) -
        (∫ t in x..(x + h), ((-1 / h) * t + (x + h) / h) • density w t))‖ := by congr 1; abel
    _ ≤ _ := htri
    _ = _ := by ring

/-- Included coordinates only: both indices and the natural weights are unchanged. -/
theorem finite_enclosure_error {ι : Type*} (S : Finset ι) (m : ι → ℕ)
    (ρ c : ι → ℂ) (r : ι → ℝ) (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (hρ : ∀ j ∈ S, (ρ j).re ≤ 1) (hc : ∀ j ∈ S, (c j).re ≤ 1)
    (hr : ∀ j ∈ S, ‖ρ j - c j‖ ≤ r j) :
    ‖(∑ j ∈ S, (m j : ℂ) * tentKernel x h (ρ j)) -
      ∑ j ∈ S, (m j : ℂ) * tentKernel x h (c j)‖ ≤
      (h * Real.log (x + h)) * ∑ j ∈ S, (m j : ℝ) * r j := by
  have hC : 0 ≤ h * Real.log (x + h) :=
    mul_nonneg hh.le (Real.log_nonneg (by linarith))
  calc
    _ = ‖∑ j ∈ S, (m j : ℂ) * (tentKernel x h (ρ j) - tentKernel x h (c j))‖ := by
      simp only [mul_sub, Finset.sum_sub_distrib]
    _ ≤ ∑ j ∈ S, ‖(m j : ℂ) * (tentKernel x h (ρ j) - tentKernel x h (c j))‖ := norm_sum_le _ _
    _ ≤ ∑ j ∈ S, (m j : ℝ) * ((h * Real.log (x + h)) * r j) := by
      apply Finset.sum_le_sum
      intro j hj
      have he := (norm_tent_sub_le x h hh ha (hρ j hj) (hc j hj)).trans
        (mul_le_mul_of_nonneg_left (hr j hj) hC)
      simpa only [norm_mul, Complex.norm_natCast] using
        mul_le_mul_of_nonneg_left he (Nat.cast_nonneg (m j) : (0 : ℝ) ≤ m j)
    _ = _ := by simp only [Finset.mul_sum]; apply Finset.sum_congr rfl; intro j _; ring

end
end GRWTSK.Analysis.Complex.TentKernelSensitivity
```
