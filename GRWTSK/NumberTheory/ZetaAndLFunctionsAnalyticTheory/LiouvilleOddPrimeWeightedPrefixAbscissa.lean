/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleWeightedPrefixDoubling
import Mathlib

/-!
# An exact odd-prime filter on the original Liouville weighted-prefix source

Source identity (no probabilistic assumption): if L(N)=sum_{1<=n<=N}lambda(n)
and O(N)=sum_{1<=n<=N, n odd}lambda(n), then

  O(N) = L(N) + L(N/2).

This is the finite prefix-level version of O=(I+S_2)L. It retains the
complete Liouville coefficient including prime powers, and the finite
weighted-square result retains the entire signed cross term between L(N)
and L(N/2). No color is asserted to be an independent random choice.

The analytic consequences, proved mathematically in the companion review,
are the L2(1,e^T;dx/x^2) dilation contraction factor 2^(-1/2), its two-sided
energy comparison and the zeta zero-abscissa threshold. Those analytic claims
are NOT silently asserted as kernel-accepted Lean theorems by this module.

The source imports the existing true arithmetic doubling identity, not a
new coefficient or surrogate source. RH and the all-positive-rate weighted
prefix supplier remain open. Compilation, expected-type checking, fresh
kernel checking and transitive axiom audit were NOT run.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.LiouvilleOddPrimeWeightedPrefixAbscissa

open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixSquareCriterion
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixDoubling

/-- The original signed Liouville prefix restricted to odd positive integers.
The mask is a genuine integer parity condition, not a randomly selected bin. -/
def oddPrefixNat (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N,
    if n % 2 = 1 then coefficient n else 0

/-- Exact original integer-prefix increment, including its index-one birth. -/
private theorem fullPrefix_succ (N : ℕ) :
    liouvillePrefixNat (N + 1) =
      liouvillePrefixNat N + coefficient (N + 1) := by
  simpa [liouvillePrefixNat] using
    (Finset.sum_Icc_succ_top (a := 1) (b := N)
      (by omega : 1 ≤ N + 1) coefficient)

/-- Exact increment of the odd Liouville prefix; no even term is retained. -/
theorem oddPrefixNat_succ (N : ℕ) :
    oddPrefixNat (N + 1) = oddPrefixNat N +
      (if (N + 1) % 2 = 1 then coefficient (N + 1) else 0) := by
  simpa [oddPrefixNat] using
    (Finset.sum_Icc_succ_top (a := 1) (b := N)
      (by omega : 1 ≤ N + 1)
      (fun k : ℕ => if k % 2 = 1 then coefficient k else 0))

/-- All finite prefixes: the signed even contribution is exactly minus
L(floor N/2), by actual complete multiplicativity lambda(2m)=-lambda(m). -/
theorem oddPrefixNat_eq_full_add_half (N : ℕ) :
    oddPrefixNat N =
      liouvillePrefixNat N + liouvillePrefixNat (N / 2) := by
  induction N with
  | zero =>
      simp [oddPrefixNat, liouvillePrefixNat]
  | succ N ih =>
      by_cases heven : (N + 1) % 2 = 0
      · have hhalf : (N + 1) / 2 = N / 2 + 1 := by omega
        have hdoubled : coefficient (N + 1) =
            -coefficient (N / 2 + 1) := by
          have hindex : N + 1 = 2 * (N / 2 + 1) := by omega
          rw [hindex, coefficient_doubling]
        calc
          oddPrefixNat (N + 1) = oddPrefixNat N := by
            rw [oddPrefixNat_succ]
            simp [heven]
          _ = liouvillePrefixNat N + liouvillePrefixNat (N / 2) := ih
          _ = liouvillePrefixNat (N + 1) +
                liouvillePrefixNat ((N + 1) / 2) := by
              rw [fullPrefix_succ, hhalf, fullPrefix_succ, hdoubled]
              ring
      · have hodd : (N + 1) % 2 = 1 := by omega
        have hhalf : (N + 1) / 2 = N / 2 := by omega
        calc
          oddPrefixNat (N + 1) =
              oddPrefixNat N + coefficient (N + 1) := by
                rw [oddPrefixNat_succ]
                simp [hodd]
          _ = (liouvillePrefixNat N + liouvillePrefixNat (N / 2)) +
                coefficient (N + 1) := by rw [ih]
          _ = liouvillePrefixNat (N + 1) +
                liouvillePrefixNat ((N + 1) / 2) := by
              rw [fullPrefix_succ, hhalf]
              ring

/-- The literal discrete odd-only weighted moment at the same k(k+1)
weights and the same closed prefix as the original source. -/
def oddWeightedPrefixSquare (N : ℕ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 N,
    oddPrefixNat k ^ 2 / ((k : ℝ) * ((k + 1 : ℕ) : ℝ))

/-- Retain BOTH ordered orientations of the signed L(k)*L(floor k/2)
mixed contribution after forming the odd channel's whole square. -/
def halfShiftMixedEnergy (N : ℕ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 N,
    (2 * liouvillePrefixNat k * liouvillePrefixNat (k / 2) +
      liouvillePrefixNat (k / 2) ^ 2) /
        ((k : ℝ) * ((k + 1 : ℕ) : ℝ))

/-- The odd-channel weighted energy differs from the complete original
weighted Liouville moment by the EXACT signed half-dilation correction.
This is not an assertion that the correction is nonnegative or small. -/
theorem oddWeightedPrefixSquare_eq_original_add_mixed (N : ℕ) :
    oddWeightedPrefixSquare N =
      discreteWeightedPrefixSquare N + halfShiftMixedEnergy N := by
  unfold oddWeightedPrefixSquare discreteWeightedPrefixSquare halfShiftMixedEnergy
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro k hk
  rw [oddPrefixNat_eq_full_add_half]
  ring

/-- Zero or nonnegative finite interval: every summand is a square paid by
its original positive terminal-face denominator. -/
theorem oddWeightedPrefixSquare_nonneg (N : ℕ) :
    0 ≤ oddWeightedPrefixSquare N := by
  unfold oddWeightedPrefixSquare
  apply Finset.sum_nonneg
  intro k hk
  have hk0 : (0 : ℝ) ≤ (k : ℝ) := Nat.cast_nonneg _
  have hk1 : (0 : ℝ) ≤ ((k + 1 : ℕ) : ℝ) := Nat.cast_nonneg _
  exact div_nonneg (sq_nonneg _) (mul_nonneg hk0 hk1)

/-- A precise analytic proof target: the actual odd weighted moment is
comparable to the original at every finite horizon with constants
(1 ± 1/sqrt 2)^2. The mathematical proof is a weighted dilation isometry.
This is deliberately only a named Prop until a complete exact-real interval
integral and dilation lemma is admitted in Lean. -/
def OddWeightedEnergyComparison : Prop :=
  ∀ T : ℝ, 0 ≤ T →
    (1 - (Real.sqrt 2)⁻¹) ^ 2 * weightedPrefixSquareMoment T ≤
      (∫ x in (1 : ℝ)..Real.exp T,
        (∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
          if n % 2 = 1 then coefficient n else 0) ^ 2 / x ^ 2) ∧
      (∫ x in (1 : ℝ)..Real.exp T,
        (∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
          if n % 2 = 1 then coefficient n else 0) ^ 2 / x ^ 2) ≤
        (1 + (Real.sqrt 2)⁻¹) ^ 2 * weightedPrefixSquareMoment T

/-- The source-identical all-positive-rate supplier is still the EXISTING
open proposition and is not replaced by a probabilistic model or an axiom. -/
def OriginalWeightedPrefixResearchTarget : Prop :=
  WeightedPrefixSquareAllRate

end GRWTSK.NumberTheory.LiouvilleOddPrimeWeightedPrefixAbscissa
