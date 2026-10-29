/- Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MobiusDoublingCredit

/-!
# The coefficient diagonal in the actual triangular Mertens-product kernel

This is the r=s coefficient diagonal, not the increment square diagonal U_N.
It has a harmonic upper bound without a Mertens cancellation premise.
The source split of the complete remainder into this packet and the literal
r != s, s != 2*r complement is a separate missing bridge. No estimate of that
signed complement or of H_N is asserted here.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open scoped BigOperators
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect

def mertensCoefficientDiagonal (m : ℕ) : ℝ :=
  ∑ r ∈ Finset.Icc 1 m, moebiusReal r ^ 2

def coefficientDiagonalRow (n : ℕ) : ℝ :=
  ∑ m ∈ Finset.range n,
    (2 * criticalEndpointGap m * criticalEndpointGap n) * mertensCoefficientDiagonal m

def triangularCoefficientDiagonal (N : ℕ) : ℝ :=
  ∑ k ∈ Finset.range N, coefficientDiagonalRow (k + 1)

theorem mertensCoefficientDiagonal_nonneg (m : ℕ) :
    0 ≤ mertensCoefficientDiagonal m := by
  unfold mertensCoefficientDiagonal
  exact Finset.sum_nonneg (fun _ _ => sq_nonneg _)

theorem mertensCoefficientDiagonal_le (m : ℕ) :
    mertensCoefficientDiagonal m ≤ (m : ℝ) := by
  calc
    _ ≤ ∑ _r ∈ Finset.Icc 1 m, (1 : ℝ) := by
      unfold mertensCoefficientDiagonal
      exact Finset.sum_le_sum (fun r _ =>
        GRWTSK.RiemannHypothesis.CCC.moebiusReal_sq_le_one r)
    _ = _ := by simp

theorem coefficientDiagonalRow_nonneg {n : ℕ} (hn : 1 ≤ n) :
    0 ≤ coefficientDiagonalRow n := by
  unfold coefficientDiagonalRow
  apply Finset.sum_nonneg
  intro m _
  by_cases hm : m = 0
  · subst m
    simp [mertensCoefficientDiagonal]
  exact mul_nonneg
    (mul_nonneg (mul_nonneg (by norm_num)
      (criticalEndpointGap_nonneg (Nat.one_le_iff_ne_zero.mpr hm)))
      (criticalEndpointGap_nonneg hn))
    (mertensCoefficientDiagonal_nonneg m)

theorem coefficientDiagonalRow_le {n : ℕ} (hn : 1 ≤ n) :
    coefficientDiagonalRow n ≤ 2 / ((n + 1 : ℕ) : ℝ) := by
  have hgn := criticalEndpointGap_nonneg hn
  calc
    _ ≤ ∑ m ∈ Finset.range n,
        (2 * criticalEndpointGap n) * ((m : ℝ) * criticalEndpointGap m) := by
      unfold coefficientDiagonalRow
      apply Finset.sum_le_sum
      intro m _
      by_cases hm : m = 0
      · subst m
        simp [mertensCoefficientDiagonal]
      have hgm := criticalEndpointGap_nonneg (Nat.one_le_iff_ne_zero.mpr hm)
      calc
        _ ≤ (2 * criticalEndpointGap m * criticalEndpointGap n) * (m : ℝ) :=
          mul_le_mul_of_nonneg_left (mertensCoefficientDiagonal_le m)
            (mul_nonneg (mul_nonneg (by norm_num) hgm) hgn)
        _ = _ := by ring
    _ = (2 * criticalEndpointGap n) *
        (∑ m ∈ Finset.range n, (m : ℝ) * criticalEndpointGap m) := by
      rw [Finset.mul_sum]
    _ ≤ (2 * criticalEndpointGap n) * Real.sqrt n :=
      mul_le_mul_of_nonneg_left (sum_nat_mul_endpointGap_le_sqrt n) (by positivity)
    _ = 2 * (criticalEndpointGap n * Real.sqrt n) := by ring
    _ ≤ 2 * (1 / ((n + 1 : ℕ) : ℝ)) :=
      mul_le_mul_of_nonneg_left (endpointGap_mul_sqrt_le_succ_inv hn) (by norm_num)
    _ = _ := by ring

theorem triangularCoefficientDiagonal_nonneg (N : ℕ) :
    0 ≤ triangularCoefficientDiagonal N := by
  unfold triangularCoefficientDiagonal
  exact Finset.sum_nonneg (fun k _ => coefficientDiagonalRow_nonneg (by omega))

theorem triangularCoefficientDiagonal_le_harmonic (N : ℕ) :
    triangularCoefficientDiagonal N ≤
      2 * ∑ k ∈ Finset.range N, (1 / ((k + 2 : ℕ) : ℝ)) := by
  unfold triangularCoefficientDiagonal
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro k _
  have h := coefficientDiagonalRow_le (n := k + 1) (by omega)
  simpa only [Nat.add_assoc, mul_one_div] using h

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
