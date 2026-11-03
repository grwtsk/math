/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ActualMertensKernelEntryNonnegative

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact column-square-minus-energy coefficient diagonal.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensKernelColumnDiagonal
open MertensCoefficientKernelCongruence ActualMertensNaturalGcdKernel
variable (N : ℕ) [NeZero N]

theorem pulled_column_diagonal_exact (B : Matrix (ZMod N) (ZMod N) ℝ) (r : ZMod N) :
    pulledKernel N B r r=(∑ i : ZMod N, B i r)^2-∑ i : ZMod N, (B i r)^2 := by
  calc
    _ = (∑ k : ZMod N, (∑ i : ZMod N, B i r)*B k r)-
        ∑ i : ZMod N, B i r*B i r := by
      simp [pulledKernel,denseMatrix,Matrix.mul_sub,Matrix.sub_mul,
        Matrix.mul_apply,Matrix.transpose_apply]
    _ = _ := by rw [← Finset.mul_sum]; simp only [pow_two]

theorem pulled_column_diagonal_upper (B : Matrix (ZMod N) (ZMod N) ℝ) (r : ZMod N) :
    pulledKernel N B r r≤(∑ i : ZMod N, B i r)^2 := by
  rw [pulled_column_diagonal_exact]
  have hs : 0≤∑ i : ZMod N, (B i r)^2 := Finset.sum_nonneg (fun _ _ => sq_nonneg _)
  linarith

theorem actual_natural_diagonal_exact (e : ZMod N ≃ Fin N) (r : ℕ) :
    actualNaturalKernel N e r r=
      (∑ i : ZMod N, mertensIncrementMatrix N e i (naturalSourceSite N e r))^2-
      ∑ i : ZMod N, (mertensIncrementMatrix N e i (naturalSourceSite N e r))^2 := by
  exact pulled_column_diagonal_exact N (mertensIncrementMatrix N e) (naturalSourceSite N e r)

/- For 1≤r≤N, telescoping the actual column gives
sum B_ir=1/sqrt(r)-1/sqrt(N+1), hence 0≤K_rr≤1/r.
The bounded-source telescope and finite harmonic summation remain to be
assembled in Lean. None bounds the full signed off-diagonal contribution. -/
end GRWTSK.NumberTheory.Zeta.Riemann.ActualMertensKernelColumnDiagonal
