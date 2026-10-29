/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupOctavePairKernel
import GRWTSK.NumberTheory.Moebius.MobiusDilationPairSplit

/-!
# The nonpositive outer gcd sector of the actual birth-cell kernel

When `N < 3*d`, two distinct positive quotient labels satisfying the original
cell cutoffs can only be `(1,2)` or `(2,1)`. Their actual Mobius product is
nonpositive by the maintained doubling identity, including its even and
nonsquarefree zero cases. The actual birth-cell pair kernel is nonnegative on
its active inventory. Consequently the full ordered gcd block is nonpositive.

Both pair orientations remain in the finite sums below. This is a sign bound
for a specified source sector, not a bound for the remaining signed small-gcd
correlation, an exponent improvement, or a proof of RH.

SOURCE_PROOF_CANDIDATE / compilation, fresh replay, transitive axiom audit NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupGcdOuterSector

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.PickupOctavePairKernel

/-- This classification uses the original two cutoff inequalities. No density
or cancellation assertion is made. Coprimality is not needed for this step. -/
theorem quotients_eq_one_two_of_large_gcd {N d a b : ℕ}
    (hlarge : N < 3 * d) (ha : 1 ≤ a) (hb : 1 ≤ b)
    (hda : d * a ≤ N) (hdb : d * b ≤ N) (hne : a ≠ b) :
    (a = 1 ∧ b = 2) ∨ (a = 2 ∧ b = 1) := by
  have ha2 : a ≤ 2 := by
    by_contra h
    have ha3 : 3 ≤ a := by omega
    have hmul := Nat.mul_le_mul_left d ha3
    nlinarith
  have hb2 : b ≤ 2 := by
    by_contra h
    have hb3 : 3 ≤ b := by omega
    have hmul := Nat.mul_le_mul_left d hb3
    nlinarith
  omega

/-- There is no positive off-diagonal pair beyond the half-cutoff gcd range. -/
theorem quotients_equal_of_twice_gcd_above_cutoff {N d a b : ℕ}
    (hlarge : N < 2 * d) (ha : 1 ≤ a) (hb : 1 ≤ b)
    (hda : d * a ≤ N) (hdb : d * b ≤ N) : a = b := by
  have ha1 : a ≤ 1 := by
    by_contra h
    have ha2 : 2 ≤ a := by omega
    have hmul := Nat.mul_le_mul_left d ha2
    nlinarith
  have hb1 : b ≤ 1 := by
    by_contra h
    have hb2 : 2 ≤ b := by omega
    have hmul := Nat.mul_le_mul_left d hb2
    nlinarith
  omega

/-- Reuse the actual doubling product, rather than multiplicativity without
coprimality. Even or nonsquarefree source coefficients are retained as zeros. -/
theorem source_product_nonpositive_of_large_gcd {N d a b : ℕ}
    (hlarge : N < 3 * d) (ha : 1 ≤ a) (hb : 1 ≤ b)
    (hda : d * a ≤ N) (hdb : d * b ≤ N) (hne : a ≠ b) :
    moebiusReal (d * a) * moebiusReal (d * b) ≤ 0 := by
  rcases quotients_eq_one_two_of_large_gcd hlarge ha hb hda hdb hne with
    h | h
  · rcases h with ⟨rfl, rfl⟩
    simpa only [mul_one, Nat.mul_comm d 2] using
      moebius_doubling_product_nonpos d
  · rcases h with ⟨rfl, rfl⟩
    have h := moebius_doubling_product_nonpos d
    simp only [mul_one, Nat.mul_comm d 2]
    nlinarith

/-- One ordered gcd block of the actual endpoint cell kernel. The original
source products and both cutoff inequalities remain literal. -/
def gcdCellBlock (N d : ℕ) : ℝ :=
  ∑ a ∈ Finset.Icc 1 N, ∑ b ∈ Finset.Icc 1 N,
    if Nat.Coprime a b ∧ a ≠ b ∧ d * a ≤ N ∧ d * b ≤ N then
      moebiusReal (d * a) * moebiusReal (d * b) *
        cellPairKernel N (d * a) (d * b)
    else 0

/-- The outer third-to-half gcd sector is beneficial for this actual source
and actual nonnegative cell kernel. This does not estimate the inner sector. -/
theorem gcdCellBlock_nonpositive_of_large_gcd {N d : ℕ}
    (hd : 1 ≤ d) (hlarge : N < 3 * d) : gcdCellBlock N d ≤ 0 := by
  unfold gcdCellBlock
  apply Finset.sum_nonpos
  intro a ha
  apply Finset.sum_nonpos
  intro b hb
  by_cases h : Nat.Coprime a b ∧ a ≠ b ∧ d * a ≤ N ∧ d * b ≤ N
  · rw [if_pos h]
    have ha1 := (Finset.mem_Icc.mp ha).1
    have hb1 := (Finset.mem_Icc.mp hb).1
    have hda1 : 1 ≤ d * a := by simpa only [one_mul] using Nat.mul_le_mul hd ha1
    have hdb1 : 1 ≤ d * b := by simpa only [one_mul] using Nat.mul_le_mul hd hb1
    have hN : 1 ≤ N := hda1.trans h.2.2.1
    exact mul_nonpos_of_nonpos_of_nonneg
      (source_product_nonpositive_of_large_gcd hlarge ha1 hb1
        h.2.2.1 h.2.2.2 h.2.1)
      (cellPairKernel_nonnegative hN hda1 hdb1 h.2.2.1 h.2.2.2)
  · simp only [if_neg h, le_refl]

/-- Beyond the half-cutoff gcd range there are no off-diagonal terms, even
before inspecting their coefficients or the cell kernel. -/
theorem gcdCellBlock_zero_of_twice_gcd_above_cutoff {N d : ℕ}
    (hlarge : N < 2 * d) : gcdCellBlock N d = 0 := by
  unfold gcdCellBlock
  apply Finset.sum_eq_zero
  intro a ha
  apply Finset.sum_eq_zero
  intro b hb
  have hnot : ¬ (Nat.Coprime a b ∧ a ≠ b ∧ d * a ≤ N ∧ d * b ≤ N) := by
    intro h
    exact h.2.1 (quotients_equal_of_twice_gcd_above_cutoff hlarge
      (Finset.mem_Icc.mp ha).1 (Finset.mem_Icc.mp hb).1 h.2.2.1 h.2.2.2)
  rw [if_neg hnot]

/-- The remaining signed inner sector. It is not replaced by an absolute sum. -/
def smallGcdCellRemainder (N : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 N, if 3 * d ≤ N then gcdCellBlock N d else 0

/-- A source-preserving one-sided arithmetic reduction: remove only the proved
nonpositive outer sector. The remaining signed weighted correlation is open. -/
theorem gcdCellSum_le_smallGcdCellRemainder (N : ℕ) :
    (∑ d ∈ Finset.Icc 1 N, gcdCellBlock N d) ≤ smallGcdCellRemainder N := by
  unfold smallGcdCellRemainder
  apply Finset.sum_le_sum
  intro d hd
  by_cases h : 3 * d ≤ N
  · simp only [if_pos h, le_refl]
  · rw [if_neg h]
    exact gcdCellBlock_nonpositive_of_large_gcd (Finset.mem_Icc.mp hd).1
      (by omega)

end GRWTSK.NumberTheory.Moebius.PickupGcdOuterSector
