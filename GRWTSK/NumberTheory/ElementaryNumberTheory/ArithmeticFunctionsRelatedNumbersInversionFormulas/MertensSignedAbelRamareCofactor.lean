/- Copyright (c) 2026 grwtsk. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.MertensSignedAbelBandMultiplicity

/-!
# A prime-independent Ramare cofactor for the actual signed Abel source

The inspected openai/math Ramare construction uses B(m)/(k_P(m)+1).
Here the same quotient-only coefficient is identified with the existing
coprime Mobius extraction. The unsifted term and the repeated-prime correction
are both retained. This correction is NOT the older repeatedPrefix: its
cofactor denominator is different on repeated-prime terms.

The raw coefficient is one-bounded; on a selected-prime multiple it is at
most one half. Consequently the complete repeated contribution costs at most
one square-incidence sum, not two. This coarse bound is still polynomial
for the cube-root prime band and is not an RH-strength estimate.
No upstream analytic theorem is imported. All source windows and weights
remain literal. SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelRamareCofactor
open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeExtraction
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelDyadicPrimeRange
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBandMultiplicity

/-- The same coefficient for every selected prime, with the zero convention explicit. -/
def ramareCofactor (P : Finset ℕ) (m : ℕ) : ℝ :=
  if m = 0 then 0 else moebiusReal m / ((divisorCount P m : ℝ) + 1)

@[simp] theorem ramareCofactor_zero (P : Finset ℕ) : ramareCofactor P 0 = 0 := by
  simp [ramareCofactor]

theorem ramareCofactor_abs_le_one (P : Finset ℕ) (m : ℕ) :
    |ramareCofactor P m| ≤ 1 := by
  by_cases hm : m = 0
  · simp [hm]
  · have hd : 0 < (divisorCount P m : ℝ) + 1 := by positivity
    rw [ramareCofactor, if_neg hm, abs_div, abs_of_pos hd]
    apply (div_le_iff₀ hd).mpr
    have hmu := moebiusReal_abs_le_one m
    have hk := Nat.cast_nonneg (α := ℝ) (divisorCount P m)
    nlinarith

/-- A repeated selected prime supplies a genuinely stronger denominator bound. -/
theorem ramareCofactor_abs_le_half {P : Finset ℕ} {p m : ℕ}
    (hp : p ∈ P) (hpm : p ∣ m) : |ramareCofactor P m| ≤ (1 / 2 : ℝ) := by
  by_cases hm : m = 0
  · simp [hm]
  · have hk : (1 : ℝ) ≤ (divisorCount P m : ℝ) := by
      exact_mod_cast (show 1 ≤ divisorCount P m from divisorCount_pos_of_mem hp hpm)
    have hd : 0 < (divisorCount P m : ℝ) + 1 := by positivity
    rw [ramareCofactor, if_neg hm, abs_div, abs_of_pos hd]
    apply (div_le_iff₀ hd).mpr
    nlinarith [moebiusReal_abs_le_one m]

/-- This equality is valid only with the repeated-prime exclusion. -/
theorem ramareCofactor_eq_source_quotient (P : Finset ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) {p m : ℕ}
    (hp : p ∈ P) (hm : 0 < m) (hcop : ¬ p ∣ m) :
    ramareCofactor P m = moebiusReal m / (divisorCount P (p * m) : ℝ) := by
  rw [divisorCount_prime_mul_of_not_dvd P hP hp hcop]
  simp [ramareCofactor, Nat.ne_of_gt hm, Nat.cast_add, Nat.cast_one]

/-- The unmasked quotient sum. The input is kept variable for later phase separation. -/
def ramarePrefix (P : Finset ℕ) (h N : ℕ) (f : ℕ → ℝ) : ℝ :=
  ∑ p ∈ P, ∑ m ∈ Finset.Icc 1 ((N + h) / p),
    if h < p * m then f (p * m - h) * ramareCofactor P m else 0

/-- The exact terms that must be subtracted when the coprime guard is removed. -/
def ramareRepeatedPrefix (P : Finset ℕ) (h N : ℕ) (f : ℕ → ℝ) : ℝ :=
  ∑ p ∈ P, ∑ m ∈ Finset.Icc 1 ((N + h) / p),
    if h < p * m ∧ p ∣ m then f (p * m - h) * ramareCofactor P m else 0

theorem raw_sub_repeat (P : Finset ℕ) (h N : ℕ) (f : ℕ → ℝ) :
    ramarePrefix P h N f - ramareRepeatedPrefix P h N f =
      ∑ p ∈ P, ∑ m ∈ Finset.Icc 1 ((N + h) / p),
        if h < p * m ∧ ¬ p ∣ m then f (p * m - h) * ramareCofactor P m else 0 := by
  unfold ramarePrefix ramareRepeatedPrefix
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro p _
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m _
  by_cases hc : h < p * m <;> by_cases hr : p ∣ m <;> simp [hc, hr]

/-- Actual source identification: no source-dependent denominator remains in the raw term. -/
theorem coprimePrefix_eq_ramare (P : Finset ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h N : ℕ) :
    coprimePrefix P h N = ramarePrefix P h N moebiusReal -
      ramareRepeatedPrefix P h N moebiusReal := by
  rw [coprimePrefix_eq_quotient_sum P hP, raw_sub_repeat]
  apply Finset.sum_congr rfl
  intro p hp
  apply Finset.sum_congr rfl
  intro m hm
  split_ifs with hs
  · rw [ramareCofactor_eq_source_quotient P hP hp (Finset.mem_Icc.mp hm).1 hs.2]
    ring
  · rfl

/-- A selected prime square is still a nonzero correction after quotient-only normalization. -/
theorem ramareCofactor_singleton_prime {p : ℕ} (hp : Nat.Prime p) :
    ramareCofactor {p} p = -(1 / 2 : ℝ) := by
  simp [ramareCofactor, hp.ne_zero, divisorCount, selectedDivisors,
    moebiusReal, ArithmeticFunction.moebius_apply_prime hp]
  <;> norm_num

/-- The complete ordinary-window correction, including its unchanged shifted input. -/
theorem abs_ramareRepeatedPrefix_le (P : Finset ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (h N : ℕ) (f : ℕ → ℝ)
    (hf : ∀ a, |f a| ≤ 1) :
    |ramareRepeatedPrefix P h N f| ≤ (1 / 2 : ℝ) * squareIncidence P (N + h) := by
  have hterm (p : ℕ) (hp : p ∈ P) (m : ℕ) :
      |if h < p * m ∧ p ∣ m then f (p * m - h) * ramareCofactor P m else 0| ≤
        (1 / 2 : ℝ) * (if p ∣ m then 1 else 0) := by
    by_cases hs : h < p * m ∧ p ∣ m
    · rw [if_pos hs, if_pos hs.2, mul_one, abs_mul]
      simpa only [one_mul] using
        mul_le_mul (hf _) (ramareCofactor_abs_le_half hp hs.2)
          (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1)
    · rw [if_neg hs, abs_zero]
      split_ifs <;> norm_num
  calc
    _ ≤ ∑ p ∈ P, ∑ m ∈ Finset.Icc 1 ((N + h) / p),
        |if h < p * m ∧ p ∣ m then f (p * m - h) * ramareCofactor P m else 0| := by
      unfold ramareRepeatedPrefix
      exact (Finset.abs_sum_le_sum_abs _ _).trans
        (Finset.sum_le_sum (fun _ _ => Finset.abs_sum_le_sum_abs _ _))
    _ ≤ ∑ p ∈ P, ∑ m ∈ Finset.Icc 1 ((N + h) / p),
        (1 / 2 : ℝ) * (if p ∣ m then 1 else 0) :=
      Finset.sum_le_sum (fun p hp => Finset.sum_le_sum (fun m _ => hterm p hp m))
    _ = (1 / 2 : ℝ) * ∑ p ∈ P, ∑ m ∈ Finset.Icc 1 ((N + h) / p),
        if p ∣ m then (1 : ℝ) else 0 := by simp_rw [Finset.mul_sum]
    _ ≤ (1 / 2 : ℝ) * squareIncidence P (N + h) := by
      apply mul_le_mul_of_nonneg_left _ (by norm_num)
      unfold squareIncidence
      apply Finset.sum_le_sum
      intro p hp
      simpa only [zero_add, add_zero, Nat.div_div_eq_div_mul] using
        window_multiple_count_le 0 ((N + h) / p) p (hP p hp).pos

/-- Every retained depth is included; the outer normalization cancels the half above. -/
theorem abs_ramareRepeated_bulk_le (P : Finset ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (width : ℕ → ℕ) (j : ℕ) :
    |bulkPrefixFunctional width j (fun h N => ramareRepeatedPrefix P h N moebiusReal)| ≤
      squareIncidence P (2 ^ (j + 1) - 1) := by
  have hb := abs_bulkPrefixFunctional_le_two_mul width j
    (fun h N => ramareRepeatedPrefix P h N moebiusReal)
    (B := (1 / 2 : ℝ) * squareIncidence P (2 ^ (j + 1) - 1))
    (mul_nonneg (by norm_num) (squareIncidence_nonneg _ _))
    (by
      intro h N _ hw
      exact (abs_ramareRepeatedPrefix_le P hP h N moebiusReal moebiusReal_abs_le_one).trans
        (mul_le_mul_of_nonneg_left (squareIncidence_mono P (by omega)) (by norm_num)))
  nlinarith

/-- Exact complete bulk decomposition, with the unsifted and repeated-prime parts retained. -/
theorem bulk_eq_ramare (width : ℕ → ℕ) (j : ℕ) :
    bulkPacket width j =
      bulkPrefixFunctional width j (unsiftedPrefix (primeBand j)) -
      bulkPrefixFunctional width j (fun h N => ramarePrefix (primeBand j) h N moebiusReal) +
      bulkPrefixFunctional width j (fun h N => ramareRepeatedPrefix (primeBand j) h N moebiusReal) := by
  rw [bulk_eq_band_unsifted_sub_coprime]
  have he : coprimePrefix (primeBand j) =
      (fun h N => ramarePrefix (primeBand j) h N moebiusReal -
        ramareRepeatedPrefix (primeBand j) h N moebiusReal) := by
    funext h N
    exact coprimePrefix_eq_ramare _ (fun _ hp => primeBand_prime hp) h N
  rw [he, bulkPrefixFunctional_sub]
  ring

/-- The raw factorized source has only the inherited boundary loss plus its explicit correction. -/
theorem abs_full_packet_sub_ramare_raw_le (j : ℕ) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      (bulkPrefixFunctional sqrtWidth j (unsiftedPrefix (primeBand j)) -
       bulkPrefixFunctional sqrtWidth j (fun h N => ramarePrefix (primeBand j) h N moebiusReal))| ≤
      2 + squareIncidence (primeBand j) (2 ^ (j + 1) - 1) := by
  calc
    _ = |(weightedMertensDyadicSignedAbelDepthPacket j - bulkPacket sqrtWidth j) +
        bulkPrefixFunctional sqrtWidth j
          (fun h N => ramareRepeatedPrefix (primeBand j) h N moebiusReal)| := by
      congr 1
      rw [bulk_eq_ramare]
      ring
    _ ≤ _ := (abs_add _ _).trans (add_le_add (abs_packet_sub_sqrt_bulk_le_two j)
      (abs_ramareRepeated_bulk_le (primeBand j) (fun _ hp => primeBand_prime hp) sqrtWidth j))

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelRamareCofactor
