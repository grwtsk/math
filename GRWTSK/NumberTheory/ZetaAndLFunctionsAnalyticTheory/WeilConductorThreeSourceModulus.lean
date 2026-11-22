/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeGammaRemainder

/-!
# A continuity modulus for the complete conductor-three source

The original infinite gamma integral has a source-exact continuity modulus.
Finite gamma heads provide upper bounds for that modulus, rather than changing
the target kernel. The unchanged signed arithmetic hinges and gamma constant
contribute their already proved finite Lipschitz price.

The complete gamma term is integrated over every positive lag. Its minimum
kernel controls increments by `min |s-t| r`; a separate head/tail argument
also pays only one copy of the signed remainder width. These are pointwise
approximation estimates, not assertions of quadratic-form positivity.
-/

set_option autoImplicit false
noncomputable section
open Set MeasureTheory
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen

open OddRootProjection

/-- The fixed complete-source modulus. Nonnegative arguments are the
distance inputs; the infinite gamma contribution is retained exactly. -/
def sourceContinuityModulus (δ : ℝ) : ℝ :=
  partialLipschitzConstant 0 * δ +
    ∫ r in Ioi (0 : ℝ), gammaRemainder 0 r * min |δ| r

private theorem gammaRemainder_zero_eq_parityKernel (r : ℝ) :
    gammaRemainder 0 r = parityKernel 1 r := by
  norm_num [gammaRemainder, gammaTerm, gammaRate, parityKernel]

/-- The modulus uses the full original parity-one gamma kernel. -/
theorem sourceContinuityModulus_eq_gamma_min (δ : ℝ) :
    sourceContinuityModulus δ = partialLipschitzConstant 0 * δ +
      ∫ r in Ioi (0 : ℝ), parityKernel 1 r * min |δ| r := by
  simp_rw [sourceContinuityModulus, gammaRemainder_zero_eq_parityKernel]

/-- The real modulus is the restriction of the existing complex remainder
kernel to the displacement pair `(δ,0)`. -/
theorem sourceContinuityModulus_eq_integratedGammaRemainder (δ : ℝ) :
    sourceContinuityModulus δ = partialLipschitzConstant 0 * δ +
      (integratedGammaRemainder 0 δ 0).re := by
  simp only [sourceContinuityModulus, integratedGammaRemainder,
    sub_zero, Complex.ofReal_re]

theorem sourceContinuityModulus_nonneg {δ : ℝ} (hδ : 0 ≤ δ) :
    0 ≤ sourceContinuityModulus δ := by
  exact add_nonneg (mul_nonneg (partialLipschitzConstant_nonneg 0) hδ)
    (gammaRemainder_integral_bounds 0 δ).1

@[simp]
theorem sourceContinuityModulus_zero : sourceContinuityModulus 0 = 0 := by
  unfold sourceContinuityModulus
  simp only [mul_zero, zero_add, abs_zero]
  apply integral_eq_zero_of_ae
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
  have hr0 : (0 : ℝ) ≤ r := le_of_lt hr
  simp only [min_eq_left hr0, mul_zero, Pi.zero_apply]

/-- Monotonicity holds on the nonnegative distance domain. -/
theorem sourceContinuityModulus_mono {a b : ℝ} (ha : 0 ≤ a) (hab : a ≤ b) :
    sourceContinuityModulus a ≤ sourceContinuityModulus b := by
  have hb : 0 ≤ b := ha.trans hab
  apply add_le_add
    (mul_le_mul_of_nonneg_left hab (partialLipschitzConstant_nonneg 0))
  apply integral_mono_ae (gammaRemainder_integrable 0 a)
    (gammaRemainder_integrable 0 b)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
  rw [abs_of_nonneg ha, abs_of_nonneg hb]
  exact mul_le_mul_of_nonneg_left (min_le_min_right r hab)
    (gammaRemainder_nonneg 0 hr)

private theorem abs_min_abs_sub_min_abs_le (s t : ℝ) {r : ℝ} (hr : 0 ≤ r) :
    |min |s| r - min |t| r| ≤ min |s - t| r := by
  apply le_min
  · calc
      _ ≤ max |(|s| - |t|)| |r - r| := abs_min_sub_min_le_max _ _ _ _
      _ = |(|s| - |t|)| := by simp
      _ ≤ |s - t| := abs_abs_sub_abs_le s t
  · rw [abs_le]
    have hs0 : 0 ≤ min |s| r := le_min (abs_nonneg s) hr
    have ht0 : 0 ≤ min |t| r := le_min (abs_nonneg t) hr
    have hsr : min |s| r ≤ r := min_le_right _ _
    have htr : min |t| r ≤ r := min_le_right _ _
    constructor <;> linarith

private theorem gamma_integral_increment_le (s t : ℝ) :
    |(∫ r in Ioi (0 : ℝ), gammaRemainder 0 r * min |s| r) -
      (∫ r in Ioi (0 : ℝ), gammaRemainder 0 r * min |t| r)| ≤
      ∫ r in Ioi (0 : ℝ), gammaRemainder 0 r * min |s - t| r := by
  have hs := gammaRemainder_integrable 0 s
  have ht := gammaRemainder_integrable 0 t
  rw [← integral_sub hs ht]
  apply abs_integral_le_integral_abs.trans
  apply integral_mono_ae (hs.sub ht).abs (gammaRemainder_integrable 0 (s - t))
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
  simp only [Pi.sub_apply]
  rw [← mul_sub, abs_mul, abs_of_nonneg (gammaRemainder_nonneg 0 hr)]
  exact mul_le_mul_of_nonneg_left (abs_min_abs_sub_min_abs_le s t hr.le)
    (gammaRemainder_nonneg 0 hr)

/-- The original full source has a fixed modulus independent of the
auxiliary gamma cutoff used to compute an enclosure. -/
theorem abs_sourceKernel_sub_le_modulus (s t : ℝ) :
    |sourceKernel s - sourceKernel t| ≤ sourceContinuityModulus |s - t| := by
  have hs := sourceKernel_sub_partial_eq 0 s
  have ht := sourceKernel_sub_partial_eq 0 t
  have hg := gamma_integral_increment_le s t
  have hp := abs_partialSourceKernel_sub_le 0 s t
  have heq : sourceKernel s - sourceKernel t =
      (partialSourceKernel 0 s - partialSourceKernel 0 t) -
        ((∫ r in Ioi (0 : ℝ), gammaRemainder 0 r * min |s| r) -
          (∫ r in Ioi (0 : ℝ), gammaRemainder 0 r * min |t| r)) := by
    linarith
  rw [heq, sourceContinuityModulus, abs_abs]
  exact (abs_sub _ _).trans (add_le_add hp hg)

private theorem gamma_head_term_le {δ : ℝ} (hδ : 0 ≤ δ) (m : ℕ) :
    (1 - Real.exp (-gammaRate m * |δ|)) / gammaRate m ^ 2 ≤
      (gammaRate m)⁻¹ * δ := by
  have ha := gammaRate_pos m
  have he : 1 - Real.exp (-gammaRate m * |δ|) ≤ gammaRate m * δ := by
    rw [abs_of_nonneg hδ]
    linarith [Real.add_one_le_exp (-gammaRate m * δ)]
  calc
    _ ≤ (gammaRate m * δ) / gammaRate m ^ 2 :=
      div_le_div_of_nonneg_right he (sq_nonneg _)
    _ = (gammaRate m)⁻¹ * δ := by
      field_simp [ha.ne']

/-- Any finite gamma head supplies a certified upper price for the same
complete-source modulus. The entire remaining lag integral is bounded. -/
theorem sourceContinuityModulus_le (M : ℕ) {δ : ℝ} (hδ : 0 ≤ δ) :
    sourceContinuityModulus δ ≤
      partialLipschitzConstant M * δ + truncationBudget M := by
  have hdecomp := gamma_min_integral_decomposition M δ
  simp_rw [← gammaRemainder_zero_eq_parityKernel] at hdecomp
  have hhead : (∑ m ∈ Finset.range M,
      (1 - Real.exp (-gammaRate m * |δ|)) / gammaRate m ^ 2) ≤
      (∑ m ∈ Finset.range M, (gammaRate m)⁻¹) * δ := by
    rw [Finset.sum_mul]
    exact Finset.sum_le_sum (fun m _ => gamma_head_term_le hδ m)
  have htail := (gammaRemainder_integral_bounds M δ).2
  have hL : partialLipschitzConstant M = partialLipschitzConstant 0 +
      ∑ m ∈ Finset.range M, (gammaRate m)⁻¹ := by
    simp only [partialLipschitzConstant, Finset.sum_range_zero, add_zero]
    ring
  rw [sourceContinuityModulus, hdecomp, hL]
  nlinarith

/-- An independent comparison uses the signed remainder interval directly.
Two remainder values in `[-truncationBudget M,0]` differ by at most one
interval width, rather than twice the absolute error allowance. -/
theorem abs_sourceKernel_sub_le_head_tail (M : ℕ) (s t : ℝ) :
    |sourceKernel s - sourceKernel t| ≤
      partialLipschitzConstant M * |s - t| + truncationBudget M := by
  have hs := sourceKernel_sub_partial_bounds M s
  have ht := sourceKernel_sub_partial_bounds M t
  have hr : |(sourceKernel s - partialSourceKernel M s) -
      (sourceKernel t - partialSourceKernel M t)| ≤ truncationBudget M := by
    rw [abs_le]
    constructor <;> linarith [hs.1, hs.2, ht.1, ht.2]
  have heq : sourceKernel s - sourceKernel t =
      (partialSourceKernel M s - partialSourceKernel M t) +
        ((sourceKernel s - partialSourceKernel M s) -
          (sourceKernel t - partialSourceKernel M t)) := by ring
  rw [heq]
  exact (abs_add_le _ _).trans (add_le_add (abs_partialSourceKernel_sub_le M s t) hr)

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
