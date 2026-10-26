/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib and existing GRWTSK imports retain upstream license/credit. -/
import GRWTSK.Analysis.Geometry.FiniteFourArcCohomology
import Mathlib

set_option autoImplicit false

/-!
# Graph cycle versus an attached two-cell: a precise hole test

The four actual quadratic contact edges form an oriented graph cycle.
For its one-cochains, total oriented circulation is a complete
obstruction to being a coboundary: a cochain is exact if and only if
its sum around the four edges is zero.

Adding an explicitly specified oriented two-cell changes the cocycle
condition to vanishing circulation. Every cocycle of *this one-face
filled complex* is then exact. This is a finite cochain computation,
not a theorem that a potential barrier removes a region or creates
a geometric hole; it asserts neither a global ambient homeomorphism
nor wild embedding, knot group or quantum state.
-/

namespace GRWTSK.Analysis.Geometry.FiniteFourArcContact

/-- Integrate a one-cochain along the first three oriented edges,
starting with zero at the first actual source vertex. -/
def pathPrimitive (a : FourCochain) : FourCochain :=
  fun i =>
    if i = 0 then 0
    else if i = 1 then a 0
    else if i = 2 then a 0 + a 1
    else a 0 + a 1 + a 2

/-- A zero circulation certificate gives a full explicit potential
for the *same four* geometric edge differences, including the closing
edge 3→0. No nonexistent return edge is introduced. -/
theorem edgeDifference_pathPrimitive_of_zero_flux
    (a : FourCochain) (h : cycleFlux a = 0) :
    edgeDifference (pathPrimitive a) = a := by
  have hsum : a 0 + a 1 + a 2 + a 3 = 0 := by
    simpa [cycleFlux, Fin.sum_univ_four] using h
  funext i
  fin_cases i <;>
    simp [edgeDifference, pathPrimitive, next] <;> linarith

/-- The exact finite four-cycle has one independent real circulation
coordinate: vanishing of that coordinate is equivalent to exactness.
This does not yet define a quotient-space cohomology group. -/
theorem exact_edgeDifference_iff_zero_flux (a : FourCochain) :
    (∃ f : FourCochain, edgeDifference f = a) ↔
      cycleFlux a = 0 := by
  constructor
  · rintro ⟨f, rfl⟩
    exact cycleFlux_edgeDifference_zero f
  · intro h
    exact ⟨pathPrimitive a, edgeDifference_pathPrimitive_of_zero_flux a h⟩

/-- The boundary evaluation of an explicitly *added* oriented face.
The unfilled graph has no face, so this is new cellular data. -/
def filledFaceCoboundary (a : FourCochain) : ℝ :=
  cycleFlux a

/-- Every degree-zero coboundary obeys the new face cocycle law. -/
theorem filledFaceCoboundary_edgeDifference (f : FourCochain) :
    filledFaceCoboundary (edgeDifference f) = 0 :=
  cycleFlux_edgeDifference_zero f

/-- In the explicitly one-face filled complex the degree-one
cocycle condition is equivalent to being a degree-zero coboundary.
Compare with the unfilled cycle, which has a nonexact unit one-cochain. -/
theorem filled_face_closed_iff_exact (a : FourCochain) :
    filledFaceCoboundary a = 0 ↔
      ∃ f : FourCochain, edgeDifference f = a := by
  exact (exact_edgeDifference_iff_zero_flux a).symm

/-- The nonzero unit circulation of the *unfilled* graph is not even
a cocycle after filling its face. The two cellular topologies must
not be conflated. -/
theorem unfilled_unit_not_filled_cocycle :
    filledFaceCoboundary (fun _ : Fin 4 => (1 : ℝ)) ≠ 0 := by
  rw [filledFaceCoboundary, cycleFlux_const_one]
  norm_num

/-- The model's finite topology distinction can be checked without
invoking an infinite-scale argument or a drawing. -/
theorem graph_vs_filled_face_certificate :
    (¬ ∃ f : FourCochain,
      edgeDifference f = (fun _ : Fin 4 => (1 : ℝ))) ∧
    (∀ a : FourCochain, filledFaceCoboundary a = 0 →
      ∃ f : FourCochain, edgeDifference f = a) := by
  exact ⟨constant_one_not_edgeDifference,
    fun a h => (filled_face_closed_iff_exact a).mp h⟩

end GRWTSK.Analysis.Geometry.FiniteFourArcContact
