/- Copyright (c) 2026 grwtsk. MIT.
Mathlib and imported GRWTSK results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.MertensSignedAbelDyadicPrimeRange
import Mathlib.Data.Nat.Factorization.Basic

/-!
# Bounded selected-prime multiplicity and exact denominator elimination

The existing band is unchanged: Q = 2^((j+1)/3), P = {p prime : Q<p<=2Q}.
For 0<n<Y=2^(j+1), at most THREE selected primes divide n. On the
coprime quotient support n=p*m this gives k_P(n)=1+k_P(m), k_P(m)<=2.
Consequently 1/k_P(p*m) is exactly 1-(2/3)k_P(m)+(1/6)k_P(m)^2.
The actual signed bulk becomes an unsifted term and three signed moments,
with no variable count denominator and no new approximation error.

The unsifted term, p-not-dividing-m guard, original prefix windows, floors,
kernels and two-unit boundary allowance remain unchanged. This finite
arithmetic reduction supplies NO cancellation or operator-norm estimate.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelBandMultiplicity

open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeExtraction
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelDyadicPrimeRange

private theorem lower_pow_card_le_prod (S : Finset ℕ) (b : ℕ) :
    (∀ p ∈ S, b ≤ p) → b ^ S.card ≤ ∏ p ∈ S, p := by
  induction S using Finset.induction_on with
  | empty => simp
  | @insert p S hp ih =>
      intro h
      have hs := ih (fun q hq => h q (Finset.mem_insert_of_mem hq))
      have hbp := h p (Finset.mem_insert_self p S)
      rw [Finset.card_insert_of_notMem hp, Finset.prod_insert hp, pow_succ]
      simpa only [Nat.mul_comm] using Nat.mul_le_mul hs hbp

/-- The remainder in natural division by three costs at most a factor four. -/
theorem right_le_four_mul_band_cube (j : ℕ) :
    2 ^ (j + 1) ≤ 4 * bandScale j ^ 3 := by
  have he : j + 1 ≤ ((j + 1) / 3) * 3 + 2 := by omega
  calc
    2 ^ (j + 1) ≤ 2 ^ (((j + 1) / 3) * 3 + 2) :=
      Nat.pow_le_pow_right (by decide : 0 < (2 : ℕ)) he
    _ = 4 * bandScale j ^ 3 := by
      rw [pow_add, pow_mul]
      simp only [bandScale, pow_two]
      ring

/-- Four distinct selected prime divisors cannot fit below the source endpoint. -/
theorem right_lt_band_succ_pow_four (j : ℕ) :
    2 ^ (j + 1) < (bandScale j + 1) ^ 4 := by
  apply (right_le_four_mul_band_cube j).trans_lt
  have hpoly : (bandScale j + 1) ^ 4 =
      4 * bandScale j ^ 3 + (bandScale j ^ 4 + 6 * bandScale j ^ 2 + 4 * bandScale j + 1) := by
    ring
  rw [hpoly]
  omega

/-- Distinct selected prime divisors have a product dividing the original positive integer. -/
theorem selected_product_dvd (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    {n : ℕ} (hn : 0 < n) : (∏ p ∈ selectedDivisors P n, p) ∣ n := by
  have hsub : selectedDivisors P n ⊆ n.primeFactors := by
    intro p hp
    have hm := Finset.mem_filter.mp hp
    exact Nat.mem_primeFactors.mpr ⟨hP p hm.1, hm.2, ne_of_gt hn⟩
  exact (Finset.prod_dvd_prod_of_subset _ _ (fun p : ℕ => p) hsub).trans
    (Nat.prod_primeFactors_dvd n)

/-- A uniform arithmetic count bound, with positivity and the actual endpoint explicit. -/
theorem band_divisorCount_le_three {j n : ℕ} (hn : 0 < n)
    (hwindow : n < 2 ^ (j + 1)) : divisorCount (primeBand j) n ≤ 3 := by
  have hprod : (bandScale j + 1) ^ divisorCount (primeBand j) n ≤ n := by
    calc
      _ ≤ ∏ p ∈ selectedDivisors (primeBand j) n, p :=
        lower_pow_card_le_prod _ _ (fun p hp =>
          (primeBand_bounds (Finset.mem_filter.mp hp).1).1)
      _ ≤ n := Nat.le_of_dvd hn
        (selected_product_dvd (primeBand j) (fun _ hp => primeBand_prime hp) hn)
  by_contra hnot
  have hfour : 4 ≤ divisorCount (primeBand j) n := by omega
  have hpow : (bandScale j + 1) ^ 4 ≤
      (bandScale j + 1) ^ divisorCount (primeBand j) n :=
    Nat.pow_le_pow_right (Nat.succ_pos _) hfour
  have hbad := (right_lt_band_succ_pow_four j).trans_le (hpow.trans hprod)
  omega

/-- Multiplying by a selected prime inserts exactly that prime into the selected-divisor set. -/
theorem selectedDivisors_prime_mul (P : Finset ℕ)
    (hP : ∀ q ∈ P, Nat.Prime q) {p m : ℕ} (hp : p ∈ P) :
    selectedDivisors P (p * m) = insert p (selectedDivisors P m) := by
  ext q
  simp only [selectedDivisors, Finset.mem_filter, Finset.mem_insert]
  constructor
  · rintro ⟨hq, hdiv⟩
    rcases (hP q hq).dvd_mul.mp hdiv with hqp | hqm
    · exact Or.inl ((Nat.prime_dvd_prime_iff_eq (hP q hq) (hP p hp)).mp hqp)
    · exact Or.inr ⟨hq, hqm⟩
  · rintro (rfl | ⟨hq, hqm⟩)
    · exact ⟨hp, ⟨m, rfl⟩⟩
    · exact ⟨hq, (hP q hq).dvd_mul.mpr (Or.inr hqm)⟩

/-- The count increments by one only with the repeated-prime exclusion retained. -/
theorem divisorCount_prime_mul_of_not_dvd (P : Finset ℕ)
    (hP : ∀ q ∈ P, Nat.Prime q) {p m : ℕ} (hp : p ∈ P) (hcop : ¬ p ∣ m) :
    divisorCount P (p * m) = divisorCount P m + 1 := by
  have hnot : p ∉ selectedDivisors P m := by simp [selectedDivisors, hcop]
  unfold divisorCount
  rw [selectedDivisors_prime_mul P hP hp, Finset.card_insert_of_notMem hnot]

/-- The quotient can carry at most two further selected primes on actual source support. -/
theorem quotient_divisorCount_le_two {j p m : ℕ}
    (hp : p ∈ primeBand j) (hm : 0 < m) (hcop : ¬ p ∣ m)
    (hwindow : p * m < 2 ^ (j + 1)) : divisorCount (primeBand j) m ≤ 2 := by
  have hc := band_divisorCount_le_three
    (Nat.mul_pos (primeBand_prime hp).pos hm) hwindow
  rw [divisorCount_prime_mul_of_not_dvd (primeBand j)
    (fun _ hq => primeBand_prime hq) hp hcop] at hc
  omega

/-- Exact quadratic interpolation on the three possible quotient counts, not an asymptotic. -/
theorem quotient_inverse_eq_quadratic {j p m : ℕ}
    (hp : p ∈ primeBand j) (hm : 0 < m) (hcop : ¬ p ∣ m)
    (hwindow : p * m < 2 ^ (j + 1)) :
    (divisorCount (primeBand j) (p * m) : ℝ)⁻¹ =
      1 - (2 / 3 : ℝ) * (divisorCount (primeBand j) m : ℝ) +
        (1 / 6 : ℝ) * (divisorCount (primeBand j) m : ℝ) ^ 2 := by
  have hc := quotient_divisorCount_le_two hp hm hcop hwindow
  rw [divisorCount_prime_mul_of_not_dvd (primeBand j)
    (fun _ hq => primeBand_prime hq) hp hcop]
  have hcases : divisorCount (primeBand j) m = 0 ∨
      divisorCount (primeBand j) m = 1 ∨ divisorCount (primeBand j) m = 2 := by omega
  rcases hcases with h | h | h <;> rw [h] <;> norm_num

/-- Source-supported denominator weights lie between one third and one. -/
theorem quotient_inverse_bounds {j p m : ℕ}
    (hp : p ∈ primeBand j) (hm : 0 < m) (hcop : ¬ p ∣ m)
    (hwindow : p * m < 2 ^ (j + 1)) :
    (1 / 3 : ℝ) ≤ (divisorCount (primeBand j) (p * m) : ℝ)⁻¹ ∧
      (divisorCount (primeBand j) (p * m) : ℝ)⁻¹ ≤ 1 := by
  have hc := quotient_divisorCount_le_two hp hm hcop hwindow
  rw [divisorCount_prime_mul_of_not_dvd (primeBand j)
    (fun _ hq => primeBand_prime hq) hp hcop]
  have hcases : divisorCount (primeBand j) m = 0 ∨
      divisorCount (primeBand j) m = 1 ∨ divisorCount (primeBand j) m = 2 := by omega
  rcases hcases with h | h | h <;> rw [h] <;> norm_num

/-- Optional exact description of the unsifted indicator; the signed source is not dropped. -/
theorem unsifted_eq_cubic {j n : ℕ} (hn : 0 < n) (hwindow : n < 2 ^ (j + 1)) :
    unsifted (primeBand j) n = moebiusReal n *
      ((1 - (divisorCount (primeBand j) n : ℝ)) *
       (2 - (divisorCount (primeBand j) n : ℝ)) *
       (3 - (divisorCount (primeBand j) n : ℝ)) / 6) := by
  have hc := band_divisorCount_le_three hn hwindow
  have hcases : divisorCount (primeBand j) n = 0 ∨
      divisorCount (primeBand j) n = 1 ∨ divisorCount (primeBand j) n = 2 ∨
      divisorCount (primeBand j) n = 3 := by omega
  rcases hcases with h | h | h | h <;> norm_num [unsifted, h]

/-- Signed quotient moment with the same coprime guard, floor and variable window.
Only r=0,1,2 is needed; no variable count denominator occurs in this definition. -/
def bandMomentPrefix (r j h N : ℕ) : ℝ :=
  ∑ p ∈ primeBand j, ∑ m ∈ Finset.Icc 1 ((N + h) / p),
    if h < p * m ∧ ¬ p ∣ m then
      moebiusReal (p * m - h) * moebiusReal m *
        (divisorCount (primeBand j) m : ℝ) ^ r
    else 0

/-- The concrete coprime quotient sum has an exact three-moment expansion. -/
theorem coprimePrefix_eq_band_moments (j h N : ℕ)
    (hwindow : N + h < 2 ^ (j + 1)) :
    coprimePrefix (primeBand j) h N =
      bandMomentPrefix 0 j h N - (2 / 3 : ℝ) * bandMomentPrefix 1 j h N +
        (1 / 6 : ℝ) * bandMomentPrefix 2 j h N := by
  rw [coprimePrefix_eq_quotient_sum (primeBand j) (fun _ hp => primeBand_prime hp)]
  unfold bandMomentPrefix
  simp_rw [Finset.mul_sum]
  rw [← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro p hp
  rw [← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  by_cases hs : h < p * m ∧ ¬ p ∣ m
  · simp only [if_pos hs, pow_zero, pow_one, mul_one]
    have hmpos : 0 < m := (Finset.mem_Icc.mp hm).1
    have hpm : p * m ≤ N + h := by
      have hd := (Nat.le_div_iff_mul_le (primeBand_prime hp).pos).mp
        (Finset.mem_Icc.mp hm).2
      simpa only [Nat.mul_comm] using hd
    rw [div_eq_mul_inv, quotient_inverse_eq_quadratic hp hmpos hs.2 (hpm.trans_lt hwindow)]
    ring
  · simp [hs]

/-- Only equality on the actual triangular source window is needed for transport. -/
theorem bulkPrefixFunctional_congr_supported (width : ℕ → ℕ) (j : ℕ)
    (F G : ℕ → ℕ → ℝ)
    (hFG : ∀ h N : ℕ, 1 ≤ h → N + h < 2 ^ (j + 1) → F h N = G h N) :
    bulkPrefixFunctional width j F = bulkPrefixFunctional width j G := by
  unfold bulkPrefixFunctional
  apply congrArg (fun z : ℝ => 2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ * z)
  apply Finset.sum_congr rfl
  intro t _
  by_cases ht : width j ≤ t ∧ t < 2 ^ (j + 1) - width j
  · simp only [if_pos ht]
    apply Finset.sum_congr rfl
    intro h _
    by_cases hs : 1 ≤ h ∧ h < 2 ^ (j + 1) ∧ t < 2 ^ (j + 1) - h - 1
    · rw [hFG h (t + 1) hs.1 (by omega)]
    · simp [normalizedSignedAbelShiftKernel, hs]
  · simp [ht]

/-- Exact scalar linearity, used with the fixed rational moment coefficients. -/
theorem bulkPrefixFunctional_const_mul (width : ℕ → ℕ) (j : ℕ)
    (c : ℝ) (F : ℕ → ℕ → ℝ) :
    bulkPrefixFunctional width j (fun h N => c * F h N) =
      c * bulkPrefixFunctional width j F := by
  unfold bulkPrefixFunctional
  have hs :
      (∑ t ∈ Finset.range (2 ^ (j + 1)),
        if width j ≤ t ∧ t < 2 ^ (j + 1) - width j then
          ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
            normalizedSignedAbelShiftKernel j t h * (c * F h (t + 1)) else 0) =
      c * ∑ t ∈ Finset.range (2 ^ (j + 1)),
        if width j ≤ t ∧ t < 2 ^ (j + 1) - width j then
          ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
            normalizedSignedAbelShiftKernel j t h * F h (t + 1) else 0 := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro t _
    split_ifs
    · rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro h _
      ring
    · simp
  rw [hs]
  ring

/-- All moments are evaluated through the original weighted signed bulk functional. -/
theorem bulk_coprime_eq_band_moments (width : ℕ → ℕ) (j : ℕ) :
    bulkPrefixFunctional width j (coprimePrefix (primeBand j)) =
      bulkPrefixFunctional width j (bandMomentPrefix 0 j) -
        (2 / 3 : ℝ) * bulkPrefixFunctional width j (bandMomentPrefix 1 j) +
        (1 / 6 : ℝ) * bulkPrefixFunctional width j (bandMomentPrefix 2 j) := by
  calc
    _ = bulkPrefixFunctional width j (fun h N =>
        bandMomentPrefix 0 j h N - (2 / 3 : ℝ) * bandMomentPrefix 1 j h N +
          (1 / 6 : ℝ) * bandMomentPrefix 2 j h N) :=
      bulkPrefixFunctional_congr_supported width j _ _
        (fun h N _ hwindow => coprimePrefix_eq_band_moments j h N hwindow)
    _ = _ := by rw [bulkPrefixFunctional_sub_add,
      bulkPrefixFunctional_const_mul, bulkPrefixFunctional_const_mul]

/-- Source-exact denominator-free comparison; no unsigned replacement of any channel. -/
theorem bulk_eq_unsifted_and_band_moments (width : ℕ → ℕ) (j : ℕ) :
    bulkPacket width j =
      bulkPrefixFunctional width j (unsiftedPrefix (primeBand j)) -
        bulkPrefixFunctional width j (bandMomentPrefix 0 j) +
        (2 / 3 : ℝ) * bulkPrefixFunctional width j (bandMomentPrefix 1 j) -
        (1 / 6 : ℝ) * bulkPrefixFunctional width j (bandMomentPrefix 2 j) := by
  rw [bulk_eq_band_unsifted_sub_coprime, bulk_coprime_eq_band_moments]
  ring

/-- The complete packet still differs by at most the inherited two-unit boundary cost. -/
theorem abs_full_packet_sub_band_moments_le_two (j : ℕ) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      (bulkPrefixFunctional sqrtWidth j (unsiftedPrefix (primeBand j)) -
        bulkPrefixFunctional sqrtWidth j (bandMomentPrefix 0 j) +
        (2 / 3 : ℝ) * bulkPrefixFunctional sqrtWidth j (bandMomentPrefix 1 j) -
        (1 / 6 : ℝ) * bulkPrefixFunctional sqrtWidth j (bandMomentPrefix 2 j))| ≤ 2 := by
  rw [← bulk_eq_unsifted_and_band_moments sqrtWidth j]
  exact abs_packet_sub_sqrt_bulk_le_two j

/-- The signed moment estimate remains the explicit, unsupplied arithmetic input. -/
theorem riemannHypothesis_of_band_moment_budget
    (hbudget : ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
      bulkPrefixFunctional sqrtWidth j (unsiftedPrefix (primeBand j)) -
        bulkPrefixFunctional sqrtWidth j (bandMomentPrefix 0 j) +
        (2 / 3 : ℝ) * bulkPrefixFunctional sqrtWidth j (bandMomentPrefix 1 j) -
        (1 / 6 : ℝ) * bulkPrefixFunctional sqrtWidth j (bandMomentPrefix 2 j) ≤
          C * (((2 ^ j : ℕ) : ℝ) ^ δ)) : _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_sqrt_bulk_budget
  intro δ hδ
  obtain ⟨C, hC, hb⟩ := hbudget δ hδ
  refine ⟨C, hC, ?_⟩
  intro j
  rw [bulk_eq_unsifted_and_band_moments sqrtWidth j]
  exact hb j

/-- Extrapolation beyond the proved count range gives a false reciprocal identity. -/
theorem quadratic_reciprocal_fails_at_three :
    ((3 : ℝ) + 1)⁻¹ ≠ 1 - (2 / 3 : ℝ) * 3 + (1 / 6 : ℝ) * 3 ^ 2 := by
  norm_num

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelBandMultiplicity
