/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Convolution.CompactProfileHigherDerivatives
import Mathlib.Algebra.Order.BigOperators.Group.Finset

/-!
# Explicit prices for every term of the literal CCC kernel

These prices retain the full unsigned integer weight mass. They provide no
arithmetic upper cancellation budget and prove no polarity sector or supplier
estimate. All finite terms and the actual correlation derivatives are retained.

Research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.KernelDerivativePrice

open ArithmeticSupplier SourceHigherRegularity
open GRWTSK.RiemannHypothesis

noncomputable section

def weightMass (A : ℝ) : ℝ :=
  ∑ k ∈ Finset.Icc 2 (integerCutoff A), Real.log (k : ℝ) / Real.sqrt (k : ℝ)

theorem literal_weight_nonneg {k : ℕ} (hk : 2 ≤ k) :
    0 ≤ Real.log (k : ℝ) / Real.sqrt (k : ℝ) := by
  have castOne : (1 : ℝ) ≤ k := by exact_mod_cast (by omega : 1 ≤ k)
  exact div_nonneg (Real.log_nonneg castOne) (Real.sqrt_nonneg _)

theorem weighted_difference_abs_le {w f g F G : ℝ} (hw : 0 ≤ w)
    (hf : |f| ≤ F) (hg : |g| ≤ G) :
    |w * (f - (1 / 2 : ℝ) * g)| ≤ w * (F + G / 2) := by
  rw [abs_mul, abs_of_nonneg hw]
  apply mul_le_mul_of_nonneg_left _ hw
  have triangle : |f - (1 / 2 : ℝ) * g| ≤ |f| + |(1 / 2 : ℝ) * g| := by
    simpa only [sub_eq_add_neg, abs_neg] using abs_add_le f (-((1 / 2 : ℝ) * g))
  rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 1 / 2)] at triangle
  linarith

theorem finite_shifted_price (A t F G : ℝ) (f g : ℝ → ℝ)
    (hf : ∀ x, |f x| ≤ F) (hg : ∀ x, |g x| ≤ G) :
    |∑ k ∈ Finset.Icc 2 (integerCutoff A), Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
      (f (t + Real.log k) - (1 / 2 : ℝ) * g (t + Real.log k))| ≤
      weightMass A * (F + G / 2) := by
  calc
    _ ≤ ∑ k ∈ Finset.Icc 2 (integerCutoff A),
        |Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
          (f (t + Real.log k) - (1 / 2 : ℝ) * g (t + Real.log k))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ k ∈ Finset.Icc 2 (integerCutoff A),
        Real.log (k : ℝ) / Real.sqrt (k : ℝ) * (F + G / 2) := by
      apply Finset.sum_le_sum
      intro k hk
      exact weighted_difference_abs_le
        (literal_weight_nonneg (Finset.mem_Icc.mp hk).1) (hf _) (hg _)
    _ = _ := by rw [weightMass, Finset.sum_mul]

theorem correlation_first_abs_le {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    |deriv (correlation A) t| ≤ 5 / A := by
  rw [correlation_eq_native (by linarith : 0 < A)]
  exact SourceCorrelationEnergy.sourceCorrelation_deriv_abs_le_five_div hA t

theorem correlation_second_abs_le {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    |deriv (deriv (correlation A)) t| ≤ 162826 / (7623 * A ^ 2) := by
  rw [correlation_eq_native (by linarith : 0 < A)]
  exact SourceCorrelationCurvature.sourceCorrelation_second_deriv_abs_le_coefficient hA t

theorem polarity_kernel_hasDerivAt {A : ℝ} (hA : 0 < A) (t : ℝ) :
    HasDerivAt (polarityKernel A)
      (∑ k ∈ Finset.Icc 2 (integerCutoff A), Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
        (deriv (deriv (deriv (correlation A))) (t + Real.log k) -
          (1 / 2 : ℝ) * deriv (deriv (correlation A)) (t + Real.log k))) t := by
  unfold polarityKernel
  apply HasDerivAt.fun_sum
  intro k _hk
  have shift := (hasDerivAt_id t).add_const (Real.log (k : ℝ))
  have first := ((correlation_first_contDiff_three hA).differentiable (by norm_num)
    (t + Real.log k)).hasDerivAt
  have second := ((correlation_second_contDiff_two hA).differentiable (by norm_num)
    (t + Real.log k)).hasDerivAt
  convert!
    ((second.comp t shift).sub ((first.comp t shift).const_mul (1 / 2 : ℝ))).const_mul
      (Real.log (k : ℝ) / Real.sqrt (k : ℝ)) using 1
  simp only [mul_one]

theorem polarity_kernel_deriv_eq {A : ℝ} (hA : 0 < A) :
    deriv (polarityKernel A) = fun t ↦
      ∑ k ∈ Finset.Icc 2 (integerCutoff A), Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
        (deriv (deriv (deriv (correlation A))) (t + Real.log k) -
          (1 / 2 : ℝ) * deriv (deriv (correlation A)) (t + Real.log k)) :=
  funext (fun t ↦ (polarity_kernel_hasDerivAt hA t).deriv)

theorem polarity_kernel_first_hasDerivAt {A : ℝ} (hA : 0 < A) (t : ℝ) :
    HasDerivAt (deriv (polarityKernel A))
      (∑ k ∈ Finset.Icc 2 (integerCutoff A), Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
        (deriv (deriv (deriv (deriv (correlation A)))) (t + Real.log k) -
          (1 / 2 : ℝ) * deriv (deriv (deriv (correlation A))) (t + Real.log k))) t := by
  rw [polarity_kernel_deriv_eq hA]
  apply HasDerivAt.fun_sum
  intro k _hk
  have shift := (hasDerivAt_id t).add_const (Real.log (k : ℝ))
  have second := ((correlation_second_contDiff_two hA).differentiable (by norm_num)
    (t + Real.log k)).hasDerivAt
  have third := ((correlation_third_contDiff_one hA).differentiable (by norm_num)
    (t + Real.log k)).hasDerivAt
  convert!
    ((third.comp t shift).sub ((second.comp t shift).const_mul (1 / 2 : ℝ))).const_mul
      (Real.log (k : ℝ) / Real.sqrt (k : ℝ)) using 1
  simp only [mul_one]

theorem polarity_kernel_second_deriv_eq {A : ℝ} (hA : 0 < A) :
    deriv (deriv (polarityKernel A)) = fun t ↦
      ∑ k ∈ Finset.Icc 2 (integerCutoff A), Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
        (deriv (deriv (deriv (deriv (correlation A)))) (t + Real.log k) -
          (1 / 2 : ℝ) * deriv (deriv (deriv (correlation A))) (t + Real.log k)) :=
  funext (fun t ↦ (polarity_kernel_first_hasDerivAt hA t).deriv)

theorem polarity_kernel_abs_price {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    |polarityKernel A t| ≤ weightMass A *
      (162826 / (7623 * A ^ 2) + (5 / A) / 2) := by
  exact finite_shifted_price A t _ _ _ _
    (correlation_second_abs_le hA) (correlation_first_abs_le hA)

theorem polarity_kernel_first_abs_price {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    |deriv (polarityKernel A) t| ≤ weightMass A *
      (132 / A ^ 3 + (162826 / (7623 * A ^ 2)) / 2) := by
  rw [polarity_kernel_deriv_eq (by linarith : 0 < A)]
  exact finite_shifted_price A t _ _ _ _
    (correlation_third_deriv_abs_le hA) (correlation_second_abs_le hA)

theorem polarity_kernel_second_abs_price {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    |deriv (deriv (polarityKernel A)) t| ≤ weightMass A *
      (815 / A ^ 4 + (132 / A ^ 3) / 2) := by
  rw [polarity_kernel_second_deriv_eq (by linarith : 0 < A)]
  exact finite_shifted_price A t _ _ _ _
    (correlation_fourth_deriv_abs_le hA) (correlation_third_deriv_abs_le hA)

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.KernelDerivativePrice
