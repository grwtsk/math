/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.RadicalDeletionGenerator
import GRWTSK.MeasureAndIntegration.PickupPhaseQuadratic
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.MertensSignedAbelPrimeExtraction

/-!
# Complete radical return of the phase cross sum and exact per-shift Abel identity

Both orders, all source labels and the repeated-prime guard are retained.
The terminal Gram contribution vanishes by the literal birth condition.
These finite identities do not assert cancellation or the all-positive-rate bound.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupRadicalPhaseReturn

open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open RadicalDeletionGenerator PickupPhaseQuadratic MertensSignedPairDescent

theorem phaseGram_symmetric (T : ℝ) (m n : ℕ) : phaseGram T m n = phaseGram T n m := by
  have he : separation T n m = -separation T m n := by unfold separation; ring
  rw [phaseGram, phaseGram, responseGram_symm T m n, he, Real.sinc_neg]

/-- Generic complete ordered-pair identity; no diagonal is counted twice. -/
theorem ordered_offdiag_eq_twice_upper (S : Finset ℕ) (f : ℕ → ℕ → ℝ)
    (hsym : ∀ m n, f m n = f n m) :
    (∑ m ∈ S, ∑ n ∈ S, if m ≠ n then f m n else 0) =
      2 * ∑ m ∈ S, ∑ n ∈ S, if m < n then f m n else 0 := by
  have he : (∑ m ∈ S, ∑ n ∈ S, if m ≠ n then f m n else 0) =
      (∑ m ∈ S, ∑ n ∈ S, if m < n then f m n else 0) +
      (∑ m ∈ S, ∑ n ∈ S, if n < m then f m n else 0) := by
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro m _
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro n _
    rcases lt_trichotomy m n with h | h | h
    · simp [h, h.ne, Nat.not_lt.mpr h.le]
    · subst n; simp
    · simp [h, h.ne', Nat.not_lt.mpr h.le]
  have hr : (∑ m ∈ S, ∑ n ∈ S, if n < m then f m n else 0) =
      ∑ m ∈ S, ∑ n ∈ S, if m < n then f m n else 0 := by
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro m _
    apply Finset.sum_congr rfl
    intro n _
    rw [hsym n m]
  rw [he, hr]
  ring

theorem phaseCross_eq_upper (T : ℝ) :
    phaseCross T = 2 * ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        if m < n then moebiusReal m * moebiusReal n * phaseGram T m n else 0 := by
  apply ordered_offdiag_eq_twice_upper
  intro m n
  rw [phaseGram_symmetric T m n]
  ring

/-- The SAME phase cross sum is a radical-normalized prime-quotient aggregate.
The guard is the full repeated-prime correction, not a discarded term. -/
theorem phaseCross_eq_radical_deletion (T : ℝ) :
    phaseCross T = -2 * ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        if m < n then moebiusReal m * phaseGram T m n *
          (∑ p ∈ n.primeFactors, weight n p *
            (if p ∣ n / p then 0 else moebiusReal (n / p))) else 0 := by
  rw [phaseCross_eq_upper]
  have he : (∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        if m < n then moebiusReal m * moebiusReal n * phaseGram T m n else 0) =
      -(∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
          if m < n then moebiusReal m * phaseGram T m n * step moebiusReal n else 0) := by
    rw [← Finset.sum_neg_distrib]
    apply Finset.sum_congr rfl
    intro m hm
    rw [← Finset.sum_neg_distrib]
    apply Finset.sum_congr rfl
    intro n _
    by_cases hmn : m < n
    · have hn : 2 ≤ n := by have := (Finset.mem_Icc.mp hm).1; omega
      rw [if_pos hmn, if_pos hmn, step_moebius hn]
      ring
    · simp [hmn]
  rw [he]
  unfold step
  ring

/-- Prefix including position k. Its index convention is stated explicitly. -/
def partial (a : ℕ → ℝ) (k : ℕ) : ℝ := ∑ i ∈ Finset.range (k + 1), a i

theorem partial_succ (a : ℕ → ℝ) (k : ℕ) :
    partial a (k + 1) = partial a k + a (k + 1) := Finset.sum_range_succ _ _

/-- Finite Abel identity with the full terminal term, before any birth specialization. -/
theorem abel_with_terminal (M : ℕ) (a w : ℕ → ℝ) :
    (∑ k ∈ Finset.range (M + 1), a k * w k) =
      w M * partial a M + ∑ k ∈ Finset.range M, (w k - w (k + 1)) * partial a k := by
  induction M with
  | zero => simp [partial]
  | succ M ih =>
      calc
        _ = (∑ k ∈ Finset.range (M + 1), a k * w k) + a (M + 1) * w (M + 1) :=
          Finset.sum_range_succ _ _
        _ = (w M * partial a M +
          ∑ k ∈ Finset.range M, (w k - w (k + 1)) * partial a k) +
            a (M + 1) * w (M + 1) := by rw [ih]
        _ = _ := by rw [partial_succ, Finset.sum_range_succ]; ring

/-- A response at or before its birth has exactly zero value. -/
theorem response_zero_before_birth {n : ℕ} (hn : 1 ≤ n) {u : ℝ}
    (hu : u ≤ Real.log (n : ℝ)) : pickupResponse n u = 0 := by
  unfold pickupResponse
  by_cases hb : Real.log (n : ℝ) ≤ u
  · have he : u = Real.log (n : ℝ) := le_antisymm hu hb
    rw [if_pos hb, he, pickup_exp_negative_log_half hn]
    ring
  · simp [hb]

/-- The terminal index N is retained and proved to contribute zero. -/
theorem responseGram_terminal (N m : ℕ) (hN : 1 ≤ N) :
    pickupResponseGram (Real.log (N : ℝ)) m N = 0 := by
  have hlog : 0 ≤ Real.log (N : ℝ) := Real.log_nonneg (by exact_mod_cast hN)
  unfold pickupResponseGram
  calc
    _ = ∫ u in (0 : ℝ)..Real.log (N : ℝ), (0 : ℝ) := by
      apply intervalIntegral.integral_congr
      intro u hu
      have hu' : u ∈ Set.Icc 0 (Real.log (N : ℝ)) := (Set.uIcc_of_le hlog) ▸ hu
      rw [response_zero_before_birth hN hu'.2, mul_zero]
    _ = 0 := intervalIntegral.integral_zero

def shiftWeight (N h k : ℕ) : ℝ := pickupResponseGram (Real.log (N : ℝ)) (k + 1) (k + 1 + h)

/-- Exact ordinary prefixes, with the original variable length k+1. -/
theorem shift_abel (N h : ℕ) (hN : 1 ≤ N) (hh : h < N) :
    (∑ k ∈ Finset.range (N - h),
      moebiusReal (k + 1) * moebiusReal (k + 1 + h) * shiftWeight N h k) =
      ∑ k ∈ Finset.range (N - h - 1),
        (shiftWeight N h k - shiftWeight N h (k + 1)) * mertensTwoPointPrefix h (k + 1) := by
  have hlen : N - h - 1 + 1 = N - h := by omega
  have hlast : shiftWeight N h (N - h - 1) = 0 := by
    unfold shiftWeight
    rw [show N - h - 1 + 1 + h = N by omega]
    exact responseGram_terminal N _ hN
  have he := abel_with_terminal (N - h - 1)
    (fun k => moebiusReal (k + 1) * moebiusReal (k + 1 + h)) (shiftWeight N h)
  rw [hlen, hlast, zero_mul, zero_add] at he
  exact he

/-- Reuse the existing three-channel extraction inside every ordinary prefix. -/
theorem shift_abel_prime_extraction (N h : ℕ) (hN : 1 ≤ N) (hh : h < N)
    (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p) :
    (∑ k ∈ Finset.range (N - h),
      moebiusReal (k + 1) * moebiusReal (k + 1 + h) * shiftWeight N h k) =
      ∑ k ∈ Finset.range (N - h - 1),
        (shiftWeight N h k - shiftWeight N h (k + 1)) *
          (MertensSignedAbelPrimeExtraction.unsiftedPrefix P h (k + 1) -
            MertensSignedAbelPrimeExtraction.primePrefix P h (k + 1) +
            MertensSignedAbelPrimeExtraction.repeatedPrefix P h (k + 1)) := by
  rw [shift_abel N h hN hh]
  apply Finset.sum_congr rfl
  intro k _
  rw [MertensSignedAbelPrimeExtraction.twoPointPrefix_eq_extracted P hP]

end GRWTSK.NumberTheory.Moebius.PickupRadicalPhaseReturn
