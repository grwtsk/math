/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ElementaryNumberTheory.CyclicPopcornKernel
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSchurAccounting
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCofinalFlexibleHead

/-!
# Pole-corrected popcorn reference for the original Weil source

The reference retains the SAME `sinhMomentRow` and the scalar corner 1/2.
Its positivity is proved by the popcorn Gram decomposition plus an exact
square. Its difference from the shifted source is exactly the original
signed physical Weil matrix minus the popcorn reference. No pole, prime,
gamma entry, mixed term, or physical shift is discarded.

The final consumer uses an existing fully paid flexible head packet and
its independent high floor. A lower comparison with that paid matrix is
still required. Positivity of the reference alone is not a certificate for
that comparison, a mode-64 high floor, or any cofinal family.

Source-proof candidate. Elaboration, exact types, fresh kernel replay,
transitive axiom audit and independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Matrix

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PopcornReference

open GRWTSK.NumberTheory.CyclicPopcorn
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.LinearAlgebra.SchurObserver
open OddRootProjection OddSchurAccounting OddLiteralWindow OddLiteralCofinal
open OddLiteralCofinal.CofinalFlexibleHead OddLiteralCofinal.CofinalHighComplement

/-- Exact physical pole vector from the original two source orientations. -/
def reference (T : ℝ) (N : ℕ) (α : ℝ) :
    Matrix (Fin N ⊕ Unit) (Fin N ⊕ Unit) ℝ :=
  poleBorderedBlock
    (α • kernel N + (2 : ℝ) • Matrix.vecMulVec (sinhMomentRow T N) (sinhMomentRow T N))
    (sinhMomentRow T N)

def signedRemainder (T β : ℝ) (N : ℕ) (α : ℝ) : Matrix (Fin N) (Fin N) ℝ :=
  (zetaSineMatrix T N - β • 1) - α • kernel N

/-- The entire bordered reference is Hermitian, including its mixed entries. -/
theorem reference_isHermitian (T : ℝ) (N : ℕ) (α : ℝ) :
    (reference T N α).IsHermitian := by
  ext (i | i) (j | j) <;>
    simp [reference, poleBorderedBlock, Matrix.fromBlocks, Matrix.vecMulVec,
      kernel_symmetric, mul_comm]

/-- The missing mixed pole coefficients are matched literally, not fitted. -/
@[simp] theorem reference_poleColumn (T : ℝ) (N : ℕ) (α : ℝ) (i : Fin N) :
    reference T N α (Sum.inl i) (Sum.inr ()) = sinhMomentRow T N i := rfl

@[simp] theorem reference_poleCorner (T : ℝ) (N : ℕ) (α : ℝ) :
    reference T N α (Sum.inr ()) (Sum.inr ()) = (1 / 2 : ℝ) := rfl

/-- A nonnegative finite reference obtained without assuming any Weil sign. -/
theorem reference_quadratic (T : ℝ) (N : ℕ) (α : ℝ) (u : Fin N → ℝ) (a : ℝ) :
    quadratic (reference T N α) (Sum.elim u fun _ => a) =
      α * quadratic (kernel N) u + (a + 2 * (sinhMomentRow T N ⬝ᵥ u)) ^ 2 / 2 := by
  rw [reference, poleBorderedBlock_quadratic, quadratic_add,
    quadratic_smul, quadratic_smul, outer_quadratic]
  ring

theorem reference_nonnegative (T : ℝ) (N : ℕ) {α : ℝ} (hα : 0 ≤ α)
    (v : Fin N ⊕ Unit → ℝ) : 0 ≤ quadratic (reference T N α) v := by
  let u : Fin N → ℝ := fun i => v (Sum.inl i)
  let a := v (Sum.inr ())
  have hv : v = Sum.elim u (fun _ => a) := by
    funext i
    rcases i with i | ⟨⟩ <;> rfl
  rw [hv, reference_quadratic]
  have hk : 0 ≤ quadratic (kernel N) u := by
    simpa only [quadratic, star_trivial] using (kernel_posSemidef N).dotProduct_mulVec_nonneg u
  exact add_nonneg (mul_nonneg hα hk) (div_nonneg (sq_nonneg _) (by norm_num))

theorem reference_posSemidef (T : ℝ) (N : ℕ) {α : ℝ} (hα : 0 ≤ α) :
    (reference T N α).PosSemidef := by
  apply Matrix.PosSemidef.of_dotProduct_mulVec_nonneg (reference_isHermitian T N α)
  intro v
  simpa only [quadratic, star_trivial] using reference_nonnegative T N hα v

/-- Difference of full matrices, including both mixed orientations and the
unshifted auxiliary corner. -/
theorem source_sub_reference (T β : ℝ) (N : ℕ) (α : ℝ) :
    shiftedBlock (borderedSourceMatrix T N) poleShiftMetric β - reference T N α =
      Matrix.fromBlocks (signedRemainder T β N α) 0 0 0 := by
  rw [borderedSourceMatrix, shiftedBlock_poleBorderedBlock]
  ext (i | i) (j | j) <;>
    simp [reference, signedRemainder, poleBorderedBlock, retainedCoreMatrix,
      Matrix.fromBlocks, Matrix.vecMulVec, Matrix.sub_apply, Matrix.add_apply,
      Matrix.smul_apply, smul_eq_mul] <;> ring

/-- A scalar form identity returning the reference to the unchanged
original signed source. It makes no positivity claim about the remainder. -/
theorem source_quadratic_eq_reference_add_remainder
    (T β : ℝ) (N : ℕ) (α : ℝ) (u : Fin N → ℝ) (a : ℝ) :
    quadratic (shiftedBlock (borderedSourceMatrix T N) poleShiftMetric β)
        (Sum.elim u fun _ => a) =
      quadratic (reference T N α) (Sum.elim u fun _ => a) +
        quadratic (signedRemainder T β N α) u := by
  rw [borderedSourceMatrix_quadratic, reference_quadratic]
  simp only [signedRemainder, quadratic, Matrix.sub_mulVec, Matrix.smul_mulVec,
    dotProduct_sub, dotProduct_smul, smul_eq_mul]
  ring

/-- The exact residual comparison required from an arithmetic or conformal
construction. Symmetry and a positive model do not supply this premise. -/
theorem source_dominates_reference_iff (T β : ℝ) (N : ℕ) (α : ℝ) :
    (∀ u : Fin N → ℝ, ∀ a : ℝ,
      quadratic (reference T N α) (Sum.elim u fun _ => a) ≤
        quadratic (shiftedBlock (borderedSourceMatrix T N) poleShiftMetric β)
          (Sum.elim u fun _ => a)) ↔
    (∀ u : Fin N → ℝ, 0 ≤ quadratic (signedRemainder T β N α) u) := by
  constructor
  · intro h u
    have hh := h u 0
    rw [source_quadratic_eq_reference_add_remainder] at hh
    linarith
  · intro h u a
    rw [source_quadratic_eq_reference_add_remainder]
    exact le_add_of_nonneg_right (h u)

/-- Correctly retain the negative rank-one pole at radius two. -/
theorem radiusTwo_reference_return (α : ℝ) (u : Fin 64 → ℝ) (a : ℝ) :
    quadratic (shiftedBlock (borderedSourceMatrix 2 64) poleShiftMetric (-1 / 2))
        (Sum.elim u fun _ => a) =
      quadratic (reference 2 64 α) (Sum.elim u fun _ => a) +
        quadratic (signedRemainder 2 (-1 / 2) 64 α) u :=
  source_quadratic_eq_reference_add_remainder 2 (-1 / 2) 64 α u a

/-- Exact negative-vector control: matching the scalar corner but omitting
a nonzero mixed coefficient cannot yield domination, whatever the diagonal. -/
theorem unmatched_border_negative_value (diagonal border : ℝ) (hb : border ≠ 0) :
    diagonal + 2 * border * (-(diagonal + 1) / (2 * border)) = -1 := by
  field_simp [hb]
  <;> ring

/-- The reference may be compared to the FULL paid lower matrix. This consumes
the actual source packet and high floor, rather than a raw finite head. -/
theorem stageLower_of_paid_popcorn_comparison {j N M L J : ℕ}
    (packet : FlexibleStageHeadSource j N M L J)
    (hfloor : HighFloor (stageRadius j) (stageShift j) (1 / 5 : ℝ) N)
    (α : ℝ) (hα : 0 ≤ α)
    (hpaid : ∀ v : Fin N ⊕ Unit → ℝ,
      quadratic (reference (stageRadius j) N α) v ≤
        quadratic (fun i k => (packet.lower i k : ℝ)) v) :
    StageLower j := by
  apply stageLower_of_positiveLower packet hfloor
  intro v
  exact (reference_nonnegative (stageRadius j) N hα v).trans (hpaid v)

end GRWTSK.NumberTheory.WeilQuadraticForm.PopcornReference
