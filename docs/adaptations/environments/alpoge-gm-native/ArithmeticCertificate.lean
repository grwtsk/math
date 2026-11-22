/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
ISOLATED SOURCE_PROOF_CANDIDATE for Alpoge Lean v4.33.1 /
Mathlib 0df444a360eaa60ab8c11dca51a86af692955474.
Elaboration, fresh kernel replay and transitive axioms: NOT_RUN.
-/
import GRWTSK.NumberTheory.AlpogeNativeGmNormalization
import GRWTSK.NumberTheory.AlpogeNativeGmLogDerivativeCertificate
import Mathlib.Tactic

/-!
# Certified pointwise and eventually quantified original Level.Gm bounds

This is an alternative RH-independent arithmetic supplier to native
CoreGm. It consumes the REAL source Level.Gm and Level.Nt/Level.wt,
the true log-derivative/Euler constant, a certified interval for
A_Level, and per-prime-power observed vonMangoldt errors.

The actual hard obligation is to certify the final one-sided
inequality for EVERY sufficiently large integer, not just a tested
finite prefix. Its assumption is retained, not silently supplied.

The finite observations may have n-dependent precision, avoiding
the invalid claim that one fixed log-approximation covers all x.
No final RH or GRH theorem is imported.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.AlpogeNativeGmArithmeticCertificate

open Formalism Formalism.HC
open GRWTSK.NumberTheory.AlpogeNativeGmNormalization
open GRWTSK.NumberTheory.AlpogeNativeGmLogDerivativeCertificate
open scoped BigOperators

/-- The original signed source head with just the real von Mangoldt
coefficients replaced by supplied observations. Character phases,
weights, conductors and analytic constants are NOT replaced. -/
def observedPrimeHead (Λ : Level) (lambda : ℕ → ℝ) (x : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
    lambda n * signedPhase Λ n * (x / (n : ℝ) - 1)

/-- Approximate ORIGINAL Gm with a certified analytic-constant center.
No derivative term or centering term is silently dropped. -/
def observedNormalizedGm (Λ : Level) (lambda : ℕ → ℝ)
    (analyticCenter x : ℝ) : ℝ :=
  observedPrimeHead Λ lambda x - x * Real.log x +
    analyticCenter * x

/-- An EXACT finite error budget for the original signed phases. -/
def primeHeadErrorBudget (Λ : Level) (errors : ℕ → ℝ)
    (x : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
    errors n * |signedPhase Λ n| *
      |x / (n : ℝ) - 1|

theorem signedPrimeHead_error_le (Λ : Level)
    (lambda errors : ℕ → ℝ) (x : ℝ)
    (hErr : ∀ n ∈ Finset.Icc 1 ⌊x⌋₊,
      |lambda n - (ArithmeticFunction.vonMangoldt n : ℝ)| ≤
        errors n) :
    |signedSmoothedPrimeHead Λ x - observedPrimeHead Λ lambda x| ≤
      primeHeadErrorBudget Λ errors x := by
  have hdiff :
      signedSmoothedPrimeHead Λ x - observedPrimeHead Λ lambda x =
      ∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
        ((ArithmeticFunction.vonMangoldt n : ℝ) - lambda n) *
          signedPhase Λ n * (x / (n : ℝ) - 1) := by
    unfold signedSmoothedPrimeHead observedPrimeHead
    rw [← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro n _
    ring
  rw [hdiff]
  unfold primeHeadErrorBudget
  calc
    |∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
        ((ArithmeticFunction.vonMangoldt n : ℝ) - lambda n) *
          signedPhase Λ n * (x / (n : ℝ) - 1)|
      ≤ ∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
          |((ArithmeticFunction.vonMangoldt n : ℝ) - lambda n) *
          signedPhase Λ n * (x / (n : ℝ) - 1)| :=
          Finset.abs_sum_le_sum_abs _ _
    _ = ∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
          |lambda n - (ArithmeticFunction.vonMangoldt n : ℝ)| *
            |signedPhase Λ n| * |x / (n : ℝ) - 1| := by
          simp only [abs_mul, abs_sub_comm]
    _ ≤ ∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
          errors n * |signedPhase Λ n| *
            |x / (n : ℝ) - 1| := by
          apply Finset.sum_le_sum
          intro n hn
          exact mul_le_mul_of_nonneg_right
            (mul_le_mul_of_nonneg_right (hErr n hn) (abs_nonneg _))
            (abs_nonneg _)

/-- Source certification of actual Level.Gm including the genuine
analytic constant and all signed prime coefficients. -/
theorem native_gm_error_of_full_source_certificates
    (Λ : Level) (lambda errors : ℕ → ℝ)
    (analyticCenter analyticRadius x : ℝ)
    (hx : 1 ≤ x)
    (hLambda : ∀ n ∈ Finset.Icc 1 ⌊x⌋₊,
      |lambda n - (ArithmeticFunction.vonMangoldt n : ℝ)| ≤ errors n)
    (hConstant : |analyticConstant Λ - analyticCenter| ≤ analyticRadius) :
    |Λ.Gm x - observedNormalizedGm Λ lambda analyticCenter x| ≤
      primeHeadErrorBudget Λ errors x + |x| * analyticRadius := by
  have hPrime := signedPrimeHead_error_le Λ lambda errors x hLambda
  have hDiff :
      Λ.Gm x - observedNormalizedGm Λ lambda analyticCenter x =
      (signedSmoothedPrimeHead Λ x - observedPrimeHead Λ lambda x) +
        x * (analyticConstant Λ - analyticCenter) := by
    rw [levelGm_eq_normalized Λ x hx]
    unfold normalizedGm observedNormalizedGm
    ring
  rw [hDiff]
  calc
    |(signedSmoothedPrimeHead Λ x - observedPrimeHead Λ lambda x) +
       x * (analyticConstant Λ - analyticCenter)|
      ≤ |signedSmoothedPrimeHead Λ x - observedPrimeHead Λ lambda x| +
          |x * (analyticConstant Λ - analyticCenter)| :=
          abs_add_le _ _
    _ = |signedSmoothedPrimeHead Λ x - observedPrimeHead Λ lambda x| +
          |x| * |analyticConstant Λ - analyticCenter| := by
          rw [abs_mul]
    _ ≤ primeHeadErrorBudget Λ errors x + |x| * analyticRadius := by
          exact add_le_add hPrime
            (mul_le_mul_of_nonneg_left hConstant (abs_nonneg _))

/-- The actual eventually quantified integer statement has a fully
certified RH-independent observation interface. Every required
integer inequality remains visible: finite tests do not prove it. -/
theorem eventual_integer_gm_of_certified_observations
    (Λ : Level) (theta : ℝ) (N : ℕ) (hN : 1 ≤ N)
    (lambda errors : ℕ → ℕ → ℝ)
    (analyticCenter analyticRadius : ℕ → ℝ)
    (hCert : ∀ n : ℕ, N ≤ n →
      (∀ k ∈ Finset.Icc 1 n,
        |lambda n k - (ArithmeticFunction.vonMangoldt k : ℝ)| ≤
          errors n k) ∧
      |analyticConstant Λ - analyticCenter n| ≤ analyticRadius n ∧
      observedNormalizedGm Λ (lambda n) (analyticCenter n) (n : ℝ) +
        primeHeadErrorBudget Λ (errors n) (n : ℝ) +
        (n : ℝ) * analyticRadius n ≤
          (n : ℝ) ^ theta - 1 / (4 * (n : ℝ))) :
    ∀ n : ℕ, N ≤ n →
      Λ.Gm (n : ℝ) ≤ (n : ℝ) ^ theta -
        1 / (4 * (n : ℝ)) := by
  intro n hn
  obtain ⟨hLambda, hConstant, hObserved⟩ := hCert n hn
  have hn1 : 1 ≤ (n : ℝ) := by
    exact_mod_cast (hN.trans hn)
  have hErr := native_gm_error_of_full_source_certificates
    Λ (lambda n) (errors n) (analyticCenter n) (analyticRadius n)
    (n : ℝ) hn1 (by
      intro k hk
      exact hLambda k (by simpa only [Nat.floor_natCast] using hk))
    hConstant
  have hUpper := (abs_le.mp hErr).2
  have hxNonneg : (0 : ℝ) ≤ n := by positivity
  rw [abs_of_nonneg hxNonneg] at hUpper
  linarith

end GRWTSK.NumberTheory.AlpogeNativeGmArithmeticCertificate
