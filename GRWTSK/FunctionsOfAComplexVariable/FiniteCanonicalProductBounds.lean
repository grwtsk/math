/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrumAnchor

/-!
# Quadratic growth bounds for finite genus-one canonical products

The elementary inequality `‖(1 - u) * exp u‖ ≤ exp (‖u‖² / 2)` converts a
reciprocal-square spectral-mass bound into a uniform entire-function growth
bound. This is the finite-product estimate in the RP-OC-08 reconstruction
argument. It neither proves an arithmetic mass bound nor identifies the
product with a matrix regularized determinant without a separate spectral
comparison theorem.

These are standard analytic estimates, not a novelty claim. Source provenance
and remaining obligations are recorded in math issue #1805 and alongside this
module. Elaboration, fresh kernel replay, and transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false

noncomputable section

open scoped BigOperators

namespace GRWTSK.FunctionsOfAComplexVariable.FiniteCanonicalProduct

open FiniteRealSpectrum

/-- Genus-one elementary factor. -/
def elementaryFactor (u : ℂ) : ℂ := (1 - u) * Complex.exp u

/-- The elementary quadratic bound used in the regularized-product estimate. -/
theorem norm_elementaryFactor_le (u : ℂ) :
    ‖elementaryFactor u‖ ≤ Real.exp (‖u‖ ^ 2 / 2) := by
  have hbase : ‖1 - u‖ ^ 2 ≤ Real.exp (-2 * u.re + ‖u‖ ^ 2) := by
    calc
      ‖1 - u‖ ^ 2 = (-2 * u.re + ‖u‖ ^ 2) + 1 := by
        simp only [Complex.sq_norm, Complex.normSq_apply, Complex.sub_re,
          Complex.sub_im, Complex.one_re, Complex.one_im]
        ring
      _ ≤ Real.exp (-2 * u.re + ‖u‖ ^ 2) := Real.add_one_le_exp _
  have hexp (x : ℝ) : (Real.exp x) ^ 2 = Real.exp (2 * x) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have hsq : ‖elementaryFactor u‖ ^ 2 ≤ (Real.exp (‖u‖ ^ 2 / 2)) ^ 2 := by
    calc
      ‖elementaryFactor u‖ ^ 2 = ‖1 - u‖ ^ 2 * Real.exp (2 * u.re) := by
        rw [elementaryFactor, norm_mul, mul_pow, Complex.norm_exp, hexp]
      _ ≤ Real.exp (-2 * u.re + ‖u‖ ^ 2) * Real.exp (2 * u.re) :=
        mul_le_mul_of_nonneg_right hbase (Real.exp_pos _).le
      _ = Real.exp (‖u‖ ^ 2) := by
        rw [← Real.exp_add]
        congr 1
        ring
      _ = (Real.exp (‖u‖ ^ 2 / 2)) ^ 2 := by
        rw [hexp]
        congr 1
        ring
  have hleft := norm_nonneg (elementaryFactor u)
  have hright := Real.exp_pos (‖u‖ ^ 2 / 2)
  nlinarith

variable {ι : Type*} [Fintype ι]

/-- A finite anchored genus-one product with a specified exponential slope. -/
def finiteProduct (v : ι → ℂ) (a c z : ℂ) : ℂ :=
  Complex.exp (c * (z - a)) * ∏ j, elementaryFactor ((z - a) * v j)

@[simp] theorem finiteProduct_anchor (v : ι → ℂ) (a c : ℂ) :
    finiteProduct v a c a = 1 := by
  simp [finiteProduct, elementaryFactor]

/-- Dimension-free bound in terms of the square sum of the finite spectral parameters. -/
theorem norm_finiteProduct_le (v : ι → ℂ) (a c z : ℂ) :
    ‖finiteProduct v a c z‖ ≤
      Real.exp (‖c‖ * ‖z - a‖ + (‖z - a‖ ^ 2 / 2) * ∑ j, ‖v j‖ ^ 2) := by
  classical
  have hprod : ‖∏ j, elementaryFactor ((z - a) * v j)‖ ≤
      ∏ j, Real.exp (‖(z - a) * v j‖ ^ 2 / 2) := by
    rw [Complex.norm_prod]
    exact Finset.prod_le_prod (fun j _ => norm_nonneg _)
      (fun j _ => norm_elementaryFactor_le _)
  have hsum : (∑ j, ‖(z - a) * v j‖ ^ 2 / 2) =
      (‖z - a‖ ^ 2 / 2) * ∑ j, ‖v j‖ ^ 2 := by
    simp_rw [norm_mul, mul_pow]
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j _
    ring
  have hslope : Real.exp ((c * (z - a)).re) ≤ Real.exp (‖c‖ * ‖z - a‖) := by
    apply Real.exp_le_exp.mpr
    simpa only [norm_mul] using Complex.re_le_norm (c * (z - a))
  rw [finiteProduct, norm_mul, Complex.norm_exp]
  calc
    Real.exp ((c * (z - a)).re) * ‖∏ j, elementaryFactor ((z - a) * v j)‖ ≤
        Real.exp (‖c‖ * ‖z - a‖) *
          ∏ j, Real.exp (‖(z - a) * v j‖ ^ 2 / 2) :=
      mul_le_mul hslope hprod (norm_nonneg _) (Real.exp_pos _).le
    _ = _ := by rw [← Real.exp_sum, hsum, ← Real.exp_add]

/-- For a real finite spectrum the square sum is exactly the anchor mass. -/
theorem resolvent_square_sum_eq_anchorMass (λ : ι → ℝ) (β : ℝ) :
    (∑ j, ‖((λ j : ℂ) - anchor β)⁻¹‖ ^ 2) = anchorMass λ β := by
  unfold anchorMass
  apply Finset.sum_congr rfl
  intro j _
  rw [Complex.sq_norm, Complex.normSq_inv]
  simp [anchor, Complex.normSq_apply, pow_two]

/-- The finite resolvent-product growth estimate, with multiplicities retained. -/
theorem norm_resolventProduct_le (λ : ι → ℝ) (β : ℝ) (c z : ℂ) :
    ‖finiteProduct (fun j => ((λ j : ℂ) - anchor β)⁻¹) (anchor β) c z‖ ≤
      Real.exp (‖c‖ * ‖z - anchor β‖ +
        (‖z - anchor β‖ ^ 2 / 2) * anchorMass λ β) := by
  simpa only [resolvent_square_sum_eq_anchorMass] using
    norm_finiteProduct_le (fun j => ((λ j : ℂ) - anchor β)⁻¹) (anchor β) c z

end GRWTSK.FunctionsOfAComplexVariable.FiniteCanonicalProduct
