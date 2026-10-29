/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's Mobius results retain Aaron Anderson's upstream authorship and
Apache-2.0 license; other imports retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupGcdOuterSector
import GRWTSK.NumberTheory.Moebius.PickupCellKernelUpperBound

/-!
# Cubic absolute budgets for actual endpoint gcd rows

The cutoff in each ordered quotient variable is exactly `N/d`. Restricting the
two inventories to that cutoff preserves the original Mobius products,
coprimality mask, diagonal exclusion and both orderings. The active kernel has
budget `4/(d*N)`, so at most `(N/d)^2` terms cost `4*N/d^3` in total.

This magnitude estimate is intended only for a separately designated proper
gcd tail. It does not replace the signed growing head or prove cancellation.

SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupGcdRowTail

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupOctavePairKernel
open GRWTSK.NumberTheory.Moebius.PickupGcdOuterSector
open GRWTSK.NumberTheory.Moebius.PickupCellKernelUpperBound
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint

/-- The literal active kernel is bounded using its actual logarithmic cell
width. Both source-label cutoffs and the positive lower label are explicit. -/
theorem cellPairKernel_le_four_div_mul {N d n m : ℕ}
    (hd : 1 ≤ d) (hdn : d ≤ n) (hdm : d ≤ m)
    (hnN : n ≤ N) (hmN : m ≤ N) :
    cellPairKernel N n m ≤ 4 / ((d : ℝ) * (N : ℝ)) := by
  have hN : 1 ≤ N := (hd.trans hdn).trans hnN
  have hNpos : (0 : ℝ) < N := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
  have hdpos : (0 : ℝ) < d := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hd)
  have hwidth : Real.log (1 + 1 / (N : ℝ)) ≤ 1 / (N : ℝ) := by
    have h := birth_width_le hN le_rfl le_rfl
    rw [birth_log_width hN] at h
    exact h
  calc
    cellPairKernel N n m ≤ 4 * Real.log (1 + 1 / (N : ℝ)) / (d : ℝ) :=
      cellPairKernel_le_birthWidth_div_gcd hd hdn hdm hnN hmN
    _ ≤ 4 * (1 / (N : ℝ)) / (d : ℝ) := by
      exact div_le_div_of_nonneg_right
        (mul_le_mul_of_nonneg_left hwidth (by norm_num)) hdpos.le
    _ = 4 / ((d : ℝ) * (N : ℝ)) := by
      field_simp [hNpos.ne', hdpos.ne']
      <;> ring

private def pairTerm (N d a b : ℕ) : ℝ :=
  if Nat.Coprime a b ∧ a ≠ b ∧ d * a ≤ N ∧ d * b ≤ N then
    moebiusReal (d * a) * moebiusReal (d * b) *
      cellPairKernel N (d * a) (d * b) else 0

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

private theorem pairTerm_abs_le {N d a b : ℕ}
    (hN : 1 ≤ N) (hd : 1 ≤ d) (ha : 1 ≤ a) (hb : 1 ≤ b) :
    |pairTerm N d a b| ≤ 4 / ((d : ℝ) * (N : ℝ)) := by
  by_cases h : Nat.Coprime a b ∧ a ≠ b ∧ d * a ≤ N ∧ d * b ≤ N
  · rw [pairTerm, if_pos h]
    have hda : d ≤ d * a := by simpa only [mul_one] using Nat.mul_le_mul_left d ha
    have hdb : d ≤ d * b := by simpa only [mul_one] using Nat.mul_le_mul_left d hb
    have hK := cellPairKernel_nonnegative hN (hd.trans hda) (hd.trans hdb)
      h.2.2.1 h.2.2.2
    rw [abs_mul, abs_of_nonneg hK]
    calc
      |moebiusReal (d * a) * moebiusReal (d * b)| *
          cellPairKernel N (d * a) (d * b) ≤
          1 * cellPairKernel N (d * a) (d * b) :=
        mul_le_mul_of_nonneg_right (moebius_product_abs_le_one _ _) hK
      _ = cellPairKernel N (d * a) (d * b) := one_mul _
      _ ≤ _ := cellPairKernel_le_four_div_mul hd hda hdb h.2.2.1 h.2.2.2
  · rw [pairTerm, if_neg h, abs_zero]
    positivity

/-- The source cutoffs alone restrict both quotient variables to `N/d`.
The original source products, masks and both ordered orientations are unchanged. -/
theorem gcdCellBlock_eq_quotient_inventory {N d : ℕ} (hd : 1 ≤ d) :
    gcdCellBlock N d =
      ∑ a ∈ Finset.Icc 1 (N / d), ∑ b ∈ Finset.Icc 1 (N / d),
        if Nat.Coprime a b ∧ a ≠ b ∧ d * a ≤ N ∧ d * b ≤ N then
          moebiusReal (d * a) * moebiusReal (d * b) *
            cellPairKernel N (d * a) (d * b) else 0 := by
  have hdpos : 0 < d := by omega
  have hsub : Finset.Icc 1 (N / d) ⊆ Finset.Icc 1 N := by
    intro a ha
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp ha).1,
      (Finset.mem_Icc.mp ha).2.trans (Nat.div_le_self N d)⟩
  have hrow (a : ℕ) :
      (∑ b ∈ Finset.Icc 1 N, pairTerm N d a b) =
        ∑ b ∈ Finset.Icc 1 (N / d), pairTerm N d a b := by
    symm
    apply Finset.sum_subset hsub
    intro b hb hbnot
    have hnot : ¬ (Nat.Coprime a b ∧ a ≠ b ∧ d * a ≤ N ∧ d * b ≤ N) := by
      intro h
      exact hbnot (Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hb).1,
        (Nat.le_div_iff_mul_le hdpos).mpr (by simpa only [Nat.mul_comm] using h.2.2.2)⟩)
    simp only [pairTerm, if_neg hnot]
  change (∑ a ∈ Finset.Icc 1 N, ∑ b ∈ Finset.Icc 1 N, pairTerm N d a b) = _
  simp_rw [hrow]
  change (∑ a ∈ Finset.Icc 1 N, ∑ b ∈ Finset.Icc 1 (N / d), pairTerm N d a b) =
    ∑ a ∈ Finset.Icc 1 (N / d), ∑ b ∈ Finset.Icc 1 (N / d), pairTerm N d a b
  symm
  apply Finset.sum_subset hsub
  intro a ha hanot
  apply Finset.sum_eq_zero
  intro b _
  have hnot : ¬ (Nat.Coprime a b ∧ a ≠ b ∧ d * a ≤ N ∧ d * b ≤ N) := by
    intro h
    exact hanot (Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp ha).1,
      (Nat.le_div_iff_mul_le hdpos).mpr (by simpa only [Nat.mul_comm] using h.2.2.1)⟩)
  simp only [pairTerm, if_neg hnot]

/-- A row has at most `floor(N/d)^2` ordered quotient pairs. The estimate is
for the absolute value of one actual row, including zero source coefficients.
Its quantitative consumer pays only the explicitly separated proper tail. -/
theorem gcdCellBlock_abs_le_cubic_row_budget {N d : ℕ}
    (hN : 1 ≤ N) (hd : 1 ≤ d) :
    |gcdCellBlock N d| ≤ 4 * (N : ℝ) / (d : ℝ) ^ 3 := by
  have hNpos : (0 : ℝ) < N := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
  have hdpos : (0 : ℝ) < d := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hd)
  have hq : ((N / d : ℕ) : ℝ) ≤ (N : ℝ) / (d : ℝ) := by
    apply (le_div_iff₀ hdpos).mpr
    exact_mod_cast Nat.div_mul_le_self N d
  have hqsq : ((N / d : ℕ) : ℝ) ^ 2 ≤ ((N : ℝ) / (d : ℝ)) ^ 2 := by
    simpa only [pow_two] using
      (mul_le_mul hq hq (by positivity : (0 : ℝ) ≤ ((N / d : ℕ) : ℝ))
        (by positivity : (0 : ℝ) ≤ (N : ℝ) / (d : ℝ)))
  rw [gcdCellBlock_eq_quotient_inventory hd]
  change |∑ a ∈ Finset.Icc 1 (N / d), ∑ b ∈ Finset.Icc 1 (N / d),
    pairTerm N d a b| ≤ _
  calc
    _ ≤ ∑ a ∈ Finset.Icc 1 (N / d),
        |∑ b ∈ Finset.Icc 1 (N / d), pairTerm N d a b| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ a ∈ Finset.Icc 1 (N / d), ∑ b ∈ Finset.Icc 1 (N / d),
        |pairTerm N d a b| := by
      apply Finset.sum_le_sum
      intro a _
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _a ∈ Finset.Icc 1 (N / d), ∑ _b ∈ Finset.Icc 1 (N / d),
        4 / ((d : ℝ) * (N : ℝ)) := by
      apply Finset.sum_le_sum
      intro a ha
      apply Finset.sum_le_sum
      intro b hb
      exact pairTerm_abs_le hN hd (Finset.mem_Icc.mp ha).1 (Finset.mem_Icc.mp hb).1
    _ = ((N / d : ℕ) : ℝ) ^ 2 * (4 / ((d : ℝ) * (N : ℝ))) := by
      simp only [Finset.sum_const, Nat.card_Icc, Nat.add_sub_cancel, nsmul_eq_mul]
      ring
    _ ≤ ((N : ℝ) / (d : ℝ)) ^ 2 * (4 / ((d : ℝ) * (N : ℝ))) :=
      mul_le_mul_of_nonneg_right hqsq (by positivity)
    _ = 4 * (N : ℝ) / (d : ℝ) ^ 3 := by
      field_simp [hNpos.ne', hdpos.ne']
      <;> ring

end GRWTSK.NumberTheory.Moebius.PickupGcdRowTail
