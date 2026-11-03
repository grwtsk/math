/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.MertensCoefficientKernelCongruence
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MobiusDilationPairSplit

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Literal Mobius coefficient vector to actual source increments.
No signed quadratic upper estimate or analytic zero bridge is supplied.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ActualMobiusIncrementMatrixBridge
open GRWTSK.RiemannHypothesis.CCC GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open CyclicActualMertensPrefixSource MertensCoefficientKernelCongruence
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect
variable (N : ℕ) [NeZero N]

def mobiusCoefficientVector (e : ZMod N ≃ Fin N) (r : ZMod N) : ℝ :=
  GRWTSK.RiemannHypothesis.CCC.moebiusReal ((e r).val+1)

lemma range_succ_mobius_prefix (L : ℕ) :
    (∑ k ∈ Finset.range L, GRWTSK.RiemannHypothesis.CCC.moebiusReal (k+1)) = pickupMertensPrefix L := by
  unfold pickupMertensPrefix
  induction L with
  | zero => simp
  | succ L ih =>
    rw [Finset.sum_range_succ, Finset.sum_Icc_succ_top (by omega), ih]

lemma range_cutoff_sum (f : ℕ → ℝ) (L M : ℕ) (hLM : L ≤ M) :
    (∑ k ∈ Finset.range M, if k<L then f k else 0)=∑ k ∈ Finset.range L, f k := by
  have hs := Finset.sum_subset (Finset.range_mono hLM)
    (f := fun k => if k<L then f k else 0)
    (fun k _ hk => by simp only [Finset.mem_range] at hk; simp [hk])
  rw [← hs]
  apply Finset.sum_congr rfl
  intro k hk
  simp [Finset.mem_range.mp hk]

theorem actual_mobius_matrix_increment (e : ZMod N ≃ Fin N) :
    (mertensIncrementMatrix N e).mulVec (mobiusCoefficientVector N e)=actualIncrement N e := by
  funext i
  have hL : (e i).val+1 ≤ N := Nat.succ_le_of_lt (e i).isLt
  calc
    _ = ∑ r : ZMod N, if (e r).val ≤ (e i).val then
        criticalEndpointGap ((e i).val+1)*GRWTSK.RiemannHypothesis.CCC.moebiusReal ((e r).val+1) else 0 := by
      simp [Matrix.mulVec, dotProduct, mertensIncrementMatrix, mobiusCoefficientVector, ite_mul]
    _ = ∑ k : Fin N, if k.val ≤ (e i).val then
        criticalEndpointGap ((e i).val+1)*GRWTSK.RiemannHypothesis.CCC.moebiusReal (k.val+1) else 0 :=
      Fintype.sum_equiv e _ _ (fun r => rfl)
    _ = ∑ k ∈ Finset.range N, if k<(e i).val+1 then
        criticalEndpointGap ((e i).val+1)*GRWTSK.RiemannHypothesis.CCC.moebiusReal (k+1) else 0 := by
      rw [Fin.sum_univ_eq_sum_range]
      simp only [Nat.lt_succ_iff]
    _ = ∑ k ∈ Finset.range ((e i).val+1),
        criticalEndpointGap ((e i).val+1)*GRWTSK.RiemannHypothesis.CCC.moebiusReal (k+1) :=
      range_cutoff_sum _ _ _ hL
    _ = criticalEndpointGap ((e i).val+1)*pickupMertensPrefix ((e i).val+1) := by
      rw [← Finset.mul_sum, range_succ_mobius_prefix]
    _ = actualIncrement N e i := by
      rw [actualIncrement_source, dilationIncrementSource_eq_prefixGap]
      ring

theorem actual_mobius_pulled_quadratic (e : ZMod N ≃ Fin N) :
    (mobiusCoefficientVector N e) ⬝ᵥ
      ((pulledKernel N (mertensIncrementMatrix N e)).mulVec (mobiusCoefficientVector N e)) =
        sampleSignedMixedPrefix N := by
  rw [pulledKernel_quadratic, actual_mobius_matrix_increment, actual_signed_prefix_statistic]

end GRWTSK.NumberTheory.Zeta.Riemann.ActualMobiusIncrementMatrixBridge
