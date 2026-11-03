/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ActualMertensColumnTelescope

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual natural coefficient diagonal has a paid reciprocal budget.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensNaturalDiagonalBudget
open ActualMertensColumnTelescope ActualMertensKernelColumnDiagonal
open ActualMertensKernelEntryNonnegative ActualMertensNaturalGcdKernel
open MertensCoefficientKernelCongruence
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect GRWTSK.RiemannHypothesis.CCC
variable (N : ℕ) [NeZero N]

theorem actual_natural_diagonal_le_reciprocal (e : ZMod N ≃ Fin N) (r : ℕ)
    (hr : 0<r) (hrN : r≤N) : actualNaturalKernel N e r r≤1/(r : ℝ) := by
  have hcol : 0≤∑ i : ZMod N, mertensIncrementMatrix N e i (naturalSourceSite N e r) := by
    apply Finset.sum_nonneg
    intro i _
    unfold mertensIncrementMatrix
    split_ifs
    · exact criticalEndpointGap_nonneg (by omega)
    · exact le_rfl
  have ht := actual_column_sum_telescope N e r hr hrN
  rw [ht] at hcol
  have hs := (sq_le_sq₀ hcol (inv_nonneg.mpr (Real.sqrt_nonneg (r : ℝ)))).mpr
    (sub_le_self ((Real.sqrt (r : ℝ))⁻¹)
      (inv_nonneg.mpr (Real.sqrt_nonneg ((N+1 : ℕ) : ℝ))))
  calc
    _ ≤ (∑ i : ZMod N, mertensIncrementMatrix N e i (naturalSourceSite N e r))^2 :=
      pulled_column_diagonal_upper N _ _
    _ ≤ (Real.sqrt (r : ℝ))⁻¹^2 := by rw [ht]; exact hs
    _ = ((Real.sqrt (r : ℝ))^2)⁻¹ := by ring
    _ = 1/(r : ℝ) := by rw [Real.sq_sqrt (Nat.cast_nonneg r)]; rfl

theorem actual_natural_diagonal_harmonic_budget (e : ZMod N ≃ Fin N) :
    (∑ r ∈ Finset.Icc 1 N, moebiusReal r^2*actualNaturalKernel N e r r) ≤
      ∑ r ∈ Finset.Icc 1 N, 1/(r : ℝ) := by
  apply Finset.sum_le_sum
  intro r hr
  have hb := Finset.mem_Icc.mp hr
  calc
    _ ≤ 1*actualNaturalKernel N e r r := mul_le_mul_of_nonneg_right
      (moebiusReal_sq_le_one r) (actual_kernel_entry_nonneg N e r r)
    _ ≤ _ := by simpa using actual_natural_diagonal_le_reciprocal N e r (by omega) hb.2

/- This is the full positive natural coefficient diagonal, not increment
energy. Its equality with the gcd diagonal packet and the logarithmic
harmonic bound still need source assembly. Actual off-diagonal signed
cancellation and the analytic spectral bridge remain unsupplied. -/
end GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensNaturalDiagonalBudget
