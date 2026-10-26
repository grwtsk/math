/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Existing GRWTSK and Mathlib source retain their upstream licenses. -/
import GRWTSK.Analysis.Geometry.FiniteFourArcInteriorSeparation

set_option autoImplicit false
noncomputable section

/-!
# Injectivity within each actual quadratic arc and endpoint separation

The complete polynomial formulas of the four genuine source arcs provide
an injective parameter on nonnegative real times, hence on [0,1].
Together with disjoint open quadrants, this rules out interior
self-intersection and distinct-arc interior crossings.

Every arc interior is also disjoint from all four geometric vertices.
The only prescribed contacts occur at the finite patch endpoints.
A global circle quotient/homeomorphism theorem is still a separate gate.
-/

namespace GRWTSK.Analysis.Geometry.FiniteFourArcContact

/-- The coordinate which equals ±(1-t²), selected according to
the *actual* quarter-arc orientation. -/
def parameterCoordinate (i : Fin 4) : Fin 2 :=
  if i = 0 ∨ i = 2 then 0 else 1

/-- Equality of two points on a single true arc gives equal parameter
squares without any numerical inversion or sampled data. -/
theorem arc_parameter_squares_equal
    (i : Fin 4) {s t : ℝ}
    (heq : (patch i).eval s = (patch i).eval t) :
    s ^ 2 = t ^ 2 := by
  have h := congrFun heq (parameterCoordinate i)
  rw [patch_eval_eq_arcFormula, patch_eval_eq_arcFormula] at h
  fin_cases i <;>
    norm_num [parameterCoordinate, arcFormula, xy] at h ⊢ <;>
    nlinarith

/-- Each Bezier arc parameter is genuinely injective for nonnegative
time, in particular on the genuine closed interval [0,1]. -/
theorem patch_injective_nonnegative
    (i : Fin 4) {s t : ℝ}
    (hs : 0 ≤ s) (ht : 0 ≤ t)
    (heq : (patch i).eval s = (patch i).eval t) : s = t := by
  have hsq := arc_parameter_squares_equal i heq
  have hp : (s - t) * (s + t) = 0 := by nlinarith
  rcases mul_eq_zero.mp hp with hdiff | hsum
  · linarith
  · linarith

/-- Open-quadrant membership excludes either coordinate being zero. -/
theorem open_quadrant_nonzero (i : Fin 4) (p : Plane)
    (h : InOpenQuadrant i p) :
    p 0 ≠ 0 ∧ p 1 ≠ 0 := by
  fin_cases i <;>
    simp [InOpenQuadrant] at h <;>
    constructor <;> linarith

/-- Every one of the selected four actual vertices is on a coordinate
axis, unlike every point in an open arc interior. -/
theorem vertex_on_axis (i : Fin 4) :
    vertex i 0 = 0 ∨ vertex i 1 = 0 := by
  fin_cases i <;> norm_num [vertex, xy]

/-- No *genuine* open-arc point coincides with any of the four source
vertices, not merely the two endpoints of its own patch. -/
theorem patch_interior_ne_vertex
    (i j : Fin 4) {t : ℝ}
    (ht0 : 0 < t) (ht1 : t < 1) :
    (patch i).eval t ≠ vertex j := by
  intro heq
  have hi := patch_in_open_quadrant i ht0 ht1
  have hn := open_quadrant_nonzero i ((patch i).eval t) hi
  rw [heq] at hn
  rcases vertex_on_axis j with hz | hz
  · exact hn.1 hz
  · exact hn.2 hz

/-- The four original source vertices are pairwise distinct. -/
theorem vertex_injective : Function.Injective vertex := by
  intro i j heq
  have hx := congrFun heq (0 : Fin 2)
  have hy := congrFun heq (1 : Fin 2)
  fin_cases i <;> fin_cases j <;>
    norm_num [vertex, xy] at hx hy ⊢

/-- A complete finite source-level nonintersection packet: single-arc
injectivity, pairwise disjoint open arc images and no open arc/vertex
collisions. Endpoint seam identifications remain explicitly permitted. -/
theorem arc_nonintersection_certificate :
    (∀ i : Fin 4, ∀ s t : ℝ, 0 ≤ s → 0 ≤ t →
      (patch i).eval s = (patch i).eval t → s = t) ∧
    (∀ i j : Fin 4, i ≠ j → ∀ s t : ℝ,
      0 < s → s < 1 → 0 < t → t < 1 →
      (patch i).eval s ≠ (patch j).eval t) ∧
    (∀ i j : Fin 4, ∀ t : ℝ,
      0 < t → t < 1 → (patch i).eval t ≠ vertex j) := by
  refine ⟨?_, ?_, ?_⟩
  · intro i s t hs ht heq
    exact patch_injective_nonnegative i hs ht heq
  · intro i j hij s t hs0 hs1 ht0 ht1
    exact distinct_patch_interiors_disjoint i j hij hs0 hs1 ht0 ht1
  · intro i j t ht0 ht1
    exact patch_interior_ne_vertex i j ht0 ht1

end GRWTSK.Analysis.Geometry.FiniteFourArcContact
