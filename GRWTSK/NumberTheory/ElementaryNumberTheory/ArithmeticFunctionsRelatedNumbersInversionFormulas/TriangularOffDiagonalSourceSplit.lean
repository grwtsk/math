/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.TriangularCoefficientDiagonal

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Complete signed complement after removing coefficient diagonal and
selected doubling pairs. Original cutoffs and signs are retained.
No arithmetic cancellation upper bound is supplied.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect

def mertensOffDiagonalRemainder (m n : ℕ) : ℝ :=
  ∑ r ∈ Finset.Icc 1 m, ∑ s ∈ Finset.Icc 1 n,
    if s = r ∨ s = 2*r then 0 else moebiusReal r * moebiusReal s

theorem doubling_remainder_eq_diagonal_add_offDiagonal (m n : ℕ) (hmn : m ≤ n) :
    mertensDoublingPairRemainder m n =
      mertensCoefficientDiagonal m + mertensOffDiagonalRemainder m n := by
  unfold mertensDoublingPairRemainder mertensCoefficientDiagonal mertensOffDiagonalRemainder
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro r hr
  have hrp : 1 ≤ r := (Finset.mem_Icc.mp hr).1
  have hrn : r ∈ Finset.Icc 1 n :=
    Finset.mem_Icc.mpr ⟨hrp, (Finset.mem_Icc.mp hr).2.trans hmn⟩
  have hd : (∑ s ∈ Finset.Icc 1 n,
      if s = r then moebiusReal r ^ 2 else 0) = moebiusReal r ^ 2 := by simp [hrn]
  rw [← hd, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro s _
  by_cases he : s = r
  · subst s
    have hn : r ≠ 2*r := by omega
    simp [hn, pow_two]
  · by_cases htwo : s = 2*r
    · simp [he, htwo]
    · simp [he, htwo]

def triangularOffDiagonalRemainder (N : ℕ) : ℝ :=
  ∑ k ∈ Finset.range N, ∑ m ∈ Finset.range (k+1),
    (2 * criticalEndpointGap m * criticalEndpointGap (k+1)) *
      mertensOffDiagonalRemainder m (k+1)

theorem triangular_doubling_remainder_complete_split (N : ℕ) :
    triangularDoublingRemainder N =
      triangularCoefficientDiagonal N + triangularOffDiagonalRemainder N := by
  unfold triangularDoublingRemainder triangularCoefficientDiagonal
    coefficientDiagonalRow triangularOffDiagonalRemainder
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro k _
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [doubling_remainder_eq_diagonal_add_offDiagonal m (k+1)
    (Nat.le_of_lt (Finset.mem_range.mp hm)), mul_add]

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
