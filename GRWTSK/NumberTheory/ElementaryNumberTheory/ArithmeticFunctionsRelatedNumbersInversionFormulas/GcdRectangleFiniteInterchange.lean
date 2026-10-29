/- Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.GcdSignedRectangleKernel

/-!
# Exact coefficient-to-rectangle finite interchange

All four finite inventories are retained. The tail kernel excludes equal
increment indices, while the positive coefficient inventory retains a=b=1.
No signed rectangle bound is used in the identity. Identification of this
explicit tail kernel with the existing cyclic pulled-kernel entries, and
flattening its bounded gcd subtype sum, remain separate formal bridges.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open scoped BigOperators
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect

theorem four_sum_interchange (A B I J : Finset ℕ) (f : ℕ → ℕ → ℕ → ℕ → ℝ) :
    (∑ a ∈ A, ∑ b ∈ B, ∑ i ∈ I, ∑ j ∈ J, f a b i j) =
      ∑ i ∈ I, ∑ j ∈ J, ∑ a ∈ A, ∑ b ∈ B, f a b i j := by
  calc
    _ = ∑ a ∈ A, ∑ i ∈ I, ∑ b ∈ B, ∑ j ∈ J, f a b i j := by
      apply Finset.sum_congr rfl
      intro a _
      exact Finset.sum_comm
    _ = ∑ i ∈ I, ∑ a ∈ A, ∑ b ∈ B, ∑ j ∈ J, f a b i j := Finset.sum_comm
    _ = ∑ i ∈ I, ∑ a ∈ A, ∑ j ∈ J, ∑ b ∈ B, f a b i j := by
      apply Finset.sum_congr rfl
      intro i _
      apply Finset.sum_congr rfl
      intro a _
      exact Finset.sum_comm
    _ = _ := by
      apply Finset.sum_congr rfl
      intro i _
      exact Finset.sum_comm

/-- Literal finite double tail. Equal increment coordinates have zero
weight; coefficient coordinates are not tested for equality. -/
def gcdRectangleTailKernel (g L a b : ℕ) : ℝ :=
  ∑ i ∈ Finset.range L, ∑ j ∈ Finset.range L,
    if g*a ≤ g+i ∧ g*b ≤ g+j then
      (if i=j then 0 else criticalEndpointGap (g+i)*criticalEndpointGap (g+j))
    else 0

def gcdRectangleCoefficientBlock (g Q L : ℕ) : ℝ :=
  ∑ a ∈ Finset.Icc 1 Q, ∑ b ∈ Finset.Icc 1 Q,
    gcdQuotientSignedCoefficient g a b * gcdRectangleTailKernel g L a b

/-- Exact finite interchange. No positivity, cancellation, growth, coprime
uniformity or mean-square premise is assumed. -/
theorem gcdRectangleCoefficientBlock_eq_mixture (g Q L : ℕ) :
    gcdRectangleCoefficientBlock g Q L = gcdSignedRectangleMixture g Q L := by
  unfold gcdRectangleCoefficientBlock gcdRectangleTailKernel
  simp_rw [Finset.mul_sum]
  rw [four_sum_interchange]
  unfold gcdSignedRectangleMixture gcdSignedRectangle
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro a _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro b _
  by_cases h : g*a ≤ g+i ∧ g*b ≤ g+j
  · simp only [if_pos h]
    ring
  · simp only [if_neg h, mul_zero]

/-- The rectangle supplier appears only in this bound, never in the exact
interchange identity. It remains an unresolved arithmetic hypothesis. -/
theorem gcdRectangleCoefficientBlock_le_inv {g Q L : ℕ} {B : ℝ}
    (hg : 1 ≤ g) (hB : 0 ≤ B)
    (hrect : ∀ i ∈ Finset.range L, ∀ j ∈ Finset.range L,
      gcdSignedRectangle g Q (g+i) (g+j) ≤ B) :
    gcdRectangleCoefficientBlock g Q L ≤ B/(g : ℝ) := by
  rw [gcdRectangleCoefficientBlock_eq_mixture]
  exact gcdSignedRectangleMixture_le_inv hg hB hrect

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
