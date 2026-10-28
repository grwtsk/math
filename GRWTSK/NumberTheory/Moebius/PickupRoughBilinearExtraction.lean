/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupGrowingPrimeStages

/-!
# Extract the larger rough core, with the exact repeated-prime correction

The prime set here is EXHAUSTIVE up to the original closed cutoff, excluding
only primes already in the block. This is not another block insertion: the
kernel, inner horizon and diagonal are unchanged. No same-core credit is used.
Both ordered pair orientations survive as a factor two. The corrected quotient
sum retains q <= N / p, the comparison m < p*q, and the divisor count at p*q.
A kernel-free, square-root-weighted rectangular prefix is defined below.
Its proposed quantitative bound is NOT proved or installed as an axiom.
SOURCE_PROOF_CANDIDATE / compilation, fresh kernel replay, axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupRoughBilinearExtraction

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
open GRWTSK.NumberTheory.Moebius.PickupGrowingPrimeStages

theorem stages_mem_iff (j p : ℕ) : p ∈ stages j ↔ Nat.Prime p ∧ p ≤ j := by
  induction j with
  | zero => simp [stages, Nat.not_prime_zero]
  | succ j ih =>
      by_cases hj : Nat.Prime (j + 1)
      · simp only [stages, if_pos hj, List.mem_cons, ih]
        constructor
        · rintro (rfl | ⟨hp, hle⟩)
          · exact ⟨hj, le_rfl⟩
          · exact ⟨hp, hle.trans (Nat.le_succ j)⟩
        · rintro ⟨hp, hle⟩
          by_cases he : p = j + 1
          · exact Or.inl he
          · exact Or.inr ⟨hp, by omega⟩
      · simp only [stages, if_neg hj, ih]
        constructor
        · rintro ⟨hp, hle⟩
          exact ⟨hp, hle.trans (Nat.le_succ j)⟩
        · rintro ⟨hp, hle⟩
          refine ⟨hp, ?_⟩
          by_contra hn
          have he : p = j + 1 := by omega
          exact hj (he ▸ hp)

/-- All available primes, not a prime interval with an unpaid unsifted term. -/
def freshPrimes (P : List ℕ) (N : ℕ) : Finset ℕ :=
  (Finset.Icc 2 N).filter (fun p => Nat.Prime p ∧ p ∉ P)

def omega (P : List ℕ) (N n : ℕ) : ℕ := divisorCount (freshPrimes P N) n

theorem fresh_mem {P : List ℕ} {N p : ℕ} (hp : p ∈ freshPrimes P N) :
    Nat.Prime p ∧ p ∉ P ∧ p ≤ N := by
  obtain ⟨hi, hpr, hnot⟩ := Finset.mem_filter.mp hp
  exact ⟨hpr, hnot, (Finset.mem_Icc.mp hi).2⟩

theorem freshPrimes_stages (j N : ℕ) :
    freshPrimes (stages j) N = (Finset.Icc (j + 1) N).filter Nat.Prime := by
  ext p
  simp only [freshPrimes, Finset.mem_filter, Finset.mem_Icc, stages_mem_iff]
  constructor
  · rintro ⟨⟨_, hpN⟩, hp, hnot⟩
    exact ⟨⟨by by_contra h; exact hnot ⟨hp, by omega⟩, hpN⟩, hp⟩
  · rintro ⟨⟨hjp, hpN⟩, hp⟩
    exact ⟨⟨hp.two_le, hpN⟩, hp, fun h => by omega⟩

theorem rough_zero_of_selected_dvd (P : List ℕ) {p n : ℕ}
    (hp : p ∈ P) (hpn : p ∣ n) : rough P n = 0 := by
  induction P with
  | nil => simp at hp
  | cons q P ih =>
      rcases List.mem_cons.mp hp with rfl | hp
      · simp [rough, hpn]
      · by_cases hq : q ∣ n
        · simp [rough, hq]
        · simp [rough, hq, ih hp]

/-- The only zero-count rough source below the cutoff is the unit; larger
indices with zero count have an already-excluded prime and hence zero source. -/
theorem rough_zero_of_omega_zero (P : List ℕ) {N n : ℕ}
    (hn : 1 < n) (hnN : n ≤ N) (hz : omega P N n = 0) : rough P n = 0 := by
  obtain ⟨p, hp, hpn⟩ := Nat.exists_prime_and_dvd (by omega : n ≠ 1)
  by_cases hmem : p ∈ P
  · exact rough_zero_of_selected_dvd P hmem hpn
  · have hpN : p ≤ N := (Nat.le_of_dvd (by omega) hpn).trans hnN
    have hsel : p ∈ freshPrimes P N :=
      Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨hp.two_le, hpN⟩, hp, hmem⟩
    have hpos := divisorCount_pos_of_mem hsel hpn
    change 0 < omega P N n at hpos
    omega

/-- The repeated-prime correction is kept before averaging. -/
def correctedQuotient (P : List ℕ) (p q : ℕ) : ℝ :=
  rough P q - (if p ∣ q then rough P q else 0)

theorem correctedQuotient_eq (P : List ℕ) (p q : ℕ) :
    correctedQuotient P p q = if p ∣ q then 0 else rough P q := by
  by_cases h : p ∣ q <;> simp [correctedQuotient, h]

theorem rough_divisor_identity (P : List ℕ) (hP : ∀ r ∈ P, Nat.Prime r)
    {N p n : ℕ} (hp : p ∈ freshPrimes P N) (hpn : p ∣ n) :
    rough P n = -correctedQuotient P p (n / p) := by
  obtain ⟨hprime, hfresh, _⟩ := fresh_mem hp
  have he := rough_prime_mul P hP p hprime hfresh (n / p)
  rw [Nat.mul_div_cancel' hpn] at he
  by_cases hr : p ∣ n / p <;> simp [correctedQuotient, hr] at he ⊢ <;> linarith

def correctedAverage (P : List ℕ) (N n : ℕ) : ℝ :=
  (∑ p ∈ selectedDivisors (freshPrimes P N) n,
    correctedQuotient P p (n / p)) / (omega P N n : ℝ)

theorem count_mul_rough (P : List ℕ) (hP : ∀ r ∈ P, Nat.Prime r) (N n : ℕ) :
    (omega P N n : ℝ) * rough P n =
      -(∑ p ∈ selectedDivisors (freshPrimes P N) n,
        correctedQuotient P p (n / p)) := by
  calc
    _ = ∑ _p ∈ selectedDivisors (freshPrimes P N) n, rough P n := by
      simp [omega, divisorCount]
    _ = ∑ p ∈ selectedDivisors (freshPrimes P N) n,
        -correctedQuotient P p (n / p) := by
      apply Finset.sum_congr rfl
      intro p hp
      obtain ⟨hp, hpn⟩ := Finset.mem_filter.mp hp
      exact rough_divisor_identity P hP hp hpn
    _ = _ := Finset.sum_neg_distrib

/-- No unsifted remainder remains for a nonunit source index in the closed cutoff. -/
theorem rough_eq_neg_correctedAverage (P : List ℕ) (hP : ∀ r ∈ P, Nat.Prime r)
    {N n : ℕ} (hn : 1 < n) (hnN : n ≤ N) :
    rough P n = -correctedAverage P N n := by
  by_cases hz : omega P N n = 0
  · rw [rough_zero_of_omega_zero P hn hnN hz]
    simp [correctedAverage, hz]
  · have hR : (omega P N n : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr hz
    have hc := count_mul_rough P hP N n
    unfold correctedAverage
    rw [← neg_div]
    apply (eq_div_iff hR).2
    simpa only [mul_comm] using hc

/-- A literal prime-first quotient sum; the inner cutoff is N/p, not N. -/
def quotientBilinear (P : List ℕ) (N : ℕ) (F : ℕ → ℝ) : ℝ :=
  ∑ p ∈ freshPrimes P N, ∑ q ∈ Finset.Icc 1 (N / p),
    F (p * q) * correctedQuotient P p q / (omega P N (p * q) : ℝ)

def unrestrictedBilinear (P : List ℕ) (N : ℕ) (F : ℕ → ℝ) : ℝ :=
  ∑ p ∈ freshPrimes P N, ∑ q ∈ Finset.Icc 1 (N / p),
    F (p * q) * rough P q / (omega P N (p * q) : ℝ)

def repeatedBilinear (P : List ℕ) (N : ℕ) (F : ℕ → ℝ) : ℝ :=
  ∑ p ∈ freshPrimes P N, ∑ q ∈ Finset.Icc 1 (N / p),
    if p ∣ q then F (p * q) * rough P q / (omega P N (p * q) : ℝ) else 0

theorem quotientBilinear_eq_sub (P : List ℕ) (N : ℕ) (F : ℕ → ℝ) :
    quotientBilinear P N F = unrestrictedBilinear P N F - repeatedBilinear P N F := by
  unfold quotientBilinear unrestrictedBilinear repeatedBilinear
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro p _
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro q _
  by_cases hr : p ∣ q <;> simp [correctedQuotient, hr]

/-- Exchange sums and then reindex with the already source-exact closed-window theorem. -/
theorem weighted_average_eq_quotient (P : List ℕ) (N : ℕ) (F : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N, F n * correctedAverage P N n) = quotientBilinear P N F := by
  calc
    _ = ∑ n ∈ Finset.Icc 1 N, ∑ p ∈ freshPrimes P N,
        if p ∣ n then F n * correctedQuotient P p (n / p) / (omega P N n : ℝ)
        else 0 := by
      apply Finset.sum_congr rfl
      intro n _
      simp only [correctedAverage, Finset.sum_div, Finset.mul_sum,
        selectedDivisors, Finset.sum_filter]
      apply Finset.sum_congr rfl
      intro p _
      by_cases hp : p ∣ n <;> simp [hp, mul_div_assoc]
    _ = ∑ p ∈ freshPrimes P N, ∑ n ∈ Finset.Icc 1 N,
        if p ∣ n then F n * correctedQuotient P p (n / p) / (omega P N n : ℝ)
        else 0 := Finset.sum_comm
    _ = quotientBilinear P N F := by
      unfold quotientBilinear
      apply Finset.sum_congr rfl
      intro p hp
      have hpos := (fresh_mem hp).1.pos
      have he := sum_divisible_window_eq_quotient 0 N p hpos
        (fun n => F n * correctedQuotient P p (n / p) / (omega P N n : ℝ))
      simp only [zero_add, add_zero] at he
      rw [he]
      apply Finset.sum_congr rfl
      intro q hq
      have hqpos : 0 < q := (Finset.mem_Icc.mp hq).1
      simp [Nat.mul_div_cancel_left q hpos, Nat.mul_pos hpos hqpos]

/-- Unit removal is justified by the triangular weight, not by dropping mu(1). -/
theorem weighted_rough_eq_neg_quotient (P : List ℕ) (hP : ∀ r ∈ P, Nat.Prime r)
    (N : ℕ) (F : ℕ → ℝ) (hF : F 1 = 0) :
    (∑ n ∈ Finset.Icc 1 N, rough P n * F n) = -quotientBilinear P N F := by
  rw [← weighted_average_eq_quotient, ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  obtain ⟨hn1, hnN⟩ := Finset.mem_Icc.mp hn
  by_cases h1 : n = 1
  · simp [h1, hF]
  · rw [rough_eq_neg_correctedAverage P hP (by omega) hnN]
    ring

/-- The smaller core remains strictly below the ORIGINAL larger index. -/
def upperWeight (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) (n : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 N, if L < m ∧ m < n then rough P m * G m n else 0

def upperTail (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  2 * ∑ n ∈ Finset.Icc 1 N, rough P n * upperWeight P N L G n

theorem upperWeight_one (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    upperWeight P N L G 1 = 0 := by
  apply Finset.sum_eq_zero
  intro m hm
  have hm1 := (Finset.mem_Icc.mp hm).1
  have hn : ¬ (L < m ∧ m < 1) := by omega
  simp [hn]

theorem upperTail_extraction (P : List ℕ) (hP : ∀ r ∈ P, Nat.Prime r)
    (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    upperTail P N L G = -2 * quotientBilinear P N (upperWeight P N L G) := by
  rw [upperTail, weighted_rough_eq_neg_quotient P hP N _ (upperWeight_one P N L G)]
  ring

/-- Symmetry retains both orientations, without introducing a diagonal credit. -/
theorem ordered_eq_upperTail (P : List ℕ) (N : ℕ) (G : ℕ → ℕ → ℝ)
    (hsym : ∀ m n, G m n = G n m) :
    (∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
      if m ≠ n then rough P m * rough P n * G m n else 0) = upperTail P N 0 G := by
  let f := fun m n => if m < n then rough P m * rough P n * G m n else 0
  have he (m n : ℕ) :
      (if m ≠ n then rough P m * rough P n * G m n else 0) = f m n + f n m := by
    rcases lt_trichotomy m n with h | rfl | h
    · simp [f, h, ne_of_lt h, Nat.not_lt.mpr h.le]
    · simp [f]
    · simp only [f, h, ne_of_gt h, Nat.not_lt.mpr h.le, if_true, if_false,
        zero_add, hsym n m]
      ring
  have ht : upperTail P N 0 G =
      2 * ∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N, f m n := by
    unfold upperTail upperWeight
    congr 1
    calc
      _ = ∑ n ∈ Finset.Icc 1 N, ∑ m ∈ Finset.Icc 1 N, f m n := by
        apply Finset.sum_congr rfl
        intro n _
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro m hm
        have hmpos : 0 < m := (Finset.mem_Icc.mp hm).1
        by_cases hmn : m < n <;> simp [f, hmn, hmpos] <;> ring
      _ = _ := Finset.sum_comm
  simp_rw [he, Finset.sum_add_distrib]
  rw [Finset.sum_comm (f := fun m n => f n m), ht]
  ring

theorem interaction_extraction (P : List ℕ) (hP : ∀ r ∈ P, Nat.Prime r) (T : ℝ) :
    interaction P T = -2 * quotientBilinear P ⌊Real.exp T⌋₊
      (upperWeight P ⌊Real.exp T⌋₊ 0 (gram P T)) := by
  rw [interaction, ordered_eq_upperTail P _ _ (gram_symmetric P T),
    upperTail_extraction P hP]

/-- Kernel-free rectangular prefixes, with the strict triangular cutoff retained.
The proposed bound is uniform in X,Y and j. No bound is asserted here. -/
def prefixWeight (P : List ℕ) (N L X Y n : ℕ) : ℝ :=
  if n ≤ Y then ∑ m ∈ Finset.Icc 1 N,
    if L < m ∧ m ≤ X ∧ m < n then
      rough P m / (Real.sqrt (m : ℝ) * Real.sqrt (n : ℝ)) else 0
  else 0

def roughPrefixCorrelation (P : List ℕ) (N L X Y : ℕ) : ℝ :=
  quotientBilinear P N (prefixWeight P N L X Y)

theorem prefixWeight_one (P : List ℕ) (N L X Y : ℕ) : prefixWeight P N L X Y 1 = 0 := by
  unfold prefixWeight
  split_ifs
  · apply Finset.sum_eq_zero
    intro m hm
    have hm1 := (Finset.mem_Icc.mp hm).1
    have hn : ¬ (L < m ∧ m ≤ X ∧ m < 1) := by omega
    simp [hn]
  · rfl

/-- This finite identity displays the arithmetic content of the proposed supplier.
It is not a proof of its quantitative growth and has no RH conclusion. -/
theorem roughPrefixCorrelation_eq (P : List ℕ) (hP : ∀ r ∈ P, Nat.Prime r)
    (N L X Y : ℕ) :
    roughPrefixCorrelation P N L X Y =
      -(∑ n ∈ Finset.Icc 1 N, rough P n * prefixWeight P N L X Y n) := by
  have he := weighted_rough_eq_neg_quotient P hP N
    (prefixWeight P N L X Y) (prefixWeight_one P N L X Y)
  unfold roughPrefixCorrelation
  linarith

end GRWTSK.NumberTheory.Moebius.PickupRoughBilinearExtraction
