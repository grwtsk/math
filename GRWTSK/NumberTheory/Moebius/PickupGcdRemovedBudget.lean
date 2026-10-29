/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's Mobius results retain Aaron Anderson's upstream authorship and
Apache-2.0 license; other imports retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupGcdFiveSector
import GRWTSK.NumberTheory.Moebius.PickupCellKernelUpperBound

/-!
# A quantitative budget for the removed fixed gcd sector

The actual signed block is retained throughout. Below the fifth quotient birth
there are at most six ordered off-diagonal pairs among the three nonzero labels
1,2,3. The source coefficient of quotient four is exactly zero. For two active
quotient births the two ordered pairs are proved explicitly; the three-birth
formula is used only after its actual activity hypothesis has been proved.

Taking an absolute value here pays only this fixed removed sector. It is not an
absolute-value replacement of the retained small-gcd signed correlation and
does not improve any exponent or provide an RH supplier.

The exact gcd identity and proved removed-sector sign give a nonnegative
difference between the five-sector upper comparison and the original endpoint
increment. Its absolute price is at most 120, uniformly over every dyadic
octave, including the empty original source sum at j=0.

SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupGcdRemovedBudget

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupOctavePairKernel
open GRWTSK.NumberTheory.Moebius.PickupGcdOuterSector
open GRWTSK.NumberTheory.Moebius.PickupGcdFiveSector
open GRWTSK.NumberTheory.Moebius.PickupCellKernelUpperBound
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupDyadicIncrement
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.PickupOctaveGcdCorrelation

private def pairTerm (N d a b : ℕ) : ℝ :=
  if Nat.Coprime a b ∧ a ≠ b ∧ d * a ≤ N ∧ d * b ≤ N then
    moebiusReal (d * a) * moebiusReal (d * b) *
      cellPairKernel N (d * a) (d * b) else 0

private theorem pairTerm_symm (N d a b : ℕ) :
    pairTerm N d a b = pairTerm N d b a := by
  by_cases h : Nat.Coprime a b ∧ a ≠ b ∧ d * a ≤ N ∧ d * b ≤ N
  · have h' : Nat.Coprime b a ∧ b ≠ a ∧ d * b ≤ N ∧ d * a ≤ N :=
      ⟨h.1.symm, Ne.symm h.2.1, h.2.2.2, h.2.2.1⟩
    simp only [pairTerm, if_pos h, if_pos h']
    rw [cellPairKernel_symm N (d * b) (d * a)]
    ring
  · have h' : ¬ (Nat.Coprime b a ∧ b ≠ a ∧ d * b ≤ N ∧ d * a ≤ N) := by
      intro h'
      exact h ⟨h'.1.symm, Ne.symm h'.2.1, h'.2.2.2, h'.2.2.1⟩
    simp only [pairTerm, if_neg h, if_neg h']

private theorem pairTerm_zero_of_three_le_left {N d a b : ℕ}
    (hlarge : N < 3 * d) (ha : 3 ≤ a) : pairTerm N d a b = 0 := by
  have hnot : ¬ (Nat.Coprime a b ∧ a ≠ b ∧ d * a ≤ N ∧ d * b ≤ N) := by
    intro h
    have hmul := Nat.mul_le_mul_left d ha
    nlinarith [h.2.2.1]
  simp only [pairTerm, if_neg hnot]

private theorem pairTerm_zero_of_three_le_right {N d a b : ℕ}
    (hlarge : N < 3 * d) (hb : 3 ≤ b) : pairTerm N d a b = 0 := by
  rw [pairTerm_symm]
  exact pairTerm_zero_of_three_le_left hlarge hb

/-- Below the third quotient birth, retain the two actual ordered off-diagonal
pairs. This formula is used only when the second quotient is active. -/
theorem gcdCellBlock_two_active_pairs {N d : ℕ}
    (hd : 1 ≤ d) (hactive : 2 * d ≤ N) (hlarge : N < 3 * d) :
    gcdCellBlock N d =
      2 * (moebiusReal d * moebiusReal (2 * d) * cellPairKernel N d (2 * d)) := by
  have hN : 2 ≤ N := by omega
  have hsub : Finset.Icc 1 2 ⊆ Finset.Icc 1 N := by
    intro a ha
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp ha).1,
      (Finset.mem_Icc.mp ha).2.trans hN⟩
  have hrow (a : ℕ) :
      (∑ b ∈ Finset.Icc 1 N, pairTerm N d a b) =
        ∑ b ∈ Finset.Icc 1 2, pairTerm N d a b := by
    symm
    apply Finset.sum_subset hsub
    intro b hb hbnot
    have hb3 : 3 ≤ b := by
      have hb1 := (Finset.mem_Icc.mp hb).1
      have hbnot' : ¬ (1 ≤ b ∧ b ≤ 2) := by simpa only [Finset.mem_Icc] using hbnot
      omega
    exact pairTerm_zero_of_three_le_right hlarge hb3
  have hblock : gcdCellBlock N d =
      ∑ a ∈ Finset.Icc 1 2, ∑ b ∈ Finset.Icc 1 2, pairTerm N d a b := by
    change (∑ a ∈ Finset.Icc 1 N, ∑ b ∈ Finset.Icc 1 N, pairTerm N d a b) = _
    simp_rw [hrow]
    symm
    apply Finset.sum_subset hsub
    intro a ha hanot
    apply Finset.sum_eq_zero
    intro b _
    have ha3 : 3 ≤ a := by
      have ha1 := (Finset.mem_Icc.mp ha).1
      have hanot' : ¬ (1 ≤ a ∧ a ≤ 2) := by simpa only [Finset.mem_Icc] using hanot
      omega
    exact pairTerm_zero_of_three_le_left hlarge ha3
  have hset : Finset.Icc 1 2 = ({1, 2} : Finset ℕ) := by decide
  have hdN : d ≤ N := by omega
  have hd1 : d * 1 ≤ N := by nlinarith
  have hd2 : d * 2 ≤ N := by nlinarith
  rw [hblock]
  simp only [hset]
  norm_num [pairTerm, hdN, hd1, hd2, hactive, Nat.mul_comm d 2]
  rw [cellPairKernel_symm N (2 * d) d]
  ring

private theorem moebius_product_abs_le_one (n m : ℕ) :
    |moebiusReal n * moebiusReal m| ≤ 1 := by
  have hn : |moebiusReal n| ≤ 1 := by
    unfold moebiusReal
    exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := n))
  have hm : |moebiusReal m| ≤ 1 := by
    unfold moebiusReal
    exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := m))
  rw [abs_mul]
  calc
    |moebiusReal n| * |moebiusReal m| ≤ 1 * 1 :=
      mul_le_mul hn hm (abs_nonneg _) (by norm_num)
    _ = 1 := by norm_num

/-- One actual source product has unit coefficient budget. Only its active
kernel is bounded; no positivity or nonvanishing of the source is assumed. -/
theorem source_pair_abs_le_removed_budget {N d n m : ℕ}
    (hd : 1 ≤ d) (hdn : d ≤ n) (hdm : d ≤ m)
    (hnN : n ≤ N) (hmN : m ≤ N) (hlarge : N < 5 * d) :
    |moebiusReal n * moebiusReal m * cellPairKernel N n m| ≤ 20 / (N : ℝ) ^ 2 := by
  have hn : 1 ≤ n := hd.trans hdn
  have hm : 1 ≤ m := hd.trans hdm
  have hN : 1 ≤ N := hn.trans hnN
  have hK := cellPairKernel_nonnegative hN hn hm hnN hmN
  rw [abs_mul, abs_of_nonneg hK]
  calc
    |moebiusReal n * moebiusReal m| * cellPairKernel N n m ≤
        1 * cellPairKernel N n m :=
      mul_le_mul_of_nonneg_right (moebius_product_abs_le_one n m) hK
    _ = cellPairKernel N n m := one_mul _
    _ ≤ _ := cellPairKernel_le_twenty_div_sq hd hdn hdm hnN hmN hlarge

/-- Every removed gcd block has at most six surviving ordered pairs. The
empty, two-birth and three-birth cases retain their exact activity guards. -/
theorem gcdCellBlock_abs_le_removed_budget {N d : ℕ}
    (hN : 1 ≤ N) (hd : 1 ≤ d) (hlarge : N < 5 * d) :
    |gcdCellBlock N d| ≤ 120 / (N : ℝ) ^ 2 := by
  have hbudget : 0 ≤ 20 / (N : ℝ) ^ 2 := by positivity
  by_cases hactive3 : 3 * d ≤ N
  · have hdN : d ≤ N := by omega
    have h2dN : 2 * d ≤ N := by omega
    have h12 := source_pair_abs_le_removed_budget hd le_rfl
      (by omega : d ≤ 2 * d) hdN h2dN hlarge
    have h13 := source_pair_abs_le_removed_budget hd le_rfl
      (by omega : d ≤ 3 * d) hdN hactive3 hlarge
    have h23 := source_pair_abs_le_removed_budget hd
      (by omega : d ≤ 2 * d) (by omega : d ≤ 3 * d) h2dN hactive3 hlarge
    rw [gcdCellBlock_three_active_pairs hd hactive3 hlarge, abs_mul,
      abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
    have ht := abs_add_le
      (moebiusReal d * moebiusReal (2 * d) * cellPairKernel N d (2 * d) +
        moebiusReal d * moebiusReal (3 * d) * cellPairKernel N d (3 * d))
      (moebiusReal (2 * d) * moebiusReal (3 * d) * cellPairKernel N (2 * d) (3 * d))
    have ht' := abs_add_le
      (moebiusReal d * moebiusReal (2 * d) * cellPairKernel N d (2 * d))
      (moebiusReal d * moebiusReal (3 * d) * cellPairKernel N d (3 * d))
    calc
      _ ≤ 2 * (3 * (20 / (N : ℝ) ^ 2)) := by linarith
      _ = 120 / (N : ℝ) ^ 2 := by ring
  · by_cases hactive2 : 2 * d ≤ N
    · have hdN : d ≤ N := by omega
      have h12 := source_pair_abs_le_removed_budget hd le_rfl
        (by omega : d ≤ 2 * d) hdN hactive2 hlarge
      rw [gcdCellBlock_two_active_pairs hd hactive2 (by omega), abs_mul,
        abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
      calc
        _ ≤ 2 * (20 / (N : ℝ) ^ 2) := mul_le_mul_of_nonneg_left h12 (by norm_num)
        _ ≤ 120 / (N : ℝ) ^ 2 := by nlinarith
    · rw [gcdCellBlock_zero_of_twice_gcd_above_cutoff (by omega), abs_zero]
      positivity

/-- Count only the removed common-divisor rows. At most N such labels occur;
each has absolute price 120/N^2. The retained signed rows remain unchanged. -/
theorem fiveGcdCellRemainder_sub_birthExpression_le {N : ℕ} (hN : 1 ≤ N) :
    fiveGcdCellRemainder N - birthExpression N ≤ 120 / (N : ℝ) := by
  have hNpos : (0 : ℝ) < N := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
  rw [birthExpression_eq_gcdCellSum hN]
  unfold fiveGcdCellRemainder
  rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ _d ∈ Finset.Icc 1 N, (120 / (N : ℝ) ^ 2) := by
      apply Finset.sum_le_sum
      intro d hd
      by_cases hkeep : 5 * d ≤ N
      · rw [if_pos hkeep, sub_self]
        positivity
      · rw [if_neg hkeep, zero_sub]
        have h := gcdCellBlock_abs_le_removed_budget hN
          (Finset.mem_Icc.mp hd).1 (by omega)
        have hlower := (abs_le.mp h).1
        linarith
    _ = 120 / (N : ℝ) := by
      simp only [Finset.sum_const, Nat.card_Icc, Nat.add_sub_cancel, nsmul_eq_mul]
      field_simp [hNpos.ne']
      <;> ring

/-- The exact source identity and nonpositive removed sector make this a
nonnegative bounded perturbation of each actual signed endpoint cell. -/
theorem fiveGcdCellRemainder_sub_birthExpression_bounds {N : ℕ} (hN : 1 ≤ N) :
    0 ≤ fiveGcdCellRemainder N - birthExpression N ∧
      fiveGcdCellRemainder N - birthExpression N ≤ 120 / (N : ℝ) := by
  constructor
  · apply sub_nonneg.mpr
    rw [birthExpression_eq_gcdCellSum hN]
    exact gcdCellSum_le_fiveGcdCellRemainder N
  · exact fiveGcdCellRemainder_sub_birthExpression_le hN

/-- The M cells of a dyadic octave all have N>=M. Their removed-sector price
is at most M*(120/M)=120, independently of j. No growth premise is assumed. -/
theorem fiveGcdOctaveRemainder_sub_increment_bounds (j : ℕ) :
    0 ≤ fiveGcdOctaveRemainder j -
        (dyadicBirthSum (j + 1) - dyadicBirthSum j) ∧
      fiveGcdOctaveRemainder j -
        (dyadicBirthSum (j + 1) - dyadicBirthSum j) ≤ 120 := by
  constructor
  · exact sub_nonneg.mpr (dyadic_increment_le_fiveGcdOctaveRemainder j)
  · let M : ℕ := 2 ^ j
    have hM : 1 ≤ M := by dsimp [M]; positivity
    have hMpos : (0 : ℝ) < M := by
      exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hM)
    rw [dyadicBirthSum_sub]
    unfold fiveGcdOctaveRemainder
    rw [← Finset.sum_sub_distrib]
    calc
      _ ≤ ∑ _k ∈ Finset.range M, (120 / (M : ℝ)) := by
        apply Finset.sum_le_sum
        intro k _
        have hN : 1 ≤ M + k := by omega
        have hMN : (M : ℝ) ≤ ((M + k : ℕ) : ℝ) := by
          exact_mod_cast (Nat.le_add_right M k)
        exact (fiveGcdCellRemainder_sub_birthExpression_le hN).trans
          (div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 120) hMpos hMN)
      _ = 120 := by
        simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
        field_simp [hMpos.ne']
        <;> ring

/-- The same unconditional 0..120 budget for the actual endpoint increment.
This consumes the maintained exact dyadic endpoint/source identity; no new
RH wrapper or source identification premise is introduced. -/
theorem fiveGcdOctaveRemainder_sub_endpoint_increment_bounds (j : ℕ) :
    0 ≤ fiveGcdOctaveRemainder j -
        (endpointSum (dyadicTime (j + 1)) - endpointSum (dyadicTime j)) ∧
      fiveGcdOctaveRemainder j -
        (endpointSum (dyadicTime (j + 1)) - endpointSum (dyadicTime j)) ≤ 120 := by
  simp only [endpoint_dyadic_eq_birthSum]
  exact fiveGcdOctaveRemainder_sub_increment_bounds j

end GRWTSK.NumberTheory.Moebius.PickupGcdRemovedBudget
