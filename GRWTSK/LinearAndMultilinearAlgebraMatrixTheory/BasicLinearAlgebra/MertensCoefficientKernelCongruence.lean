/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.SignedPrefixDenseObservation
import Mathlib.Data.Matrix.Mul

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Finite coefficient-kernel congruence and the literal increment matrix.
The actual Mobius-vector matrix product and signed estimate remain
separate bridges. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.MertensCoefficientKernelCongruence
open CyclicConstantModeSignedPrefixObstruction SignedPrefixDenseObservation
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect
open Matrix
variable (N : ℕ) [NeZero N]

def denseMatrix : Matrix (ZMod N) (ZMod N) ℝ := Matrix.of (fun _ _ => 1)-1

theorem denseMatrix_mulVec (x : ZMod N → ℝ) :
    denseMatrix N *ᵥ x = fun i => (∑ j, x j)-x i := by
  rw [denseMatrix, Matrix.sub_mulVec, Matrix.one_mulVec]
  funext i
  simp [Matrix.mulVec, dotProduct]

def pulledKernel (B : Matrix (ZMod N) (ZMod N) ℝ) : Matrix (ZMod N) (ZMod N) ℝ :=
  B.transpose*denseMatrix N*B

theorem denseMatrix_quadratic (x : ZMod N → ℝ) :
    x ⬝ᵥ (denseMatrix N *ᵥ x) = signedPrefixStatistic N x := by
  rw [denseMatrix_mulVec]
  exact dense_real_form_eq_signed_statistic N x

theorem pulledKernel_quadratic (B : Matrix (ZMod N) (ZMod N) ℝ) (z : ZMod N → ℝ) :
    z ⬝ᵥ (pulledKernel N B *ᵥ z) = signedPrefixStatistic N (B *ᵥ z) := by
  calc
    _ = z ⬝ᵥ (B.transpose *ᵥ (denseMatrix N *ᵥ (B *ᵥ z))) := by
      simp only [pulledKernel, Matrix.mulVec_mulVec]
    _ = (denseMatrix N *ᵥ (B *ᵥ z)) ⬝ᵥ (B *ᵥ z) := Matrix.dotProduct_transpose_mulVec _ _ _
    _ = (B *ᵥ z) ⬝ᵥ (denseMatrix N *ᵥ (B *ᵥ z)) := dotProduct_comm _ _
    _ = _ := denseMatrix_quadratic N _

def mertensIncrementMatrix (e : ZMod N ≃ Fin N) : Matrix (ZMod N) (ZMod N) ℝ :=
  fun i r => if (e r).val ≤ (e i).val then criticalEndpointGap ((e i).val+1) else 0

end GRWTSK.NumberTheory.Zeta.Riemann.MertensCoefficientKernelCongruence
