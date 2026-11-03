/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.Record4239ArithmeticPotentialCharacterSum
import Mathlib.LinearAlgebra.Matrix.Trace

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact source character trace for arbitrary hopping. Trace requires only
nontrivial cyclic shift; point counting still requires odd characteristic.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian

theorem cyclic_shift_trace_zero (N : ℕ) [NeZero N] (h1 : (1 : ZMod N)≠0) :
    Matrix.trace (cyclicShift N)=0 := by
  change (∑ i : ZMod N, cyclicShift N i i)=0
  apply Finset.sum_eq_zero
  intro i _
  have hn : i≠i+1 := by
    intro h
    have hz : (0 : ZMod N)=1 := add_left_cancel (show i+0=i+1 by simpa using h)
    exact h1 hz.symm
  simp [cyclicShift,hn]

theorem actual_hamiltonian_trace (N : ℕ) [NeZero N] (h1 : (1 : ZMod N)≠0)
    (t : ℝ) (q : ZMod N → ℝ) :
    Matrix.trace (hamiltonian N t q)=∑ i : ZMod N, (q i : ℂ) := by
  simp [hamiltonian,Matrix.trace_add,Matrix.trace_smul,Matrix.trace_conjTranspose,
    cyclic_shift_trace_zero N h1]

theorem actual_record_full_hopping_trace (p : ℕ) [Fact (Nat.Prime p)] (t : ℝ) :
    Matrix.trace (hamiltonian p t
      (arithmeticPotential p p (recordQuadraticCharacter p)
        (recordDiscriminantLabel p) 0 0 1)) =
      ∑ x : ZMod p, (quadraticChar (ZMod p) (recordFiberDiscriminant x) : ℂ) := by
  rw [actual_hamiltonian_trace p one_ne_zero]
  apply Finset.sum_congr rfl
  intro x _
  rw [actual_record_potential]
  norm_cast

/- The trace identity also holds at p=2; the separate square-completion
point-count bridge does not. No good-reduction hypothesis is erased from
an Euler-factor claim, and no analytic rank/BSD identity is inferred. -/
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
