/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.MeasureTheory.Integral.IntegralEqImproper

/-!
# A positive reciprocal kernel and its exact sum–integral bounds

This finite analytic layer does not identify a special function with its series.
Its conclusions use genuine integrability, with the zero parameter included.
-/

namespace GRWTSK.Analysis.ReciprocalKernel

open MeasureTheory Set Filter
open scoped Topology

noncomputable section

/-- The nonnegative kernel in the real part of a reciprocal difference. -/
def kernel (b x : ℝ) : ℝ := b ^ 2 / (x * (x ^ 2 + b ^ 2))

/-- The zero parameter gives the zero function, including totalized values. -/
theorem kernel_zero (x : ℝ) : kernel 0 x = 0 := by simp [kernel]

/-- The zero-parameter series is exactly zero, rather than omitted from the comparison. -/
theorem kernel_zero_sum (a : ℝ) : (∑' n : ℕ, kernel 0 (n + a)) = 0 := by
  simp [kernel_zero]

/-- Positivity requires a positive spatial coordinate, not a nonzero parameter. -/
theorem kernel_nonneg (b x : ℝ) (hx : 0 < x) : 0 ≤ kernel b x := by
  unfold kernel
  positivity

/-- The kernel decreases on the positive half-line. -/
theorem kernel_antitone (b : ℝ) : AntitoneOn (kernel b) (Ioi 0) := by
  intro x hx y hy hxy
  have hx' : 0 < x := hx
  have hy' : 0 < y := hy
  apply div_le_div_of_nonneg_left (sq_nonneg b)
  · positivity
  · exact mul_le_mul hxy (by nlinarith) (by positivity) (by positivity)

/-- At the source endpoint its height is at most four, uniformly in the parameter. -/
theorem kernel_quarter_le (b : ℝ) : kernel b (1 / 4) ≤ 4 := by
  unfold kernel
  apply (div_le_iff₀ (by positivity : (0 : ℝ) < 1 / 4 * ((1 / 4) ^ 2 + b ^ 2))).2
  nlinarith [sq_nonneg b]

/-- A primitive that tends to zero at positive infinity. -/
def primitive (b x : ℝ) : ℝ := -Real.log (1 + b ^ 2 * (x⁻¹) ^ 2) / 2

/-- Exact derivative, valid also when `b = 0`. -/
theorem hasDerivAt_primitive (b x : ℝ) (hx : 0 < x) :
    HasDerivAt (primitive b) (kernel b x) x := by
  change HasDerivAt (fun y : ℝ => -(Real.log (1 + b ^ 2 * (y⁻¹) ^ 2)) / 2) _ x
  have hx0 : x ≠ 0 := ne_of_gt hx
  have hpos : 0 < 1 + b ^ 2 * (x⁻¹) ^ 2 := by positivity
  have h := (((((hasDerivAt_id x).inv hx0).pow 2).const_mul (b ^ 2)).const_add 1).log
    (ne_of_gt hpos)
  apply (h.neg.div_const 2).congr_deriv
  dsimp [kernel]
  field_simp

/-- The primitive has a genuine finite limit at infinity. -/
theorem primitive_tendsto (b : ℝ) : Tendsto (primitive b) atTop (𝓝 0) := by
  change Tendsto (fun y : ℝ => -(Real.log (1 + b ^ 2 * (y⁻¹) ^ 2)) / 2) atTop (𝓝 0)
  have h := (((tendsto_inv_atTop_zero.pow 2).const_mul (b ^ 2)).const_add 1).log
    (by norm_num : (1 + b ^ 2 * (0 : ℝ) ^ 2) ≠ 0)
  simpa only [primitive, zero_pow (by decide : 2 ≠ 0), mul_zero, add_zero,
    Real.log_one, neg_zero, zero_div] using h.neg.div_const 2

/-- Genuine integrability on every positive half-line follows from the primitive. -/
theorem kernel_integrable (b a : ℝ) (ha : 0 < a) :
    IntegrableOn (kernel b) (Ioi a) := by
  exact integrableOn_Ioi_deriv_of_nonneg'
    (fun x hx => hasDerivAt_primitive b x (lt_of_lt_of_le ha hx))
    (fun x hx => kernel_nonneg b x (lt_trans ha hx)) (primitive_tendsto b)

/-- The exact improper integral, with no nonzero-parameter restriction. -/
theorem kernel_integral (b a : ℝ) (ha : 0 < a) :
    (∫ x in Ioi a, kernel b x) = Real.log (1 + b ^ 2 * (a⁻¹) ^ 2) / 2 := by
  have h := integral_Ioi_of_hasDerivAt_of_nonneg'
    (fun x hx => hasDerivAt_primitive b x (lt_of_lt_of_le ha hx))
    (fun x hx => kernel_nonneg b x (lt_trans ha hx)) (primitive_tendsto b)
  simpa [primitive, neg_div] using h

/-- The source's quarter endpoint has the exact factor sixteen. -/
theorem kernel_integral_quarter (b : ℝ) :
    (∫ x in Ioi (1 / 4), kernel b x) = Real.log (1 + 16 * b ^ 2) / 2 := by
  have h := kernel_integral b (1 / 4) (by norm_num)
  convert h using 1
  congr 2
  norm_num
  ring

/-- Shifting the primitive preserves its limit and allows direct integer-step comparison. -/
theorem shifted_primitive_tendsto (b a : ℝ) :
    Tendsto (fun x => primitive b (x + a)) atTop (𝓝 0) :=
  (primitive_tendsto b).comp (tendsto_atTop_add_const_right atTop a tendsto_id)

/-- The translated kernel is genuinely integrable on `(0,∞)`. -/
theorem shifted_kernel_integrable (b a : ℝ) (ha : 0 < a) :
    IntegrableOn (fun x => kernel b (x + a)) (Ioi 0) := by
  apply integrableOn_Ioi_deriv_of_nonneg' (g := fun x => primitive b (x + a))
    (l := 0)
  · intro x hx
    have hxa : 0 < x + a := add_pos_of_nonneg_of_pos hx ha
    convert! (hasDerivAt_primitive b (x + a) hxa).comp x
      ((hasDerivAt_id x).add_const a) using 1
    simp
  · intro x hx
    exact kernel_nonneg b (x + a) (by simp only [mem_Ioi] at hx; linarith)
  · exact shifted_primitive_tendsto b a

/-- The translated integral has the same endpoint formula. -/
theorem shifted_kernel_integral (b a : ℝ) (ha : 0 < a) :
    (∫ x in Ioi 0, kernel b (x + a)) = Real.log (1 + b ^ 2 * (a⁻¹) ^ 2) / 2 := by
  have h := integral_Ioi_of_hasDerivAt_of_nonneg'
    (g := fun x => primitive b (x + a)) (a := 0) (l := 0)
    (g' := fun x => kernel b (x + a))
    (fun x hx => by
      have hxa : 0 < x + a := add_pos_of_nonneg_of_pos hx ha
      convert! (hasDerivAt_primitive b (x + a) hxa).comp x
        ((hasDerivAt_id x).add_const a) using 1
      simp)
    (fun x hx => kernel_nonneg b (x + a) (add_pos hx ha))
    (shifted_primitive_tendsto b a)
  simpa [primitive, neg_div] using h

/-- A reusable integral comparison for a nonnegative decreasing function. -/
theorem decreasing_sum_bounds {f : ℝ → ℝ} (hf : AntitoneOn f (Ici 0))
    (hi : IntegrableOn f (Ioi 0)) (hn : ∀ x ∈ Ioi 0, 0 ≤ f x) :
    (∫ x in Ioi 0, f x) ≤ ∑' n : ℕ, f n ∧
    (∑' n : ℕ, f n) ≤ f 0 + ∫ x in Ioi 0, f x := by
  exact ⟨hf.integral_le_tsum (hf.summable_of_integrableOn_Ioi_zero hi hn) hn,
    hf.tsum_le_integral hi hn⟩

/-- Translation puts the positive kernel on the comparison half-line. -/
theorem shifted_kernel_antitone (b a : ℝ) (ha : 0 < a) :
    AntitoneOn (fun x => kernel b (x + a)) (Ici 0) := by
  intro x hx y hy hxy
  apply kernel_antitone b
  · exact add_pos_of_nonneg_of_pos hx ha
  · exact add_pos_of_nonneg_of_pos hy ha
  · linarith

/-- The actual kernel series is summable, without an assumed special-function identity. -/
theorem kernel_summable (b a : ℝ) (ha : 0 < a) :
    Summable (fun n : ℕ => kernel b (n + a)) := by
  exact (shifted_kernel_antitone b a ha).summable_of_integrableOn_Ioi_zero
    (shifted_kernel_integrable b a ha)
    (fun x hx => kernel_nonneg b (x + a) (add_pos hx ha))

/-- The sum differs from the logarithmic integral by at most its first term. -/
theorem kernel_sum_bounds (b a : ℝ) (ha : 0 < a) :
    0 ≤ (∑' n : ℕ, kernel b (n + a)) - Real.log (1 + b ^ 2 * (a⁻¹) ^ 2) / 2 ∧
    (∑' n : ℕ, kernel b (n + a)) - Real.log (1 + b ^ 2 * (a⁻¹) ^ 2) / 2 ≤
      kernel b a := by
  have h := decreasing_sum_bounds (shifted_kernel_antitone b a ha)
    (shifted_kernel_integrable b a ha)
    (fun x hx => kernel_nonneg b (x + a) (add_pos hx ha))
  rw [shifted_kernel_integral b a ha] at h
  simp only [zero_add] at h
  constructor <;> linarith [h.1, h.2]

/-- The exact constant-four source bound, including `b = 0`. -/
theorem sum_bounds (b : ℝ) :
    0 ≤ (∑' n : ℕ, kernel b (n + 1 / 4)) - Real.log (1 + 16 * b ^ 2) / 2 ∧
    (∑' n : ℕ, kernel b (n + 1 / 4)) - Real.log (1 + 16 * b ^ 2) / 2 ≤ 4 := by
  have h := kernel_sum_bounds b (1 / 4) (by norm_num)
  have he : (1 + b ^ 2 * ((1 / 4 : ℝ)⁻¹) ^ 2) = 1 + 16 * b ^ 2 := by norm_num; ring
  rw [he] at h
  exact ⟨h.1, h.2.trans (kernel_quarter_le b)⟩

/-- Substitution of the source frequency preserves the source's factor four. -/
theorem frequency_sum_bounds (ξ : ℝ) :
    0 ≤ (∑' n : ℕ, kernel (ξ / 2) (n + 1 / 4)) - Real.log (1 + 4 * ξ ^ 2) / 2 ∧
    (∑' n : ℕ, kernel (ξ / 2) (n + 1 / 4)) - Real.log (1 + 4 * ξ ^ 2) / 2 ≤ 4 := by
  have h := sum_bounds (ξ / 2)
  have he : 1 + 16 * (ξ / 2) ^ 2 = 1 + 4 * ξ ^ 2 := by ring
  rwa [he] at h

end
end GRWTSK.Analysis.ReciprocalKernel
