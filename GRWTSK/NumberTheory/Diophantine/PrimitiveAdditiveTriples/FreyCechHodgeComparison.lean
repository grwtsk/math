/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Compare the OLD real Frey tree-fixed Cech flow with standard unit-weight
FINITE cochain Hodge heat on the SAME W_k-valued data. An explicit mean-zero
coboundary accounts for the difference. Equal reduced observations do not
identify full states, metrics, gauges, integral lattices or geometric H0.
These are source proof scripts, not Lean-verified or intrinsic Hodge results.
-/
import GRWTSK.Algebra.LinearAlgebra.ThreeCellHodgeGauge
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechHeat

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechHodgeComparison

open FreyWeightedSections FreyWeightedBasis FreyWeightedEnergy
open GRWTSK.Algebra.Homology.ThreeCellCech
open GRWTSK.Algebra.LinearAlgebra
open scoped BigOperators
attribute [local instance] FreyWeightedSections.coefficientAlgebra

/-- Same normalized data carrier, with all edges damped in the standard profile. -/
def hodge (a b : ℝ) (k : ℕ) (t : ℝ) (v : FreyCechHeat.Data a b k) : FreyCechHeat.Data a b k :=
  (FreyCoefficientHeat.heat a b k t v.1, ThreePhaseCoefficientHeat.decay t • v.2)

/-- The comparison starts from the previously implemented function-valued tree flow. -/
theorem tree_agrees (a b : ℝ) (k : ℕ) (t : ℝ) (v : FreyCechHeat.Data a b k) :
    FreyCechHeat.evolve a b k t v =
      ThreeCellHodgeGauge.treeRelax (ThreePhaseCoefficientHeat.decay t) v := rfl

theorem hodge_agrees (a b : ℝ) (k : ℕ) (t : ℝ) (v : FreyCechHeat.Data a b k) :
    hodge a b k t v = ThreeCellHodgeGauge.hodgeRelax (ThreePhaseCoefficientHeat.decay t) v := rfl

/-- An actual W_k-valued change of frame, not a source-label permutation. -/
def gauge (a b : ℝ) (k : ℕ) (t : ℝ) (v : FreyCechHeat.Data a b k) : Triple (stage a b k) :=
  ThreeCellHodgeGauge.comparisonGauge (ThreePhaseCoefficientHeat.decay t) v.2

theorem gauge_mean_zero (a b : ℝ) (k : ℕ) (t : ℝ) (v : FreyCechHeat.Data a b k) :
    FreyCoefficientHeat.meanStage a b k (gauge a b k t v) = 0 :=
  ThreeCellHodgeGauge.comparisonGauge_mean _ _

/-- Both vertices AND transitions are related by the same exact coboundary. -/
theorem tree_hodge_comparison (a b : ℝ) (k : ℕ) (t : ℝ) (v : FreyCechHeat.Data a b k) :
    FreyCechHeat.evolve a b k t v =
      ((hodge a b k t v).1 + gauge a b k t v,
       (hodge a b k t v).2 + delta0 (gauge a b k t v)) :=
  ThreeCellHodgeGauge.tree_hodge_gauge _ _

/-- Equality of reduced invariants is NOT equality of full normalized states. -/
theorem same_reduced_evolution (a b : ℝ) (k : ℕ) (t : ℝ) (v : FreyCechHeat.Data a b k) :
    ThreeCellHodgeGauge.reduced (FreyCechHeat.evolve a b k t v) =
      ThreeCellHodgeGauge.reduced (hodge a b k t v) :=
  ThreeCellHodgeGauge.reduced_tree_hodge _ _

theorem hodge_mismatch (a b : ℝ) (k : ℕ) (t : ℝ) (v : FreyCechHeat.Data a b k) :
    mismatch (hodge a b k t v).1 (hodge a b k t v).2 =
      ThreePhaseCoefficientHeat.decay t • mismatch v.1 v.2 :=
  congrArg Prod.snd (ThreeCellHodgeGauge.reduced_hodge (ThreePhaseCoefficientHeat.decay t) v)

@[simp] theorem hodge_zero (a b : ℝ) (k : ℕ) (v : FreyCechHeat.Data a b k) : hodge a b k 0 v = v := by
  rw [hodge_agrees, ThreePhaseCoefficientHeat.decay_zero, ThreeCellHodgeGauge.hodgeRelax_one]

theorem hodge_add (a b : ℝ) (k : ℕ) (s t : ℝ) (v : FreyCechHeat.Data a b k) :
    hodge a b k (s + t) v = hodge a b k s (hodge a b k t v) := by
  simp only [hodge_agrees, ThreePhaseCoefficientHeat.decay_add, ThreeCellHodgeGauge.hodgeRelax_mul]

/-- Exact matching is preserved and reflected at finite heat time, in either gauge. -/
theorem hodge_matching_iff (a b : ℝ) (k : ℕ) (t : ℝ) (v : FreyCechHeat.Data a b k) :
    delta0 (hodge a b k t v).1 = (hodge a b k t v).2 ↔ delta0 v.1 = v.2 := by
  have hm : mismatch (hodge a b k t v).1 (hodge a b k t v).2 = 0 ↔ mismatch v.1 v.2 = 0 := by
    rw [hodge_mismatch, smul_eq_zero]
    simp only [ne_of_gt (ThreePhaseCoefficientHeat.decay_pos t), false_or]
  simpa only [mismatch, sub_eq_zero] using hm

/-- One exact old weighted function map acts on all six fields. -/
theorem port_hodge (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ) (t : ℝ)
    (v : FreyCechHeat.Data a b k) :
    FreyCechHeat.port a b l hl k (hodge a b k t v) =
      hodge a b k t (FreyCechHeat.port a b l hl k v) :=
  (ThreeCellHodgeGauge.hodgeRelax_map (stageEquiv a b l hl k).toLinearMap
    (ThreePhaseCoefficientHeat.decay t) v).symm

theorem port_gauge (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ) (t : ℝ)
    (v : FreyCechHeat.Data a b k) :
    gauge a b k t (FreyCechHeat.port a b l hl k v) =
      fun j => stageEquiv a b l hl k (gauge a b k t v j) :=
  ThreeCellHodgeGauge.comparisonGauge_map (stageEquiv a b l hl k).toLinearMap _ _

/-- Coordinate extraction is a linear map from the OLD basis of the SAME stage. -/
def coordinateMap (a b : ℝ) (k : ℕ) (i : Index k) : stage a b k →ₗ[ℝ] ℝ where
  toFun f := coordinates a b k f i
  map_add' f g := by simp [coordinates]
  map_smul' c f := by simp [coordinates]

def coefficientCell (a b : ℝ) (k : ℕ) (v : FreyCechHeat.Data a b k) (i : Index k) :
    ThreeCellHodgeGauge.Cell ℝ := ThreeCellHodgeGauge.mapCell (coordinateMap a b k i) v

theorem coefficient_hodge (a b : ℝ) (k : ℕ) (t : ℝ) (v : FreyCechHeat.Data a b k) (i : Index k) :
    coefficientCell a b k (hodge a b k t v) i =
      ThreeCellHodgeGauge.hodgeRelax (ThreePhaseCoefficientHeat.decay t) (coefficientCell a b k v i) :=
  (ThreeCellHodgeGauge.hodgeRelax_map (coordinateMap a b k i) _ v).symm

/-- Every original vertex coefficient obeys the computed finite Laplacian ODE. -/
theorem vertex_coordinate_ode (a b : ℝ) (k : ℕ) (v : FreyCechHeat.Data a b k)
    (i : Index k) (j : Fin 3) (t : ℝ) :
    HasDerivAt (fun s => (coefficientCell a b k (hodge a b k s v) i).1 j)
      (-(ThreeCellHodgeGauge.laplacian0 (coefficientCell a b k (hodge a b k t v) i).1 j)) t := by
  simp_rw [coefficient_hodge]
  exact ThreeCellHodgeGauge.hodge_vertex_derivative _ j t

/-- Every original edge coefficient obeys degree-one heat, not a frozen-tree ODE. -/
theorem edge_coordinate_ode (a b : ℝ) (k : ℕ) (v : FreyCechHeat.Data a b k)
    (i : Index k) (j : Fin 3) (t : ℝ) :
    HasDerivAt (fun s => (coefficientCell a b k (hodge a b k s v) i).2 j)
      (-(ThreeCellHodgeGauge.laplacian1 (coefficientCell a b k (hodge a b k t v) i).2 j)) t := by
  simp_rw [coefficient_hodge]
  exact ThreeCellHodgeGauge.hodge_edge_derivative _ j t

/-- Full six-field coefficient energy, NOT the old corrected defect seminorm. -/
def sixEnergy (a b : ℝ) (k : ℕ) (v : FreyCechHeat.Data a b k) : ℝ :=
  ∑ i, ThreeCellHodgeGauge.rawEnergy (coefficientCell a b k v i)

/-- This binds the metric to all SIX previous coefficient energies. -/
theorem sixEnergy_agrees (a b : ℝ) (k : ℕ) (v : FreyCechHeat.Data a b k) :
    sixEnergy a b k v =
      (∑ j, coefficientEnergy a b k (v.1 j)) + ∑ j, coefficientEnergy a b k (v.2 j) := by
  simp only [sixEnergy, ThreeCellHodgeGauge.rawEnergy, ThreeCellHodgeGauge.dot3,
    Fin.sum_univ_three, coefficientCell, ThreeCellHodgeGauge.mapCell, coordinateMap,
    coefficientEnergy, GRWTSK.Algebra.LinearAlgebra.WeightedPermutationEnergy.energy,
    Finset.sum_add_distrib, pow_two]

/-- Positive-time contraction belongs to THIS metric and THIS standard finite flow. -/
theorem hodge_sixEnergy_contraction (a b : ℝ) (k : ℕ) (t : ℝ) (ht : 0 ≤ t)
    (v : FreyCechHeat.Data a b k) : sixEnergy a b k (hodge a b k t v) ≤ sixEnergy a b k v := by
  have hd0 : 0 ≤ ThreePhaseCoefficientHeat.decay t := (ThreePhaseCoefficientHeat.decay_pos t).le
  have hd1 : ThreePhaseCoefficientHeat.decay t ≤ 1 := by
    unfold ThreePhaseCoefficientHeat.decay
    calc
      Real.exp (-3 * t) ≤ Real.exp 0 := Real.exp_le_exp.mpr (by linarith)
      _ = 1 := Real.exp_zero
  apply Finset.sum_le_sum
  intro i _
  rw [coefficient_hodge]
  exact ThreeCellHodgeGauge.hodge_contraction _ hd0 hd1 _

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechHodgeComparison
