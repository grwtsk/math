import FormalResearch.RiemannHypothesis.WeightedPrimeAbel

/-!
Explicit constants extracted from the existing elementary Mathlib/weighted-prime
proofs. These are reused estimates with source consumer constants exposed,
not new prime-distribution theorems. The stronger 3/2 proper-power application
remains separate until its native inventory adapter is verified.
Direction and conceptual origin: grwtsk contributors.
Explicit source constant extraction and formalization: OpenAI Codex assistance.
-/
set_option autoImplicit false
noncomputable section
namespace RH16ExplicitPrimeLogError
open Finset Real
open FormalResearch.RiemannHypothesis
open WeightedPrimeMertens WeightedPrimeAbel

/-- The literal constant already selected in Mathlib's Chebyshev proof. -/
theorem explicit_psi_theta_bound (x : ℝ) :
    Chebyshev.psi x - Chebyshev.theta x ≤ (Real.log 4 + 4) * 3 * Real.sqrt x := by
  rcases le_total x 1 with h | h
  · rw [Chebyshev.theta_eq_zero_of_le_one h, Chebyshev.psi_eq_zero_of_le_one h, sub_self]
    positivity
  have hb (n : ℕ) (hn : 2 ≤ n) :
      Chebyshev.psi (x ^ (1 / (n : ℝ))) ≤ (Real.log 4 + 4) * Real.sqrt x := by
    grw [Chebyshev.psi_le_const_mul_self (by positivity), Real.sqrt_eq_rpow x]
    gcongr
    norm_cast
  linarith [Chebyshev.psi_sub_theta_le_psi_add_psi_add_psi x,
    hb 2 (le_refl _), hb 3 (by norm_num), hb 5 (by norm_num)]

/-- The inherited global proper-power estimate, with its chosen constant exposed. -/
theorem explicit_global_proper_power_bound (N : ℕ) (hN : 1 ≤ N) :
    0 ≤ weightedMangoldt N - weightedPrime N ∧
      weightedMangoldt N - weightedPrime N ≤ 9 * (Real.log 4 + 4) := by
  have hc : 0 ≤ (Real.log 4 + 4) * 3 := by positivity
  refine ⟨weighted_difference_nonneg N, ?_⟩
  have h := weighted_difference_bound_of_sqrt ((Real.log 4 + 4) * 3) hc
    explicit_psi_theta_bound N hN
  nlinarith

theorem explicit_natural_prime_log_error (N : ℕ) (hN : 1 ≤ N) :
    |weightedPrime N - Real.log N| ≤ 10 * (Real.log 4 + 4) := by
  have hm := weightedMangoldt_mertens N hN
  have hd := explicit_global_proper_power_bound N hN
  have hc : 0 ≤ Real.log (4 : ℝ) + 4 := by positivity
  exact abs_le.mpr ⟨by linarith [(abs_le.mp hm).1], by linarith [(abs_le.mp hm).2]⟩

def explicitPrimeLogConstant : ℝ := 10 * (Real.log 4 + 4) + Real.log 2

theorem explicitPrimeLogConstant_nonneg : 0 ≤ explicitPrimeLogConstant := by
  unfold explicitPrimeLogConstant
  positivity

theorem explicitPrimeLogConstant_value : explicitPrimeLogConstant = 40 + 21 * Real.log 2 := by
  have hlog : Real.log (4 : ℝ) = 2 * Real.log 2 := by
    rw [show (4 : ℝ) = 2 ^ 2 by norm_num, Real.log_pow]
    norm_num
  unfold explicitPrimeLogConstant
  rw [hlog]
  ring

/-- Closed real prime inventories retain their original floor correction. -/
theorem explicit_real_prime_log_error (x : ℝ) (hx : 1 ≤ x) :
    |(∑ p ∈ (Ioc 0 ⌊x⌋₊).filter Nat.Prime,
      Real.log (p : ℝ) / (p : ℝ)) - Real.log x| ≤ explicitPrimeLogConstant := by
  have hw := explicit_natural_prime_log_error ⌊x⌋₊ ((Nat.one_le_floor_iff x).mpr hx)
  rw [weightedPrime_eq_filtered] at hw
  have hf := log_floor_error x hx
  calc
    _ = |((∑ p ∈ (Ioc 0 ⌊x⌋₊).filter Nat.Prime,
        Real.log (p : ℝ) / (p : ℝ)) - Real.log (⌊x⌋₊ : ℝ)) +
        (Real.log (⌊x⌋₊ : ℝ) - Real.log x)| := by congr 1; ring
    _ ≤ _ := abs_add_le _ _
    _ ≤ explicitPrimeLogConstant := add_le_add hw hf

/-- The concrete error constant is in the precise admitted logarithmic observation. -/
theorem explicit_log_cutoff_prime_error (t : ℝ) (ht : 0 ≤ t) :
    |primeLogError t| ≤ explicitPrimeLogConstant := by
  have h := explicit_real_prime_log_error (Real.exp t) (Real.one_le_exp_iff.mpr ht)
  simpa only [primeLogError, primeLogPrefix, weightedPrime_eq_filtered, Real.log_exp] using h

end RH16ExplicitPrimeLogError
