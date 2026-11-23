/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic

/-! Finite filters for the Gaussian arithmetic wave sampled on one translation lattice. -/
namespace GRWTSK.XiLatticeWaveSampling

open Complex
open scoped ComplexConjugate

/-- Reciprocal-root quadratic, expressed using its real coefficients. -/
theorem reciprocal_factor (u w : ℂ) :
    1 - (↑(2 * u.re) : ℂ) * w + (↑(normSq u) : ℂ) * w^2 =
      (1-u*w)*(1-conj u*w) := by
  rw [← Complex.add_conj, ← Complex.mul_conj]
  ring

/-- Substitution by a positive power cancels both members of a conjugate pair. -/
theorem reciprocal_power_zero {z : ℂ} (hz : z ≠ 0) (m : ℕ) :
    1 - (↑(2 * ((z^m)⁻¹).re) : ℂ) * z^m +
      (↑(normSq ((z^m)⁻¹)) : ℂ) * (z^m)^2 = 0 := by
  rw [reciprocal_factor, inv_mul_cancel₀ (pow_ne_zero m hz)]
  simp

theorem filter_coefficients {u : ℂ} (h : u.re ≤ 0) :
    0 ≤ -(2*u.re) ∧ 0 ≤ normSq u ∧
      1 - 2*u.re + normSq u ≤ (1 + ‖u‖)^2 := by
  refine ⟨by linarith, normSq_nonneg _, ?_⟩
  rw [normSq_eq_norm_sq]
  have hh := (abs_le.mp (Complex.abs_re_le_norm u)).1
  nlinarith

/-- A positive filter with constant coefficient one turns upper bounds on subsequent
samples and a bound on the filtered residual into a lower bound on the first sample. -/
theorem lower_of_positive_filter {ι : Type*} (indices : Finset ι)
    (weight sample upper : ι → ℝ) (first error : ℝ)
    (hweight : ∀ i ∈ indices, 0 ≤ weight i)
    (hupper : ∀ i ∈ indices, sample i ≤ upper i)
    (herror : -error ≤ first + ∑ i ∈ indices, weight i * sample i) :
    -error - ∑ i ∈ indices, weight i * upper i ≤ first := by
  have hs := Finset.sum_le_sum (s := indices) (fun i hi =>
    mul_le_mul_of_nonneg_left (hupper i hi) (hweight i hi))
  linarith

/-- The lower bound at a distinguished node controls the coefficient cost of
normalizing an interpolation product that vanishes on its finite complement. -/
theorem anchor_product_bound {ι : Type*} (nodes : Finset ι) (z : ι → ℂ)
    (anchor : ℂ) {δ : ℝ} (hδ : 0 ≤ δ)
    (hgap : ∀ i ∈ nodes, δ ≤ ‖anchor - z i‖) :
    δ ^ nodes.card ≤ ‖∏ i ∈ nodes, (anchor - z i)‖ := by
  rw [norm_prod]
  simpa using Finset.prod_le_prod₀ (fun (_ : ι) _ => hδ) hgap

/-- In the two-temperature reconstruction the quotient of atom masses removes the
multiplicity and determines the unwrapped squared ordinate. -/
theorem recover_square {mass t u x : ℝ} (hm : mass ≠ 0) (ht : t ≠ u) :
    Real.log ((mass * Real.exp (-t*x^2))/(mass * Real.exp (-u*x^2))) /
        (u-t) = x^2 := by
  rw [mul_div_mul_left _ _ hm, ← Real.exp_sub, Real.log_exp]
  field_simp [sub_ne_zero.mpr (Ne.symm ht)]
  ring

end GRWTSK.XiLatticeWaveSampling
