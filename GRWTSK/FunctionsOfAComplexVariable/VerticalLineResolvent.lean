/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

set_option autoImplicit false

noncomputable section

/-!
# Resolvents of finite positive measures on a vertical line

For rho.re = sigma, the real part of (z - rho)^(-1) is
(z.re - sigma) / normSq (z - rho). A positive weighted sum has the same
strict sign as z.re - sigma, provided some retained weight is positive.
This yields a zero-free resolvent and the explicit distance bound
norm R(z) <= sum |w_i| / delta outside a delta-neighborhood of the line.

The primary argument is the exact real-part formula followed by positivity;
the independent norm estimate uses the triangle inequality and geometric
separation. Indices, rather than distinct root values, are summed, so repeated
roots and their multiplicities are not discarded. Empty support and zero
weights do not justify strict positivity. The consumer is finite-product
logarithmic differentiation in VerticalLineProducts, then actual RH/GRH zeros.

These are classical finite Cauchy-transform identities, not a new analytic
number-theory estimate or a statement about an infinite zero sum. The sign
requires nonnegative real weights. Independent analytic review and novelty
beyond this formulation: not assessed. AI-assisted source formalization.
Upstream source: Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Compilation, fresh kernel checking, transitive axiom audit: NOT_RUN.
-/

namespace GRWTSK.Analysis.VerticalLine

open scoped BigOperators

variable {ι : Type*} {σ : ℝ} {z ρ : ℂ}

/-- Real-part separation is already sufficient to exclude a pole. -/
theorem sub_ne_zero (hρ : ρ.re = σ) (hz : z.re ≠ σ) : z - ρ ≠ 0 := by
  intro h
  exact hz ((congrArg Complex.re (sub_eq_zero.mp h)).trans hρ)

/-- Exact squared distance, including the ordinate difference. -/
theorem normSq_sub (hρ : ρ.re = σ) :
    Complex.normSq (z - ρ) = (z.re - σ) ^ 2 + (z.im - ρ.im) ^ 2 := by
  change (z.re - ρ.re) * (z.re - ρ.re) + (z.im - ρ.im) * (z.im - ρ.im) = _
  rw [hρ]
  ring

theorem distance_lower_bound (hρ : ρ.re = σ) : |z.re - σ| ≤ ‖z - ρ‖ := by
  simpa only [Complex.sub_re, hρ] using Complex.abs_re_le_norm (z - ρ)

/-- The full Poisson-kernel denominator is retained, not replaced by a heuristic. -/
theorem inverse_re (hρ : ρ.re = σ) :
    ((z - ρ)⁻¹).re =
      (z.re - σ) / ((z.re - σ) ^ 2 + (z.im - ρ.im) ^ 2) := by
  rw [Complex.inv_re, Complex.sub_re, hρ, normSq_sub hρ]

theorem inverse_norm_le {δ : ℝ} (hδ : 0 < δ) (hρ : ρ.re = σ)
    (hz : δ ≤ |z.re - σ|) : ‖(z - ρ)⁻¹‖ ≤ δ⁻¹ := by
  rw [norm_inv]
  simpa only [one_div] using
    one_div_le_one_div_of_le hδ (hz.trans (distance_lower_bound hρ))

/-- A finite Cauchy transform; the index map need not be injective. -/
def resolvent (s : Finset ι) (roots : ι → ℂ) (weight : ι → ℝ) (z : ℂ) : ℂ :=
  ∑ i ∈ s, (weight i : ℂ) * (z - roots i)⁻¹

theorem resolvent_re (s : Finset ι) (roots : ι → ℂ) (weight : ι → ℝ)
    (hline : ∀ i ∈ s, (roots i).re = σ) (z : ℂ) :
    (resolvent s roots weight z).re =
      (z.re - σ) * ∑ i ∈ s, weight i / Complex.normSq (z - roots i) := by
  simp only [resolvent, Complex.re_sum, Complex.mul_re, Complex.ofReal_re,
    Complex.ofReal_im, zero_mul, sub_zero, Complex.inv_re, Complex.sub_re]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i hi
  rw [hline i hi]
  ring

/-- Strictness comes from an actual positive-weight index, not nonempty notation. -/
theorem denominator_sum_pos (s : Finset ι) (roots : ι → ℂ) (weight : ι → ℝ)
    (hline : ∀ i ∈ s, (roots i).re = σ)
    (hw : ∀ i ∈ s, 0 ≤ weight i) (hpos : ∃ i ∈ s, 0 < weight i)
    {z : ℂ} (hz : z.re ≠ σ) :
    0 < ∑ i ∈ s, weight i / Complex.normSq (z - roots i) := by
  have hd : ∀ i ∈ s, 0 < Complex.normSq (z - roots i) := by
    intro i hi
    exact Complex.normSq_pos.mpr (sub_ne_zero (hline i hi) hz)
  obtain ⟨i, hi, hwi⟩ := hpos
  exact lt_of_lt_of_le (div_pos hwi (hd i hi))
    (Finset.single_le_sum (fun j hj => div_nonneg (hw j hj) (hd j hj).le) hi)

theorem resolvent_re_pos (s : Finset ι) (roots : ι → ℂ) (weight : ι → ℝ)
    (hline : ∀ i ∈ s, (roots i).re = σ)
    (hw : ∀ i ∈ s, 0 ≤ weight i) (hpos : ∃ i ∈ s, 0 < weight i)
    {z : ℂ} (hz : σ < z.re) : 0 < (resolvent s roots weight z).re := by
  rw [resolvent_re s roots weight hline]
  exact mul_pos (sub_pos.mpr hz)
    (denominator_sum_pos s roots weight hline hw hpos (ne_of_gt hz))

theorem resolvent_re_neg (s : Finset ι) (roots : ι → ℂ) (weight : ι → ℝ)
    (hline : ∀ i ∈ s, (roots i).re = σ)
    (hw : ∀ i ∈ s, 0 ≤ weight i) (hpos : ∃ i ∈ s, 0 < weight i)
    {z : ℂ} (hz : z.re < σ) : (resolvent s roots weight z).re < 0 := by
  rw [resolvent_re s roots weight hline]
  exact mul_neg_of_neg_of_pos (sub_neg.mpr hz)
    (denominator_sum_pos s roots weight hline hw hpos (ne_of_lt hz))

/-- A positive finite measure has no Cauchy-transform zero off its supporting line. -/
theorem resolvent_ne_zero (s : Finset ι) (roots : ι → ℂ) (weight : ι → ℝ)
    (hline : ∀ i ∈ s, (roots i).re = σ)
    (hw : ∀ i ∈ s, 0 ≤ weight i) (hpos : ∃ i ∈ s, 0 < weight i)
    {z : ℂ} (hz : z.re ≠ σ) : resolvent s roots weight z ≠ 0 := by
  intro hzero
  have hre : (resolvent s roots weight z).re = 0 := by rw [hzero]; rfl
  rcases lt_or_gt_of_ne hz with hleft | hright
  · exact (ne_of_lt (resolvent_re_neg s roots weight hline hw hpos hleft)) hre
  · exact (ne_of_gt (resolvent_re_pos s roots weight hline hw hpos hright)) hre

/-- Signed weights are allowed for the norm estimate, but not the strict sign theorem. -/
theorem resolvent_norm_le (s : Finset ι) (roots : ι → ℂ) (weight : ι → ℝ)
    (hline : ∀ i ∈ s, (roots i).re = σ)
    {z : ℂ} {δ : ℝ} (hδ : 0 < δ) (hz : δ ≤ |z.re - σ|) :
    ‖resolvent s roots weight z‖ ≤ (∑ i ∈ s, |weight i|) / δ := by
  calc
    ‖resolvent s roots weight z‖ ≤
        ∑ i ∈ s, ‖(weight i : ℂ) * (z - roots i)⁻¹‖ := norm_sum_le _ _
    _ = ∑ i ∈ s, |weight i| * ‖(z - roots i)⁻¹‖ := by
      simp only [norm_mul, Complex.norm_real, Real.norm_eq_abs]
    _ ≤ ∑ i ∈ s, |weight i| * δ⁻¹ := by
      apply Finset.sum_le_sum
      intro i hi
      exact mul_le_mul_of_nonneg_left (inverse_norm_le hδ (hline i hi) hz)
        (abs_nonneg _)
    _ = (∑ i ∈ s, |weight i|) / δ := by
      rw [← Finset.sum_mul, div_eq_mul_inv]

/-- Empty data cannot supply the strict sign used by the consumer. -/
theorem empty_resolvent (roots : ι → ℂ) (weight : ι → ℝ) (z : ℂ) :
    resolvent ∅ roots weight z = 0 := by simp [resolvent]

/-- Nonempty support with only zero weights is still insufficient. -/
theorem zero_weight_resolvent (s : Finset ι) (roots : ι → ℂ) (z : ℂ) :
    resolvent s roots (fun _ => 0) z = 0 := by simp [resolvent]

end GRWTSK.Analysis.VerticalLine
