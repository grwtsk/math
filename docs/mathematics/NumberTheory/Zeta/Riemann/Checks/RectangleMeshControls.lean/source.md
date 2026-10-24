# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.RectangleMeshControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bcbe78df33edcfc72958eadfbe4c91667f63da51` · SHA-256 `8241c090b3158e373c84c9fad2b6fb850ce3df04404237a734dfb0eaad38f9ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.RationalRectangleCount
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.PoleContourCoverage

set_option autoImplicit false

/-!
# Adaptive mesh and complete sourced-control obligations

The small square uses the OLD actual F(1)=1 source, including a repeated corner.
Target-height tests construct geometry ONLY: no actual target-contour Enclosures
or accepted index one is supplied. All decisions/proofs remain unexecuted.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.RectangleMeshControls

open scoped unitInterval
open Set
open GRWTSK.Analysis.Complex
open GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
open RationalPoleContour CriticalStripHeightDescent

/-- Unequal cells and a zero-width corner cell are retained literally. -/
def marks : List ℚ := [0, 1/2, 1, 1, 3/2, 2, 5/2, 3, 7/2, 4]
def lower : Coordinates := (19/20, -1/20)
def upper : Coordinates := (21/20, 1/20)
def data : List EdgeData := List.replicate 9 PoleContourCoverage.poleEdge
def image : List Coordinates := List.replicate 10 one

theorem marks_checked : RationalRectangleMesh.check 9 marks = true := by decide

theorem small_box_evaluates :
    RationalRectangleCount.evaluateBox lower upper 9 marks data image = some 0 := by decide

theorem small_tube_checked : RationalPoleContourTube.check 9
    (RationalRectangleMesh.vertices lower upper marks) data image = true := by decide

/-- Reuse the actual maintained source enclosure, not a new truth annotation. -/
theorem source_enclosures : Enclosures 9 data := by
  intro i hi
  have hi' : i < 9 := Finset.mem_range.mp hi
  have h := PoleContourCoverage.square_enclosures 0 (by simp)
  simpa [data, edgeAt, List.getD_replicate, hi', PoleContourCoverage.squareData] using h

/-- This conclusion has NO independent geometric-boundary nonzero premise. -/
theorem small_boundary_nonzero :
    ∀ z ∈ (RationalRectangleMesh.rectangle lower upper (by decide) (by decide)).boundary,
      poleNormalizedZeta z ≠ 0 :=
  RationalRectangleCount.boundary_of_tube lower upper (by decide) (by decide)
    marks_checked small_tube_checked source_enclosures

/-- Missing even a zero-width cell's record cannot be silently accepted. -/
theorem records_and_final_edge_required :
    RationalRectangleCount.evaluateBox lower upper 9 marks (data.take 8) image = none ∧
    RationalRectangleCount.evaluateBox lower upper 9 marks (data ++ [PoleContourCoverage.poleEdge]) image = none ∧
    RationalRectangleCount.evaluateBox lower upper 9 marks data (image.take 9) = none := by decide

theorem mesh_length_and_zero_rejected :
    RationalRectangleMesh.check 0 [0] = false ∧
    RationalRectangleMesh.check 9 (marks.take 9) = false ∧
    RationalRectangleMesh.check 9 (marks ++ [4]) = false := by decide

theorem wrong_endpoint_and_reversal_rejected :
    RationalRectangleMesh.check 4 [0,1,2,3,0] = false ∧
    RationalRectangleMesh.check 4 [4,3,2,1,0] = false ∧
    RationalRectangleMesh.check 4 [0,1,2,3,7/2] = false := by decide

theorem double_traversal_and_backtracking_rejected :
    RationalRectangleMesh.check 8 [0,1,2,3,4,5,6,7,8] = false ∧
    RationalRectangleMesh.check 8 [0,1,2,3,4,1,2,3,4] = false ∧
    RationalRectangleMesh.check 6 [0,1,1/2,1,2,3,4] = false := by decide

/-- A chord cutting across a corner is not the corresponding perimeter arc. -/
theorem corner_skip_rejected :
    RationalRectangleMesh.check 5 [0,1/2,3/2,2,3,4] = false := by decide

theorem degenerate_and_changed_geometry_rejected :
    RationalRectangleCount.evaluateBox lower lower 9 marks data image = none ∧
    RationalRectangleCount.evaluateBox upper lower 9 marks data image = none ∧
    RationalRectangleCount.evaluate 15 9 marks data image = none := by decide

/-- Geometry at the real counting target, not a successful source trace. -/
theorem target_geometry :
    RationalRectangleMesh.check 9 marks = true ∧
    RationalRectangleMesh.point RationalRectangleCount.lower (RationalRectangleCount.upper 15) 2 =
      (5/4,61/4) ∧
    RationalRectangleMesh.point RationalRectangleCount.lower (RationalRectangleCount.upper 15) (3/4) = one := by decide

def unitBox : RectangleFactorIndex.Rectangle := ⟨-1,1,-1,1,by norm_num,by norm_num⟩

/-- Interpolating perimeter coordinates stays on the perimeter. Interpolating
opposite complex points instead crosses the zero of the synthetic identity. -/
theorem coordinate_homotopy_not_chord :
    RectanglePerimeterMesh.point unitBox (1 : ℝ) ≠ 0 ∧
    PolygonTube.blend (1/2) (RectanglePerimeterMesh.point unitBox 0)
      (RectanglePerimeterMesh.point unitBox 2) = 0 := by
  norm_num [unitBox, RectanglePerimeterMesh.point, RectanglePerimeterMesh.ramp,
    PolygonTube.blend, Complex.real_smul]

/-- THEOREM-SCOPE control: actual boundary coverage does not exclude interior zeros. -/
theorem synthetic_boundary_not_interior_exclusion :
    (0 : ℂ) ∈ unitBox.interior ∧
      ∀ u, RectanglePerimeterMesh.curve unitBox 9 (RationalRectangleMesh.marks marks) u ≠ 0 := by
  refine ⟨by norm_num [unitBox, RectangleFactorIndex.Rectangle.interior], ?_⟩
  intro u
  have hm : RectanglePerimeterMesh.curve unitBox 9 (RationalRectangleMesh.marks marks) u ∈
      unitBox.boundary := by
    rw [← RectanglePerimeterMesh.curve_range unitBox (RationalRectangleMesh.admissible marks_checked)]
    exact ⟨u,rfl⟩
  exact unitBox.boundary_ne_interior hm (by norm_num [unitBox, RectangleFactorIndex.Rectangle.interior])

end GRWTSK.RiemannHypothesis.Checks.RectangleMeshControls
```
