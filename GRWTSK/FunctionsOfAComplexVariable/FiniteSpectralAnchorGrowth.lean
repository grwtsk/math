/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.FunctionsOfAComplexVariable.FiniteCanonicalProductBounds

/-!
# One-anchor growth control for actual finite spectral products

RP-OC-08, math issue #1805. Connect the normalized product to the genus-one
product exactly, then derive its entire-function upper bound from a single
logarithmic-derivative bound. No Montel theorem or arithmetic convergence is
assumed to have been proved. Source candidate; all Lean execution checks NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum

open FiniteCanonicalProduct
variable {ι : Type*} [Fintype ι]

/-- The slope in the genus-one factorization is the actual anchor logarithmic
 derivative. It is not the original exponential slope and cannot be omitted. -/
theorem normalizedExpProduct_eq_genusOne (λ : ι → ℝ) {β : ℝ}
    (hβ : β ≠ 0) (c z : ℂ) :
    normalizedExpProduct λ β c z =
      finiteProduct (fun j => ((λ j : ℂ) - anchor β)⁻¹) (anchor β)
        (logDeriv (normalizedExpProduct λ β c) (anchor β)) z := by
  classical
  have hlin (j : ι) :
      1 - (z - anchor β) * ((λ j : ℂ) - anchor β)⁻¹ =
        (z - (λ j : ℂ)) * (anchor β - (λ j : ℂ))⁻¹ := by
    have hleft := sub_ofReal_ne_zero (z := anchor β) (by simpa using hβ) (λ j)
    have hright : (λ j : ℂ) - anchor β ≠ 0 := sub_ne_zero.mpr
      (Ne.symm (sub_ne_zero.mp hleft))
    field_simp [hleft, hright] <;> ring
  have hsum : (∑ j, (z - anchor β) * ((λ j : ℂ) - anchor β)⁻¹) =
      -(z - anchor β) * ∑ j, (anchor β - (λ j : ℂ))⁻¹ := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j _
    have hdiff : (λ j : ℂ) - anchor β = -(anchor β - (λ j : ℂ)) := by ring
    rw [hdiff, inv_neg]
    ring
  have hratio : (∏ j, (z - (λ j : ℂ)) * (anchor β - (λ j : ℂ))⁻¹) =
      normalizedProduct λ β z := by
    simp only [normalizedProduct, rootProduct, Finset.prod_mul_distrib,
      Finset.prod_inv_distrib]
  symm
  unfold finiteProduct
  simp_rw [elementaryFactor, hlin]
  rw [Finset.prod_mul_distrib, ← Complex.exp_sum, hsum, hratio,
    logDeriv_normalizedExpProduct λ hβ c (by simpa using hβ)]
  rw [mul_left_comm _ (normalizedProduct λ β z), ← Complex.exp_add]
  have hexponent :
      (c + ∑ j, (anchor β - (λ j : ℂ))⁻¹) * (z - anchor β) +
        (-(z - anchor β) * ∑ j, (anchor β - (λ j : ℂ))⁻¹) =
          c * (z - anchor β) := by ring
  rw [hexponent]
  change normalizedProduct λ β z * Complex.exp (c * (z - anchor β)) =
    Complex.exp (c * (z - anchor β)) * normalizedProduct λ β z
  exact mul_comm _ _

/-- One anchor controls the whole finite product when the original slope is real.
The bound has no dimension factor and retains the exact anchor height. -/
theorem norm_le_of_anchor_bound (λ : ι → ℝ) {β M : ℝ}
    (hβ : 0 < β) (r : ℝ)
    (hM : ‖logDeriv (normalizedExpProduct λ β (r : ℂ)) (anchor β)‖ ≤ M)
    (z : ℂ) :
    ‖normalizedExpProduct λ β (r : ℂ) z‖ ≤
      Real.exp (M * ‖z - anchor β‖ + (‖z - anchor β‖ ^ 2 / 2) * (M / β)) := by
  have hmass := anchorMass_le_of_logDeriv_bound λ hβ r hM
  have hbound := norm_resolventProduct_le λ β
    (logDeriv (normalizedExpProduct λ β (r : ℂ)) (anchor β)) z
  rw [← normalizedExpProduct_eq_genusOne λ hβ.ne' (r : ℂ) z] at hbound
  apply hbound.trans
  apply Real.exp_le_exp.mpr
  exact add_le_add
    (mul_le_mul_of_nonneg_right hM (norm_nonneg _))
    (mul_le_mul_of_nonneg_left hmass (div_nonneg (sq_nonneg _) (by norm_num)))

/-- A uniform bound on every prescribed closed ball, suitable for a later
normal-family theorem. This declaration does not assert subsequence existence. -/
theorem norm_le_on_ball_of_anchor_bound (λ : ι → ℝ) {β M R : ℝ}
    (hβ : 0 < β) (r : ℝ)
    (hM : ‖logDeriv (normalizedExpProduct λ β (r : ℂ)) (anchor β)‖ ≤ M)
    {z : ℂ} (hz : ‖z - anchor β‖ ≤ R) :
    ‖normalizedExpProduct λ β (r : ℂ) z‖ ≤
      Real.exp (M * R + (R ^ 2 / 2) * (M / β)) := by
  have hM0 : 0 ≤ M := (norm_nonneg _).trans hM
  have hR : 0 ≤ R := (norm_nonneg _).trans hz
  have hsq : ‖z - anchor β‖ ^ 2 / 2 ≤ R ^ 2 / 2 := by
    nlinarith [norm_nonneg (z - anchor β)]
  apply (norm_le_of_anchor_bound λ hβ r hM z).trans
  apply Real.exp_le_exp.mpr
  exact add_le_add (mul_le_mul_of_nonneg_left hz hM0)
    (mul_le_mul_of_nonneg_right hsq (div_nonneg hM0 hβ.le))

end GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum
