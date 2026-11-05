/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import Mathlib

/-!
# Finite spectral residual and phase-alignment estimates

The gap is explicitly separation from the trial Rayleigh value, not a claim
that a small residual detects the bottom eigenvalue. Summing the elementary
inequality d^2 w <= a^2 w gives the spectral-tail estimate. The alignment bound
then uses 1-c <= 1-c^2 on [0,1]. These are finite algebraic ingredients; an
infinite-dimensional spectral expansion and a certified complement bound are
separate analytic obligations. Connes arXiv:2602.04022v1, Section 6.6, is the
consumer. Novelty not assessed; standard estimates. AI-assisted formalization.
Compilation, fresh kernel checking, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.OperatorTheory.SpectralResidual

/-- Squared separation remains valid for repeated excited eigenvalues. -/
theorem weighted_separation {d a w : ℝ}
    (hd : 0 ≤ d) (ha : d ≤ a) (hw : 0 ≤ w) : d ^ 2 * w ≤ a ^ 2 * w := by
  have h : 0 ≤ (a - d) * (a + d) :=
    mul_nonneg (sub_nonneg.mpr ha) (add_nonneg (hd.trans ha) hd)
  have hm := mul_nonneg h hw
  nlinarith

/-- An explicit finite diagonal spectral-tail certificate. -/
theorem sum_weighted_separation {ι : Type*} (s : Finset ι)
    (a w : ι → ℝ) {d : ℝ} (hd : 0 ≤ d)
    (separated : ∀ i ∈ s, d ≤ a i) (positive : ∀ i ∈ s, 0 ≤ w i) :
    d ^ 2 * (∑ i ∈ s, w i) ≤ ∑ i ∈ s, (a i) ^ 2 * w i := by
  rw [Finset.mul_sum]
  exact Finset.sum_le_sum (fun i hi => weighted_separation hd (separated i hi) (positive i hi))

/-- Real spectral coefficients are an instance of nonnegative weights. -/
theorem sum_squared_coefficients {ι : Type*} (s : Finset ι)
    (a c : ι → ℝ) {d : ℝ} (hd : 0 ≤ d)
    (separated : ∀ i ∈ s, d ≤ a i) :
    d ^ 2 * (∑ i ∈ s, (c i) ^ 2) ≤ ∑ i ∈ s, (a i * c i) ^ 2 := by
  have h := sum_weighted_separation s a (fun i => (c i) ^ 2) hd separated
    (fun i _ => sq_nonneg (c i))
  simpa only [mul_pow] using h

/-- Unit vectors whose inner product is phase-aligned satisfy this inequality. -/
theorem alignment_square_bound {c : ℝ} (hc : 0 ≤ c) (hc1 : c ≤ 1) :
    2 - 2 * c ≤ 2 * (1 - c ^ 2) := by
  have h := mul_nonneg hc (sub_nonneg.mpr hc1)
  nlinarith

/-- Combine spectral-tail and phase-alignment estimates without taking roots. -/
theorem scaled_distance_square_bound {d tail distance residual : ℝ}
    (tailBound : d ^ 2 * tail ≤ residual ^ 2)
    (alignment : distance ≤ 2 * tail) :
    d ^ 2 * distance ≤ 2 * residual ^ 2 := by
  have h := mul_le_mul_of_nonneg_left alignment (sq_nonneg d)
  nlinarith

/-- Counterexample family A_e = diag(e,2e), trial (0,1): exact zero residual. -/
theorem excited_trial_has_zero_residual (e : ℝ) :
    ((e - 2 * e) * 0) ^ 2 + ((2 * e - 2 * e) * 1) ^ 2 = 0 := by ring

/-- Yet its energy is strictly above that of the true ground vector when e>0. -/
theorem excited_trial_is_not_ground {e : ℝ} (he : 0 < e) : e < 2 * e := by linarith

/-- The squared distance between these two unit vectors does not shrink. -/
theorem excited_trial_distance_square :
    (0 - 1 : ℝ) ^ 2 + (1 - 0 : ℝ) ^ 2 = 2 := by norm_num

end GRWTSK.Analysis.OperatorTheory.SpectralResidual
