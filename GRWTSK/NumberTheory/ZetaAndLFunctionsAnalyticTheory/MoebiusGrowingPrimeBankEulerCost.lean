/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFiniteSmoothEulerMoments
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusQuantitativeMertensAbsoluteAbel
import Mathlib.NumberTheory.Chebyshev
import Mathlib

/-!
# Growing genuine-prime bank costs at the ORIGINAL source

This file gives an elementary UNCONDITIONAL proof candidate:
  (forall p in B.primes, p <= Y) ->
  bankSquareRootWeight B.primes <= exp(8*sqrt(Y)).

The full bank-dependent Euler weight is paid, not hidden in a
scale-independent C. A near-critical refinement using the pinned
Chebyshev pi upper bound remains a SEPARATE quantified formalization
target, not an admitted axiom, assumption-free theorem or Lean proof.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.GrowingPrimeBankEulerCost

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.QuantitativeMertensAbsoluteAbel

private theorem prime_inv_sqrt_le_three_quarters
    (p : ℕ) (hp : p.Prime) :
    (Real.sqrt (p : ℝ))⁻¹ ≤ (3 : ℝ) / 4 := by
  let q : ℝ := Real.sqrt (p : ℝ)
  have hpTwo : (2 : ℝ) ≤ (p : ℝ) := by exact_mod_cast hp.two_le
  have hqpos : 0 < q := by dsimp [q]; positivity
  have hqsq : q ^ 2 = (p : ℝ) := by
    dsimp [q]
    exact Real.sq_sqrt (by positivity)
  have hq4 : (4 : ℝ) ≤ 3 * q := by
    by_contra hn
    have hlt : 3 * q < 4 := lt_of_not_ge hn
    have ha : 0 < 4 - 3 * q := by linarith
    have hb : 0 < 4 + 3 * q := by linarith
    nlinarith [mul_pos ha hb, hqsq, hpTwo]
  have hratio : (4 : ℝ) / q ≤ 3 :=
    (div_le_iff₀ hqpos).2 (by nlinarith [hq4])
  change q⁻¹ ≤ (3 : ℝ) / 4
  apply (le_div_iff₀ (by norm_num : (0 : ℝ) < 4)).2
  simpa [div_eq_mul_inv, mul_comm] using hratio

/-- Pay the true p=2 endpoint; all real square-root Euler factors
for genuine primes satisfy this elementary pointwise inequality. -/
theorem prime_eulerFactor_le_exp
    (p : ℕ) (hp : p.Prime) :
    (1 - (Real.sqrt (p : ℝ))⁻¹)⁻¹ ≤
      Real.exp (4 * (Real.sqrt (p : ℝ))⁻¹) := by
  let t : ℝ := (Real.sqrt (p : ℝ))⁻¹
  have ht : 0 ≤ t := by dsimp [t]; positivity
  have htUpper : t ≤ (3 : ℝ) / 4 :=
    prime_inv_sqrt_le_three_quarters p hp
  have hden : 0 < 1 - t := by linarith
  have hinv : (1 - t)⁻¹ ≤ 1 + 4 * t := by
    have hprod : (1 : ℝ) ≤ (1 + 4 * t) * (1 - t) := by
      nlinarith [mul_nonneg ht
        (show 0 ≤ 3 - 4 * t by linarith)]
    change 1 / (1 - t) ≤ 1 + 4 * t
    exact (div_le_iff₀ hden).2 hprod
  have hexp : 1 + 4 * t ≤ Real.exp (4 * t) := by
    simpa [add_comm] using (Real.add_one_le_exp (4 * t))
  exact hinv.trans hexp

/-- Original true prime-bank Euler product, without omitted prime
powers, bounded by the exact finite prime inverse-sqrt mass. -/
theorem bankSquareRootWeight_le_exp_primeMass
    (B : PrimeBand) :
    bankSquareRootWeight B.primes ≤
      Real.exp
        (4 * ∑ p ∈ B.primes, (Real.sqrt (p : ℝ))⁻¹) := by
  unfold bankSquareRootWeight
  calc
    (∏ p ∈ B.primes, (1 - (Real.sqrt (p : ℝ))⁻¹)⁻¹) ≤
        ∏ p ∈ B.primes,
          Real.exp (4 * (Real.sqrt (p : ℝ))⁻¹) := by
      apply Finset.prod_le_prod₀
      · intro p hp
        have hpUpper :=
          prime_inv_sqrt_le_three_quarters p (B.prime_mem p hp)
        apply inv_nonneg.mpr
        linarith
      · intro p hp
        exact prime_eulerFactor_le_exp p (B.prime_mem p hp)
    _ = Real.exp
          (∑ p ∈ B.primes, 4 * (Real.sqrt (p : ℝ))⁻¹) :=
      (Real.exp_sum B.primes _).symm
    _ = Real.exp
          (4 * ∑ p ∈ B.primes, (Real.sqrt (p : ℝ))⁻¹) := by
      rw [Finset.mul_sum]

/-- The unit 1 and every original integer up to N appear once. -/
private theorem sum_Icc_one_eq_succ_range (N : ℕ) (f : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N, f n) =
      ∑ k ∈ Finset.range N, f (k + 1) := by
  classical
  have heq :
      Finset.Icc 1 N =
        (Finset.range N).image (fun k => k + 1) := by
    ext n
    simp only [Finset.mem_Icc, Finset.mem_image, Finset.mem_range]
    constructor
    · intro hn
      exact ⟨n - 1, by omega, by omega⟩
    · rintro ⟨k, hk, rfl⟩
      omega
  rw [heq, Finset.sum_image]
  intro a ha b hb hab
  omega

/-- The actual selected prime mass is below the entire original
positive-integer inverse-sqrt sum. No prime counting input. -/
theorem bank_prime_invSqrt_mass_le_two_sqrt
    (B : PrimeBand) (Y : ℕ)
    (hY : ∀ p ∈ B.primes, p ≤ Y) :
    (∑ p ∈ B.primes, (Real.sqrt (p : ℝ))⁻¹) ≤
      2 * Real.sqrt (Y : ℝ) := by
  have hsub : B.primes ⊆ Finset.Icc 1 Y := by
    intro p hp
    exact Finset.mem_Icc.mpr
      ⟨(B.prime_mem p hp).one_le, hY p hp⟩
  calc
    (∑ p ∈ B.primes, (Real.sqrt (p : ℝ))⁻¹) ≤
      ∑ p ∈ Finset.Icc 1 Y, (Real.sqrt (p : ℝ))⁻¹ := by
        apply Finset.sum_le_sum_of_subset_of_nonneg hsub
        intro p hp1 hp2
        positivity
    _ = ∑ k ∈ Finset.range Y,
        (Real.sqrt (((k + 1 : ℕ) : ℝ)))⁻¹ :=
      sum_Icc_one_eq_succ_range Y _
    _ ≤ 2 * Real.sqrt (Y : ℝ) :=
      invsqrt_range_sum_le_two_sqrt Y

/-- Source-faithful UNCONDITIONAL visible bank growth budget.
The 8 is absolute, but the cutoff Y is NEVER dropped. -/
theorem bankSquareRootWeight_le_exp_eight_sqrt
    (B : PrimeBand) (Y : ℕ)
    (hY : ∀ p ∈ B.primes, p ≤ Y) :
    bankSquareRootWeight B.primes ≤
      Real.exp (8 * Real.sqrt (Y : ℝ)) := by
  calc
    bankSquareRootWeight B.primes ≤
        Real.exp
          (4 * ∑ p ∈ B.primes, (Real.sqrt (p : ℝ))⁻¹) :=
      bankSquareRootWeight_le_exp_primeMass B
    _ ≤ Real.exp (8 * Real.sqrt (Y : ℝ)) := by
      apply Real.exp_le_exp.mpr
      have h := bank_prime_invSqrt_mass_le_two_sqrt B Y hY
      nlinarith

/-- A precise budget, even when B varies at every terminal time:
if 8sqrt(Y) <= eps*T, the real V_B cost is <= exp(eps*T). -/
theorem bankSquareRootWeight_le_exp_of_budget
    (B : PrimeBand) (Y : ℕ) (T ε : ℝ)
    (hY : ∀ p ∈ B.primes, p ≤ Y)
    (hBudget : 8 * Real.sqrt (Y : ℝ) ≤ ε * T) :
    bankSquareRootWeight B.primes ≤ Real.exp (ε * T) :=
  (bankSquareRootWeight_le_exp_eight_sqrt B Y hY).trans
    (Real.exp_le_exp.mpr hBudget)

/-- A separately named, still-UNPROVED Lean-local weighted-prime
summation from the pinned Chebyshev.pi_le_log4_mul_div. Its ordinary
proof splits at sqrt Y and uses finite Abel summation. This PROP is
NOT an axiom and is NOT supplied as a theorem here. -/
def ChebyshevPrimeSqrtMassFormalizationTarget : Prop :=
  ∀ Y : ℕ, 256 ≤ Y →
    (∑ p ∈ Nat.primesLE Y,
      (Real.sqrt (p : ℝ))⁻¹) ≤
        19 * Real.sqrt (Y : ℝ) / Real.log (Y : ℝ)

/-- The near-critical 76 sqrt(Y)/log(Y) Euler bound is proved
CONDITIONALLY on the precise remaining weighted-prime source
theorem, not misidentified as an already checked Lean result. -/
theorem bankSquareRootWeight_le_chebyshev_cut
    (hCheb : ChebyshevPrimeSqrtMassFormalizationTarget)
    (B : PrimeBand) (Y : ℕ) (hYlarge : 256 ≤ Y)
    (hY : ∀ p ∈ B.primes, p ≤ Y) :
    bankSquareRootWeight B.primes ≤
      Real.exp (76 * Real.sqrt (Y : ℝ) /
        Real.log (Y : ℝ)) := by
  have hsub : B.primes ⊆ Nat.primesLE Y := by
    intro p hp
    exact Nat.mem_primesLE.mpr ⟨hY p hp, B.prime_mem p hp⟩
  have hmass :
      (∑ p ∈ B.primes, (Real.sqrt (p : ℝ))⁻¹) ≤
        19 * Real.sqrt (Y : ℝ) / Real.log (Y : ℝ) := by
    calc
      (∑ p ∈ B.primes, (Real.sqrt (p : ℝ))⁻¹) ≤
          ∑ p ∈ Nat.primesLE Y, (Real.sqrt (p : ℝ))⁻¹ := by
        apply Finset.sum_le_sum_of_subset_of_nonneg hsub
        intro p hp1 hp2
        positivity
      _ ≤ 19 * Real.sqrt (Y : ℝ) / Real.log (Y : ℝ) :=
        hCheb Y hYlarge
  calc
    bankSquareRootWeight B.primes ≤
        Real.exp
          (4 * ∑ p ∈ B.primes, (Real.sqrt (p : ℝ))⁻¹) :=
      bankSquareRootWeight_le_exp_primeMass B
    _ ≤ Real.exp
          (76 * Real.sqrt (Y : ℝ) / Real.log (Y : ℝ)) := by
      apply Real.exp_le_exp.mpr
      have h := mul_le_mul_of_nonneg_left hmass
        (by norm_num : (0 : ℝ) ≤ 4)
      convert h using 1 <;> ring

end GRWTSK.NumberTheory.Moebius.GrowingPrimeBankEulerCost
