/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDyadicBirthHighLowLongGap
import Mathlib.Algebra.Order.Chebyshev
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib

/-!
# Finite Abel-Chebyshev prime-square-root mass, original Euler bank

The pinned Mathlib Finset.sum_mul_le_sum_mul_of_sum_range_le
is a finite Abel comparison theorem. For the TRUE prime logarithm
coefficient a_n = log(n) if n.Prime, else 0, its partial sum is the
existing Chebyshev.theta(n), with theta(n)<=log(4)*n.
Comparison against the constant coefficient log(4), weighted by the
antitone 1/sqrt(n), bounds

  sum_(p prime<=Y) log(p)/sqrt(p) <=2*log(4)*sqrt(Y).

Split the ORIGINAL selected primes at the REAL sqrt(Y):
  * lower: <=2*sqrt(sqrt(Y));
  * upper: <= (2/log Y) * weighted prime sum.

Pinned Real.log_le_rpow_div (epsilon=1/4) and log(4)<=2
yield the explicit UNCONDITIONAL elementary inequality
  sum_(p prime<=Y) 1/sqrt(p) <=16*sqrt(Y)/log(Y), Y>=256.

This is STRONGER than the prior still-propositional 19 bound.
It supplies the EXACT old ChebyshevPrimeSqrtMassFormalizationTarget
and makes the original bank Euler cost <=exp(64*sqrt(Y)/log(Y)).
All original bank, support, source signs and masks remain unchanged.

None of these positive prime-count estimates supply the missing
all-positive-rate SIGNED low/low and matched high/low correlations.
This is a source proof candidate, NOT kernel acceptance.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.ChebyshevWeightedPrimeAbel

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.QuantitativeMertensAbsoluteAbel
open GRWTSK.NumberTheory.Moebius.GrowingPrimeBankEulerCost
open GRWTSK.NumberTheory.Moebius.DyadicBirthHighLowLongGap

/-- The exact unit-inclusive positive integer inventory is a shift
of range; used solely to invoke Mathlib's finite Abel comparison. -/
private theorem sum_succ_range_eq_Icc (N : ℕ) (f : ℕ → ℝ) :
    (∑ k ∈ Finset.range N, f (k + 1)) =
      ∑ n ∈ Finset.Icc 1 N, f n := by
  classical
  have heq : Finset.Icc 1 N =
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

/-- True prime logarithm coefficients on the original positive
integer inventory, with nonprime and zero labels set to zero. -/
private def primeLogCoeff (n : ℕ) : ℝ :=
  if n.Prime then Real.log (n : ℝ) else 0

/-- Shift to 0-indexing for pinned Finset Abel; n=1 remains and is
zero because 1 is not prime. -/
private def shiftedPrimeLog (k : ℕ) : ℝ :=
  primeLogCoeff (k + 1)

private def shiftedInvSqrt (k : ℕ) : ℝ :=
  (Real.sqrt (((k + 1 : ℕ) : ℝ)))⁻¹

/-- Each genuine prime theta prefix equals the original finite
sum of the log coefficients. Neither prime 2 nor n=1 is lost. -/
theorem shifted_primeLog_sum_eq_theta (N : ℕ) :
    (∑ k ∈ Finset.range N, shiftedPrimeLog k) =
      Chebyshev.theta (N : ℝ) := by
  classical
  calc
    (∑ k ∈ Finset.range N, shiftedPrimeLog k) =
        ∑ n ∈ Finset.Icc 1 N, primeLogCoeff n := by
      exact sum_succ_range_eq_Icc N _
    _ = ∑ p ∈ Nat.primesLE N, Real.log (p : ℝ) := by
      rw [Nat.primesLE_eq_filter_Icc_one, Finset.sum_filter]
      apply Finset.sum_congr rfl
      intro p hp
      rfl
    _ = Chebyshev.theta (N : ℝ) :=
      (Chebyshev.theta_eq_sum_primesLE_log N).symm

/-- The positive shifted inverse-square-root weight is antitone on
all natural labels, not merely on the prime subset. -/
private theorem shiftedInvSqrt_antitone :
    Antitone shiftedInvSqrt := by
  intro i j hij
  have hcast : (((i + 1 : ℕ) : ℝ)) ≤
      (((j + 1 : ℕ) : ℝ)) := by
    exact_mod_cast Nat.add_le_add_right hij 1
  have hroot := Real.sqrt_le_sqrt hcast
  have hrootpos :
      0 < Real.sqrt (((i + 1 : ℕ) : ℝ)) := by
    positivity
  change (Real.sqrt (((j + 1 : ℕ) : ℝ)))⁻¹ ≤
    (Real.sqrt (((i + 1 : ℕ) : ℝ)))⁻¹
  simpa only [one_div] using
    (one_div_le_one_div_of_le hrootpos hroot)

/-- Source-exact true prime logarithmic mass. The pinned finite Abel
comparison dominates the genuine theta partial sums by log(4)*k.
No prime-number theorem, contour input or asymptotic assumption. -/
theorem prime_log_over_sqrt_le_two_logFour_sqrt
    (N : ℕ) :
    (∑ p ∈ Nat.primesLE N,
      Real.log (p : ℝ) * (Real.sqrt (p : ℝ))⁻¹) ≤
      2 * Real.log 4 * Real.sqrt (N : ℝ) := by
  classical
  have hprefix (k : ℕ) (hk : k ≤ N) :
      (∑ i ∈ Finset.range k, shiftedPrimeLog i) ≤
        ∑ i ∈ Finset.range k, (Real.log (4 : ℝ)) := by
    calc
      (∑ i ∈ Finset.range k, shiftedPrimeLog i) =
          Chebyshev.theta (k : ℝ) :=
        shifted_primeLog_sum_eq_theta k
      _ ≤ Real.log 4 * (k : ℝ) :=
        Chebyshev.theta_le_log4_mul_x (Nat.cast_nonneg k)
      _ = ∑ i ∈ Finset.range k, Real.log (4 : ℝ) := by
        simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
        ring
  have hg_nonneg : 0 ≤ shiftedInvSqrt := by
    intro k
    dsimp [shiftedInvSqrt]
    positivity
  have hg_anti : AntitoneOn shiftedInvSqrt (Set.Iio N) :=
    shiftedInvSqrt_antitone.antitoneOn _
  have hAbel :=
    Finset.sum_mul_le_sum_mul_of_sum_range_le
      (f := shiftedPrimeLog)
      (c := fun _ : ℕ => Real.log (4 : ℝ))
      (g := shiftedInvSqrt)
      (n := N) hprefix hg_nonneg hg_anti
  have hReindex :
      (∑ p ∈ Nat.primesLE N,
        Real.log (p : ℝ) * (Real.sqrt (p : ℝ))⁻¹) =
        ∑ k ∈ Finset.range N,
          shiftedPrimeLog k * shiftedInvSqrt k := by
    calc
      (∑ p ∈ Nat.primesLE N,
          Real.log (p : ℝ) * (Real.sqrt (p : ℝ))⁻¹) =
          ∑ p ∈ Finset.Icc 1 N,
            if p.Prime then
              Real.log (p : ℝ) * (Real.sqrt (p : ℝ))⁻¹
            else 0 := by
        rw [Nat.primesLE_eq_filter_Icc_one, Finset.sum_filter]
      _ = ∑ k ∈ Finset.range N,
          shiftedPrimeLog k * shiftedInvSqrt k := by
        have hShift := (sum_succ_range_eq_Icc N
          (fun p : ℕ => primeLogCoeff p *
            (Real.sqrt (p : ℝ))⁻¹)).symm
        calc
          (∑ p ∈ Finset.Icc 1 N,
            if p.Prime then
              Real.log (p : ℝ) * (Real.sqrt (p : ℝ))⁻¹
            else 0) =
              ∑ p ∈ Finset.Icc 1 N,
                primeLogCoeff p * (Real.sqrt (p : ℝ))⁻¹ := by
              apply Finset.sum_congr rfl
              intro p hp
              by_cases hprime : p.Prime <;>
                simp [primeLogCoeff, hprime]
          _ = ∑ k ∈ Finset.range N,
              shiftedPrimeLog k * shiftedInvSqrt k := by
              simpa only [shiftedPrimeLog, shiftedInvSqrt] using hShift
  have hlog4 : 0 ≤ Real.log (4 : ℝ) :=
    Real.log_nonneg (by norm_num)
  calc
    (∑ p ∈ Nat.primesLE N,
        Real.log (p : ℝ) * (Real.sqrt (p : ℝ))⁻¹) =
        ∑ k ∈ Finset.range N,
          shiftedPrimeLog k * shiftedInvSqrt k := hReindex
    _ ≤ ∑ k ∈ Finset.range N,
          Real.log (4 : ℝ) * shiftedInvSqrt k := hAbel
    _ = Real.log (4 : ℝ) *
          (∑ k ∈ Finset.range N, shiftedInvSqrt k) := by
      rw [Finset.mul_sum]
    _ ≤ Real.log (4 : ℝ) * (2 * Real.sqrt (N : ℝ)) := by
      exact mul_le_mul_of_nonneg_left
        (invsqrt_range_sum_le_two_sqrt N) hlog4
    _ = 2 * Real.log 4 * Real.sqrt (N : ℝ) := by ring

/-- The elementary positive real inequality log(Y)<=4*sqrt(sqrt Y),
using the PINNED Real.log_le_rpow_div at exponent 1/4. -/
private theorem log_le_four_sqrt_sqrt (Y : ℕ) :
    Real.log (Y : ℝ) ≤ 4 * Real.sqrt (Real.sqrt (Y : ℝ)) := by
  have hRootFourth :
      ((Y : ℝ)) ^ ((1 : ℝ) / 4) =
        Real.sqrt (Real.sqrt (Y : ℝ)) := by
    rw [Real.sqrt_eq_rpow, Real.sqrt_eq_rpow,
      ← Real.rpow_mul (Nat.cast_nonneg Y)]
    norm_num
  calc
    Real.log (Y : ℝ) ≤
        (Y : ℝ) ^ ((1 : ℝ) / 4) / ((1 : ℝ) / 4) :=
      Real.log_le_rpow_div (Nat.cast_nonneg Y)
        (by norm_num : (0 : ℝ) < (1 : ℝ) / 4)
    _ = 4 * Real.sqrt (Real.sqrt (Y : ℝ)) := by
      rw [hRootFourth]
      ring

private theorem log_four_le_two :
    Real.log (4 : ℝ) ≤ 2 := by
  have ht := Real.log_le_sub_one_of_pos
    (show (0 : ℝ) < 2 by norm_num)
  have hlog :
      Real.log (4 : ℝ) = 2 * Real.log (2 : ℝ) := by
    rw [show (4 : ℝ) = 2 * 2 by norm_num,
      Real.log_mul (by norm_num) (by norm_num)]
    ring
  rw [hlog]
  linarith

/-- REAL sqrt(Y) prime cutoff, not an arbitrary rounded integer.
This retains the exact two portions of Nat.primesLE Y. -/
private def smallPrimes (Y : ℕ) : Finset ℕ :=
  (Nat.primesLE Y).filter (fun p => (p : ℝ) ≤ Real.sqrt (Y : ℝ))

private def largePrimes (Y : ℕ) : Finset ℕ :=
  (Nat.primesLE Y).filter (fun p => Real.sqrt (Y : ℝ) < (p : ℝ))

/-- Elementary lower-prime bound including the exact p<=sqrt(Y)
endpoint. Uses the already-published positive integer reciprocal
sqrt telescope; 1 remains in that telescope but is not prime. -/
private theorem smallPrimeInvSqrt_le_two_rootroot (Y : ℕ) :
    (∑ p ∈ smallPrimes Y, (Real.sqrt (p : ℝ))⁻¹) ≤
      2 * Real.sqrt (Real.sqrt (Y : ℝ)) := by
  classical
  let K : ℕ := ⌊Real.sqrt (Y : ℝ)⌋₊
  have hsub : smallPrimes Y ⊆ Finset.Icc 1 K := by
    intro p hp
    obtain ⟨hpP, hpCut⟩ := Finset.mem_filter.mp hp
    exact Finset.mem_Icc.mpr
      ⟨(Nat.prime_of_mem_primesLE hpP).one_le,
        Nat.le_floor hpCut⟩
  calc
    (∑ p ∈ smallPrimes Y, (Real.sqrt (p : ℝ))⁻¹) ≤
        ∑ n ∈ Finset.Icc 1 K, (Real.sqrt (n : ℝ))⁻¹ := by
      apply Finset.sum_le_sum_of_subset_of_nonneg hsub
      intro p hp _
      positivity
    _ = ∑ k ∈ Finset.range K,
          (Real.sqrt (((k + 1 : ℕ) : ℝ)))⁻¹ := by
      exact (sum_succ_range_eq_Icc K _).symm
    _ ≤ 2 * Real.sqrt (K : ℝ) :=
      invsqrt_range_sum_le_two_sqrt K
    _ ≤ 2 * Real.sqrt (Real.sqrt (Y : ℝ)) := by
      apply mul_le_mul_of_nonneg_left _ (by norm_num)
      exact Real.sqrt_le_sqrt
        (Nat.floor_le (Real.sqrt_nonneg _))

/-- Larger prime labels supply at least half the total log(Y):
each p>sqrt(Y) has log(p)>=log(Y)/2. -/
private theorem largePrime_log_lower
    (Y p : ℕ) (hY : 256 ≤ Y)
    (hp : p ∈ largePrimes Y) :
    Real.log (Y : ℝ) ≤ 2 * Real.log (p : ℝ) := by
  have hYpos : (0 : ℝ) < (Y : ℝ) := by
    exact_mod_cast (show 0 < Y by omega)
  have hRpos : 0 < Real.sqrt (Y : ℝ) :=
    Real.sqrt_pos.mpr hYpos
  have hpgt : Real.sqrt (Y : ℝ) < (p : ℝ) :=
    (Finset.mem_filter.mp hp).2
  have h := Real.log_lt_log hRpos hpgt
  rw [Real.log_sqrt hYpos.le] at h
  linarith

/-- The high-prime mass is bounded by 2/log(Y) times the complete
true-prime logarithmic mass, with NO equality of prime supports
assumed. -/
private theorem largePrimeInvSqrt_le_logMass
    (Y : ℕ) (hY : 256 ≤ Y) :
    (∑ p ∈ largePrimes Y,
      (Real.sqrt (p : ℝ))⁻¹) ≤
      (2 / Real.log (Y : ℝ)) *
        (∑ p ∈ Nat.primesLE Y,
          Real.log (p : ℝ) * (Real.sqrt (p : ℝ))⁻¹) := by
  have hYone : (1 : ℝ) < (Y : ℝ) := by
    exact_mod_cast (show 1 < Y by omega)
  have hlogpos : 0 < Real.log (Y : ℝ) := Real.log_pos hYone
  have hsub : largePrimes Y ⊆ Nat.primesLE Y :=
    Finset.filter_subset _ _
  have hWsub :
      (∑ p ∈ largePrimes Y,
        Real.log (p : ℝ) * (Real.sqrt (p : ℝ))⁻¹) ≤
      ∑ p ∈ Nat.primesLE Y,
        Real.log (p : ℝ) * (Real.sqrt (p : ℝ))⁻¹ := by
    apply Finset.sum_le_sum_of_subset_of_nonneg hsub
    intro p hp _
    have hpOne : (1 : ℝ) ≤ (p : ℝ) := by
      exact_mod_cast (Nat.prime_of_mem_primesLE hp).one_le
    exact mul_nonneg (Real.log_nonneg hpOne) (by positivity)
  calc
    (∑ p ∈ largePrimes Y, (Real.sqrt (p : ℝ))⁻¹) ≤
      ∑ p ∈ largePrimes Y,
        (2 / Real.log (Y : ℝ)) *
          (Real.log (p : ℝ) * (Real.sqrt (p : ℝ))⁻¹) := by
      apply Finset.sum_le_sum
      intro p hp
      have hlog := largePrime_log_lower Y p hY hp
      have hratio :
          (1 : ℝ) ≤
            (2 * Real.log (p : ℝ)) / Real.log (Y : ℝ) :=
        (le_div_iff₀ hlogpos).2 (by linarith)
      have hnonneg :
          0 ≤ (Real.sqrt (p : ℝ))⁻¹ := by positivity
      calc
        (Real.sqrt (p : ℝ))⁻¹ =
            1 * (Real.sqrt (p : ℝ))⁻¹ := (one_mul _).symm
        _ ≤ ((2 * Real.log (p : ℝ)) /
              Real.log (Y : ℝ)) *
              (Real.sqrt (p : ℝ))⁻¹ :=
          mul_le_mul_of_nonneg_right hratio hnonneg
        _ = (2 / Real.log (Y : ℝ)) *
              (Real.log (p : ℝ) *
                (Real.sqrt (p : ℝ))⁻¹) := by ring
    _ = (2 / Real.log (Y : ℝ)) *
          (∑ p ∈ largePrimes Y,
            Real.log (p : ℝ) * (Real.sqrt (p : ℝ))⁻¹) := by
      rw [Finset.mul_sum]
    _ ≤ (2 / Real.log (Y : ℝ)) *
          (∑ p ∈ Nat.primesLE Y,
            Real.log (p : ℝ) * (Real.sqrt (p : ℝ))⁻¹) :=
      mul_le_mul_of_nonneg_left hWsub (by positivity)

/-- THE complete unconditional finite weighted Chebyshev supplier.
We use the round-number coefficient 16 (stronger than historical 19)
to keep all constants exact, with no Perron/PNT or signed arithmetic. -/
theorem prime_sqrt_mass_le_sixteen
    (Y : ℕ) (hY : 256 ≤ Y) :
    (∑ p ∈ Nat.primesLE Y, (Real.sqrt (p : ℝ))⁻¹) ≤
      16 * Real.sqrt (Y : ℝ) / Real.log (Y : ℝ) := by
  classical
  have hYone : (1 : ℝ) < (Y : ℝ) := by
    exact_mod_cast (show 1 < Y by omega)
  have hlogpos : 0 < Real.log (Y : ℝ) := Real.log_pos hYone
  have hSmall :=
    smallPrimeInvSqrt_le_two_rootroot Y
  have hsmallQuart :
      (2 : ℝ) * Real.sqrt (Real.sqrt (Y : ℝ)) ≤
        8 * Real.sqrt (Y : ℝ) / Real.log (Y : ℝ) := by
    apply (le_div_iff₀ hlogpos).2
    have h := log_le_four_sqrt_sqrt Y
    have hr : 0 ≤ Real.sqrt (Real.sqrt (Y : ℝ)) :=
      Real.sqrt_nonneg _
    have hp := mul_le_mul_of_nonneg_left h hr
    have hsq :
        (Real.sqrt (Real.sqrt (Y : ℝ))) ^ 2 =
          Real.sqrt (Y : ℝ) :=
      Real.sq_sqrt (Real.sqrt_nonneg _)
    nlinarith
  have hSmall8 :
      (∑ p ∈ smallPrimes Y, (Real.sqrt (p : ℝ))⁻¹) ≤
        8 * Real.sqrt (Y : ℝ) / Real.log (Y : ℝ) :=
    hSmall.trans hsmallQuart
  have hHigh :=
    largePrimeInvSqrt_le_logMass Y hY
  have hLogWeighted :=
    prime_log_over_sqrt_le_two_logFour_sqrt Y
  have hLogFour := log_four_le_two
  have hHigh8 :
      (∑ p ∈ largePrimes Y, (Real.sqrt (p : ℝ))⁻¹) ≤
        8 * Real.sqrt (Y : ℝ) / Real.log (Y : ℝ) := by
    have hnonneg : 0 ≤ 2 / Real.log (Y : ℝ) := by positivity
    have hsqrt0 : 0 ≤ Real.sqrt (Y : ℝ) := Real.sqrt_nonneg _
    have hnum :
        4 * Real.log 4 * Real.sqrt (Y : ℝ) ≤
          8 * Real.sqrt (Y : ℝ) := by
      nlinarith [mul_nonneg
        (show (0 : ℝ) ≤ 2 - Real.log 4 by linarith) hsqrt0]
    calc
      _ ≤ (2 / Real.log (Y : ℝ)) *
          (∑ p ∈ Nat.primesLE Y,
            Real.log (p : ℝ) * (Real.sqrt (p : ℝ))⁻¹) :=
        hHigh
      _ ≤ (2 / Real.log (Y : ℝ)) *
          (2 * Real.log 4 * Real.sqrt (Y : ℝ)) :=
        mul_le_mul_of_nonneg_left hLogWeighted hnonneg
      _ = (4 * Real.log 4 * Real.sqrt (Y : ℝ)) /
          Real.log (Y : ℝ) := by ring
      _ ≤ 8 * Real.sqrt (Y : ℝ) /
          Real.log (Y : ℝ) :=
        div_le_div_of_nonneg_right hnum hlogpos.le
  have hSplit :
      (∑ p ∈ Nat.primesLE Y,
        (Real.sqrt (p : ℝ))⁻¹) =
      (∑ p ∈ smallPrimes Y,
        (Real.sqrt (p : ℝ))⁻¹) +
      (∑ p ∈ largePrimes Y,
        (Real.sqrt (p : ℝ))⁻¹) := by
    simpa only [smallPrimes, largePrimes, not_le] using
      (Finset.sum_filter_add_sum_filter_not
        (s := Nat.primesLE Y)
        (p := fun p : ℕ => (p : ℝ) ≤ Real.sqrt (Y : ℝ))
        (f := fun p : ℕ => (Real.sqrt (p : ℝ))⁻¹)).symm
  calc
    (∑ p ∈ Nat.primesLE Y,
      (Real.sqrt (p : ℝ))⁻¹) =
        (∑ p ∈ smallPrimes Y, (Real.sqrt (p : ℝ))⁻¹) +
        (∑ p ∈ largePrimes Y, (Real.sqrt (p : ℝ))⁻¹) :=
      hSplit
    _ ≤ 8 * Real.sqrt (Y : ℝ) / Real.log (Y : ℝ) +
        8 * Real.sqrt (Y : ℝ) / Real.log (Y : ℝ) :=
      add_le_add hSmall8 hHigh8
    _ = 16 * Real.sqrt (Y : ℝ) / Real.log (Y : ℝ) := by ring

/-- Discharge the EXACT previously named Chebyshev target at 19.
It is a CONSEQUENCE of the stronger 16-constant theorem, not an
additional assumption, axiom, or hidden import of the desired claim. -/
theorem chebyshevPrimeSqrtMassFormalizationTarget :
    ChebyshevPrimeSqrtMassFormalizationTarget := by
  intro Y hY
  have hYone : (1 : ℝ) < (Y : ℝ) := by
    exact_mod_cast (show 1 < Y by omega)
  have hlogpos : 0 < Real.log (Y : ℝ) := Real.log_pos hYone
  have hnum :
      16 * Real.sqrt (Y : ℝ) ≤ 19 * Real.sqrt (Y : ℝ) := by
    nlinarith [Real.sqrt_nonneg (Y : ℝ)]
  exact (prime_sqrt_mass_le_sixteen Y hY).trans
    (div_le_div_of_nonneg_right hnum hlogpos.le)

/-- Actual original bank Euler weight under moving cutoff Y:
all genuine selected primes p<=Y, with no fixed-bank constant.
The coefficient 64 improves the earlier conditional coefficient 76. -/
theorem bankSquareRootWeight_le_exp_sixtyfour
    (B : PrimeBand) (Y : ℕ) (hYlarge : 256 ≤ Y)
    (hY : ∀ p ∈ B.primes, p ≤ Y) :
    bankSquareRootWeight B.primes ≤
      Real.exp (64 * Real.sqrt (Y : ℝ) /
        Real.log (Y : ℝ)) := by
  have hsubset : B.primes ⊆ Nat.primesLE Y := by
    intro p hp
    exact Nat.mem_primesLE.mpr ⟨hY p hp, B.prime_mem p hp⟩
  have hmass :
      (∑ p ∈ B.primes, (Real.sqrt (p : ℝ))⁻¹) ≤
        16 * Real.sqrt (Y : ℝ) / Real.log (Y : ℝ) := by
    calc
      _ ≤ ∑ p ∈ Nat.primesLE Y, (Real.sqrt (p : ℝ))⁻¹ := by
        apply Finset.sum_le_sum_of_subset_of_nonneg hsubset
        intro p hp _
        positivity
      _ ≤ 16 * Real.sqrt (Y : ℝ) /
          Real.log (Y : ℝ) :=
        prime_sqrt_mass_le_sixteen Y hYlarge
  calc
    bankSquareRootWeight B.primes ≤
        Real.exp
          (4 * ∑ p ∈ B.primes, (Real.sqrt (p : ℝ))⁻¹) :=
      bankSquareRootWeight_le_exp_primeMass B
    _ ≤ Real.exp (64 * Real.sqrt (Y : ℝ) /
        Real.log (Y : ℝ)) := by
      apply Real.exp_le_exp.mpr
      have h := mul_le_mul_of_nonneg_left hmass
        (by norm_num : (0 : ℝ) ≤ 4)
      convert h using 1 <;> ring

/-- Every-positive-rate cost ledger for a MOVING bank: explicit
cutoff budget, no hidden Y-independent constant. -/
theorem bankSquareRootWeight_le_exp_of_nearcritical_budget
    (B : PrimeBand) (Y : ℕ) (T ε : ℝ)
    (hYlarge : 256 ≤ Y)
    (hY : ∀ p ∈ B.primes, p ≤ Y)
    (hBudget :
      64 * Real.sqrt (Y : ℝ) / Real.log (Y : ℝ) ≤ ε * T) :
    bankSquareRootWeight B.primes ≤ Real.exp (ε * T) :=
  (bankSquareRootWeight_le_exp_sixtyfour B Y hYlarge hY).trans
    (Real.exp_le_exp.mpr hBudget)

/-- In either true signed ordered high/low sector the near-critical
bank budget is visible; the absolute exponent is STILL 1/2+epsilon
plus sqrt(T), not all-positive-rate and not RH-strength. -/
theorem original_masked_high_low_nearcritical_budget
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X Y : ℕ) (hX : 1 ≤ X) (ε : ℝ)
    (hYlarge : 256 ≤ Y)
    (hY : ∀ p ∈ B.primes, p ≤ Y)
    (hBudget :
      64 * Real.sqrt (Y : ℝ) / Real.log (Y : ℝ) ≤
        ε * Real.log (2 * (X : ℝ))) :
    |maskedTaggedBlock B.primes a b A
      (highSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (Real.log (2 * (X : ℝ)))| ≤
      4 * Real.log 2 * Real.sqrt (2 * (X : ℝ)) *
        Real.exp
          (Real.sqrt (Real.log (2 * (X : ℝ))) +
            ε * Real.log (2 * (X : ℝ))) := by
  have h := original_masked_high_low_abs_le B a b A X hX
  have hv := bankSquareRootWeight_le_exp_of_nearcritical_budget
    B Y (Real.log (2 * (X : ℝ))) ε hYlarge hY hBudget
  have hK :
      0 ≤ 4 * Real.log 2 * Real.sqrt (2 * (X : ℝ)) *
        Real.exp (Real.sqrt (Real.log (2 * (X : ℝ)))) := by
    have hlog : 0 ≤ Real.log (2 : ℝ) :=
      Real.log_nonneg (by norm_num)
    positivity
  calc
    _ ≤ 4 * Real.log 2 * Real.sqrt (2 * (X : ℝ)) *
          Real.exp (Real.sqrt (Real.log (2 * (X : ℝ)))) *
            bankSquareRootWeight B.primes := h
    _ ≤ 4 * Real.log 2 * Real.sqrt (2 * (X : ℝ)) *
          Real.exp (Real.sqrt (Real.log (2 * (X : ℝ)))) *
            Real.exp (ε * Real.log (2 * (X : ℝ))) :=
      mul_le_mul_of_nonneg_left hv hK
    _ = 4 * Real.log 2 * Real.sqrt (2 * (X : ℝ)) *
          Real.exp
            (Real.sqrt (Real.log (2 * (X : ℝ))) +
              ε * Real.log (2 * (X : ℝ))) := by
      rw [Real.exp_add]
      ring

/-- SECOND original signed ordered orientation, explicitly
independent of the first. No symmetry of the rough/matched
coefficient tags is assumed; all original indices and masks remain. -/
theorem original_masked_low_high_nearcritical_budget
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X Y : ℕ) (hX : 1 ≤ X) (ε : ℝ)
    (hYlarge : 256 ≤ Y)
    (hY : ∀ p ∈ B.primes, p ≤ Y)
    (hBudget :
      64 * Real.sqrt (Y : ℝ) / Real.log (Y : ℝ) ≤
        ε * Real.log (2 * (X : ℝ))) :
    |maskedTaggedBlock B.primes a b A
      (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (highSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (Real.log (2 * (X : ℝ)))| ≤
      4 * Real.log 2 * Real.sqrt (2 * (X : ℝ)) *
        Real.exp
          (Real.sqrt (Real.log (2 * (X : ℝ))) +
            ε * Real.log (2 * (X : ℝ))) := by
  have h := original_masked_low_high_abs_le B a b A X hX
  have hv := bankSquareRootWeight_le_exp_of_nearcritical_budget
    B Y (Real.log (2 * (X : ℝ))) ε hYlarge hY hBudget
  have hK :
      0 ≤ 4 * Real.log 2 * Real.sqrt (2 * (X : ℝ)) *
        Real.exp (Real.sqrt (Real.log (2 * (X : ℝ)))) := by
    have hlog : 0 ≤ Real.log (2 : ℝ) :=
      Real.log_nonneg (by norm_num)
    positivity
  calc
    _ ≤ 4 * Real.log 2 * Real.sqrt (2 * (X : ℝ)) *
          Real.exp (Real.sqrt (Real.log (2 * (X : ℝ)))) *
            bankSquareRootWeight B.primes := h
    _ ≤ 4 * Real.log 2 * Real.sqrt (2 * (X : ℝ)) *
          Real.exp (Real.sqrt (Real.log (2 * (X : ℝ)))) *
            Real.exp (ε * Real.log (2 * (X : ℝ))) :=
      mul_le_mul_of_nonneg_left hv hK
    _ = 4 * Real.log 2 * Real.sqrt (2 * (X : ℝ)) *
          Real.exp
            (Real.sqrt (Real.log (2 * (X : ℝ))) +
              ε * Real.log (2 * (X : ℝ))) := by
      rw [Real.exp_add]
      ring

end GRWTSK.NumberTheory.Moebius.ChebyshevWeightedPrimeAbel
