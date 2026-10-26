/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Existing GRWTSK and Mathlib source retain their upstream licenses. -/
import GRWTSK.Analysis.Geometry.FiniteFourArcContact
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Exact coordinates and disjoint open interiors of four quadratic arcs

The original source in `FiniteFourArcContact` has four actual quadratic
Bezier segments. Here their full real polynomial evaluations are derived
from those source records; no sampled plot is used as a premise.

For 0 < t < 1 each arc lies strictly in a *different* open quadrant.
Consequently nonadjacent, and even adjacent, open arc interiors never
intersect. Endpoint identification and injectivity along a single arc
are separate results; this is not yet an abstract circle embedding.
-/

namespace GRWTSK.Analysis.Geometry.FiniteFourArcContact

open GRWTSK.Analysis.Geometry.QuadraticBezierContact

/-- The exact polynomial formula for every original quadratic arc.
Four cases are not independent fitted traces: they are the evaluations
of the selected `patch` constructor and its actual control points. -/
def arcFormula (i : Fin 4) (t : ℝ) : Plane :=
  if i = 0 then xy (1 - t ^ 2) (2 * t - t ^ 2)
  else if i = 1 then xy (t ^ 2 - 2 * t) (1 - t ^ 2)
  else if i = 2 then xy (t ^ 2 - 1) (t ^ 2 - 2 * t)
  else xy (2 * t - t ^ 2) (t ^ 2 - 1)

/-- Exact all-parameter correspondence with the original four patches,
including every endpoint. -/
theorem patch_eval_eq_arcFormula (i : Fin 4) (t : ℝ) :
    (patch i).eval t = arcFormula i t := by
  funext j
  fin_cases i <;> fin_cases j <;>
    norm_num [arcFormula, patch, Segment.eval,
      vertex, control, xy, next] <;> ring

/-- Strict positivity of both base-arc coordinates at interior times. -/
theorem base_interior_coordinates_pos {t : ℝ}
    (ht0 : 0 < t) (ht1 : t < 1) :
    0 < 1 - t ^ 2 ∧ 0 < 2 * t - t ^ 2 := by
  have hx : 0 < (1 - t) * (1 + t) :=
    mul_pos (sub_pos.mpr ht1) (by linarith)
  have hy : 0 < t * (2 - t) :=
    mul_pos ht0 (by linarith)
  constructor <;> nlinarith

/-- Each of the four open quadrants is declared with its actual sign
orientation, with neither coordinate allowed to vanish. -/
def InOpenQuadrant (i : Fin 4) (p : Plane) : Prop :=
  if i = 0 then 0 < p 0 ∧ 0 < p 1
  else if i = 1 then p 0 < 0 ∧ 0 < p 1
  else if i = 2 then p 0 < 0 ∧ p 1 < 0
  else 0 < p 0 ∧ p 1 < 0

/-- Every true arc-interior point has exactly its declared quadrant. -/
theorem patch_in_open_quadrant (i : Fin 4) {t : ℝ}
    (ht0 : 0 < t) (ht1 : t < 1) :
    InOpenQuadrant i ((patch i).eval t) := by
  obtain ⟨hx, hy⟩ := base_interior_coordinates_pos ht0 ht1
  rw [patch_eval_eq_arcFormula]
  fin_cases i <;>
    simp [InOpenQuadrant, arcFormula, xy] <;>
    constructor <;> nlinarith

/-- A point cannot belong to two different strict coordinate quadrants.
This is a complete four-by-four finite sign classification. -/
theorem open_quadrant_unique (p : Plane) (i j : Fin 4)
    (hi : InOpenQuadrant i p) (hj : InOpenQuadrant j p) :
    i = j := by
  fin_cases i <;> fin_cases j <;>
    simp_all [InOpenQuadrant] <;> linarith

/-- The *actual* Bezier interiors of any two distinct source arcs are
disjoint. Merely checking finitely many rendered points would not prove
this universal real-parameter statement. -/
theorem distinct_patch_interiors_disjoint
    (i j : Fin 4) (hij : i ≠ j)
    {s t : ℝ} (hs0 : 0 < s) (hs1 : s < 1)
    (ht0 : 0 < t) (ht1 : t < 1) :
    (patch i).eval s ≠ (patch j).eval t := by
  intro heq
  have hi : InOpenQuadrant i ((patch i).eval s) :=
    patch_in_open_quadrant i hs0 hs1
  have hj : InOpenQuadrant j ((patch i).eval s) := by
    rw [heq]
    exact patch_in_open_quadrant j ht0 ht1
  exact hij (open_quadrant_unique _ i j hi hj)

end GRWTSK.Analysis.Geometry.FiniteFourArcContact
