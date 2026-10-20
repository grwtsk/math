/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenFoldRefinement

set_option autoImplicit false

/-!
# Controls for exact state-fold refinement, including rounding obstructions

Small finite proof scripts only: they have not been executed in Lean. The target's
38 large equalities remain unproved. No test below supplies a zero inventory,
source approximation oracle, replacement error rule or permission to execute.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.StateFoldControls

open GRWTSK.Algebra.BigOperators.IndexedStateFold
open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalDyadicArithmetic

/-- Absolute indices survive resumed folds. Restarting each block at zero differs. -/
theorem absolute_cursor :
    run (fun j x : ℕ => 10*x+j) 5 3 0 = 567 ∧
    run (fun j x : ℕ => 10*x+j) 0 3 0 = 12 := by decide

theorem zero_count : run (fun j x : ℕ => x+j+1) 20 0 7 = 7 := by rfl

theorem ordered_composition :
    run (fun j x : ℕ => 10*x+j) 5 3 0 =
      run (fun j x : ℕ => 10*x+j) 6 2 (run (fun j x : ℕ => 10*x+j) 5 1 0) := by decide

/-- Exact complex multiplication, M terms and the factorial denominator persist. -/
theorem complex_seed :
    RationalExpStateFold.taylor (-1/2,1/4) 3 = (19/32,1/8) ∧
    RationalExpStateFold.taylor (0,1) 3 = (1/2,1) := by decide

theorem empty_and_constant_seed :
    RationalExpStateFold.taylor (3,4) 0 = zero ∧
    RationalExpStateFold.taylor (3,4) 1 = one := by decide

/-- Seed floor and upward radius rounding are retained even with no squares. -/
theorem zero_squarings :
    RationalExpStateFold.exponential 4 zero 0 0 = ⟨zero,2⟩ ∧
    RationalExpStateFold.exponential 4 zero 0 1 = ⟨one,0⟩ := by decide

/-- Last rounding residual enters the same nonlinear radius state as before. -/
theorem square_residual_retained :
    RationalExpStateFold.exponential 4 (-1,0) 1 3 = ⟨(3/8,0),3/16⟩ := by decide

/-- Dropping E^2 can leave the midpoint unchanged while changing the allowance. -/
theorem nonlinear_radius_retained :
    (RationalExpStateFold.squareStep 4 0 (⟨one,1/2⟩ : Ball)).rad = 5/4 ∧
    up 4 (2*(1/2 : ℚ)) = 1 := by decide

theorem signed_coordinate_floor :
    down 3 (-1/3) = -3/8 ∧ down 3 (-1/3) ≠ (-1/4 : ℚ) := by decide

/-- Rounded addition is not reassociated by the prefix fold. Same midpoint is
insufficient: these different parenthesizations have different complete radii. -/
theorem rounded_addition_order :
    ballAdd 1 (ballAdd 1 ⟨(-4/3,0),0⟩ ⟨(-4/3,0),0⟩) ⟨(-1,0),0⟩ = ⟨(-4,0),1/2⟩ ∧
    ballAdd 1 ⟨(-4/3,0),0⟩ (ballAdd 1 ⟨(-4/3,0),0⟩ ⟨(-1,0),0⟩) = ⟨(-4,0),1⟩ := by decide

/-- Base zero is not consumed by the positive prefix. -/
theorem positive_prefix :
    RationalJetStateFold.prefix 4
      (fun k => if k = 0 then ⟨(999,999),0⟩ else ⟨zero,0⟩)
      (fun k => if k = 0 then ⟨(-999,999),0⟩ else ⟨one,0⟩) 2 =
        (⟨(2,0),0⟩,⟨zero,0⟩) := by decide

def poleParameters : RationalPoleValue.Parameters := ⟨1,0,4,1,1,0,1⟩

/-- Exact source value one does not mean an exact actual-source derivative. -/
theorem pole_snapshot :
    RationalJetStateFold.patch one (1/10) (1/2) poleParameters =
      ⟨⟨one,0⟩,⟨(9/16,0),33/8⟩,3/4,true⟩ := by decide

theorem strict_equality_rejects :
    (RationalJetStateFold.patch one (1/8) (1/2) poleParameters).radius = 1 ∧
    (RationalJetStateFold.patch one (1/8) (1/2) poleParameters).accepted = false := by decide

theorem invalid_geometry_and_cutoff :
    (RationalJetStateFold.patch one (-1/10) (1/2) poleParameters).accepted = false ∧
    (RationalJetStateFold.patch one (1/2) (1/2) poleParameters).accepted = false ∧
    (RationalJetStateFold.patch one (1/10) (1/2) {poleParameters with cutoff := 0}).accepted = false := by
  rw [RationalJetStateFold.patch_accepted, RationalJetStateFold.patch_accepted,
    RationalJetStateFold.patch_accepted]
  decide

/-- An unproved whole-target equality cannot be replaced by these local controls. -/
theorem target_obligations_unchanged : HeightFifteenFoldRefinement.FoldBlockObligations ↔
    HeightFifteenBlockDecomposition.BlockObligations :=
  HeightFifteenFoldRefinement.obligations_iff

end GRWTSK.RiemannHypothesis.Checks.StateFoldControls
