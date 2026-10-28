/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction
import GRWTSK.NumberTheory.Moebius.PickupPrimeFactorLayers

/-!
# Source-exact finite prime blocks

The finite inventory is frozen before regrouping. A block contains every subset
of the selected distinct primes, with its alternating sign. The rough coefficient
is the ORIGINAL Mobius coefficient, with selected prime divisors excluded.
Repeated-prime terms are handled by Mobius multiplicativity, not discarded.
No pointwise positivity of blocks, operator coercivity, or growth bound is assumed.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource

open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction
open GRWTSK.NumberTheory.Moebius.MertensSignedPairDescent
open GRWTSK.NumberTheory.Moebius.PickupOptimizationGap
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion

/-- Original coefficients with only the indicated divisibility exclusions. -/
def rough : List ℕ → ℕ → ℝ
  | [], n => moebiusReal n
  | p :: P, n => if p ∣ n then 0 else rough P n

/-- The literal divisor pullback. Zero indices are not in the source inventory. -/
def quotient (p : ℕ) (a : ℕ → ℝ) (n : ℕ) : ℝ :=
  if p ∣ n then a (n / p) else 0

def remove (p : ℕ) (a : ℕ → ℝ) (n : ℕ) : ℝ := a n - quotient p a n

def pairing (N : ℕ) (a K : ℕ → ℝ) : ℝ := ∑ n ∈ Finset.Icc 1 N, a n * K n

/-- Closed frozen cutoff, including a possibly zero terminal birth. -/
def block : List ℕ → ℕ → ℕ → ℝ → ℝ
  | [], N, m, u => if m ≤ N then pickupResponse m u else 0
  | p :: P, N, m, u => block P N m u - block P N (p * m) u

theorem rough_sq_le (P : List ℕ) (n : ℕ) : rough P n ^ 2 ≤ moebiusReal n ^ 2 := by
  induction P with
  | nil => exact le_rfl
  | cons p P ih =>
      by_cases h : p ∣ n
      · simp only [rough, if_pos h, zero_pow (by decide : 2 ≠ 0)]
        exact sq_nonneg _
      · simpa only [rough, if_neg h] using ih

/-- A fresh prime does not change the other prime-divisibility exclusions. -/
theorem rough_prime_mul (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (p : ℕ) (hp : Nat.Prime p) (hfresh : p ∉ P) (m : ℕ) :
    rough P (p * m) = if p ∣ m then 0 else -rough P m := by
  induction P with
  | nil => exact moebiusReal_prime_mul hp
  | cons q P ih =>
      have hq := hP q (by simp)
      have hqne : q ≠ p := by intro h; subst q; exact hfresh (by simp)
      have hqp : ¬ q ∣ p := by
        intro h
        rcases (Nat.dvd_prime hp).mp h with h | h
        · exact hq.ne_one h
        · exact hqne h
      have he : q ∣ p * m ↔ q ∣ m := by
        constructor
        · intro h
          exact (hq.dvd_mul.mp h).resolve_left hqp
        · intro h
          exact dvd_mul_of_dvd_right h p
      have hi := ih (fun r hr => hP r (by simp [hr])) (by
        intro h; exact hfresh (by simp [h]))
      by_cases hqm : q ∣ m <;> by_cases hpm : p ∣ m <;>
        simp [rough, he, hqm, hpm, hi]

/-- Exact prime splitting, including the repeated-prime zero case. -/
theorem rough_remove (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (p : ℕ) (hp : Nat.Prime p) (hfresh : p ∉ P) :
    rough P = remove p (rough (p :: P)) := by
  funext n
  by_cases hpn : p ∣ n
  · have he := rough_prime_mul P hP p hp hfresh (n / p)
    rw [Nat.mul_div_cancel' hpn] at he
    by_cases hpp : p ∣ n / p <;>
      simp only [remove, quotient, rough, if_pos hpn, hpp, if_true, if_false,
        sub_zero, zero_sub] <;> simpa [hpp] using he
  · simp [remove, quotient, rough, hpn]

/-- Squaring the coefficient split has NO mixed term: the two supports are disjoint. -/
theorem rough_square_split (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (p : ℕ) (hp : Nat.Prime p) (hfresh : p ∉ P) (n : ℕ) :
    rough P n ^ 2 = rough (p :: P) n ^ 2 +
      quotient p (fun m => rough (p :: P) m ^ 2) n := by
  have he := congrFun (rough_remove P hP p hp hfresh) n
  by_cases hpn : p ∣ n
  · have hz : rough (p :: P) n = 0 := by simp [rough, hpn]
    simp only [remove, quotient, if_pos hpn, hz, zero_sub] at he
    rw [he, sq_neg, hz]
    simp [quotient, hpn]
  · simpa [remove, quotient, rough, hpn] using congrArg (fun x : ℝ => x ^ 2) he

/-- Finite divisor pullback with the exact quotient window and all cutoffs paid. -/
theorem pairing_quotient (N p : ℕ) (hp : 0 < p) (a K : ℕ → ℝ)
    (hsupport : ∀ n : ℕ, N < n → K n = 0) :
    pairing N (quotient p a) K = pairing N a (fun m => K (p * m)) := by
  have hbase := sum_divisible_window_eq_quotient 0 N p hp
    (fun n => a (n / p) * K n)
  simp only [zero_add, add_zero] at hbase
  have hsub : Finset.Icc 1 (N / p) ⊆ Finset.Icc 1 N := by
    intro m hm
    obtain ⟨hm1, hmN⟩ := Finset.mem_Icc.mp hm
    exact Finset.mem_Icc.mpr ⟨hm1, hmN.trans (Nat.div_le_self N p)⟩
  calc
    pairing N (quotient p a) K =
        ∑ n ∈ Finset.Icc 1 N, if p ∣ n then a (n / p) * K n else 0 := by
      unfold pairing quotient
      apply Finset.sum_congr rfl
      intro n _
      split_ifs <;> simp
    _ = ∑ m ∈ Finset.Icc 1 (N / p), a m * K (p * m) := by
      rw [hbase]
      apply Finset.sum_congr rfl
      intro m hm
      have hmpos : 0 < m := (Finset.mem_Icc.mp hm).1
      simp [Nat.mul_div_cancel_left m hp, Nat.mul_pos hp hmpos]
    _ = pairing N a (fun m => K (p * m)) := by
      unfold pairing
      apply Finset.sum_subset hsub
      intro m hm hnot
      have hm1 := (Finset.mem_Icc.mp hm).1
      have hlarge : N < p * m := by
        by_contra h
        have hle : p * m ≤ N := Nat.le_of_not_gt h
        have hmdiv : m ≤ N / p :=
          (Nat.le_div_iff_mul_le hp).mpr (by simpa [Nat.mul_comm] using hle)
        exact hnot (Finset.mem_Icc.mpr ⟨hm1, hmdiv⟩)
      rw [hsupport (p * m) hlarge, mul_zero]

theorem pairing_remove (N p : ℕ) (hp : 0 < p) (a K : ℕ → ℝ)
    (hsupport : ∀ n : ℕ, N < n → K n = 0) :
    pairing N (remove p a) K = pairing N a (fun m => K m - K (p * m)) := by
  have he : pairing N (remove p a) K = pairing N a K - pairing N (quotient p a) K := by
    simp only [pairing, remove, sub_mul, Finset.sum_sub_distrib]
  rw [he, pairing_quotient N p hp a K hsupport]
  simp only [pairing, mul_sub, Finset.sum_sub_distrib]

theorem block_support (P : List ℕ) (hP : ∀ p ∈ P, 1 ≤ p)
    (N m : ℕ) (hm : N < m) (u : ℝ) : block P N m u = 0 := by
  induction P generalizing m with
  | nil => simp [block, Nat.not_le.mpr hm]
  | cons p P ih =>
      have hp := hP p (by simp)
      have htail : ∀ q ∈ P, 1 ≤ q := fun q hq => hP q (by simp [hq])
      have hpm : N < p * m := hm.trans_le (by nlinarith)
      simp only [block, ih htail m hm, ih htail (p * m) hpm, sub_self]

theorem block_continuous (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    (N m : ℕ) (hm : 1 ≤ m) : Continuous (block P N m) := by
  induction P generalizing m with
  | nil =>
      by_cases h : m ≤ N
      · simpa only [block, if_pos h] using pickupResponse_continuous hm
      · simp only [block, if_neg h]
        exact continuous_const
  | cons p P ih =>
      have hp := hP p (by simp)
      have htail : ∀ q ∈ P, Nat.Prime q := fun q hq => hP q (by simp [hq])
      exact (ih htail m hm).sub (ih htail (p * m) (by nlinarith [hp.two_le]))

/-- Source regrouping is proved for every valid finite stage, not assumed as a field. -/
theorem original_eq_rough_blocks (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    (hnd : P.Nodup) (N : ℕ) (u : ℝ) :
    (∑ n ∈ Finset.Icc 1 N, moebiusReal n * pickupResponse n u) =
      pairing N (rough P) (fun m => block P N m u) := by
  induction P with
  | nil =>
      unfold pairing
      apply Finset.sum_congr rfl
      intro n hn
      simp [rough, block, (Finset.mem_Icc.mp hn).2]
  | cons p P ih =>
      have hp := hP p (by simp)
      have htail : ∀ q ∈ P, Nat.Prime q := fun q hq => hP q (by simp [hq])
      have hnodup := List.nodup_cons.mp hnd
      rw [ih htail hnodup.2, rough_remove P htail p hp hnodup.1]
      exact pairing_remove N p hp.pos (rough (p :: P)) (fun m => block P N m u)
        (fun m hm => block_support P (fun q hq => (htail q hq).one_lt.le) N m hm u)

/-- The fresh-prime recurrence is literal subtraction, not an inequality. -/
theorem block_cons (p : ℕ) (P : List ℕ) (N m : ℕ) (u : ℝ) :
    block (p :: P) N m u = block P N m u - block P N (p * m) u := rfl

end GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
