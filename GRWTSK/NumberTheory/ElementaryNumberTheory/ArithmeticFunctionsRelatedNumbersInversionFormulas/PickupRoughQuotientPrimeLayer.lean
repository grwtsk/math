/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupRoughQuotientAbel

/-!
# An independent signed estimate for the actual low-q weighted prefix

For the fixed stage P_j={primes<=j}, a nonunit rough integer q<=j^2 with
nonzero Mobius coefficient is prime. In the LONG-prime quotient range this
gives the exact coefficient 1 at q=1, -1/2 at primes q>j, and zero elsewhere.
Thus every anchored low-q prefix away from q=1 is nonpositive, and every
low-q prefix from one is at most one. These are independently proved SIGNED
estimates, not a renamed cancellation premise or absolute variation estimate.
They do not control the outer signed m-sum, the short-prime sector, or q>j^2.
No full-energy exponent improvement or RH conclusion is asserted.
SOURCE_PROOF_CANDIDATE. Compilation/fresh kernel/transitive axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupRoughQuotientPrimeLayer

open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupGrowingPrimeStages
open GRWTSK.NumberTheory.Moebius.PickupRoughBilinearExtraction
open GRWTSK.NumberTheory.Moebius.PickupRoughLongPrime
open GRWTSK.NumberTheory.Moebius.PickupRoughQuotientAbel
open GRWTSK.Analysis.FiniteSums.PrimeBlockKernel (prefix)

/-- A composite in this range has an ACTUAL prime divisor already in P_j. -/
theorem rough_composite_small_zero {j q : ℕ} (hq : 1 < q)
    (hsize : q ≤ j^2) (hcomp : ¬Nat.Prime q) : rough (stages j) q = 0 := by
  have hprime : Nat.Prime (Nat.minFac q) := Nat.minFac_prime (by omega : q ≠ 1)
  have hsq : (Nat.minFac q)^2 ≤ q := Nat.minFac_sq_le_self (by omega) hcomp
  have hsmall : Nat.minFac q ≤ j := by
    by_contra h
    have hj : j+1 ≤ Nat.minFac q := by omega
    nlinarith
  have hmem : Nat.minFac q ∈ stages j := (stages_mem_iff j _).mpr ⟨hprime, hsmall⟩
  exact rough_zero_of_selected_dvd (stages j) hmem (Nat.minFac_dvd q)

/-- Exact arithmetic sign at a prime, including the selected-prime zero case. -/
theorem rough_at_prime (j q : ℕ) (hq : Nat.Prime q) :
    rough (stages j) q = if q ≤ j then 0 else -1 := by
  by_cases hsmall : q ≤ j
  · rw [if_pos hsmall]
    exact rough_zero_of_selected_dvd (stages j)
      ((stages_mem_iff j q).mpr ⟨hq, hsmall⟩) (dvd_refl q)
  · rw [if_neg hsmall]
    have hnot : q ∉ stages j := by
      intro h
      exact hsmall (stages_bounded j q h)
    have he := rough_prime_mul (stages j) (stages_prime j) q hq hnot 1
    simpa only [Nat.mul_one, hq.not_dvd_one, if_false,
      rough_one (stages j) (stages_prime j)] using he

/-- Frozen P,N,p and the original divisor weight. No unweighted-prefix substitution. -/
theorem low_quotientWeight (j N p q : ℕ)
    (hp : p ∈ freshPrimes (stages j) N) (hlong : Nat.sqrt N < p)
    (hq : q ∈ Finset.Icc 1 (N/p)) (hsize : q ≤ j^2) :
    quotientWeight (stages j) N p q =
      (if q=1 then 1 else 0) - (if Nat.Prime q ∧ j < q then (1/2 : ℝ) else 0) := by
  by_cases hunit : q=1
  · subst q
    rw [quotientWeight_one (stages j) (stages_prime j) hp]
    simp
  have hq1 : 1 < q := by have := (Finset.mem_Icc.mp hq).1; omega
  by_cases hprime : Nat.Prime q
  · by_cases hj : q ≤ j
    · have hz := rough_at_prime j q hprime
      rw [if_pos hj] at hz
      simp [quotientWeight, hz, hunit, show ¬j < q by omega]
    · have hqN : q ≤ N := (Finset.mem_Icc.mp hq).2.trans (Nat.div_le_self N p)
      have hqfresh : q ∈ freshPrimes (stages j) N := by
        rw [freshPrimes_stages]
        exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨by omega, hqN⟩, hprime⟩
      rw [quotientWeight_long (stages j) hp hlong hq,
        rough_at_prime j q hprime, if_neg hj, omega_prime hqfresh]
      norm_num [hunit, hprime, show j < q by omega]
  · have hz := rough_composite_small_zero hq1 hsize hprime
    simp [quotientWeight, hz, hunit, hprime]

/-- Literal prime count in the permitted quotient interval. -/
def primeLayer (j a b : ℕ) : Finset ℕ :=
  (Finset.Icc a b).filter (fun q => Nat.Prime q ∧ j < q)

/-- Complete signed interval, including the unit exactly when it is permitted. -/
theorem low_weighted_window (j N p a b : ℕ)
    (hp : p ∈ freshPrimes (stages j) N) (hlong : Nat.sqrt N < p)
    (ha : 1 ≤ a) (hb : b ≤ N/p) (hsize : b ≤ j^2) :
    (∑ q ∈ Finset.Icc a b, quotientWeight (stages j) N p q) =
      (if a=1 ∧ 1 ≤ b then (1 : ℝ) else 0) - (primeLayer j a b).card / 2 := by
  have hu : (∑ q ∈ Finset.Icc a b, if q=1 then (1 : ℝ) else 0) =
      (if a=1 ∧ 1 ≤ b then (1 : ℝ) else 0) := by
    have he : a ≤ 1 ↔ a=1 := by omega
    simp [Finset.mem_Icc, he]
  have hpr : (∑ q ∈ Finset.Icc a b,
      if Nat.Prime q ∧ j < q then (1/2 : ℝ) else 0) = (primeLayer j a b).card / 2 := by
    rw [← Finset.sum_filter]
    simp only [primeLayer, Finset.sum_const, nsmul_eq_mul]
    ring
  calc
    _ = (∑ q ∈ Finset.Icc a b, if q=1 then (1 : ℝ) else 0) -
        ∑ q ∈ Finset.Icc a b, if Nat.Prime q ∧ j < q then (1/2 : ℝ) else 0 := by
      rw [← Finset.sum_sub_distrib]
      apply Finset.sum_congr rfl
      intro q hq
      have hi := Finset.mem_Icc.mp hq
      exact low_quotientWeight j N p q hp hlong
        (Finset.mem_Icc.mpr ⟨ha.trans hi.1, hi.2.trans hb⟩) (hi.2.trans hsize)
    _ = _ := by rw [hu, hpr]

/-- Independent one-sided estimate, with no arithmetic cancellation hypothesis. -/
theorem low_weighted_window_le_unit (j N p a b : ℕ)
    (hp : p ∈ freshPrimes (stages j) N) (hlong : Nat.sqrt N < p)
    (ha : 1 ≤ a) (hb : b ≤ N/p) (hsize : b ≤ j^2) :
    (∑ q ∈ Finset.Icc a b, quotientWeight (stages j) N p q) ≤
      (if a=1 ∧ 1 ≤ b then (1 : ℝ) else 0) := by
  rw [low_weighted_window j N p a b hp hlong ha hb hsize]
  exact sub_le_self _ (by positivity)

/-- Once the unit is excluded by the ACTUAL lower bound, the local sum is nonpositive. -/
theorem low_nonunit_window_nonpositive (j N p a b : ℕ)
    (hp : p ∈ freshPrimes (stages j) N) (hlong : Nat.sqrt N < p)
    (ha : 1 < a) (hb : b ≤ N/p) (hsize : b ≤ j^2) :
    (∑ q ∈ Finset.Icc a b, quotientWeight (stages j) N p q) ≤ 0 := by
  have he := low_weighted_window_le_unit j N p a b hp hlong ha.le hb hsize
  simpa [show a ≠ 1 by omega] using he

/-- The whole low-q prefix is computed, not hypothesized to be small. -/
theorem weightedPrefix_primeLayer (j N p t : ℕ)
    (hp : p ∈ freshPrimes (stages j) N) (hlong : Nat.sqrt N < p)
    (ht : 1 ≤ t) (hb : t ≤ N/p) (hsize : t ≤ j^2) :
    weightedPrefix (stages j) N p t = 1 - (primeLayer j 1 t).card / 2 := by
  simpa [weightedPrefix, prefix, ht] using
    low_weighted_window j N p 1 t hp hlong le_rfl hb hsize

/-- A growing-range SIGNED upper bound, not an absolute prefix bound. -/
theorem weightedPrefix_low_le_one (j N p t : ℕ)
    (hp : p ∈ freshPrimes (stages j) N) (hlong : Nat.sqrt N < p)
    (hb : t ≤ N/p) (hsize : t ≤ j^2) : weightedPrefix (stages j) N p t ≤ 1 := by
  by_cases ht : t=0
  · simp [ht]
  · rw [weightedPrefix_primeLayer j N p t hp hlong (by omega) hb hsize]
    exact sub_le_self _ (by positivity)

/-- The raw source kernel is not assumed positive or decreasing. The exact signed
unit-minus-prime combination stays intact for this entire low-quotient row. -/
theorem qRow_primeLayer (j N Y p m : ℕ) (G : ℕ → ℕ → ℝ)
    (hp : p ∈ freshPrimes (stages j) N) (hlong : Nat.sqrt N < p)
    (hrow : firstQuotient p m ≤ lastQuotient N Y p)
    (hsize : lastQuotient N Y p ≤ j^2) :
    qRow (stages j) N Y p m G =
      (if firstQuotient p m=1 then G m p else 0) -
      (1/2 : ℝ) * ∑ q ∈ primeLayer j (firstQuotient p m) (lastQuotient N Y p),
        G m (p*q) := by
  let a := firstQuotient p m
  let b := lastQuotient N Y p
  have ha : 1 ≤ a := firstQuotient_positive p m
  have hb : b ≤ N/p := Nat.div_le_div_right (Nat.min_le_left N Y)
  have hb1 : 1 ≤ b := ha.trans hrow
  have hu : (∑ q ∈ Finset.Icc a b, (if q=1 then (1 : ℝ) else 0)*G m (p*q)) =
      (if a=1 then G m p else 0) := by
    have he : a ≤ 1 ↔ a=1 := by omega
    simp [ite_mul, Finset.mem_Icc, he, hb1]
  have hpr : (∑ q ∈ Finset.Icc a b,
      (if Nat.Prime q ∧ j < q then (1/2 : ℝ) else 0)*G m (p*q)) =
      (1/2 : ℝ) * ∑ q ∈ primeLayer j a b, G m (p*q) := by
    rw [Finset.mul_sum, primeLayer, Finset.sum_filter]
    apply Finset.sum_congr rfl
    intro q _
    split_ifs <;> ring
  change (∑ q ∈ Finset.Icc a b, quotientWeight (stages j) N p q*G m (p*q)) = _
  calc
    _ = (∑ q ∈ Finset.Icc a b, (if q=1 then (1 : ℝ) else 0)*G m (p*q)) -
        ∑ q ∈ Finset.Icc a b,
          (if Nat.Prime q ∧ j < q then (1/2 : ℝ) else 0)*G m (p*q) := by
      rw [← Finset.sum_sub_distrib]
      apply Finset.sum_congr rfl
      intro q hq
      have hi := Finset.mem_Icc.mp hq
      rw [low_quotientWeight j N p q hp hlong
        (Finset.mem_Icc.mpr ⟨ha.trans hi.1, hi.2.trans hb⟩) (hi.2.trans hsize)]
      ring
    _ = _ := by rw [hu, hpr]

end GRWTSK.NumberTheory.Moebius.PickupRoughQuotientPrimeLayer
