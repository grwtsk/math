/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachCumulativeNormalization
import Mathlib.Tactic

/-!
# Exact finite prime-power correction interface

The source-level definitions use the canonical prime-only logarithmic
weight and a separate proper-prime-power sum. No asymptotic assertion.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachCumulativeNormalization

noncomputable section

/-- Finite proper-prime-power weight at n, with exponent at least two. -/
def properPrimePowerWeight (n : ℕ) : ℝ :=
  ∑ p ∈ Finset.range (n + 1),
    ∑ k ∈ Finset.Icc 2 n,
      if Nat.Prime p ∧ p ^ k = n then Real.log (p : ℝ) else 0

/-- Finite von Mangoldt-type weight, split by definition into the
prime-only part and the proper-prime-power part. -/
def primePowerWeight (n : ℕ) : ℝ :=
  primeLogWeight n + properPrimePowerWeight n

/-- Inclusive finite residue-class prime-power sum. -/
def finitePsiResidue (N q r : ℕ) : ℝ :=
  ∑ n ∈ Finset.range (N + 1) with n % q = r,
    primePowerWeight n

/-- Inclusive finite proper-prime-power correction. -/
def finiteProperPrimePowerCorrection (N q r : ℕ) : ℝ :=
  ∑ n ∈ Finset.range (N + 1) with n % q = r,
    properPrimePowerWeight n

/-- Exact splitting of the explicitly defined prime-power weight.
Identification with Mathlib's canonical von Mangoldt function is a
separate supplier and is NOT claimed by this declaration. -/
theorem finitePsiResidue_eq_theta_add_correction
    (N q r : ℕ) :
    (finitePsiResidue N q r : ℂ) =
      finiteThetaResidue N q r +
        (finiteProperPrimePowerCorrection N q r : ℂ) := by
  unfold finitePsiResidue finiteThetaResidue
    finiteProperPrimePowerCorrection primePowerWeight
  rw [Finset.sum_add_distrib]
  push_cast
  ring

/-- The correction is nonnegative term by term. -/
theorem properPrimePowerWeight_nonneg (n : ℕ) :
    0 ≤ properPrimePowerWeight n := by
  unfold properPrimePowerWeight
  apply Finset.sum_nonneg
  intro p hp
  apply Finset.sum_nonneg
  intro k hk
  split_ifs with h
  · exact h.1.log_pos.le
  · exact le_refl 0

/-- Consequently the finite proper-prime-power correction is nonnegative. -/
theorem finiteProperPrimePowerCorrection_nonneg (N q r : ℕ) :
    0 ≤ finiteProperPrimePowerCorrection N q r := by
  unfold finiteProperPrimePowerCorrection
  exact Finset.sum_nonneg (fun n hn => properPrimePowerWeight_nonneg n)

end
end GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection
