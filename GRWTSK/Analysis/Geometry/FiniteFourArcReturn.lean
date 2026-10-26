/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Existing GRWTSK/Mathlib declarations retain upstream authorship and licenses. -/
import GRWTSK.Analysis.Geometry.FiniteFourArcContact
import GRWTSK.Algebra.LinearAlgebra.FiniteBoundaryReturnTrace
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Geometrically sourced quarter-turn, descent and independent return

The four exact quadratic arcs are rotations of one selected seed arc.
The first three rotations form an explicitly oriented three-step descent;
the fourth, separately provided quarter-turn closes the geometric path.

The boundary-return linear map is NOT the identity: it maps the last
vertex back to the first. The complete four-phase monodromy is the
identity, which is a proved result, not an assumed null-loop axiom.

The finite contact circle is geometric, not a zeta-divisor, a closed
hyperbolic geodesic, a Selberg trace identity, or a compactification.
-/

namespace GRWTSK.Analysis.Geometry.FiniteFourArcContact

open GRWTSK.Analysis.Geometry.QuadraticBezierContact
open GRWTSK.Algebra.LinearAlgebra.FiniteBoundaryReturn

/-- Exact counterclockwise quarter-turn on the chosen real plane. -/
def quarterPoint (x : Plane) : Plane :=
  fun j => if j = 0 then -x 1 else x 0

/-- Rotate an entire quadratic source, including its control point. -/
def quarterSegment (c : Segment (Fin 2)) : Segment (Fin 2) where
  start := quarterPoint c.start
  control := quarterPoint c.control
  finish := quarterPoint c.finish

theorem vertex_next (i : Fin 4) :
    vertex (next i) = quarterPoint (vertex i) := by
  funext j
  fin_cases i <;> fin_cases j <;>
    norm_num [vertex, next, xy, quarterPoint]

theorem control_next (i : Fin 4) :
    control (next i) = quarterPoint (control i) := by
  funext j
  fin_cases i <;> fin_cases j <;>
    norm_num [control, next, xy, quarterPoint]

/-- Each geometric arc is the quarter-turn of the preceding source arc.
In particular the seam 3→0 is an actual source-derived return. -/
theorem patch_next_quarter (i : Fin 4) :
    patch (next i) = quarterSegment (patch i) := by
  apply Segment.ext
  · exact vertex_next i
  · exact control_next i
  · exact vertex_next (next i)

/-- The prescribed quarter-turn commutes with the *actual quadratic
evaluation*, not only with the four endpoint values. -/
theorem quarterSegment_eval (c : Segment (Fin 2)) (t : ℝ) :
    (quarterSegment c).eval t = quarterPoint (c.eval t) := by
  funext j
  fin_cases j <;>
    simp [quarterSegment, quarterPoint, Segment.eval] <;> ring

theorem quarterSegment_velocity (c : Segment (Fin 2)) (t : ℝ) :
    (quarterSegment c).velocity t = quarterPoint (c.velocity t) := by
  funext j
  fin_cases j <;>
    simp [quarterSegment, quarterPoint, Segment.velocity] <;> ring

theorem patch_next_eval (i : Fin 4) (t : ℝ) :
    (patch (next i)).eval t = quarterPoint ((patch i).eval t) := by
  rw [patch_next_quarter]
  exact quarterSegment_eval (patch i) t

theorem patch_next_velocity (i : Fin 4) (t : ℝ) :
    (patch (next i)).velocity t = quarterPoint ((patch i).velocity t) := by
  rw [patch_next_quarter]
  exact quarterSegment_velocity (patch i) t

/-- The mathematical quarter-turn realized as an actual linear map. -/
def quarterTurn : Plane →ₗ[ℝ] Plane where
  toFun := quarterPoint
  map_add' x y := by
    funext j
    fin_cases j <;>
      simp [quarterPoint, Pi.add_apply]
  map_smul' a x := by
    funext j
    fin_cases j <;>
      simp [quarterPoint, Pi.smul_apply, smul_eq_mul] <;> ring

theorem quarterTurn_vertex (i : Fin 4) :
    quarterTurn (vertex i) = vertex (next i) :=
  (vertex_next i).symm

/-- Four genuine quarter rotations return each coordinate to itself. -/
theorem quarterTurn_four :
    quarterTurn.comp (quarterTurn.comp (quarterTurn.comp quarterTurn)) =
      (LinearMap.id : Plane →ₗ[ℝ] Plane) := by
  ext x j
  fin_cases j <;>
    simp [quarterTurn, quarterPoint, LinearMap.comp_apply]

/-- A single quarter-turn is nontrivial even though four turns close. -/
theorem quarterTurn_ne_id :
    quarterTurn ≠ (LinearMap.id : Plane →ₗ[ℝ] Plane) := by
  intro h
  have hh := congrArg
    (fun f : Plane →ₗ[ℝ] Plane => f (vertex 0) 0) h
  norm_num [quarterTurn, quarterPoint, vertex, xy] at hh

/-- Interior descent along the first three contact phases. -/
def threePhaseDescent : Plane →ₗ[ℝ] Plane :=
  quarterTurn.comp (quarterTurn.comp quarterTurn)

/-- This system has an *independent, actual, nonidentity* geometric
boundary return rather than a manufactured inverse evaluation decoder. -/
def geometricSystem : System Plane Plane where
  descent := threePhaseDescent
  boundaryReturn := quarterTurn
  inputOperator := 0
  outputOperator := 0

theorem geometricSystem_return_operator :
    geometricSystem.returnOperator = LinearMap.id := by
  change
    quarterTurn.comp (quarterTurn.comp (quarterTurn.comp quarterTurn)) =
      (LinearMap.id : Plane →ₗ[ℝ] Plane)
  exact quarterTurn_four

theorem geometricSystem_boundaryReturn_ne_id :
    geometricSystem.boundaryReturn ≠ (LinearMap.id : Plane →ₗ[ℝ] Plane) :=
  quarterTurn_ne_id

/-- The three actual geometric phases send the initial vertex to the
last arc's start. -/
theorem threePhaseDescent_vertex :
    threePhaseDescent (vertex 0) = vertex 3 := by
  change quarterTurn (quarterTurn (quarterTurn (vertex 0))) = vertex 3
  rw [quarterTurn_vertex 0]
  norm_num [next]
  rw [quarterTurn_vertex 1]
  norm_num [next]
  rw [quarterTurn_vertex 2]
  norm_num [next]

/-- The specified closing edge maps the final source vertex to the
original source vertex; it is not an edge of the three-step DAG. -/
theorem geometric_boundary_closes :
    geometricSystem.boundaryReturn (vertex 3) = vertex 0 := by
  change quarterTurn (vertex 3) = vertex 0
  simpa [next] using quarterTurn_vertex 3

/-- The return in the existing finite matrix interface is the complex
coordinate matrix of this exact source-derived geometric system. -/
theorem geometricSystem_complex_return :
    geometricSystem.complexReturnOperator =
      (1 : Matrix (Fin 2) (Fin 2) ℂ) := by
  rw [System.complexReturnOperator_eq_source,
    geometricSystem_return_operator]
  simp

end GRWTSK.Analysis.Geometry.FiniteFourArcContact
