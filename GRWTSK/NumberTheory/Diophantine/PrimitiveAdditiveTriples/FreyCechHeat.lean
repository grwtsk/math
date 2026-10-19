/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Adapter from normalized source-ordered Cech sections and transitions to the
PREVIOUS common-frame coefficient heat on W_k. The chosen tree is retained;
closure changes the 20 edge. This is not ordinary degree-one Hodge heat on
all three edge coordinates, and it is not geometric sheaf gluing. Complex
oscillation/realification and an intrinsic Hodge comparison remain separate.
Unelaborated source proof scripts; old modules and metrics are unchanged.
-/
import GRWTSK.Algebra.Homology.ThreeCellCech
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCoefficientHeat

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechHeat

open FreyWeightedSections FreyWeightedBasis FreyWeightedEnergy
open GRWTSK.Algebra.Homology.ThreeCellCech
open GRWTSK.Analysis.LinearAlgebra
attribute [local instance] FreyWeightedSections.coefficientAlgebra

/-- Normalized vertex sections and ordered edges 01,12,20 in the OLD real W_k. -/
abbrev Data (a b : ℝ) (k : ℕ) :=
  Triple (stage a b k) × Triple (stage a b k)

/-- Evolve extracted common-frame sections, then reinsert the same tree.
Only the third edge changes to carry the decaying closure. -/
def evolve (a b : ℝ) (k : ℕ) (t : ℝ) (v : Data a b k) : Data a b k :=
  (tree v.2 + FreyCoefficientHeat.heat a b k t (common v.1 v.2),
    replaceClosure v.2 (FreyCoefficientHeat.closureHeat a b k t (delta1 v.2)))

@[simp] theorem evolve_tree (a b : ℝ) (k : ℕ) (t : ℝ) (v : Data a b k) :
    tree (evolve a b k t v).2 = tree v.2 := tree_replaceClosure _ _

@[simp] theorem evolve_common (a b : ℝ) (k : ℕ) (t : ℝ) (v : Data a b k) :
    common (evolve a b k t v).1 (evolve a b k t v).2 =
      FreyCoefficientHeat.heat a b k t (common v.1 v.2) := by
  change (tree v.2 + FreyCoefficientHeat.heat a b k t (common v.1 v.2)) -
    tree (replaceClosure v.2 _) = _
  rw [tree_replaceClosure]
  abel

@[simp] theorem evolve_closure (a b : ℝ) (k : ℕ) (t : ℝ) (v : Data a b k) :
    delta1 (evolve a b k t v).2 = FreyCoefficientHeat.closureHeat a b k t (delta1 v.2) :=
  closure_replaceClosure _ _

@[simp] theorem evolve_zero (a b : ℝ) (k : ℕ) (v : Data a b k) : evolve a b k 0 v = v := by
  apply Prod.ext
  · change tree v.2 + FreyCoefficientHeat.heat a b k 0 (common v.1 v.2) = v.1
    rw [FreyCoefficientHeat.heat_zero, reconstruct]
  · change replaceClosure v.2 (FreyCoefficientHeat.closureHeat a b k 0 (delta1 v.2)) = v.2
    rw [FreyCoefficientHeat.closureHeat_zero, replaceClosure_restore]

/-- The full normalized data, not only extracted residuals, obey the semigroup law. -/
theorem evolve_add (a b : ℝ) (k : ℕ) (s t : ℝ) (v : Data a b k) :
    evolve a b k (s + t) v = evolve a b k s (evolve a b k t v) := by
  apply Prod.ext
  · change tree v.2 + FreyCoefficientHeat.heat a b k (s + t) (common v.1 v.2) =
      tree (evolve a b k t v).2 + FreyCoefficientHeat.heat a b k s
        (common (evolve a b k t v).1 (evolve a b k t v).2)
    rw [evolve_tree, evolve_common, FreyCoefficientHeat.heat_add]
  · change replaceClosure v.2 (FreyCoefficientHeat.closureHeat a b k (s + t) (delta1 v.2)) =
      replaceClosure (replaceClosure v.2 (FreyCoefficientHeat.closureHeat a b k t (delta1 v.2)))
        (FreyCoefficientHeat.closureHeat a b k s (delta1 (evolve a b k t v).2))
    rw [evolve_closure, replaceClosure_replace, FreyCoefficientHeat.closureHeat_add]

/-- Taking boundary differences removes the preserved phase mean. -/
theorem heat_delta0 (a b : ℝ) (k : ℕ) (t : ℝ) (z : Triple (stage a b k)) :
    delta0 (FreyCoefficientHeat.heat a b k t z) =
      ThreePhaseCoefficientHeat.decay t • delta0 z := by
  funext j
  fin_cases j <;> simp [delta0, FreyCoefficientHeat.heat, smul_sub] <;> abel

/-- Exact decay of the ACTUAL Cech mismatch. Keeping the old 20 edge would fail. -/
theorem mismatch_evolve (a b : ℝ) (k : ℕ) (t : ℝ) (v : Data a b k) :
    mismatch (evolve a b k t v).1 (evolve a b k t v).2 =
      ThreePhaseCoefficientHeat.decay t • mismatch v.1 v.2 := by
  rw [mismatch_decomposition, evolve_common, evolve_closure, heat_delta0]
  change _ - face (ThreePhaseCoefficientHeat.decay t • delta1 v.2) = _
  rw [face_smul, ← smul_sub, ← mismatch_decomposition]

/-- Exact matching cannot appear for the first time at a finite real heat time. -/
theorem matching_evolve_iff (a b : ℝ) (k : ℕ) (t : ℝ) (v : Data a b k) :
    delta0 (evolve a b k t v).1 = (evolve a b k t v).2 ↔ delta0 v.1 = v.2 := by
  have hm : mismatch (evolve a b k t v).1 (evolve a b k t v).2 = 0 ↔
      mismatch v.1 v.2 = 0 := by
    rw [mismatch_evolve, smul_eq_zero]
    simp [ThreePhaseCoefficientHeat.decay, ne_of_gt (Real.exp_pos (-3 * t))]
  simpa only [mismatch, sub_eq_zero] using hm

/-- The old energy is evaluated on corrected sections and the ACTUAL edge closure. -/
def defect (a b : ℝ) (k : ℕ) (lam : ℝ) (v : Data a b k) : ℝ :=
  FreyCoefficientHeat.defectEnergy a b k lam (common v.1 v.2) (delta1 v.2)

theorem defect_evolve (a b : ℝ) (k : ℕ) (lam t : ℝ) (v : Data a b k) :
    defect a b k lam (evolve a b k t v) = Real.exp (-6 * t) * defect a b k lam v := by
  unfold defect
  rw [evolve_common, evolve_closure, FreyCoefficientHeat.defect_heat]

private theorem mean_of_constant (a b : ℝ) (k : ℕ) (z : Triple (stage a b k))
    (hz : ∀ j, z j = z 0) : FreyCoefficientHeat.meanStage a b k z = z 0 := by
  unfold FreyCoefficientHeat.meanStage
  rw [hz 1, hz 2]
  simp only [smul_add, ← add_smul]
  norm_num

/-- The selected positive energy vanishes exactly on the finite Cech matching fiber. -/
theorem defect_zero_iff_matching (a b : ℝ) (k : ℕ) (lam : ℝ) (hlam : 0 < lam)
    (v : Data a b k) : defect a b k lam v = 0 ↔ delta0 v.1 = v.2 := by
  rw [defect, FreyCoefficientHeat.defect_zero_iff a b k lam hlam, matching_iff]
  constructor
  · rintro ⟨hz, hc⟩
    exact ⟨fun j => (hz j).trans (hz 0).symm, hc⟩
  · rintro ⟨hz, hc⟩
    refine ⟨?_, hc⟩
    intro j
    exact (hz j).trans (mean_of_constant a b k _ hz).symm

/-- Existence in the dependent fiber is not a geometric global-sheaf assertion. -/
theorem glue_inhabited_after_iff (a b : ℝ) (k : ℕ) (t : ℝ) (v : Data a b k) :
    Nonempty (GlueFiber (evolve a b k t v).1 (evolve a b k t v).2) ↔
      Nonempty (GlueFiber v.1 v.2) := by
  rw [glue_inhabited_iff, glue_inhabited_iff, matching_evolve_iff]

/-- Apply exactly the old weighted stage map to BOTH normalized sections and transitions. -/
def port (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ) (v : Data a b k) : Data a b k :=
  (fun j => stageEquiv a b l hl k (v.1 j), fun j => stageEquiv a b l hl k (v.2 j))

/-- The same map commutes with tree extraction and reconstruction, not just residual vectors. -/
theorem port_evolve (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ) (t : ℝ)
    (v : Data a b k) : port a b l hl k (evolve a b k t v) =
      evolve a b k t (port a b l hl k v) := by
  let F : stage a b k →+ stage a b k := (stageEquiv a b l hl k).toLinearMap.toAddMonoidHom
  apply Prod.ext
  · change (fun j => F ((tree v.2 + FreyCoefficientHeat.heat a b k t (common v.1 v.2)) j)) =
      tree (fun j => F (v.2 j)) + FreyCoefficientHeat.heat a b k t
        (common (fun j => F (v.1 j)) (fun j => F (v.2 j)))
    rw [map_tree, map_common]
    have hh := FreyCoefficientHeat.heat_lift a b l hl k t (common v.1 v.2)
    funext j
    have hj := congrFun hh j
    change F (tree v.2 j + _) = F (tree v.2 j) + _
    rw [map_add]
    exact congrArg (fun u => F (tree v.2 j) + u) hj
  · change (fun j => F (replaceClosure v.2 (FreyCoefficientHeat.closureHeat a b k t (delta1 v.2)) j)) =
      replaceClosure (fun j => F (v.2 j))
        (FreyCoefficientHeat.closureHeat a b k t (delta1 (fun j => F (v.2 j))))
    rw [map_closure, ← FreyCoefficientHeat.closureHeat_lift a b l hl k t (delta1 v.2)]
    exact (map_replaceClosure F _ _).symm

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechHeat
