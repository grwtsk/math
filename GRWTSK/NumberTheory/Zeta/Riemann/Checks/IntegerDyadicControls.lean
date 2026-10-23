/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenIntegerRefinement

set_option autoImplicit false

/-! Exact small source controls. All Lean decisions remain NOT_RUN. -/
namespace GRWTSK.RiemannHypothesis.Checks.IntegerDyadicControls

open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalDyadicArithmetic IntegerDyadicSquare

theorem negative_real_floor : step 2 ⟨1,2,0⟩ = ⟨-1,1,1⟩ := by decide

theorem negative_imaginary : step 2 ⟨2,-1,0⟩ = ⟨0,-1,1⟩ := by decide

theorem zero_bits : scale 0 = 1 ∧ step 0 ⟨-2,3,1⟩ = ⟨-5,-12,3⟩ := by decide

theorem both_residuals : residual 2 ⟨1,1,0⟩ = 2 ∧
    step 2 ⟨1,1,0⟩ = ⟨0,0,1⟩ := by decide

theorem nonlinear_error : step 4 ⟨0,0,8⟩ = ⟨0,0,20⟩ ∧
    ceilDiv (2*8*16) 16 = 16 := by decide

theorem outward_error : decode 4 (step 4 ⟨10,0,1⟩) =
    (⟨(3/8,0),3/16⟩ : Ball) := by decide

theorem signed_ceiling : ceilDiv (-7) 4 = -1 ∧ ceilDiv 7 4 = 2 := by decide

/-- Nonzero residuals need not always change a ceiling, but cannot be dropped. -/
theorem residual_needed : ceilDiv (2*1*16+1^2) 16 = 3 ∧
    step 4 ⟨10,0,1⟩ = ⟨6,0,3⟩ ∧ step 2 ⟨1,2,0⟩ ≠ ⟨-1,1,0⟩ := by decide

theorem empty_seed : IntegerExpStateFold.exponential 4 zero 0 0 =
    (⟨zero,2⟩ : Ball) := by decide

theorem exact_seed : IntegerExpStateFold.exponential 4 zero 0 1 =
    (⟨one,0⟩ : Ball) := by decide

theorem square_example : IntegerExpStateFold.exponential 4 (-1,0) 1 3 =
    (⟨(3/8,0),3/16⟩ : Ball) := by decide

theorem midpoint_not_state : (decode 4 ⟨1,2,3⟩).mid = (decode 4 ⟨1,2,2⟩).mid ∧
    decode 4 ⟨1,2,3⟩ ≠ decode 4 ⟨1,2,2⟩ := by decide

theorem original_obligations : HeightFifteenIntegerRefinement.IntegerBlockObligations ↔
    HeightFifteenBlockDecomposition.BlockObligations :=
  HeightFifteenIntegerRefinement.obligations_iff.trans HeightFifteenFoldRefinement.obligations_iff

end GRWTSK.RiemannHypothesis.Checks.IntegerDyadicControls
