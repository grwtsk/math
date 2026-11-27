/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiPrimeBlockPrimeCutoff
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiPrimeBlockDensityIntegral
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiPrimeBlockDensityFubini
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiPrimeBlockQuadratureBound

/-! # Finite rational certificates for ordinary-prime harmonic blocks

The rational endpoints bound the difference of the original harmonic
prefixes at orders `2*N` and `N`. A positive prime cutoff and a positive
quadrature mesh suffice at every order.
-/

namespace GRWTSK.XiPrimeBlockRational
open GRWTSK.XiDyadicPrimeBias GRWTSK.XiPrimeBlockPrimeCutoff

/-- Both endpoints are finite rational computations in the three integer inputs. -/
theorem harmonicPrefix_double_rational_bounds (N : ℕ) {Y Q : ℕ} (hY : 0 < Y) (hQ : 0 < Q) :
    ((truncatedPrimeBlock N Y - upper N Q : ℚ) : ℝ) ≤ harmonicPrefix (2*N) - harmonicPrefix N ∧
    harmonicPrefix (2*N) - harmonicPrefix N ≤
      ((truncatedPrimeBlock N Y - lower N Q + 1/(Y:ℚ) : ℚ) : ℝ) := by
  have hp := primePart_bounds N hY
  have hd := logarithmic_integral_bounds N hQ
  rw [harmonicPrefix_double_sub_eq_prime_sum_sub_density]
  change _ ≤ primePart N - _ ∧ primePart N - _ ≤ _
  push_cast
  exact ⟨sub_le_sub hp.1 hd.2, by linarith only [hp.2,hd.1]⟩

/-- When the squared mesh budget reaches the cutoff, the quadrature error is
at most the reciprocal cutoff. -/
theorem quadrature_width_le_reciprocal {N Q Y : ℕ} (hQ : 0 < Q) (hY : 0 < Y)
    (hmesh : Y^2 ≤ (N+1)*Q^2) : upper N Q - lower N Q ≤ 1/(Y:ℚ) := by
  have hY' : (0:ℚ) < Y := by exact_mod_cast hY
  have hsize : (Y:ℚ)^2 ≤ ((N:ℚ)+1)*(Q:ℚ)^2 := by exact_mod_cast hmesh
  have hw := (quadrature_width_sq_le N (Nat.ne_of_gt hQ)).trans
    (div_le_div_of_nonneg_left (by norm_num) (sq_pos_of_pos hY') hsize)
  rw [← one_pow 2, ← div_pow] at hw
  by_contra! h
  exact (not_lt_of_ge hw) (pow_lt_pow_left₀ h (by positivity) (by decide))

/-- Under the integer mesh condition, the sole rational approximation
`truncatedPrimeBlock N Y - upper N Q` has one-sided error at most `2/Y`. -/
theorem harmonicPrefix_double_error_bounds (N : ℕ) {Y Q : ℕ} (hY : 0 < Y) (hQ : 0 < Q)
    (hmesh : Y^2 ≤ (N+1)*Q^2) :
    ((truncatedPrimeBlock N Y - upper N Q : ℚ) : ℝ) ≤ harmonicPrefix (2*N) - harmonicPrefix N ∧
    harmonicPrefix (2*N) - harmonicPrefix N ≤
      ((truncatedPrimeBlock N Y - upper N Q + 2/(Y:ℚ) : ℚ) : ℝ) := by
  obtain ⟨hl,hu⟩ := harmonicPrefix_double_rational_bounds N hY hQ
  refine ⟨hl,hu.trans ?_⟩
  apply Rat.cast_le.mpr
  have h := quadrature_width_le_reciprocal hQ hY hmesh
  rw [show (2:ℚ)/(Y:ℚ) = 1/Y + 1/Y by ring]
  linarith

/-- The ordinary-prime harmonic prefix strictly decreases from order 7 to 14.
The certificate uses all ordinary primes through 64 and twelve mesh cells. -/
theorem harmonicPrefix_fourteen_lt_seven : harmonicPrefix 14 < harmonicPrefix 7 := by
  have hc : truncatedPrimeBlock 7 64 - lower 7 12 + 1/64 < 0 := by decide +kernel
  have hu := (harmonicPrefix_double_rational_bounds 7 (Y := 64) (Q := 12) (by decide) (by decide)).2
  have hreal : (((truncatedPrimeBlock 7 64 - lower 7 12 + 1/64 : ℚ) : ℝ)) < 0 := by
    exact_mod_cast hc
  exact sub_neg.mp (hu.trans_lt hreal)

end GRWTSK.XiPrimeBlockRational
