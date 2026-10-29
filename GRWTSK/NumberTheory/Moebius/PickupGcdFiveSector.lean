/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's Mobius results retain Aaron Anderson's upstream authorship and
Apache-2.0 license; other imports retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupGcdOuterSector
import GRWTSK.NumberTheory.Moebius.PickupGcdSupport
import GRWTSK.NumberTheory.Moebius.PickupCellKernelMonotonicity
import GRWTSK.NumberTheory.Moebius.PickupOctaveGcdCorrelation

/-!
# The nonpositive gcd sector below the fifth quotient birth

For N<5*d, every active quotient is at most four. The fourth quotient has
zero Mobius coefficient, so the actual ordered block reduces to the six
orientations among 1,2,3. Both gcd/prime coprimality masks are kept explicitly.
The sole positive pair (2,3) is paid by the (1,2) negative pair only when both
masks are present. Active-kernel monotonicity justifies that comparison.

This extends an actual signed sector bound, not a global growth exponent.
The fifth quotient birth N=5*d is excluded from the theorem.

SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupGcdFiveSector

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupGcdOuterSector
open GRWTSK.NumberTheory.Moebius.PickupGcdSupport
open GRWTSK.NumberTheory.Moebius.PickupOctavePairKernel
open GRWTSK.NumberTheory.Moebius.PickupCellKernelMonotonicity
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupDyadicIncrement
open GRWTSK.NumberTheory.Moebius.PickupOctaveGcdCorrelation

private theorem mu_one : moebiusReal 1 = 1 := by
  simp [moebiusReal, ArithmeticFunction.moebius_apply_one]

private theorem mu_two : moebiusReal 2 = -1 := by
  simp [moebiusReal, ArithmeticFunction.moebius_apply_prime Nat.prime_two]

private theorem mu_three : moebiusReal 3 = -1 := by
  simp [moebiusReal, ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3)]

private theorem mu_four : moebiusReal 4 = 0 := by
  have h := ArithmeticFunction.moebius_apply_prime_pow
    (p := 2) (k := 2) Nat.prime_two (by norm_num)
  norm_num at h
  unfold moebiusReal
  exact_mod_cast h

/-- The quotient four is zero even when the gcd is not coprime to it. -/
theorem moebius_gcd_mul_four_zero (d : ℕ) : moebiusReal (d * 4) = 0 := by
  have h := CenteredLowGCD.mobiusReal_mul_eq_restricted d 4
  change moebiusReal (d * 4) =
    moebiusReal d * CenteredLowGCD.coprimeRestrictedMobius d 4 at h
  rw [h]
  simp only [CenteredLowGCD.coprimeRestrictedMobius_apply]
  change moebiusReal d * (if Nat.Coprime 4 d then moebiusReal 4 else 0) = 0
  simp [mu_four]

/-- All source products vanish when the actual common-divisor coefficient does.
This includes every nonsquarefree gcd and the exceptional natural zero index. -/
theorem gcdCellBlock_zero_of_moebius_gcd_zero {N d : ℕ}
    (hzero : moebiusReal d = 0) : gcdCellBlock N d = 0 := by
  unfold gcdCellBlock
  apply Finset.sum_eq_zero
  intro a _
  apply Finset.sum_eq_zero
  intro b _
  by_cases h : Nat.Coprime a b ∧ a ≠ b ∧ d * a ≤ N ∧ d * b ≤ N
  · rw [if_pos h, moebius_pair_product_eq_masked]
    split_ifs <;> simp [hzero]
  · rw [if_neg h]

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

private theorem pairTerm_zero_of_four_le_left {N d a b : ℕ}
    (hlarge : N < 5 * d) (ha : 4 ≤ a) : pairTerm N d a b = 0 := by
  by_cases h : Nat.Coprime a b ∧ a ≠ b ∧ d * a ≤ N ∧ d * b ≤ N
  · have ha4 : a ≤ 4 := by
      by_contra hn
      have ha5 : 5 ≤ a := by omega
      have hmul := Nat.mul_le_mul_left d ha5
      nlinarith [h.2.2.1]
    have haeq : a = 4 := by omega
    subst a
    simp only [pairTerm, if_pos h, moebius_gcd_mul_four_zero, zero_mul]
  · simp only [pairTerm, if_neg h]

private theorem pairTerm_zero_of_four_le_right {N d a b : ℕ}
    (hlarge : N < 5 * d) (hb : 4 ≤ b) : pairTerm N d a b = 0 := by
  rw [pairTerm_symm]
  exact pairTerm_zero_of_four_le_left hlarge hb

/-- For three active quotient births, retain both orientations of all three
unordered pairs. Quotient four is removed only by its proved zero coefficient. -/
theorem gcdCellBlock_three_active_pairs {N d : ℕ}
    (hd : 1 ≤ d) (hactive : 3 * d ≤ N) (hlarge : N < 5 * d) :
    gcdCellBlock N d =
      2 * (moebiusReal d * moebiusReal (2 * d) * cellPairKernel N d (2 * d) +
        moebiusReal d * moebiusReal (3 * d) * cellPairKernel N d (3 * d) +
        moebiusReal (2 * d) * moebiusReal (3 * d) *
          cellPairKernel N (2 * d) (3 * d)) := by
  have hN : 3 ≤ N := by omega
  have hsub : Finset.Icc 1 3 ⊆ Finset.Icc 1 N := by
    intro a ha
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp ha).1,
      (Finset.mem_Icc.mp ha).2.trans hN⟩
  have hrow (a : ℕ) :
      (∑ b ∈ Finset.Icc 1 N, pairTerm N d a b) =
        ∑ b ∈ Finset.Icc 1 3, pairTerm N d a b := by
    symm
    apply Finset.sum_subset hsub
    intro b hb hbnot
    have hb4 : 4 ≤ b := by
      have hb1 := (Finset.mem_Icc.mp hb).1
      have hbnot' : ¬ (1 ≤ b ∧ b ≤ 3) := by simpa only [Finset.mem_Icc] using hbnot
      omega
    exact pairTerm_zero_of_four_le_right hlarge hb4
  have hblock : gcdCellBlock N d =
      ∑ a ∈ Finset.Icc 1 3, ∑ b ∈ Finset.Icc 1 3, pairTerm N d a b := by
    change (∑ a ∈ Finset.Icc 1 N, ∑ b ∈ Finset.Icc 1 N, pairTerm N d a b) = _
    simp_rw [hrow]
    symm
    apply Finset.sum_subset hsub
    intro a ha hanot
    apply Finset.sum_eq_zero
    intro b _
    have ha4 : 4 ≤ a := by
      have ha1 := (Finset.mem_Icc.mp ha).1
      have hanot' : ¬ (1 ≤ a ∧ a ≤ 3) := by simpa only [Finset.mem_Icc] using hanot
      omega
    exact pairTerm_zero_of_four_le_left hlarge ha4
  have hset : Finset.Icc 1 3 = ({1, 2, 3} : Finset ℕ) := by decide
  have hd1 : d * 1 ≤ N := by nlinarith
  have hdN : d ≤ N := by omega
  have hd2 : d * 2 ≤ N := by nlinarith
  have hd3 : d * 3 ≤ N := by nlinarith
  have h2d : 2 * d ≤ N := by omega
  have h3d : 3 * d ≤ N := hactive
  rw [hblock]
  simp only [hset]
  norm_num [pairTerm, hd1, hdN, hd2, hd3, h2d, h3d,
    Nat.mul_comm d 2, Nat.mul_comm d 3]
  rw [cellPairKernel_symm N (2 * d) d, cellPairKernel_symm N (3 * d) d,
    cellPairKernel_symm N (3 * d) (2 * d)]
  ring

/-- Explicit 2/3 masks: a removed prime channel is absent from every affected
pair, including the positive (2,3) interaction. The common source square remains. -/
theorem gcdCellBlock_three_label_formula {N d : ℕ}
    (hd : 1 ≤ d) (hactive : 3 * d ≤ N) (hlarge : N < 5 * d) :
    gcdCellBlock N d = 2 * moebiusReal d ^ 2 *
      (-(if Nat.Coprime d 2 then cellPairKernel N d (2 * d) else 0) -
        (if Nat.Coprime d 3 then cellPairKernel N d (3 * d) else 0) +
        (if Nat.Coprime d 2 ∧ Nat.Coprime d 3 then
          cellPairKernel N (2 * d) (3 * d) else 0)) := by
  rw [gcdCellBlock_three_active_pairs hd hactive hlarge]
  have h12 := moebius_pair_product_eq_masked d 1 2
  have h13 := moebius_pair_product_eq_masked d 1 3
  have h23 := moebius_pair_product_eq_masked d 2 3
  simp only [mul_one, Nat.coprime_one_right, true_and, mu_one, mu_two, mu_three,
    mul_neg_one, neg_mul, neg_neg, Nat.mul_comm d 2, Nat.mul_comm d 3] at h12 h13 h23
  rw [h12, h13, h23]
  by_cases h2 : Nat.Coprime d 2 <;> by_cases h3 : Nat.Coprime d 3 <;>
    simp [h2, h3] <;> ring

/-- The actual signed block is nonpositive below the fifth quotient birth.
All mask and zero-source cases are covered; the endpoint N=5*d is excluded. -/
theorem gcdCellBlock_nonpositive_of_five_gcd {N d : ℕ}
    (hd : 1 ≤ d) (hlarge : N < 5 * d) : gcdCellBlock N d ≤ 0 := by
  by_cases hactive : 3 * d ≤ N
  · rw [gcdCellBlock_three_label_formula hd hactive hlarge]
    have hN : 1 ≤ N := by omega
    have hd2 : 1 ≤ 2 * d := by omega
    have hd3 : 1 ≤ 3 * d := by omega
    have hdN : d ≤ N := by omega
    have hd2N : 2 * d ≤ N := by omega
    have hK12 := cellPairKernel_nonnegative hN hd hd2 hdN hd2N
    have hK13 := cellPairKernel_nonnegative hN hd hd3 hdN hactive
    have hmono := cellPairKernel_two_three_le_one_two hd hactive
    have hs : 0 ≤ 2 * moebiusReal d ^ 2 := by positivity
    apply mul_nonpos_of_nonneg_of_nonpos hs
    by_cases h2 : Nat.Coprime d 2 <;> by_cases h3 : Nat.Coprime d 3 <;>
      simp only [h2, h3, and_self, and_true, true_and, and_false, false_and,
        if_true, if_false] <;> linarith
  · exact gcdCellBlock_nonpositive_of_large_gcd hd (by omega)

/-- The unresolved signed cell correlation now retains only 5*d<=N. The
discarded sector has an explicit nonpositive source proof above. -/
def fiveGcdCellRemainder (N : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 N, if 5 * d ≤ N then gcdCellBlock N d else 0

/-- Remove only the proved nonpositive sector; no absolute-value estimate of
the retained signed source is introduced. -/
theorem gcdCellSum_le_fiveGcdCellRemainder (N : ℕ) :
    (∑ d ∈ Finset.Icc 1 N, gcdCellBlock N d) ≤ fiveGcdCellRemainder N := by
  unfold fiveGcdCellRemainder
  apply Finset.sum_le_sum
  intro d hd
  by_cases h : 5 * d ≤ N
  · rw [if_pos h]
  · rw [if_neg h]
    exact gcdCellBlock_nonpositive_of_five_gcd (Finset.mem_Icc.mp hd).1 (by omega)

/-- The actual retained region of one complete dyadic endpoint increment. -/
def fiveGcdOctaveRemainder (j : ℕ) : ℝ :=
  ∑ k ∈ Finset.range (2 ^ j), fiveGcdCellRemainder (2 ^ j + k)

/-- Consume the new signed sector theorem in the original octave expression.
This reduces the unresolved region and does not prove a smaller growth rate. -/
theorem dyadic_increment_le_fiveGcdOctaveRemainder (j : ℕ) :
    dyadicBirthSum (j + 1) - dyadicBirthSum j ≤ fiveGcdOctaveRemainder j := by
  rw [dyadicBirthSum_sub]
  unfold fiveGcdOctaveRemainder
  apply Finset.sum_le_sum
  intro k _
  have hN : 1 ≤ 2 ^ j + k := by
    have : 0 < 2 ^ j := by positivity
    omega
  rw [birthExpression_eq_gcdCellSum hN]
  exact gcdCellSum_le_fiveGcdCellRemainder _

/-- Retain the exact squarefree weight, coprimality masks, both ordered
quotients and both cutoff conditions in the remaining weighted correlation. -/
theorem fiveGcdOctaveRemainder_eq_squarefree_correlation (j : ℕ) :
    fiveGcdOctaveRemainder j =
      ∑ k ∈ Finset.range (2 ^ j), ∑ d ∈ Finset.Icc 1 (2 ^ j + k),
        if 5 * d ≤ 2 ^ j + k then
          moebiusReal d ^ 2 * coprimeCellCorrelation (2 ^ j + k) d else 0 := by
  unfold fiveGcdOctaveRemainder fiveGcdCellRemainder
  apply Finset.sum_congr rfl
  intro k _
  apply Finset.sum_congr rfl
  intro d _
  by_cases h : 5 * d ≤ 2 ^ j + k
  · rw [if_pos h, if_pos h, gcdCellBlock_eq_squarefree_weight]
  · rw [if_neg h, if_neg h]

end GRWTSK.NumberTheory.Moebius.PickupGcdFiveSector
