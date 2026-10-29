/- Copyright (c) 2026 grwtsk. MIT.
Mathlib and imported GRWTSK results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.FinitePrimeDivisorExtraction
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.MertensSignedAbelBoundaryCore

/-!
# Prime-divisor extraction of the unchanged signed Abel bulk

The extraction is performed INSIDE each ordinary two-point prefix. The prefix
length is still t+1; the shift is still h; the kernel still depends on j,t,h;
the retained depths are exactly those of the existing bulkPacket. Reindexing
n=p*m retains h<p*m<=N+h and m<=floor((N+h)/p). No logarithmic average,
fixed-shift theorem, independence or cancellation estimate is substituted.

The exact result is unsifted - prime quotient + repeated-prime correction.
The repeated term is signed and is not removed because mu(p*m) vanishes there:
mu(m) need not vanish. The source bound |original packet - sqrt bulk|<=2 is
reused only at its existing conditional/formal evidence scope.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeExtraction

open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelKernelTransfer
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore

/-- Exactly the same ordinary prefix, reindexed by its right arithmetic argument. -/
theorem twoPointPrefix_eq_right_window (h N : ℕ) :
    mertensTwoPointPrefix h N =
      ∑ n ∈ Finset.Icc (h + 1) (N + h), moebiusReal (n - h) * moebiusReal n := by
  change (∑ a ∈ Finset.range N,
    moebiusReal (a + 1) * moebiusReal (a + 1 + h)) = _
  apply Finset.sum_bij (fun a _ => a + 1 + h)
  · intro a ha
    have haN := Finset.mem_range.mp ha
    apply Finset.mem_Icc.mpr
    omega
  · intro a _ b _ hab
    omega
  · intro n hn
    have hnI := Finset.mem_Icc.mp hn
    refine ⟨n - h - 1, Finset.mem_range.mpr (by omega), ?_⟩
    omega
  · intro a _
    have heq : a + 1 + h - h = a + 1 := by omega
    rw [heq]

/-- No selected prime divides the right argument; every such term is retained. -/
def unsiftedPrefix (P : Finset ℕ) (h N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc (h + 1) (N + h), moebiusReal (n - h) * unsifted P n

/-- Unrestricted quotient contribution on the identical source window. -/
def primePrefix (P : Finset ℕ) (h N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc (h + 1) (N + h), moebiusReal (n - h) * primeAverage P n

/-- Correction on that same window, before any norm or absolute value. -/
def repeatedPrefix (P : Finset ℕ) (h N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc (h + 1) (N + h), moebiusReal (n - h) * repeatedAverage P n

theorem twoPointPrefix_eq_extracted (P : Finset ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h N : ℕ) :
    mertensTwoPointPrefix h N =
      unsiftedPrefix P h N - primePrefix P h N + repeatedPrefix P h N := by
  rw [twoPointPrefix_eq_right_window]
  exact weighted_sum_extraction P (Finset.Icc (h + 1) (N + h)) hP
    (fun n => moebiusReal (n - h))

/-- Prime-first quotient coordinates, including the exact floor and lower cutoff. -/
theorem primePrefix_eq_quotient_sum (P : Finset ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h N : ℕ) :
    primePrefix P h N =
      ∑ p ∈ P, ∑ m ∈ Finset.Icc 1 ((N + h) / p),
        if h < p * m then
          moebiusReal (p * m - h) * moebiusReal m /
            (divisorCount P (p * m) : ℝ)
        else 0 := by
  unfold primePrefix
  rw [primeAverage_sum_eq_prime_first]
  apply Finset.sum_congr rfl
  intro p hp
  rw [sum_divisible_window_eq_quotient h N p (hP p hp).pos]
  apply Finset.sum_congr rfl
  intro m _
  simp only [Nat.mul_div_cancel_left m (hP p hp).pos]

/-- The identical quotient coordinates with the indispensable repeated-prime guard. -/
theorem repeatedPrefix_eq_quotient_sum (P : Finset ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h N : ℕ) :
    repeatedPrefix P h N =
      ∑ p ∈ P, ∑ m ∈ Finset.Icc 1 ((N + h) / p),
        if h < p * m then
          (if p ∣ m then
            moebiusReal (p * m - h) * moebiusReal m /
              (divisorCount P (p * m) : ℝ)
          else 0)
        else 0 := by
  unfold repeatedPrefix
  rw [repeatedAverage_sum_eq_prime_first]
  apply Finset.sum_congr rfl
  intro p hp
  rw [sum_divisible_window_eq_quotient h N p (hP p hp).pos]
  apply Finset.sum_congr rfl
  intro m _
  simp only [Nat.mul_div_cancel_left m (hP p hp).pos]

/-- Every quotient summand uses a nonzero selected-divisor count. -/
theorem quotient_count_positive {P : Finset ℕ} {p m : ℕ} (hp : p ∈ P) :
    0 < divisorCount P (p * m) :=
  divisorCount_pos_of_mem hp ⟨m, rfl⟩

/-- The existing middle-depth functional, with only the prefix input exposed. -/
def bulkPrefixFunctional (width : ℕ → ℕ) (j : ℕ) (F : ℕ → ℕ → ℝ) : ℝ :=
  2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
    ∑ t ∈ Finset.range (2 ^ (j + 1)),
      if width j ≤ t ∧ t < 2 ^ (j + 1) - width j then
        ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
          normalizedSignedAbelShiftKernel j t h * F h (t + 1)
      else 0

/-- This functional is identified with the ACTUAL existing bulk, not just a model. -/
theorem bulkPacket_eq_prefixFunctional (width : ℕ → ℕ) (j : ℕ) :
    bulkPacket width j = bulkPrefixFunctional width j mertensTwoPointPrefix := by
  rw [bulkPacket_eq_middle_sum]
  rfl

/-- All signed channels pass through the same kernel, depths and prefix lengths. -/
theorem bulkPrefixFunctional_sub_add (width : ℕ → ℕ) (j : ℕ)
    (F G H : ℕ → ℕ → ℝ) :
    bulkPrefixFunctional width j (fun h N => F h N - G h N + H h N) =
      bulkPrefixFunctional width j F - bulkPrefixFunctional width j G +
        bulkPrefixFunctional width j H := by
  unfold bulkPrefixFunctional
  rw [← mul_sub, ← mul_add, ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
  apply congrArg (fun z : ℝ => 2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ * z)
  apply Finset.sum_congr rfl
  intro t _
  by_cases ht : width j ≤ t ∧ t < 2 ^ (j + 1) - width j
  · simp only [if_pos ht]
    rw [← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro h _
    ring
  · simp only [if_neg ht, sub_zero, add_zero]

/-- Source-exact three-channel extraction of every retained bulk. -/
theorem bulkPacket_eq_prime_extraction (P : Finset ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (width : ℕ → ℕ) (j : ℕ) :
    bulkPacket width j =
      bulkPrefixFunctional width j (unsiftedPrefix P) -
        bulkPrefixFunctional width j (primePrefix P) +
        bulkPrefixFunctional width j (repeatedPrefix P) := by
  rw [bulkPacket_eq_prefixFunctional]
  have hfun : mertensTwoPointPrefix =
      (fun h N => unsiftedPrefix P h N - primePrefix P h N + repeatedPrefix P h N) := by
    funext h N
    exact twoPointPrefix_eq_extracted P hP h N
  rw [hfun, bulkPrefixFunctional_sub_add]

/-- The prior two-unit boundary bound applies to this exact extracted expression. -/
theorem abs_full_packet_sub_extracted_sqrt_bulk_le_two (P : Finset ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (j : ℕ) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      (bulkPrefixFunctional sqrtWidth j (unsiftedPrefix P) -
        bulkPrefixFunctional sqrtWidth j (primePrefix P) +
        bulkPrefixFunctional sqrtWidth j (repeatedPrefix P))| ≤ 2 := by
  rw [← bulkPacket_eq_prime_extraction P hP sqrtWidth j]
  exact abs_packet_sub_sqrt_bulk_le_two j

/-- The selected prime set may vary with scale, but the estimate must pay all channels. -/
theorem riemannHypothesis_of_prime_extracted_bulk_budget
    (P : ℕ → Finset ℕ) (hP : ∀ j p, p ∈ P j → Nat.Prime p)
    (hbudget : ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
      bulkPrefixFunctional sqrtWidth j (unsiftedPrefix (P j)) -
        bulkPrefixFunctional sqrtWidth j (primePrefix (P j)) +
        bulkPrefixFunctional sqrtWidth j (repeatedPrefix (P j)) ≤
          C * (((2 ^ j : ℕ) : ℝ) ^ δ)) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_sqrt_bulk_budget
  intro δ hδ
  obtain ⟨C, hC, hb⟩ := hbudget δ hδ
  refine ⟨C, hC, ?_⟩
  intro j
  rw [bulkPacket_eq_prime_extraction (P j) (hP j) sqrtWidth j]
  exact hb j

/-- No selected primes: the entire original prefix remains unsifted. -/
theorem empty_prime_set_prefixes (h N : ℕ) :
    unsiftedPrefix ∅ h N = mertensTwoPointPrefix h N ∧
      primePrefix ∅ h N = 0 ∧ repeatedPrefix ∅ h N = 0 := by
  simp [unsiftedPrefix, primePrefix, repeatedPrefix, twoPointPrefix_eq_right_window]

/-- Empty ordinary prefixes are preserved, even when the selected prime set is nonempty. -/
theorem zero_length_prefixes (P : Finset ℕ) (h : ℕ) :
    unsiftedPrefix P h 0 = 0 ∧ primePrefix P h 0 = 0 ∧ repeatedPrefix P h 0 = 0 := by
  simp [unsiftedPrefix, primePrefix, repeatedPrefix]

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeExtraction
