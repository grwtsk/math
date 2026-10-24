# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant651b7985dd5eadcb4d1cb67cfad97e31d92e04d7a0747d6914116698fca4cf09

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43a92e773c9aa7501c1fee3f3a69032de99e66b6` · SHA-256 `651b7985dd5eadcb4d1cb67cfad97e31d92e04d7a0747d6914116698fca4cf09`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceRieszFilter
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral

/-!
# Exact real Laplace response of the actual source filters

Each of the nine source filters annihilates the zeroth and first smooth
exponential moments at rate one half. Its real Laplace response is strictly
positive at every other positive rate. These are exact analytic facts about
the source filters, not estimates for the discrepancy of actual primes.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateSourceFilterMoments

open MeasureTheory Set
open EstimateSourceRieszFilter

noncomputable section

/-- Every natural monomial is integrable against a positive exponential decay rate. -/
theorem monomial_laplace_integrable (k : ℕ) (b : ℝ) (hb : 0 < b) :
    IntegrableOn (fun u : ℝ ↦ u ^ k * Real.exp (-(b * u))) (Ioi 0) := by
  simpa only [Real.rpow_natCast, Real.rpow_one, neg_mul] using
    integrableOn_rpow_mul_exp_neg_mul_rpow
      (p := 1) (s := (k : ℝ)) (b := b) (by linarith [Nat.cast_nonneg (α := ℝ) k]) (by norm_num) hb

/-- The actual half-line monomial integral, derived from the Gamma integral. -/
theorem monomial_laplace_integral (k : ℕ) (b : ℝ) (hb : 0 < b) :
    (∫ u : ℝ in Ioi 0, u ^ k * Real.exp (-(b * u))) =
      (Nat.factorial k : ℝ) / b ^ (k + 1) := by
  have h := Real.integral_rpow_mul_exp_neg_mul_Ioi
    (a := (k : ℝ) + 1) (r := b) (by positivity) hb
  simp only [add_sub_cancel_right, Real.rpow_natCast] at h
  rw [h, Real.Gamma_nat_eq_factorial]
  have hc : (k : ℝ) + 1 = ((k + 1 : ℕ) : ℝ) := by norm_cast
  rw [hc, Real.rpow_natCast, div_pow, one_pow]
  ring

/-- Polynomially weighted filters are genuinely integrable; no formal transform
or cancellation of divergent integrals is used. -/
theorem filter_weighted_laplace_integrable (j q : ℕ) (b : ℝ) (hb : 0 < b) :
    IntegrableOn (fun u : ℝ ↦ u ^ q * Real.exp (-(b * u)) * monomialFilter j u)
      (Ioi 0) := by
  have h0 := (monomial_laplace_integrable (q + j) b hb).const_mul (1 / 16 : ℝ)
  have h2 := (monomial_laplace_integrable (q + (j - 2)) b hb).const_mul
    (((j * (j - 1) : ℕ) : ℝ) / 2)
  have h4 := (monomial_laplace_integrable (q + (j - 4)) b hb).const_mul
    ((j * (j - 1) * (j - 2) * (j - 3) : ℕ) : ℝ)
  apply ((h0.sub h2).add h4).congr
  filter_upwards with u
  simp only [Pi.add_apply, Pi.sub_apply, monomialFilter, pow_add]
  ring

/-- Exact finite linear combination of convergent monomial integrals. -/
theorem filter_weighted_laplace_integral (j q : ℕ) (b : ℝ) (hb : 0 < b) :
    (∫ u : ℝ in Ioi 0, u ^ q * Real.exp (-(b * u)) * monomialFilter j u) =
      (1 / 16 : ℝ) * (Nat.factorial (q + j) : ℝ) / b ^ (q + j + 1) -
        ((j * (j - 1) : ℕ) : ℝ) / 2 * (Nat.factorial (q + (j - 2)) : ℝ) /
          b ^ (q + (j - 2) + 1) +
        ((j * (j - 1) * (j - 2) * (j - 3) : ℕ) : ℝ) *
          (Nat.factorial (q + (j - 4)) : ℝ) / b ^ (q + (j - 4) + 1) := by
  have h0 := (monomial_laplace_integrable (q + j) b hb).const_mul (1 / 16 : ℝ)
  have h2 := (monomial_laplace_integrable (q + (j - 2)) b hb).const_mul
    (((j * (j - 1) : ℕ) : ℝ) / 2)
  have h4 := (monomial_laplace_integrable (q + (j - 4)) b hb).const_mul
    ((j * (j - 1) * (j - 2) * (j - 3) : ℕ) : ℝ)
  have heq : (fun u : ℝ ↦ u ^ q * Real.exp (-(b * u)) * monomialFilter j u) =
      (fun u ↦ (1 / 16 : ℝ) * (u ^ (q + j) * Real.exp (-(b * u))) -
        (((j * (j - 1) : ℕ) : ℝ) / 2) *
          (u ^ (q + (j - 2)) * Real.exp (-(b * u))) +
        ((j * (j - 1) * (j - 2) * (j - 3) : ℕ) : ℝ) *
          (u ^ (q + (j - 4)) * Real.exp (-(b * u)))) := by
    funext u
    simp only [monomialFilter, pow_add]
    ring
  have hs : IntegrableOn (fun u : ℝ ↦
      (1 / 16 : ℝ) * (u ^ (q + j) * Real.exp (-(b * u))) -
        (((j * (j - 1) : ℕ) : ℝ) / 2) *
          (u ^ (q + (j - 2)) * Real.exp (-(b * u)))) (Ioi 0) := h0.sub h2
  rw [heq, integral_add hs h4, integral_sub h0 h2]
  simp only [integral_const_mul, monomial_laplace_integral _ _ hb]
  ring

/-- The exact real Laplace response retains the double annihilation factor. -/
theorem filter_laplace_transform (j : ℕ) (hj : j ∈ Finset.Icc 9 17)
    (b : ℝ) (hb : 0 < b) :
    (∫ u : ℝ in Ioi 0, Real.exp (-(b * u)) * monomialFilter j u) =
      (Nat.factorial j : ℝ) * (b ^ 2 - 1 / 4) ^ 2 / b ^ (j + 1) := by
  have h := filter_weighted_laplace_integral j 0 b hb
  simp only [pow_zero, one_mul, Nat.zero_add] at h
  rw [h]
  have hn : b ≠ 0 := ne_of_gt hb
  obtain ⟨hlo, hhi⟩ := Finset.mem_Icc.mp hj
  interval_cases j <;> norm_num [Nat.factorial] <;> field_simp <;> ring

/-- The unweighted filter transform is a convergent integral at every positive real rate. -/
theorem filter_laplace_integrable (j : ℕ) (b : ℝ) (hb : 0 < b) :
    IntegrableOn (fun u : ℝ ↦ Real.exp (-(b * u)) * monomialFilter j u) (Ioi 0) := by
  simpa only [pow_zero, one_mul] using filter_weighted_laplace_integrable j 0 b hb

/-- The first weighted smooth moment is also genuinely integrable. -/
theorem filter_first_moment_integrable (j : ℕ) :
    IntegrableOn (fun u : ℝ ↦ u * Real.exp (-(u / 2)) * monomialFilter j u) (Ioi 0) := by
  simpa only [pow_one, one_div_mul_eq_div] using
    filter_weighted_laplace_integrable j 1 (1 / 2) (by norm_num)

/-- Each source filter annihilates the zeroth smooth exponential moment. -/
theorem filter_zeroth_moment_zero (j : ℕ) (hj : j ∈ Finset.Icc 9 17) :
    (∫ u : ℝ in Ioi 0, Real.exp (-(u / 2)) * monomialFilter j u) = 0 := by
  have h := filter_laplace_transform j hj (1 / 2) (by norm_num)
  norm_num at h
  simpa only [one_div_mul_eq_div] using h

/-- Each source filter annihilates the first smooth exponential moment. -/
theorem filter_first_moment_zero (j : ℕ) (hj : j ∈ Finset.Icc 9 17) :
    (∫ u : ℝ in Ioi 0, u * Real.exp (-(u / 2)) * monomialFilter j u) = 0 := by
  have h := filter_weighted_laplace_integral j 1 (1 / 2) (by norm_num)
  simp only [pow_one, one_div_mul_eq_div] at h
  rw [h]
  obtain ⟨hlo, hhi⟩ := Finset.mem_Icc.mp hj
  interval_cases j <;> norm_num [Nat.factorial]

/-- Smooth-mode annihilation does not kill any other positive real exponential
rate. This is a filter obstruction, not a claim that primes realize such a mode. -/
theorem filter_laplace_transform_pos (j : ℕ) (hj : j ∈ Finset.Icc 9 17)
    (b : ℝ) (hb : 0 < b) (hne : b ≠ 1 / 2) :
    0 < ∫ u : ℝ in Ioi 0, Real.exp (-(b * u)) * monomialFilter j u := by
  rw [filter_laplace_transform j hj b hb]
  have hs : b ^ 2 - 1 / 4 ≠ 0 := by
    intro hz
    apply hne
    nlinarith
  exact div_pos (mul_pos (by positivity) (sq_pos_of_ne_zero hs)) (pow_pos hb _)

end
end EstimateSourceFilterMoments
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
