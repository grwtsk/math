/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachScaledEvenModel

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Quantitative arithmetic source margins

The overlap set contains actual primes p and N-p, not sieve survivors or
prime powers. Every member contributes at least log(2)^2 to the signed
sector difference. For N=2p with p prime, the actual diagonal pair gives
the stronger margin log(p)^2. No universal overlap-count lower bound is
supplied for all even targets. The prime-double subclass is not exhaustive.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Primes.GoldbachArithmeticMargin
open GoldbachWeighted GoldbachReflectionSectors

def primeOverlap (N : ℕ) : Finset ℕ :=
  (Finset.range (N + 1)).filter (fun p => p.Prime ∧ (N - p).Prime)

theorem mass_eq_primeOverlap_sum (N : ℕ) :
    goldbachLogMass N = ∑ p ∈ primeOverlap N,
      Real.log (p : ℝ) * Real.log ((N - p : ℕ) : ℝ) := by
  rw [goldbachLogMass_eq_reflected_range]
  unfold primeOverlap
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro p _
  by_cases hp : p.Prime <;> by_cases hq : (N - p).Prime <;>
    simp [primeLogWeight, hp, hq]

theorem prime_pair_log_product_lower (p q : ℕ) (hp : p.Prime) (hq : q.Prime) :
    (Real.log 2) ^ 2 ≤ Real.log (p : ℝ) * Real.log (q : ℝ) := by
  have hlp : Real.log 2 ≤ Real.log (p : ℝ) :=
    Real.log_le_log (by norm_num) (by exact_mod_cast hp.two_le)
  have hlq : Real.log 2 ≤ Real.log (q : ℝ) :=
    Real.log_le_log (by norm_num) (by exact_mod_cast hq.two_le)
  simpa only [pow_two] using
    mul_le_mul hlp hlq (Real.log_nonneg (by norm_num)) hp.log_pos.le

theorem mass_lower_of_actual_overlap_count (N : ℕ) :
    ((primeOverlap N).card : ℝ) * (Real.log 2) ^ 2 ≤ goldbachLogMass N := by
  rw [mass_eq_primeOverlap_sum]
  calc
    _ = ∑ _p ∈ primeOverlap N, (Real.log 2) ^ 2 := by simp
    _ ≤ _ := by
      apply Finset.sum_le_sum
      intro p hp
      have h := (Finset.mem_filter.mp hp).2
      exact prime_pair_log_product_lower p (N - p) h.1 h.2

theorem signed_sector_margin_of_actual_overlap_count (N : ℕ) :
    energy N (oddPart N (primeVector N)) +
        ((primeOverlap N).card : ℝ) * (Real.log 2) ^ 2 ≤
      energy N (evenPart N (primeVector N)) := by
  have h := mass_lower_of_actual_overlap_count N
  rw [goldbachLogMass_eq_sector_difference] at h
  linarith

theorem mass_lower_at_prime_double (p : ℕ) (hp : p.Prime) :
    (Real.log (p : ℝ)) ^ 2 ≤ goldbachLogMass (2 * p) := by
  have hsub : 2 * p - p = p := by omega
  have hm : p ∈ Finset.range (2 * p + 1) := Finset.mem_range.mpr (by omega)
  have h : primeLogWeight p * primeLogWeight (2 * p - p) ≤
      ∑ k ∈ Finset.range (2 * p + 1), primeLogWeight k * primeLogWeight (2 * p - k) :=
    Finset.single_le_sum (fun k _ =>
      mul_nonneg (primeLogWeight_nonneg k) (primeLogWeight_nonneg _)) hm
  rw [← goldbachLogMass_eq_reflected_range] at h
  simpa [hsub, primeLogWeight, hp, pow_two] using h

theorem signed_sector_margin_at_prime_double (p : ℕ) (hp : p.Prime) :
    energy (2 * p) (oddPart (2 * p) (primeVector (2 * p))) + (Real.log (p : ℝ)) ^ 2 ≤
      energy (2 * p) (evenPart (2 * p) (primeVector (2 * p))) := by
  have h := mass_lower_at_prime_double p hp
  rw [goldbachLogMass_eq_sector_difference] at h
  linarith

end GRWTSK.NumberTheory.Primes.GoldbachArithmeticMargin
