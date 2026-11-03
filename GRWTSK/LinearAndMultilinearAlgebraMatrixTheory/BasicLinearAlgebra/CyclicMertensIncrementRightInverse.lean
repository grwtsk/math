/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MertensIncrementPrefixInverse

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Literal cyclic increment matrix right inverse and actual-prefix matched
coefficient construction. No uniform inverse conditioning or signed
arithmetic estimate is supplied. NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.CyclicMertensIncrementRightInverse
open MertensIncrementPrefixInverse MertensCoefficientKernelCongruence
open ActualMobiusIncrementMatrixBridge ActualPrefixMatchedVector
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect
variable (N : ℕ) [NeZero N]

def extendCyclicVector (e : ZMod N ≃ Fin N) (x : ZMod N → ℝ) (n : ℕ) : ℝ :=
  if h : n<N then x (e.symm ⟨n,h⟩) else 0

def cyclicIncrementInverse (e : ZMod N ≃ Fin N) (x : ZMod N → ℝ)
    (r : ZMod N) : ℝ :=
  inverseIncrementCoefficients criticalEndpointGap (extendCyclicVector N e x) (e r).val

theorem actual_cyclic_matrix_right_inverse (e : ZMod N ≃ Fin N) (x : ZMod N → ℝ) :
    (mertensIncrementMatrix N e).mulVec (cyclicIncrementInverse N e x)=x := by
  funext i
  let a := inverseIncrementCoefficients criticalEndpointGap (extendCyclicVector N e x)
  have hL : (e i).val+1 ≤ N := Nat.succ_le_of_lt (e i).isLt
  calc
    _ = ∑ r : ZMod N, if (e r).val ≤ (e i).val then
        criticalEndpointGap ((e i).val+1)*a (e r).val else 0 := by
      simp [Matrix.mulVec,dotProduct,mertensIncrementMatrix,cyclicIncrementInverse,a,ite_mul]
    _ = ∑ k : Fin N, if k.val ≤ (e i).val then
        criticalEndpointGap ((e i).val+1)*a k.val else 0 :=
      Fintype.sum_equiv e _ _ (fun r => rfl)
    _ = ∑ k ∈ Finset.range N, if k<(e i).val+1 then
        criticalEndpointGap ((e i).val+1)*a k else 0 := by
      rw [Fin.sum_univ_eq_sum_range]
      simp only [Nat.lt_succ_iff]
    _ = ∑ k ∈ Finset.range ((e i).val+1), criticalEndpointGap ((e i).val+1)*a k :=
      range_cutoff_sum _ _ _ hL
    _ = extendCyclicVector N e x (e i).val := by
      rw [← Finset.mul_sum]
      exact actual_gap_forward_inverse _ _
    _ = x i := by simp [extendCyclicVector,(e i).isLt]

def actualPrefixMatchedCoefficients (e : ZMod N ≃ Fin N) (z : ZMod N → ℝ) : ZMod N → ℝ :=
  cyclicIncrementInverse N e (matchActualPrefix N z)

theorem actualPrefixMatchedCoefficients_source (e : ZMod N ≃ Fin N) (z : ZMod N → ℝ) :
    (mertensIncrementMatrix N e).mulVec (actualPrefixMatchedCoefficients N e z)=
      matchActualPrefix N z := actual_cyclic_matrix_right_inverse N e _

end GRWTSK.NumberTheory.Zeta.Riemann.CyclicMertensIncrementRightInverse
