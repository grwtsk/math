/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

The standard unit-weight FINITE filled-cell Laplacians and the selected
rooted-tree relaxation differ on full cochains. Their exact difference is a
mean-zero coboundary, not equality or metric conjugacy. This reuses the
existing source-ordered delta0/delta1/tree/face formulas. No geometric cover,
Dolbeault operator, integral gauge, or Lean acceptance is asserted.
-/
import GRWTSK.Algebra.Homology.ThreeCellCech
import GRWTSK.Analysis.LinearAlgebra.ThreePhaseCoefficientHeat
import Mathlib.Tactic.Module

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.LinearAlgebra.ThreeCellHodgeGauge

open GRWTSK.Algebra.Homology.ThreeCellCech
open scoped BigOperators

abbrev Cell (V : Type*) := Triple V × Triple V

section Modules
variable {V W : Type*} [AddCommGroup V] [Module ℝ V]
  [AddCommGroup W] [Module ℝ W]

def average (z : Triple V) : V := (1 / 3 : ℝ) • (z 0 + z 1 + z 2)
def centered (z : Triple V) : Triple V := fun j => z j - average z

/-- Transpose of the OLD ordered boundary matrix, with order 01,12,20. -/
def delta0Transpose (a : Triple V) : Triple V := ![-a 0 + a 2, a 0 - a 1, a 1 - a 2]
def delta1Transpose (c : V) : Triple V := fun _ => c

def laplacian0 (z : Triple V) : Triple V := delta0Transpose (delta0 z)
def laplacian1 (a : Triple V) : Triple V :=
  delta0 (delta0Transpose a) + delta1Transpose (delta1 a)

theorem laplacian0_formula (z : Triple V) : laplacian0 z = (3 : ℝ) • centered z := by
  funext j
  fin_cases j <;> dsimp [laplacian0, delta0Transpose, delta0, centered, average] <;> module

theorem laplacian1_formula (a : Triple V) : laplacian1 a = (3 : ℝ) • a := by
  funext j
  fin_cases j <;> dsimp [laplacian1, delta0Transpose, delta0, delta1Transpose, delta1] <;> module

theorem laplacian2_formula (c : V) : delta1 (delta1Transpose c) = (3 : ℝ) • c := by
  dsimp [delta1, delta1Transpose]
  module

@[simp] theorem average_add (z w : Triple V) : average (z + w) = average z + average w := by
  dsimp [average]
  module

@[simp] theorem average_sub (z w : Triple V) : average (z - w) = average z - average w := by
  dsimp [average]
  module

@[simp] theorem average_centered (z : Triple V) : average (centered z) = 0 := by
  dsimp [average, centered]
  module

theorem delta0_sub (z w : Triple V) : delta0 (z - w) = delta0 z - delta0 w := by
  funext j
  fin_cases j <;> dsimp [delta0] <;> abel

/-- Scalar attenuation is distinguished from heat time; d=0 is only a limit. -/
def phaseRelax (d : ℝ) (z : Triple V) : Triple V :=
  fun j => average z + d • centered z j

/-- Standard finite Hodge relaxation on degrees zero AND one. -/
def hodgeRelax (d : ℝ) (v : Cell V) : Cell V := (phaseRelax d v.1, d • v.2)

/-- The existing tree-fixed recipe, at an arbitrary scalar attenuation. -/
def treeRelax (d : ℝ) (v : Cell V) : Cell V :=
  (tree v.2 + phaseRelax d (common v.1 v.2), replaceClosure v.2 (d • delta1 v.2))

/-- Gauge acts on vertices and edges together. This is not a geometric gauge theorem. -/
def gaugeShift (w : Triple V) (v : Cell V) : Cell V := (v.1 + w, v.2 + delta0 w)

def comparisonGauge (d : ℝ) (a : Triple V) : Triple V := (1 - d) • centered (tree a)

/-- The two full cochain evolutions differ by this EXPLICIT mean-zero coboundary. -/
theorem tree_hodge_gauge (d : ℝ) (v : Cell V) :
    treeRelax d v = gaugeShift (comparisonGauge d v.2) (hodgeRelax d v) := by
  apply Prod.ext <;> funext j <;> fin_cases j <;>
    dsimp [treeRelax, gaugeShift, comparisonGauge, hodgeRelax, phaseRelax,
      centered, average, common, tree, replaceClosure, delta1, delta0] <;> module

@[simp] theorem comparisonGauge_mean (d : ℝ) (a : Triple V) :
    average (comparisonGauge d a) = 0 := by
  dsimp [average, comparisonGauge, centered, tree]
  module

/-- Mismatch is invariant under any simultaneous additive coboundary shift. -/
theorem mismatch_gauge (w : Triple V) (v : Cell V) :
    mismatch (gaugeShift w v).1 (gaugeShift w v).2 = mismatch v.1 v.2 := by
  funext j
  fin_cases j <;> dsimp [mismatch, gaugeShift, delta0] <;> abel

/-- Keep the ORIGINAL vertex mean, not the tree-corrected mean. -/
def reduced (v : Cell V) : V × Triple V := (average v.1, mismatch v.1 v.2)

theorem reduced_gauge (w : Triple V) (hw : average w = 0) (v : Cell V) :
    reduced (gaugeShift w v) = reduced v := by
  apply Prod.ext
  · change average (v.1 + w) = average v.1
    rw [average_add, hw, add_zero]
  · exact mismatch_gauge w v

/-- These invariants detect exactly mean-zero coboundary equivalence, NOT equality. -/
theorem reduced_eq_iff_gauge (u v : Cell V) :
    reduced u = reduced v ↔ ∃ w : Triple V, average w = 0 ∧ u = gaugeShift w v := by
  constructor
  · intro h
    have hm : average u.1 = average v.1 := congrArg Prod.fst h
    have he : delta0 u.1 - u.2 = delta0 v.1 - v.2 := congrArg Prod.snd h
    refine ⟨u.1 - v.1, ?_, ?_⟩
    · rw [average_sub, hm, sub_self]
    · apply Prod.ext
      · change u.1 = v.1 + (u.1 - v.1)
        abel
      · change u.2 = v.2 + delta0 (u.1 - v.1)
        rw [delta0_sub]
        calc
          u.2 = delta0 u.1 - (delta0 u.1 - u.2) := by abel
          _ = delta0 u.1 - (delta0 v.1 - v.2) := by rw [he]
          _ = v.2 + (delta0 u.1 - delta0 v.1) := by abel
  · rintro ⟨w, hw, rfl⟩
    exact reduced_gauge w hw v

/-- No compatibility restriction is hidden in the reduced output space. -/
theorem reduced_surjective : Function.Surjective (reduced (V := V)) := by
  rintro ⟨m, e⟩
  refine ⟨(fun _ => m, -e), ?_⟩
  apply Prod.ext
  · change average (fun _ : Fin 3 => m) = m
    dsimp [average]
    module
  · funext j
    fin_cases j <;> simp [reduced, mismatch, delta0]

@[simp] theorem average_phaseRelax (d : ℝ) (z : Triple V) :
    average (phaseRelax d z) = average z := by
  dsimp [average, phaseRelax, centered]
  module

theorem reduced_hodge (d : ℝ) (v : Cell V) :
    reduced (hodgeRelax d v) = (average v.1, d • mismatch v.1 v.2) := by
  apply Prod.ext
  · exact average_phaseRelax d v.1
  · funext j
    fin_cases j <;> dsimp [reduced, hodgeRelax, phaseRelax, centered, mismatch, delta0] <;> module

/-- Agreement holds in the explicitly characterized gauge classes. -/
theorem reduced_tree_hodge (d : ℝ) (v : Cell V) :
    reduced (treeRelax d v) = reduced (hodgeRelax d v) := by
  rw [tree_hodge_gauge]
  exact reduced_gauge _ (comparisonGauge_mean d v.2) _

@[simp] theorem hodgeRelax_one (v : Cell V) : hodgeRelax 1 v = v := by
  apply Prod.ext <;> funext j <;> simp [hodgeRelax, phaseRelax, centered]

theorem hodgeRelax_mul (d e : ℝ) (v : Cell V) :
    hodgeRelax (d * e) v = hodgeRelax d (hodgeRelax e v) := by
  apply Prod.ext
  · funext j
    change average v.1 + (d * e) • (v.1 j - average v.1) =
      average (phaseRelax e v.1) + d • (phaseRelax e v.1 j - average (phaseRelax e v.1))
    rw [average_phaseRelax]
    dsimp [phaseRelax, centered]
    module
  · change (d * e) • v.2 = d • (e • v.2)
    exact mul_smul d e v.2

/-- Fixed points of standard relaxation at zero attenuation have zero edge data. -/
theorem hodge_fixed_iff (v : Cell V) :
    hodgeRelax 0 v = v ↔ (∀ j, v.1 j = average v.1) ∧ v.2 = 0 := by
  constructor
  · intro h
    constructor
    · intro j
      have hj := congrFun (congrArg Prod.fst h) j
      simpa [hodgeRelax, phaseRelax] using hj.symm
    · have he := congrArg Prod.snd h
      simpa [hodgeRelax] using he.symm
  · rintro ⟨hz, he⟩
    apply Prod.ext
    · funext j
      simpa [hodgeRelax, phaseRelax] using (hz j).symm
    · simp [hodgeRelax, he]

/-- The tree projection instead fixes every exactly matched finite cell. -/
theorem tree_fixes_matching (d : ℝ) (v : Cell V) (hv : delta0 v.1 = v.2) :
    treeRelax d v = v := by
  have hy : common v.1 v.2 = fun _ => v.1 0 := by
    rw [common, ← hv, vertex_homotopy]
    funext j
    dsimp
    abel
  have hc : delta1 v.2 = 0 := by rw [← hv, delta1_delta0]
  apply Prod.ext
  · change tree v.2 + phaseRelax d (common v.1 v.2) = v.1
    have hp : phaseRelax d (common v.1 v.2) = common v.1 v.2 := by
      rw [hy]
      funext j
      dsimp [phaseRelax, centered, average]
      module
    rw [hp, reconstruct]
  · change replaceClosure v.2 (d • delta1 v.2) = v.2
    simpa only [hc, smul_zero] using replaceClosure_restore v.2

/-- Any single real-linear function port transports the SAME comparison gauge. -/
theorem comparisonGauge_map (F : V →ₗ[ℝ] W) (d : ℝ) (a : Triple V) :
    comparisonGauge d (fun j => F (a j)) = fun j => F (comparisonGauge d a j) := by
  funext j
  fin_cases j <;> simp [comparisonGauge, centered, average, tree, map_add, map_sub, map_smul]

/-- A single linear map on both degrees respects standard finite relaxation. -/
def mapCell (F : V →ₗ[ℝ] W) (v : Cell V) : Cell W :=
  (fun j => F (v.1 j), fun j => F (v.2 j))

theorem hodgeRelax_map (F : V →ₗ[ℝ] W) (d : ℝ) (v : Cell V) :
    hodgeRelax d (mapCell F v) = mapCell F (hodgeRelax d v) := by
  apply Prod.ext <;> funext j <;>
    simp [hodgeRelax, phaseRelax, centered, average, mapCell, map_add, map_sub, map_smul]

end Modules

/-- Identify the scalar phase formula with the PREVIOUS coefficient heat. -/
theorem scalar_phase_agrees (d : ℝ) (z : Triple ℝ) :
    phaseRelax d z = ThreePhaseCoefficientHeat.relax d z := by
  funext j
  dsimp [phaseRelax, centered, average, ThreePhaseCoefficientHeat.relax,
    ThreePhaseCoefficientHeat.mean]
  ring

theorem scalar_laplacian0_agrees (z : Triple ℝ) :
    laplacian0 z = ThreePhaseCoefficientHeat.generator z := by
  rw [laplacian0_formula]
  funext j
  dsimp [centered, average, ThreePhaseCoefficientHeat.generator, ThreePhaseCoefficientHeat.mean]
  ring

/-- Degree-zero ODE, with the generator actually computed from delta0 and its transpose. -/
theorem hodge_vertex_derivative (v : Cell ℝ) (j : Fin 3) (t : ℝ) :
    HasDerivAt (fun s => (hodgeRelax (ThreePhaseCoefficientHeat.decay s) v).1 j)
      (-(laplacian0 (hodgeRelax (ThreePhaseCoefficientHeat.decay t) v).1 j)) t := by
  simp only [hodgeRelax, scalar_phase_agrees, scalar_laplacian0_agrees]
  exact ThreePhaseCoefficientHeat.flow_derivative v.1 j t

/-- ALL edge coordinates decay; this is precisely where tree-fixed heat differs. -/
theorem hodge_edge_derivative (v : Cell ℝ) (j : Fin 3) (t : ℝ) :
    HasDerivAt (fun s => (hodgeRelax (ThreePhaseCoefficientHeat.decay s) v).2 j)
      (-(laplacian1 (hodgeRelax (ThreePhaseCoefficientHeat.decay t) v).2 j)) t := by
  have h := (((hasDerivAt_id t).const_mul (-3 : ℝ)).exp).mul_const (v.2 j)
  rw [laplacian1_formula]
  convert h using 1 <;> dsimp [hodgeRelax, ThreePhaseCoefficientHeat.decay] <;> ring

/-- The metric is standard unit Euclidean weight, on real scalar cochains. -/
def dot3 (u v : Triple ℝ) : ℝ := ∑ j, u j * v j

theorem delta0_adjoint (z a : Triple ℝ) : dot3 (delta0 z) a = dot3 z (delta0Transpose a) := by
  simp only [dot3, Fin.sum_univ_three, delta0, delta0Transpose]
  dsimp
  ring

theorem delta1_adjoint (a : Triple ℝ) (c : ℝ) : delta1 a * c = dot3 a (delta1Transpose c) := by
  simp only [dot3, Fin.sum_univ_three, delta1, delta1Transpose]
  ring

def rawEnergy (v : Cell ℝ) : ℝ := dot3 v.1 v.1 + dot3 v.2 v.2

def positiveEnergy (v : Cell ℝ) : ℝ :=
  dot3 (centered v.1) (centered v.1) + dot3 v.2 v.2

theorem positiveEnergy_nonneg (v : Cell ℝ) : 0 ≤ positiveEnergy v := by
  apply add_nonneg <;> apply Finset.sum_nonneg <;> intro j _ <;> exact mul_self_nonneg _

/-- This is the full cochain norm, not the old corrected-frame defect seminorm. -/
theorem hodge_energy (d : ℝ) (v : Cell ℝ) :
    rawEnergy (hodgeRelax d v) = 3 * average v.1 ^ 2 + d ^ 2 * positiveEnergy v := by
  simp only [rawEnergy, positiveEnergy, dot3, Fin.sum_univ_three]
  dsimp [hodgeRelax, phaseRelax, centered, average]
  ring

theorem hodge_contraction (d : ℝ) (hd0 : 0 ≤ d) (hd1 : d ≤ 1) (v : Cell ℝ) :
    rawEnergy (hodgeRelax d v) ≤ rawEnergy v := by
  have hbase := hodge_energy 1 v
  rw [hodgeRelax_one] at hbase
  rw [hodge_energy, hbase]
  have hsq : d ^ 2 ≤ 1 := by nlinarith
  have hm := mul_le_mul_of_nonneg_right hsq (positiveEnergy_nonneg v)
  nlinarith

/-- Actual normalized data are not equal merely because their reduced data agree. -/
theorem matched_flows_differ :
    treeRelax (1 / 2 : ℝ) (![0, 1, 3], ![1, 2, -3]) = (![0, 1, 3], ![1, 2, -3]) ∧
    hodgeRelax (1 / 2 : ℝ) (![0, 1, 3], ![1, 2, -3]) ≠ (![0, 1, 3], ![1, 2, -3]) := by
  constructor
  · apply tree_fixes_matching
    funext j
    fin_cases j <;> norm_num [delta0]
  · intro h
    have he := congrArg (fun v : Cell ℝ => v.2 0) h
    norm_num [hodgeRelax] at he

/-- Tree-fixed relaxation need not contract the standard SIX-coordinate norm. -/
theorem tree_half_expansion :
    rawEnergy (0, ![1, 0, 0]) = 1 ∧
    rawEnergy (treeRelax (1 / 2 : ℝ) (0, ![1, 0, 0])) = 17 / 12 := by
  norm_num [rawEnergy, dot3, Fin.sum_univ_three, treeRelax, phaseRelax,
    centered, average, common, tree, replaceClosure, delta1]

end GRWTSK.Analysis.LinearAlgebra.ThreeCellHodgeGauge
