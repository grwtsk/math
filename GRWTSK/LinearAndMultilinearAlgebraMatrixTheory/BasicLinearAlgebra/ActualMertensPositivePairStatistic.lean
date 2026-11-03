/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ActualMertensNaturalGcdKernel

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual finite source statistic, with all natural labels identified.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensPositivePairStatistic
open ActualMertensNaturalGcdKernel ActualMobiusIncrementMatrixBridge
open MertensCoefficientKernelCongruence
open GRWTSK.NumberTheory.Moebius.MobiusBoundedGcdEquivalence
open GRWTSK.NumberTheory.Moebius.MobiusFullGcdKernelSum
open GRWTSK.RiemannHypothesis.CCC GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
variable (N : ℕ) [NeZero N]

theorem bounded_source_label (e : ZMod N ≃ Fin N) (r : ℕ) (hr : 0<r) (hN : r≤N) :
    (e (naturalSourceSite N e r)).val+1=r := by
  have hm : r-1<N := by omega
  simp [naturalSourceSite,Nat.mod_eq_of_lt hm]
  omega

def sourcePairEquiv (e : ZMod N ≃ Fin N) : (ZMod N × ZMod N) ≃ PositivePairs N where
  toFun ij := ⟨((e ij.1).val+1,(e ij.2).val+1), by
    have hi := (e ij.1).isLt
    have hj := (e ij.2).isLt
    exact ⟨by omega,by omega,by omega,by omega⟩⟩
  invFun p := (naturalSourceSite N e p.val.1,naturalSourceSite N e p.val.2)
  left_inv ij := Prod.ext (natural_source_site_label N e ij.1) (natural_source_site_label N e ij.2)
  right_inv p := by
    apply Subtype.ext
    exact Prod.ext (bounded_source_label N e p.val.1 p.property.1 p.property.2.1)
      (bounded_source_label N e p.val.2 p.property.2.2.1 p.property.2.2.2)

theorem actual_positive_pair_statistic (e : ZMod N ≃ Fin N) :
    (∑ p : PositivePairs N, moebiusReal p.val.1*moebiusReal p.val.2*
      actualNaturalKernel N e p.val.1 p.val.2)=sampleSignedMixedPrefix N := by
  have ht := Fintype.sum_equiv (sourcePairEquiv N e)
    (fun ij => moebiusReal ((e ij.1).val+1)*moebiusReal ((e ij.2).val+1)*
      pulledKernel N (mertensIncrementMatrix N e) ij.1 ij.2)
    (fun p => moebiusReal p.val.1*moebiusReal p.val.2*actualNaturalKernel N e p.val.1 p.val.2)
    (fun ij => by simp [sourcePairEquiv,actual_natural_kernel_label])
  rw [← actual_mobius_pulled_quadratic N e]
  rw [← ht]
  simp only [Fintype.sum_prod_type,Matrix.mulVec,dotProduct,Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  simp only [mobiusCoefficientVector]
  ring

/- Together with actual_natural_gcd_kernel_sum this identifies the full
actual source statistic with the ordered gcd quotient kernel sum. The
uniform signed comparison and zero-to-operator analytic bridge remain
unsupplied; the congruence is not a unitary nearest-neighbor realization. -/
end GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensPositivePairStatistic
