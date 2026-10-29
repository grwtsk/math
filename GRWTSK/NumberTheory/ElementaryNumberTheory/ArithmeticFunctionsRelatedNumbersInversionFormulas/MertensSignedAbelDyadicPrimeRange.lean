/- Copyright (c) 2026 grwtsk. MIT.
Mathlib and imported GRWTSK results retain their upstream attribution and licenses. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.MertensSignedAbelPrimeExtraction

/-!
# A concrete dyadic prime band and quantitative repeated-prime comparison

Choose Q(j) = 2^((j+1)/3), using natural division, and primes Q(j)<p<=2Q(j).
The exact unsifted, prime-quotient and repeated-prime channels remain the old
ones. The correction is bounded by twice the finite squared-prime incidence
sum. This supplies an explicit error, NOT the subpolynomial arithmetic bound.
The exact coprime-quotient version cancels the repeated terms algebraically
before any absolute values. The unsifted channel is never discarded.

No analytic paper theorem, prime-distribution estimate, operator norm or
arithmetic cancellation is imported. SOURCE_PROOF_CANDIDATE / NOT_RUN /
NOT_KERNEL_AUDITED. The inherited boundary allowance remains two.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelDyadicPrimeRange

open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeExtraction

/-- The integer band scale is fixed before every shift and prefix quantifier. -/
def bandScale (j : ℕ) : ℕ := 2 ^ ((j + 1) / 3)

/-- A literal interval of primes, not an arbitrary source-fitted finite set. -/
def primeBand (j : ℕ) : Finset ℕ :=
  (Finset.Icc (bandScale j + 1) (2 * bandScale j)).filter Nat.Prime

theorem bandScale_pos (j : ℕ) : 0 < bandScale j := by
  unfold bandScale
  positivity

theorem primeBand_prime {j p : ℕ} (hp : p ∈ primeBand j) : Nat.Prime p :=
  (Finset.mem_filter.mp hp).2

theorem primeBand_bounds {j p : ℕ} (hp : p ∈ primeBand j) :
    bandScale j + 1 ≤ p ∧ p ≤ 2 * bandScale j :=
  Finset.mem_Icc.mp (Finset.mem_filter.mp hp).1

/-- Only interval cardinality is used; no estimate for the number of primes. -/
theorem primeBand_card_le (j : ℕ) : (primeBand j).card ≤ bandScale j := by
  have hsub : primeBand j ⊆ Finset.Icc (bandScale j + 1) (2 * bandScale j) :=
    Finset.filter_subset _ _
  have hc := Finset.card_le_card hsub
  rw [Nat.card_Icc] at hc
  omega

/-- Exact finite incidence count, retaining the natural floors. -/
def squareIncidence (P : Finset ℕ) (Z : ℕ) : ℝ :=
  ∑ p ∈ P, ((Z / (p * p) : ℕ) : ℝ)

theorem squareIncidence_nonneg (P : Finset ℕ) (Z : ℕ) :
    0 ≤ squareIncidence P Z := by
  unfold squareIncidence
  exact Finset.sum_nonneg (fun _ _ => Nat.cast_nonneg _)

theorem squareIncidence_mono (P : Finset ℕ) {Z W : ℕ} (hZW : Z ≤ W) :
    squareIncidence P Z ≤ squareIncidence P W := by
  unfold squareIncidence
  apply Finset.sum_le_sum
  intro p _
  have hd : Z / (p * p) ≤ W / (p * p) := Nat.div_le_div_right hZW
  exact_mod_cast hd

/-- The exact finite quotient bijection gives an ordinary-window counting bound. -/
theorem window_multiple_count_le (h N d : ℕ) (hd : 0 < d) :
    (∑ n ∈ Finset.Icc (h + 1) (N + h), if d ∣ n then (1 : ℝ) else 0) ≤
      (( (N + h) / d : ℕ) : ℝ) := by
  rw [sum_divisible_window_eq_quotient h N d hd (fun _ => (1 : ℝ))]
  calc
    _ ≤ ∑ _m ∈ Finset.Icc 1 ((N + h) / d), (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro m _
      split_ifs <;> norm_num
    _ = _ := by simp

/-- No cancellation or primality is needed for this correction majorant.
The denominator is bounded below by one only in its nonzero-count branch. -/
theorem abs_repeatedAverage_le_square_indicators (P : Finset ℕ) (n : ℕ) :
    |repeatedAverage P n| ≤ ∑ p ∈ P, if p * p ∣ n then (1 : ℝ) else 0 := by
  have hmass : 0 ≤ ∑ p ∈ P, if p * p ∣ n then (1 : ℝ) else 0 := by
    apply Finset.sum_nonneg
    intro p _
    split_ifs <;> norm_num
  by_cases hk : divisorCount P n = 0
  · simpa only [repeatedAverage, hk, Nat.cast_zero, div_zero, abs_zero] using hmass
  · have hkpos : (0 : ℝ) < (divisorCount P n : ℝ) := by
      exact_mod_cast Nat.pos_of_ne_zero hk
    have hkone : (1 : ℝ) ≤ (divisorCount P n : ℝ) := by
      exact_mod_cast Nat.one_le_iff_ne_zero.mpr hk
    have hnum :
        |∑ p ∈ selectedDivisors P n,
          if p ∣ n / p then moebiusReal (n / p) else 0| ≤
          ∑ p ∈ P, if p * p ∣ n then (1 : ℝ) else 0 := by
      unfold selectedDivisors
      rw [Finset.sum_filter]
      apply (Finset.abs_sum_le_sum_abs _ _).trans
      apply Finset.sum_le_sum
      intro p _
      by_cases hpn : p ∣ n
      · rw [if_pos hpn]
        by_cases hr : p ∣ n / p
        · have hsquare : p * p ∣ n := by
            obtain ⟨k, hk⟩ := hr
            refine ⟨k, ?_⟩
            calc
              n = p * (n / p) := (Nat.mul_div_cancel' hpn).symm
              _ = (p * p) * k := by rw [hk]; ring
          rw [if_pos hr, if_pos hsquare]
          exact moebiusReal_abs_le_one _
        · rw [if_neg hr, abs_zero]
          split_ifs <;> norm_num
      · rw [if_neg hpn, abs_zero]
        split_ifs <;> norm_num
    rw [repeatedAverage, abs_div, abs_of_nonneg hkpos.le]
    apply (div_le_iff₀ hkpos).mpr
    exact hnum.trans (le_mul_of_one_le_right hmass hkone)

/-- Prefix length N and right window endpoint N+h remain literal. -/
theorem abs_repeatedPrefix_le_squareIncidence (P : Finset ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h N : ℕ) :
    |repeatedPrefix P h N| ≤ squareIncidence P (N + h) := by
  unfold repeatedPrefix
  calc
    _ ≤ ∑ n ∈ Finset.Icc (h + 1) (N + h),
        |moebiusReal (n - h) * repeatedAverage P n| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ Finset.Icc (h + 1) (N + h),
        ∑ p ∈ P, if p * p ∣ n then (1 : ℝ) else 0 := by
      apply Finset.sum_le_sum
      intro n _
      rw [abs_mul]
      calc
        _ ≤ 1 * |repeatedAverage P n| :=
          mul_le_mul_of_nonneg_right (moebiusReal_abs_le_one _) (abs_nonneg _)
        _ ≤ _ := by simpa only [one_mul] using abs_repeatedAverage_le_square_indicators P n
    _ = ∑ p ∈ P, ∑ n ∈ Finset.Icc (h + 1) (N + h),
        if p * p ∣ n then (1 : ℝ) else 0 := Finset.sum_comm
    _ ≤ squareIncidence P (N + h) := by
      unfold squareIncidence
      apply Finset.sum_le_sum
      intro p hp
      exact window_multiple_count_le h N (p * p) (Nat.mul_pos (hP p hp).pos (hP p hp).pos)

/-- The full bulk normalization costs at most two times a supported prefix bound.
No assertion is made about F outside the actual triangular arithmetic window. -/
theorem abs_bulkPrefixFunctional_le_two_mul (width : ℕ → ℕ) (j : ℕ)
    (F : ℕ → ℕ → ℝ) {B : ℝ} (hB : 0 ≤ B)
    (hF : ∀ h N : ℕ, 1 ≤ h → N + h < 2 ^ (j + 1) → |F h N| ≤ B) :
    |bulkPrefixFunctional width j F| ≤ 2 * B := by
  have hslice (t : ℕ) :
      |if width j ≤ t ∧ t < 2 ^ (j + 1) - width j then
        ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
          normalizedSignedAbelShiftKernel j t h * F h (t + 1) else 0| ≤ B := by
    split_ifs with ht
    · calc
        _ ≤ ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
            |normalizedSignedAbelShiftKernel j t h * F h (t + 1)| :=
          Finset.abs_sum_le_sum_abs _ _
        _ ≤ ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
            normalizedSignedAbelShiftKernel j t h * B := by
          apply Finset.sum_le_sum
          intro h _
          by_cases hs : 1 ≤ h ∧ h < 2 ^ (j + 1) ∧ t < 2 ^ (j + 1) - h - 1
          · rw [abs_mul, abs_of_nonneg (normalizedSignedAbelShiftKernel_nonneg j t h)]
            apply mul_le_mul_of_nonneg_left (hF h (t + 1) hs.1 (by omega))
              (normalizedSignedAbelShiftKernel_nonneg j t h)
          · simp [normalizedSignedAbelShiftKernel, hs]
        _ = normalizedSignedAbelShiftKernelMass j t * B := by
          rw [← Finset.sum_mul]
          rfl
        _ ≤ 1 * B := mul_le_mul_of_nonneg_right (kernelMass_le_one j t) hB
        _ = B := one_mul _
    · simpa using hB
  unfold bulkPrefixFunctional
  rw [abs_mul, abs_of_nonneg (show 0 ≤ 2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ by positivity)]
  calc
    _ ≤ (2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹) *
        (∑ _t ∈ Finset.range (2 ^ (j + 1)), B) := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      exact (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum (fun t _ => hslice t))
    _ = 2 * B := by
      simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
      have hY : (((2 ^ (j + 1) : ℕ) : ℝ)) ≠ 0 := by positivity
      field_simp [hY]
      <;> ring

/-- Exact squared-prime incidence, rather than an unspecified small error. -/
theorem abs_repeated_bulk_le_two_incidence (P : Finset ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (width : ℕ → ℕ) (j : ℕ) :
    |bulkPrefixFunctional width j (repeatedPrefix P)| ≤
      2 * squareIncidence P (2 ^ (j + 1) - 1) := by
  apply abs_bulkPrefixFunctional_le_two_mul width j (repeatedPrefix P)
    (squareIncidence_nonneg _ _)
  intro h N _hpos hwindow
  exact (abs_repeatedPrefix_le_squareIncidence P hP h N).trans
    (squareIncidence_mono P (by omega))

/-- Explicit band-sensitive upper bound using only floor and interval counting. -/
theorem squareIncidence_primeBand_le (j Z : ℕ) :
    squareIncidence (primeBand j) Z ≤
      ((primeBand j).card : ℝ) * (Z : ℝ) / ((bandScale j : ℝ) + 1) ^ 2 := by
  have hden : (0 : ℝ) < ((bandScale j : ℝ) + 1) ^ 2 := by positivity
  have hatom (p : ℕ) (hp : p ∈ primeBand j) :
      ((Z / (p * p) : ℕ) : ℝ) ≤ (Z : ℝ) / ((bandScale j : ℝ) + 1) ^ 2 := by
    have hpR : (bandScale j : ℝ) + 1 ≤ (p : ℝ) := by
      exact_mod_cast (primeBand_bounds hp).1
    have hsquare : ((bandScale j : ℝ) + 1) ^ 2 ≤ (p : ℝ) * (p : ℝ) := by
      nlinarith [Nat.cast_nonneg (bandScale j), Nat.cast_nonneg p]
    have hfloor : ((Z / (p * p) : ℕ) : ℝ) * ((p : ℝ) * (p : ℝ)) ≤ (Z : ℝ) := by
      exact_mod_cast Nat.div_mul_le_self Z (p * p)
    apply (le_div_iff₀ hden).mpr
    exact (mul_le_mul_of_nonneg_left hsquare (Nat.cast_nonneg _)).trans hfloor
  unfold squareIncidence
  calc
    _ ≤ ∑ _p ∈ primeBand j, (Z : ℝ) / ((bandScale j : ℝ) + 1) ^ 2 :=
      Finset.sum_le_sum hatom
    _ = _ := by simp [mul_div_assoc]

/-- A convenient coarser bound; the sharper finite incidence remains available. -/
theorem squareIncidence_primeBand_le_div (j Z : ℕ) :
    squareIncidence (primeBand j) Z ≤ (Z : ℝ) / (bandScale j : ℝ) := by
  have hQ : (0 : ℝ) < (bandScale j : ℝ) := by exact_mod_cast bandScale_pos j
  have hc : ((primeBand j).card : ℝ) ≤ (bandScale j : ℝ) := by
    exact_mod_cast primeBand_card_le j
  have hden : (0 : ℝ) < ((bandScale j : ℝ) + 1) ^ 2 := by positivity
  calc
    _ ≤ ((primeBand j).card : ℝ) * (Z : ℝ) / ((bandScale j : ℝ) + 1) ^ 2 :=
      squareIncidence_primeBand_le j Z
    _ ≤ (bandScale j : ℝ) * (Z : ℝ) / ((bandScale j : ℝ) + 1) ^ 2 :=
      div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_right hc (Nat.cast_nonneg Z)) hden.le
    _ ≤ (Z : ℝ) / (bandScale j : ℝ) := by
      apply (div_le_div_iff₀ hden hQ).mpr
      nlinarith [mul_nonneg (Nat.cast_nonneg Z)
        (show 0 ≤ 2 * (bandScale j : ℝ) + 1 by positivity)]

/-- On the concrete band the complete repeated-prime channel has a paid finite bound. -/
theorem abs_band_repeated_bulk_le (width : ℕ → ℕ) (j : ℕ) :
    |bulkPrefixFunctional width j (repeatedPrefix (primeBand j))| ≤
      2 * ((2 ^ (j + 1) - 1 : ℕ) : ℝ) / (bandScale j : ℝ) := by
  apply (abs_repeated_bulk_le_two_incidence (primeBand j)
    (fun _ hp => primeBand_prime hp) width j).trans
  simpa only [mul_div_assoc] using
    mul_le_mul_of_nonneg_left (squareIncidence_primeBand_le_div j (2 ^ (j + 1) - 1))
      (by norm_num : (0 : ℝ) ≤ 2)

/-- Quantitative comparison to the uncorrected prime expression. This error is
polynomial-sized in the crude bound and is NOT absorbed into an RH budget. -/
theorem abs_bulk_sub_raw_band_le (width : ℕ → ℕ) (j : ℕ) :
    |bulkPacket width j -
      (bulkPrefixFunctional width j (unsiftedPrefix (primeBand j)) -
        bulkPrefixFunctional width j (primePrefix (primeBand j)))| ≤
      2 * squareIncidence (primeBand j) (2 ^ (j + 1) - 1) := by
  rw [bulkPacket_eq_prime_extraction (primeBand j) (fun _ hp => primeBand_prime hp) width j,
    add_sub_cancel_left]
  exact abs_repeated_bulk_le_two_incidence (primeBand j) (fun _ hp => primeBand_prime hp) width j

/-- The full packet adds only the inherited two-unit boundary allowance. -/
theorem abs_full_packet_sub_raw_band_le (j : ℕ) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      (bulkPrefixFunctional sqrtWidth j (unsiftedPrefix (primeBand j)) -
        bulkPrefixFunctional sqrtWidth j (primePrefix (primeBand j)))| ≤
      2 + 2 * squareIncidence (primeBand j) (2 ^ (j + 1) - 1) := by
  have ht := abs_add
    (weightedMertensDyadicSignedAbelDepthPacket j - bulkPacket sqrtWidth j)
    (bulkPacket sqrtWidth j -
      (bulkPrefixFunctional sqrtWidth j (unsiftedPrefix (primeBand j)) -
        bulkPrefixFunctional sqrtWidth j (primePrefix (primeBand j))))
  have hsum :
      (weightedMertensDyadicSignedAbelDepthPacket j - bulkPacket sqrtWidth j) +
        (bulkPacket sqrtWidth j -
          (bulkPrefixFunctional sqrtWidth j (unsiftedPrefix (primeBand j)) -
            bulkPrefixFunctional sqrtWidth j (primePrefix (primeBand j)))) =
      weightedMertensDyadicSignedAbelDepthPacket j -
        (bulkPrefixFunctional sqrtWidth j (unsiftedPrefix (primeBand j)) -
          bulkPrefixFunctional sqrtWidth j (primePrefix (primeBand j))) := by ring
  rw [hsum] at ht
  exact ht.trans (add_le_add (abs_packet_sub_sqrt_bulk_le_two j)
    (abs_bulk_sub_raw_band_le sqrtWidth j))

/-- Combine the raw and repeated-prime contributions BEFORE estimating. -/
def coprimePrefix (P : Finset ℕ) (h N : ℕ) : ℝ :=
  primePrefix P h N - repeatedPrefix P h N

/-- The correction cancels exactly the p-divisible quotient terms. All other
cutoffs, variable prefix lengths and source divisor counts are unchanged. -/
theorem coprimePrefix_eq_quotient_sum (P : Finset ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h N : ℕ) :
    coprimePrefix P h N =
      ∑ p ∈ P, ∑ m ∈ Finset.Icc 1 ((N + h) / p),
        if h < p * m ∧ ¬ p ∣ m then
          moebiusReal (p * m - h) * moebiusReal m / (divisorCount P (p * m) : ℝ)
        else 0 := by
  unfold coprimePrefix
  rw [primePrefix_eq_quotient_sum P hP, repeatedPrefix_eq_quotient_sum P hP,
    ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro p _
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m _
  by_cases hcut : h < p * m <;> by_cases hrep : p ∣ m <;> simp [hcut, hrep]

theorem bulkPrefixFunctional_sub (width : ℕ → ℕ) (j : ℕ)
    (F G : ℕ → ℕ → ℝ) :
    bulkPrefixFunctional width j (fun h N => F h N - G h N) =
      bulkPrefixFunctional width j F - bulkPrefixFunctional width j G := by
  have hz : bulkPrefixFunctional width j (fun _ _ => 0) = 0 := by
    simp [bulkPrefixFunctional]
  simpa only [add_zero, hz] using
    bulkPrefixFunctional_sub_add width j F G (fun _ _ => 0)

/-- Exact source comparison, not the uncorrected approximation. The unsifted
term is retained; repeated primes were canceled by a proved finite identity. -/
theorem bulk_eq_band_unsifted_sub_coprime (width : ℕ → ℕ) (j : ℕ) :
    bulkPacket width j = bulkPrefixFunctional width j (unsiftedPrefix (primeBand j)) -
      bulkPrefixFunctional width j (coprimePrefix (primeBand j)) := by
  rw [bulkPacket_eq_prime_extraction (primeBand j) (fun _ hp => primeBand_prime hp)]
  simp only [coprimePrefix, bulkPrefixFunctional_sub]
  ring

/-- A length-sensitive quotient bound for the selected band, with integer rounding. -/
theorem quotient_window_le_band {j p N h : ℕ} (hp : p ∈ primeBand j)
    (hwindow : N + h < 2 ^ (j + 1)) :
    (N + h) / p ≤ (2 ^ (j + 1) - 1) / (bandScale j + 1) := by
  have hprod : (N + h) / p * (bandScale j + 1) ≤ 2 ^ (j + 1) - 1 := by
    calc
      _ ≤ (N + h) / p * p := Nat.mul_le_mul_left _ (primeBand_bounds hp).1
      _ ≤ N + h := Nat.div_mul_le_self _ _
      _ ≤ _ := by omega
  exact (Nat.le_div_iff_mul_le (Nat.succ_pos _)).mpr hprod

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelDyadicPrimeRange
