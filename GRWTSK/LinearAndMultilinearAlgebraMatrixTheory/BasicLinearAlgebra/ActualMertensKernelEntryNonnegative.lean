/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ActualMertensGcdSignedMass

set_option autoImplicit false
noncomputable section

/-! Entrywise positivity is not positive semidefiniteness or signed Mobius
domination. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensKernelEntryNonnegative
open MertensCoefficientKernelCongruence ActualMertensNaturalGcdKernel ActualMertensGcdSignedMass
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect
open GRWTSK.NumberTheory.Moebius.MobiusGcdQuotientKernelSign
variable (N : ℕ) [NeZero N]

theorem dense_entry_nonneg (i j : ZMod N) : 0≤denseMatrix N i j := by
  by_cases h : i=j <;> simp [denseMatrix,Matrix.one_apply,h]

theorem pulled_entry_nonneg (B : Matrix (ZMod N) (ZMod N) ℝ)
    (hB : ∀ i j, 0≤B i j) (r s : ZMod N) : 0≤pulledKernel N B r s := by
  unfold pulledKernel
  rw [Matrix.mul_apply]
  apply Finset.sum_nonneg
  intro k _
  apply mul_nonneg _ (hB k s)
  rw [Matrix.mul_apply]
  apply Finset.sum_nonneg
  intro i _
  exact mul_nonneg (hB i r) (dense_entry_nonneg N i k)

theorem actual_kernel_entry_nonneg (e : ZMod N ≃ Fin N) (r s : ℕ) :
    0≤actualNaturalKernel N e r s := by
  apply pulled_entry_nonneg N _ _ _ _
  intro i j
  unfold mertensIncrementMatrix
  split_ifs
  · exact criticalEndpointGap_nonneg (by omega)
  · exact le_rfl

theorem actual_coefficient_diagonal_nonneg (e : ZMod N ≃ Fin N) :
    0≤coefficientDiagonal N e := by
  unfold coefficientDiagonal
  apply Finset.sum_nonneg
  intro q _
  split_ifs with hd
  · unfold actualGcdAtom
    rw [← actual_gcd_quotient_product q.val.1 q.val.2.1 q.val.2.2 q.property.2.2.2.1,hd]
    exact mul_nonneg (mul_self_nonneg _) (actual_kernel_entry_nonneg N e _ _)
  · exact le_rfl

/- Actual kernel entries and coefficient diagonal are nonnegative. The
matrix form can still be indefinite: mixed Mobius signs are retained.
No bound D+P≤M+Cepsilon*(N+1)^epsilon or analytic bridge is supplied. -/
end GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensKernelEntryNonnegative
