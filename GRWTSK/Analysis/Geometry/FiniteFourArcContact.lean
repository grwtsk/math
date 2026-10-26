/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Existing GRWTSK/Mathlib declarations retain upstream authorship and licenses. -/
import GRWTSK.Analysis.Geometry.QuadraticBezierContact
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Four genuine quadratic arcs with exact closed C1 contact

A single selected closed piecewise-quadratic source has four oriented arcs
with vertices (1,0), (0,1), (-1,0), (0,-1).  Each arc has an explicitly
selected control point and adjacent arcs have the *same parameterized
velocity* at their shared endpoint.  The fourth-to-first seam is checked
along with the three interior seams.

This is an actual finite closed geometric curve, not a cycle inserted into
the previously strict frequency-directed descent DAG. It does not by itself
supply a planar embedding/nonselfintersection theorem, geodesic equation,
surface quotient, Fredholm determinant, or zeta identification.
-/

namespace GRWTSK.Analysis.Geometry.FiniteFourArcContact

open GRWTSK.Analysis.Geometry.QuadraticBezierContact
open GRWTSK.Analysis.Geometry.QuadraticBezierContact.Segment

/-- Selected ambient real coordinate chart. -/
abbrev Plane := Point (Fin 2)

/-- Coordinate tuple in the existing quadratic Bezier point representation. -/
def xy (a b : ℝ) : Plane := fun j => if j = 0 then a else b

/-- The cyclic successor. The final seam is explicit, not inherited from
a directed acyclic graph. -/
def next (i : Fin 4) : Fin 4 :=
  if i = 0 then 1 else if i = 1 then 2 else if i = 2 then 3 else 0

theorem next_four (i : Fin 4) :
    next (next (next (next i))) = i := by
  fin_cases i <;> decide

theorem next_ne_self (i : Fin 4) : next i ≠ i := by
  fin_cases i <;> decide

/-- Four real vertices, all belonging to one selected closed source. -/
def vertex (i : Fin 4) : Plane :=
  if i = 0 then xy 1 0
  else if i = 1 then xy 0 1
  else if i = 2 then xy (-1) 0
  else xy 0 (-1)

/-- The actual intermediate Bezier control for each oriented quarter arc. -/
def control (i : Fin 4) : Plane :=
  if i = 0 then xy 1 1
  else if i = 1 then xy (-1) 1
  else if i = 2 then xy (-1) (-1)
  else xy 1 (-1)

/-- Arc i runs from vertex i to vertex (next i) via its selected control. -/
def patch (i : Fin 4) : Segment (Fin 2) where
  start := vertex i
  control := control i
  finish := vertex (next i)

/-- Literal endpoints coincide, including the final-to-first seam. -/
theorem endpoint_join (i : Fin 4) :
    (patch i).eval 1 = (patch (next i)).eval 0 := by
  rw [Segment.eval_one, Segment.eval_zero]
  rfl

/-- The selected four controls yield *equal parameterized first jets*
at every seam, not just parallel or unoriented tangent lines. -/
theorem velocity_join (i : Fin 4) :
    (patch i).velocity 1 = (patch (next i)).velocity 0 := by
  funext j
  fin_cases i <;> fin_cases j <;>
    norm_num [patch, Segment.velocity, next, vertex, control, xy]

/-- Every seam is an actual quadratic contact carrying its own shared
source point and first jet. The two tangent scales are both exactly one. -/
def contact (i : Fin 4) :
    ScaledHermiteContact (patch i) (patch (next i)) where
  common := (patch i).jet 1
  leftScale := 1
  rightScale := 1
  left_point := rfl
  right_point := (endpoint_join i).symm
  left_tangent := by
    simp [Segment.jet]
  right_tangent := by
    change (patch (next i)).velocity 0 =
      (1 : ℝ) • (patch i).velocity 1
    simpa using (velocity_join i).symm

theorem contact_positive (i : Fin 4) :
    (contact i).Positive := by
  norm_num [ScaledHermiteContact.Positive, contact]

/-- Four distinct vertex positions are used by this particular source.
Consequently its geometry is not a constant closed path. -/
theorem vertex_zero_ne_one : vertex 0 ≠ vertex 1 := by
  intro h
  have hx := congrFun h 0
  norm_num [vertex, xy] at hx

theorem patch_zero_nonconstant :
    (patch 0).start ≠ (patch 0).finish := by
  change vertex 0 ≠ vertex (next 0)
  simpa [next] using vertex_zero_ne_one

/-- The fourth seam closes the geometric path to the *first* starting
point. No arbitrary algebraic decoder is being used to close it. -/
theorem final_to_initial :
    (patch (3 : Fin 4)).eval 1 = (patch (0 : Fin 4)).eval 0 := by
  simpa [next] using endpoint_join (3 : Fin 4)

theorem final_to_initial_velocity :
    (patch (3 : Fin 4)).velocity 1 =
      (patch (0 : Fin 4)).velocity 0 := by
  simpa [next] using velocity_join (3 : Fin 4)

end GRWTSK.Analysis.Geometry.FiniteFourArcContact
