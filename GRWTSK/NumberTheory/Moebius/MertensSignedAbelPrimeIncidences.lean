/- Copyright (c) 2026 grwtsk. MIT.
Mathlib and imported GRWTSK results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.MertensSignedAbelBandMultiplicity

/-!
# Exact ordered-prime incidence expansion of the signed Abel bulk

Count squares are split into their diagonal and ordered-distinct incidences.
Actual Mobius multiplication then reindexes the first and falling-second
moments into two- and three-prime sums. Repeated-prime guards, the unsifted
term, nested natural floors, ordinary prefix lengths, and the old kernel
remain literal. Three extracted band primes leave a cofactor at most three.
This is finite arithmetic, not a cancellation or operator-norm estimate.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeIncidences

open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeExtraction
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelDyadicPrimeRange
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBandMultiplicity

/-- Ordered pairs, with the diagonal removed; no binomial or factorial convention is hidden. -/
theorem count_sq_sub_count_eq_ordered_distinct (P : Finset ℕ) (n : ℕ) :
    (divisorCount P n : ℝ) ^ 2 - (divisorCount P n : ℝ) =
      ∑ q ∈ selectedDivisors P n, ∑ r ∈ selectedDivisors P n,
        if q = r then (0 : ℝ) else 1 := by
  let S := selectedDivisors P n
  have hs : (∑ q ∈ S, ∑ _r ∈ S, (1 : ℝ)) =
      (∑ _q ∈ S, (1 : ℝ)) +
        ∑ q ∈ S, ∑ r ∈ S, if q = r then (0 : ℝ) else 1 := by
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro q hq
    have hd : (1 : ℝ) = ∑ r ∈ S, if q = r then (1 : ℝ) else 0 := by simp [hq]
    calc
      _ = (∑ r ∈ S, if q = r then (1 : ℝ) else 0) +
          ∑ r ∈ S, if q = r then (0 : ℝ) else 1 := by
        rw [← Finset.sum_add_distrib]
        apply Finset.sum_congr rfl
        intro r _
        by_cases hqr : q = r <;> simp [hqr]
      _ = _ := by rw [← hd]
  have hc : (S.card : ℝ) * (S.card : ℝ) = (S.card : ℝ) +
      ∑ q ∈ S, ∑ r ∈ S, if q = r then (0 : ℝ) else 1 := by simpa using hs
  change (S.card : ℝ) ^ 2 - (S.card : ℝ) = _
  rw [pow_two]
  linarith

/-- One selected divisor extracted from a finite weighted Mobius sum. -/
def primeTransfer (P : Finset ℕ) (Z : ℕ) (F : ℕ → ℝ) : ℝ :=
  ∑ q ∈ P, ∑ v ∈ Finset.Icc 1 (Z / q),
    if q ∣ v then 0 else F (q * v) * moebiusReal v

/-- Two successive extractions, retaining guards that force the primes to be distinct. -/
def doublePrimeTransfer (P : Finset ℕ) (Z : ℕ) (F : ℕ → ℝ) : ℝ :=
  ∑ q ∈ P, ∑ r ∈ P, ∑ v ∈ Finset.Icc 1 ((Z / q) / r),
    if ¬ q ∣ r * v ∧ ¬ r ∣ v then F (q * (r * v)) * moebiusReal v else 0

/-- No bounded-multiplicity hypothesis is needed for this generic first-incidence identity. -/
theorem weighted_count_eq_neg_primeTransfer (P : Finset ℕ)
    (hP : ∀ q ∈ P, Nat.Prime q) (Z : ℕ) (F : ℕ → ℝ) :
    (∑ m ∈ Finset.Icc 1 Z, F m * moebiusReal m * (divisorCount P m : ℝ)) =
      -primeTransfer P Z F := by
  calc
    _ = ∑ m ∈ Finset.Icc 1 Z, ∑ q ∈ P,
        if q ∣ m then F m * moebiusReal m else 0 := by
      apply Finset.sum_congr rfl
      intro m _
      calc
        _ = ∑ _q ∈ selectedDivisors P m, F m * moebiusReal m := by
          simp [divisorCount, mul_comm]
        _ = _ := by unfold selectedDivisors; rw [Finset.sum_filter]
    _ = ∑ q ∈ P, ∑ m ∈ Finset.Icc 1 Z,
        if q ∣ m then F m * moebiusReal m else 0 := Finset.sum_comm
    _ = ∑ q ∈ P, ∑ v ∈ Finset.Icc 1 (Z / q),
        F (q * v) * moebiusReal (q * v) := by
      apply Finset.sum_congr rfl
      intro q hq
      have hr := sum_divisible_window_eq_quotient 0 Z q (hP q hq).pos
        (fun m => F m * moebiusReal m)
      simp only [zero_add, add_zero] at hr
      rw [hr]
      apply Finset.sum_congr rfl
      intro v hv
      rw [if_pos (Nat.mul_pos (hP q hq).pos (Finset.mem_Icc.mp hv).1)]
    _ = -primeTransfer P Z F := by
      unfold primeTransfer
      rw [← Finset.sum_neg_distrib]
      apply Finset.sum_congr rfl
      intro q hq
      rw [← Finset.sum_neg_distrib]
      apply Finset.sum_congr rfl
      intro v _
      rw [moebiusReal_prime_mul (hP q hq)]
      by_cases hqv : q ∣ v <;> simp [hqv]

/-- Falling second moment extracts an ORDERED pair; the two Mobius signs cancel. -/
theorem weighted_falling_two_eq_doublePrimeTransfer (P : Finset ℕ)
    (hP : ∀ q ∈ P, Nat.Prime q) (Z : ℕ) (F : ℕ → ℝ) :
    (∑ m ∈ Finset.Icc 1 Z, F m * moebiusReal m *
      ((divisorCount P m : ℝ) ^ 2 - (divisorCount P m : ℝ))) =
      doublePrimeTransfer P Z F := by
  have hfirst := weighted_count_eq_neg_primeTransfer P hP Z
    (fun m => F m * ((divisorCount P m : ℝ) - 1))
  have hrewrite : primeTransfer P Z (fun m => F m * ((divisorCount P m : ℝ) - 1)) =
      ∑ q ∈ P, ∑ v ∈ Finset.Icc 1 (Z / q),
        (if q ∣ v then 0 else F (q * v)) * moebiusReal v * (divisorCount P v : ℝ) := by
    unfold primeTransfer
    apply Finset.sum_congr rfl
    intro q hq
    apply Finset.sum_congr rfl
    intro v _
    by_cases hqv : q ∣ v
    · simp [hqv]
    · simp only [if_neg hqv]
      rw [divisorCount_prime_mul_of_not_dvd P hP hq hqv]
      push_cast
      ring
  calc
    _ = ∑ m ∈ Finset.Icc 1 Z,
        (F m * ((divisorCount P m : ℝ) - 1)) * moebiusReal m * (divisorCount P m : ℝ) := by
      apply Finset.sum_congr rfl
      intro m _
      ring
    _ = -primeTransfer P Z (fun m => F m * ((divisorCount P m : ℝ) - 1)) := hfirst
    _ = -(∑ q ∈ P, ∑ v ∈ Finset.Icc 1 (Z / q),
        (if q ∣ v then 0 else F (q * v)) * moebiusReal v * (divisorCount P v : ℝ)) := by
      rw [hrewrite]
    _ = -(∑ q ∈ P, -primeTransfer P (Z / q) (fun v => if q ∣ v then 0 else F (q * v))) := by
      apply congrArg (fun z : ℝ => -z)
      apply Finset.sum_congr rfl
      intro q _
      exact weighted_count_eq_neg_primeTransfer P hP (Z / q) _
    _ = ∑ q ∈ P, primeTransfer P (Z / q) (fun v => if q ∣ v then 0 else F (q * v)) := by
      rw [Finset.sum_neg_distrib, neg_neg]
    _ = doublePrimeTransfer P Z F := by
      unfold primeTransfer doublePrimeTransfer
      apply Finset.sum_congr rfl
      intro q _
      apply Finset.sum_congr rfl
      intro r _
      apply Finset.sum_congr rfl
      intro v _
      by_cases hqv : q ∣ r * v <;> by_cases hrv : r ∣ v <;> simp [hqv, hrv]

/-- The varying right-argument source and the original repeated-prime guard. -/
def rightFactorWeight (p h m : ℕ) : ℝ :=
  if h < p * m ∧ ¬ p ∣ m then moebiusReal (p * m - h) else 0

/-- Two ordered band primes with a remaining ordinary quotient variable. -/
def twoPrimePrefix (j h N : ℕ) : ℝ :=
  ∑ p ∈ primeBand j, primeTransfer (primeBand j) ((N + h) / p) (rightFactorWeight p h)

/-- Three ordered band primes; order multiplicities are not divided out in this definition. -/
def threePrimePrefix (j h N : ℕ) : ℝ :=
  ∑ p ∈ primeBand j, doublePrimeTransfer (primeBand j) ((N + h) / p) (rightFactorWeight p h)

/-- Expose the same source weight for the generic finite identities. -/
theorem bandMomentPrefix_eq_weighted_count (s j h N : ℕ) :
    bandMomentPrefix s j h N = ∑ p ∈ primeBand j, ∑ m ∈ Finset.Icc 1 ((N + h) / p),
      rightFactorWeight p h m * moebiusReal m * (divisorCount (primeBand j) m : ℝ) ^ s := by
  unfold bandMomentPrefix rightFactorWeight
  apply Finset.sum_congr rfl
  intro p _
  apply Finset.sum_congr rfl
  intro m _
  split_ifs <;> simp

/-- The first count moment introduces one additional prime and one negative Mobius sign. -/
theorem bandMoment_one_eq_neg_twoPrimePrefix (j h N : ℕ) :
    bandMomentPrefix 1 j h N = -twoPrimePrefix j h N := by
  rw [bandMomentPrefix_eq_weighted_count]
  simp only [pow_one]
  unfold twoPrimePrefix
  rw [← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro p _
  exact weighted_count_eq_neg_primeTransfer (primeBand j) (fun _ hq => primeBand_prime hq) _ _

/-- Subtract the count-square diagonal before extracting two additional DISTINCT primes. -/
theorem bandMoment_two_sub_one_eq_threePrimePrefix (j h N : ℕ) :
    bandMomentPrefix 2 j h N - bandMomentPrefix 1 j h N = threePrimePrefix j h N := by
  rw [bandMomentPrefix_eq_weighted_count, bandMomentPrefix_eq_weighted_count]
  simp only [pow_one]
  rw [← Finset.sum_sub_distrib]
  unfold threePrimePrefix
  apply Finset.sum_congr rfl
  intro p _
  rw [← Finset.sum_sub_distrib]
  calc
    _ = ∑ m ∈ Finset.Icc 1 ((N + h) / p), rightFactorWeight p h m * moebiusReal m *
        ((divisorCount (primeBand j) m : ℝ) ^ 2 - (divisorCount (primeBand j) m : ℝ)) := by
      apply Finset.sum_congr rfl
      intro m _
      ring
    _ = _ := weighted_falling_two_eq_doublePrimeTransfer (primeBand j)
      (fun _ hq => primeBand_prime hq) _ _

/-- Literal two-prime coordinates, with both repeated-prime exclusions and both endpoints. -/
theorem twoPrimePrefix_eq_quotient_sum (j h N : ℕ) :
    twoPrimePrefix j h N =
      ∑ p ∈ primeBand j, ∑ q ∈ primeBand j,
        ∑ v ∈ Finset.Icc 1 (((N + h) / p) / q),
          if h < p * (q * v) ∧ ¬ p ∣ q * v ∧ ¬ q ∣ v then
            moebiusReal (p * (q * v) - h) * moebiusReal v else 0 := by
  unfold twoPrimePrefix primeTransfer rightFactorWeight
  apply Finset.sum_congr rfl
  intro p _
  apply Finset.sum_congr rfl
  intro q _
  apply Finset.sum_congr rfl
  intro v _
  by_cases hcut : h < p * (q * v) <;>
    by_cases hpv : p ∣ q * v <;> by_cases hqv : q ∣ v <;> simp [hcut, hpv, hqv]

/-- Literal three-prime coordinates; the integer divisions remain nested and exact. -/
theorem threePrimePrefix_eq_quotient_sum (j h N : ℕ) :
    threePrimePrefix j h N =
      ∑ p ∈ primeBand j, ∑ q ∈ primeBand j, ∑ r ∈ primeBand j,
        ∑ v ∈ Finset.Icc 1 ((((N + h) / p) / q) / r),
          if h < p * (q * (r * v)) ∧ ¬ p ∣ q * (r * v) ∧ ¬ q ∣ r * v ∧ ¬ r ∣ v then
            moebiusReal (p * (q * (r * v)) - h) * moebiusReal v else 0 := by
  unfold threePrimePrefix doublePrimeTransfer rightFactorWeight
  apply Finset.sum_congr rfl
  intro p _
  apply Finset.sum_congr rfl
  intro q _
  apply Finset.sum_congr rfl
  intro r _
  apply Finset.sum_congr rfl
  intro v _
  by_cases hcut : h < p * (q * (r * v)) <;>
    by_cases hpv : p ∣ q * (r * v) <;> by_cases hqv : q ∣ r * v <;>
      by_cases hrv : r ∣ v <;> simp [hcut, hpv, hqv, hrv]

/-- The guards encode distinct primes AND the remaining coprimality constraints. -/
theorem triple_guard_iff {p q r v : ℕ}
    (hp : Nat.Prime p) (hq : Nat.Prime q) (hr : Nat.Prime r) :
    (¬ p ∣ q * (r * v) ∧ ¬ q ∣ r * v ∧ ¬ r ∣ v) ↔
      (p ≠ q ∧ p ≠ r ∧ q ≠ r ∧ ¬ p ∣ v ∧ ¬ q ∣ v ∧ ¬ r ∣ v) := by
  simp only [hp.dvd_mul, hq.dvd_mul, Nat.prime_dvd_prime_iff_eq hp hq,
    Nat.prime_dvd_prime_iff_eq hp hr, Nat.prime_dvd_prime_iff_eq hq hr, not_or]
  tauto

/-- Two selected primes leave a quotient no longer than this exact integer floor. -/
theorem twoPrime_cofactor_le {j p q v : ℕ}
    (hp : p ∈ primeBand j) (hq : q ∈ primeBand j)
    (hwindow : p * (q * v) < 2 ^ (j + 1)) :
    v ≤ (2 ^ (j + 1) - 1) / (bandScale j + 1) ^ 2 := by
  have hlower : (bandScale j + 1) ^ 2 ≤ p * q := by
    simpa only [pow_two] using Nat.mul_le_mul (primeBand_bounds hp).1 (primeBand_bounds hq).1
  apply (Nat.le_div_iff_mul_le (by positivity : 0 < (bandScale j + 1) ^ 2)).mpr
  calc
    v * (bandScale j + 1) ^ 2 ≤ v * (p * q) := Nat.mul_le_mul_left v hlower
    _ = p * (q * v) := by ring
    _ ≤ 2 ^ (j + 1) - 1 := by omega

/-- Three selected band primes leave ONLY the cofactor values 0,1,2,3.
Actual quotient sums start at one. No prime-counting theorem is used. -/
theorem threePrime_cofactor_le_three {j p q r v : ℕ}
    (hp : p ∈ primeBand j) (hq : q ∈ primeBand j) (hr : r ∈ primeBand j)
    (hwindow : p * (q * (r * v)) < 2 ^ (j + 1)) : v ≤ 3 := by
  have hpQ : bandScale j ≤ p := by have := (primeBand_bounds hp).1; omega
  have hqQ : bandScale j ≤ q := by have := (primeBand_bounds hq).1; omega
  have hrQ : bandScale j ≤ r := by have := (primeBand_bounds hr).1; omega
  have hlower : bandScale j ^ 3 ≤ p * (q * r) := by
    calc
      bandScale j ^ 3 = bandScale j * (bandScale j * bandScale j) := by ring
      _ ≤ p * (q * r) := Nat.mul_le_mul hpQ (Nat.mul_le_mul hqQ hrQ)
  by_contra hv
  have hv4 : 4 ≤ v := by omega
  have hprod : 4 * bandScale j ^ 3 ≤ p * (q * (r * v)) := by
    simpa only [Nat.mul_comm, Nat.mul_left_comm, Nat.mul_assoc] using Nat.mul_le_mul hlower hv4
  have hY := right_le_four_mul_band_cube j
  omega

/-- Exact interpretation of the nested natural floors; all three divisors are positive. -/
theorem le_triple_floor_iff (W p q r v : ℕ) (hp : 0 < p) (hq : 0 < q) (hr : 0 < r) :
    v ≤ ((W / p) / q) / r ↔ p * (q * (r * v)) ≤ W := by
  rw [Nat.le_div_iff_mul_le hr, Nat.le_div_iff_mul_le hq, Nat.le_div_iff_mul_le hp]
  simp only [Nat.mul_comm, Nat.mul_left_comm, Nat.mul_assoc]

/-- The three-prime quotient sum is EXACTLY a sum over v=1,2,3, with the old upper cutoff restored. -/
theorem threePrimePrefix_eq_short_sum (j h N : ℕ) (hwindow : N + h < 2 ^ (j + 1)) :
    threePrimePrefix j h N =
      ∑ p ∈ primeBand j, ∑ q ∈ primeBand j, ∑ r ∈ primeBand j,
        ∑ v ∈ Finset.Icc 1 3,
          if (h < p * (q * (r * v)) ∧ p * (q * (r * v)) ≤ N + h) ∧
              (¬ p ∣ q * (r * v) ∧ ¬ q ∣ r * v ∧ ¬ r ∣ v) then
            moebiusReal (p * (q * (r * v)) - h) * moebiusReal v else 0 := by
  rw [threePrimePrefix_eq_quotient_sum]
  apply Finset.sum_congr rfl
  intro p hp
  apply Finset.sum_congr rfl
  intro q hq
  apply Finset.sum_congr rfl
  intro r hr
  let M := (((N + h) / p) / q) / r
  have hcut (v : ℕ) : v ≤ M ↔ p * (q * (r * v)) ≤ N + h :=
    le_triple_floor_iff _ _ _ _ _ (primeBand_prime hp).pos (primeBand_prime hq).pos (primeBand_prime hr).pos
  have hM : M ≤ 3 := threePrime_cofactor_le_three hp hq hr
    (((hcut M).mp le_rfl).trans_lt hwindow)
  have hfilter : (Finset.Icc 1 3).filter (fun v => v ≤ M) = Finset.Icc 1 M := by
    ext v
    simp only [Finset.mem_filter, Finset.mem_Icc]
    omega
  change (∑ v ∈ Finset.Icc 1 M, _) = _
  rw [← hfilter, Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro v _
  by_cases hv : v ≤ M
  · have hw := (hcut v).mp hv
    simp only [if_pos hv, hw, and_true]
  · have hw : ¬ p * (q * (r * v)) ≤ N + h := mt (hcut v).mpr hv
    simp [hv, hw]

/-- Repeated-prime corrections remain in the guards, and ordered-pair multiplicity changes 2/3 to 1/2. -/
theorem coprimePrefix_eq_prime_incidence_sums (j h N : ℕ)
    (hwindow : N + h < 2 ^ (j + 1)) :
    coprimePrefix (primeBand j) h N = bandMomentPrefix 0 j h N +
      (1 / 2 : ℝ) * twoPrimePrefix j h N + (1 / 6 : ℝ) * threePrimePrefix j h N := by
  rw [coprimePrefix_eq_band_moments j h N hwindow]
  have h1 := bandMoment_one_eq_neg_twoPrimePrefix j h N
  have h2 := bandMoment_two_sub_one_eq_threePrimePrefix j h N
  linarith

/-- Same actual kernel and all retained depths; no new norm is introduced. -/
theorem bulk_coprime_eq_prime_incidence_sums (width : ℕ → ℕ) (j : ℕ) :
    bulkPrefixFunctional width j (coprimePrefix (primeBand j)) =
      bulkPrefixFunctional width j (bandMomentPrefix 0 j) +
        (1 / 2 : ℝ) * bulkPrefixFunctional width j (twoPrimePrefix j) +
        (1 / 6 : ℝ) * bulkPrefixFunctional width j (threePrimePrefix j) := by
  calc
    _ = bulkPrefixFunctional width j (fun h N => bandMomentPrefix 0 j h N -
        (-1 / 2 : ℝ) * twoPrimePrefix j h N + (1 / 6 : ℝ) * threePrimePrefix j h N) := by
      apply bulkPrefixFunctional_congr_supported
      intro h N _ hw
      rw [coprimePrefix_eq_prime_incidence_sums j h N hw]
      ring
    _ = _ := by
      rw [bulkPrefixFunctional_sub_add, bulkPrefixFunctional_const_mul, bulkPrefixFunctional_const_mul]
      ring

/-- The unsifted term is not small by definition. All remaining prime sums stay signed. -/
theorem bulk_eq_unsifted_sub_prime_incidences (width : ℕ → ℕ) (j : ℕ) :
    bulkPacket width j = bulkPrefixFunctional width j (unsiftedPrefix (primeBand j)) -
      bulkPrefixFunctional width j (bandMomentPrefix 0 j) -
      (1 / 2 : ℝ) * bulkPrefixFunctional width j (twoPrimePrefix j) -
      (1 / 6 : ℝ) * bulkPrefixFunctional width j (threePrimePrefix j) := by
  rw [bulk_eq_band_unsifted_sub_coprime, bulk_coprime_eq_prime_incidence_sums]
  ring

/-- The old two-unit boundary allowance is the only approximation. -/
theorem abs_full_packet_sub_prime_incidences_le_two (j : ℕ) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      (bulkPrefixFunctional sqrtWidth j (unsiftedPrefix (primeBand j)) -
        bulkPrefixFunctional sqrtWidth j (bandMomentPrefix 0 j) -
        (1 / 2 : ℝ) * bulkPrefixFunctional sqrtWidth j (twoPrimePrefix j) -
        (1 / 6 : ℝ) * bulkPrefixFunctional sqrtWidth j (threePrimePrefix j))| ≤ 2 := by
  rw [← bulk_eq_unsifted_sub_prime_incidences sqrtWidth j]
  exact abs_packet_sub_sqrt_bulk_le_two j

/-- Conditional consumer only. No arithmetic cancellation witness is constructed. -/
theorem riemannHypothesis_of_prime_incidence_budget
    (hbudget : ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
      bulkPrefixFunctional sqrtWidth j (unsiftedPrefix (primeBand j)) -
        bulkPrefixFunctional sqrtWidth j (bandMomentPrefix 0 j) -
        (1 / 2 : ℝ) * bulkPrefixFunctional sqrtWidth j (twoPrimePrefix j) -
        (1 / 6 : ℝ) * bulkPrefixFunctional sqrtWidth j (threePrimePrefix j) ≤
          C * (((2 ^ j : ℕ) : ℝ) ^ δ)) : _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_sqrt_bulk_budget
  intro δ hδ
  obtain ⟨C, hC, hb⟩ := hbudget δ hδ
  refine ⟨C, hC, ?_⟩
  intro j
  rw [bulk_eq_unsifted_sub_prime_incidences sqrtWidth j]
  exact hb j

/-- An ordered two-divisor incidence has size two, not one. -/
theorem falling_two_at_two : (2 : ℝ) ^ 2 - 2 = 2 := by norm_num

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeIncidences
