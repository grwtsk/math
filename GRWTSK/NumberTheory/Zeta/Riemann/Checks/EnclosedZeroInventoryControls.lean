/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.CanonicalTentEvaluation
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Finite scope controls for enclosure exhaustion

All point and weight examples below are synthetic, not actual zeta zeros.
Literal rational decisions are unexecuted Lean proof candidates.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.EnclosedZeroInventory.Controls

open scoped BigOperators
open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalDiskSeparation
open GRWTSK.Analysis.ComplexAnalysis
open RationalMellinFamily (Member)
open RationalTentEnclosure (CoordinateData)

/-- Tangency cannot separate CLOSED enclosures. The shared point is explicitly visible. -/
theorem tangent_control :
    separated (0, 0) (2, 0) 1 1 = false ∧
      inBall (1, 0) 1 = true ∧ inBall (-1, 0) 1 = true := by decide

theorem diagonal_and_imaginary_controls :
    separated (0, 0) (3, 4) 2 2 = true ∧
      separated (0, 0) (3, 4) 2 3 = false ∧
      separated (0, -2) (0, 2) 1 1 = true := by decide

theorem negative_radius_control :
    separated (0, 0) (10, 0) (-1) 1 = false ∧
      belowHeight (0, 0) (-1) 10 = false := by decide

/-- Both signs and a point at the closed cutoff must remain. -/
theorem height_boundary_controls :
    belowHeight (1/2, 3) 1 4 = true ∧
      belowHeight (1/2, -3) 1 4 = true ∧
      belowHeight (1/2, 3) 1 3 = false := by decide

def syntheticFamily : List Member := [⟨11, (1/2, -3), 2⟩, ⟨23, (1/2, 3), 3⟩]
def syntheticCoordinates : CoordinateData := ⟨0, 1, 1, [1/4, 1/4]⟩

theorem geometry_nonvacuous :
    checkGeometry syntheticFamily 4 syntheticCoordinates = true ∧
      recordMass syntheticFamily = 5 := by decide

theorem exact_radius_shape_controls :
    checkGeometry syntheticFamily 4 ⟨0, 1, 1, [1/4]⟩ = false ∧
      checkGeometry syntheticFamily 4 ⟨0, 1, 1, [1/4, 1/4, 1/4]⟩ = false := by decide

theorem cutoff_and_overlap_controls :
    checkGeometry syntheticFamily 3 syntheticCoordinates = false ∧
      checkGeometry syntheticFamily 10 ⟨0, 1, 1, [3, 3]⟩ = false := by decide

/-- Empty geometry is not an analytic claim that the actual height head is empty. -/
theorem empty_geometry_control :
    checkGeometry [] 10 ⟨0, 0, 0, []⟩ = true ∧
      checkGeometry [] (-1) ⟨0, 0, 0, []⟩ = false := by decide

/-- A positive finite model exercises the constructive exhaustion theorem. -/
theorem positive_weight_model :
    ∃ e : Fin 2 ≃ Fin 2, (∀ i, e i = i) ∧
      ∀ i, (if e i = 0 then 2 else 3 : ℕ) = (if i = 0 then 2 else 3) := by
  apply GRWTSK.Algebra.BigOperators.PositiveWeightExhaustion.exists_equiv_of_mass_le
    (fun i : Fin 2 => i) (fun _ _ h => h)
    (fun i => if i = 0 then 2 else 3) (fun i => if i = 0 then 2 else 3)
  · decide
  · intro i; exact le_rfl
  · exact le_rfl

/-- Zero source weights can conceal an omitted point while the total masses agree. -/
theorem zero_hidden_weight_control :
    (∑ u : Fin 2, (if u = 0 then 1 else 0 : ℕ)) = (∑ _i : Fin 1, (1 : ℕ)) ∧
      ¬ Function.Surjective (fun _i : Fin 1 => (0 : Fin 2)) := by decide

/-- Equal total weights do not make a duplicated assignment injective or complete. -/
theorem duplicate_assignment_control :
    (∑ _i : Fin 2, (1 : ℕ)) = (∑ _u : Fin 2, (1 : ℕ)) ∧
      ¬ Function.Injective (fun _i : Fin 2 => (0 : Fin 2)) ∧
      ¬ Function.Surjective (fun _i : Fin 2 => (0 : Fin 2)) := by decide

/-- Local existence alone gives a lower count, which is not the required upper count. -/
theorem wrong_count_direction_control :
    (∑ _i : Fin 1, (1 : ℕ)) ≤ (∑ _u : Fin 2, (1 : ℕ)) ∧
      ¬ (∑ _u : Fin 2, (1 : ℕ)) ≤ (∑ _i : Fin 1, (1 : ℕ)) := by decide

/-- A cluster with total multiplicity two need not contain a double zero. -/
theorem cluster_is_not_one_weighted_point :
    (∑ _u : Fin 2, (1 : ℕ)) = 2 ∧
      ¬ ∃ _u : Fin 2, (2 : ℕ) ≤ 1 := by decide

/-- Inflating one record to hide another can match totals while violating a local lower bound. -/
theorem counterfeit_order_control :
    (2 + 2 : ℕ) = 1 + 3 ∧ ¬ (2 : ℕ) ≤ 1 := by decide

end GRWTSK.RiemannHypothesis.EnclosedZeroInventory.Controls
