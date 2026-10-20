/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.JetRectangleCount
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.JetPolePatchControls

set_option autoImplicit false

/-!
# Jet-radius contour integration controls

These finite decisions and compositions are source scripts, not executed Lean
certificates. The small sourced square is not the target rectangle. In particular
a passing new strict margin does not license old, larger image-endpoint disks.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.JetContourControls

open scoped unitInterval
open GRWTSK.Analysis.Complex GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure
open CriticalStripHeightDescent
open ConstructedSourceControls

/-- The generated source and coarse-jet fallback recover the old small square. -/
theorem small_tube_checked : JetPoleContour.check 9
    (RationalRectangleMesh.vertices RectangleMeshControls.lower RectangleMeshControls.upper
      RectangleMeshControls.marks) plans RectangleMeshControls.image = true := by decide

theorem small_box_computed :
    JetRectangleCount.evaluateBox RectangleMeshControls.lower RectangleMeshControls.upper
      9 RectangleMeshControls.marks plans RectangleMeshControls.image = some 0 := by decide

/-- Genuine whole-boundary conclusion with no free source-value or alignment premise. -/
theorem small_boundary_nonzero :
    ∀ z ∈ (RationalRectangleMesh.rectangle RectangleMeshControls.lower RectangleMeshControls.upper
      (by decide) (by decide)).boundary, poleNormalizedZeta z ≠ 0 :=
  JetRectangleCount.boundary_of_tube _ _ (by decide) (by decide)
    RectangleMeshControls.marks_checked small_tube_checked

theorem small_source_index_zero : JetPoleContour.sourceIndex small_tube_checked = 0 := by
  apply JetPoleContour.evaluate_sound small_tube_checked
  decide

/-- Even a repeated-mark cell requires its own plan; defaults cannot supply it. -/
theorem missing_extra_and_last_image :
    JetRectangleCount.evaluateBox RectangleMeshControls.lower RectangleMeshControls.upper
      9 RectangleMeshControls.marks (plans.take 8) RectangleMeshControls.image = none ∧
    JetRectangleCount.evaluateBox RectangleMeshControls.lower RectangleMeshControls.upper
      9 RectangleMeshControls.marks (plans ++ [polePlan]) RectangleMeshControls.image = none ∧
    JetRectangleCount.evaluateBox RectangleMeshControls.lower RectangleMeshControls.upper
      9 RectangleMeshControls.marks plans (RectangleMeshControls.image.take 9) = none := by decide

theorem empty_and_reversed_mesh :
    JetRectangleCount.evaluateBox RectangleMeshControls.lower RectangleMeshControls.upper
      0 [0] [] [one] = none ∧
    JetRectangleCount.evaluateBox RectangleMeshControls.lower RectangleMeshControls.upper
      9 RectangleMeshControls.marks.reverse plans RectangleMeshControls.image = none := by decide

theorem incompatible_image_and_geometry :
    JetRectangleCount.evaluateBox RectangleMeshControls.lower RectangleMeshControls.upper
      9 RectangleMeshControls.marks plans (List.replicate 10 (2,0)) = none ∧
    JetRectangleCount.evaluate 15 9 RectangleMeshControls.marks plans RectangleMeshControls.image = none ∧
    JetRectangleCount.evaluateBox RectangleMeshControls.lower RectangleMeshControls.lower
      9 RectangleMeshControls.marks plans RectangleMeshControls.image = none := by decide

/-- Correct generated source validity alone does not provide a positive tube margin. -/
theorem coarse_source_not_a_tube :
    JetRectangleCount.evaluateBox RectangleMeshControls.lower RectangleMeshControls.upper
      9 RectangleMeshControls.marks
      (List.replicate 9 { polePlan with parameters := coarseParameters })
      RectangleMeshControls.image = none := by decide

def pilotPlan : ConstructedRectangleCount.Plan := ⟨pilotCenter,1/400,1/8,pilotParameters⟩

def wrongPilotImage : Coordinates := add (JetPoleContour.value pilotPlan).mid (10,0)

/-- Mixing an old-radius endpoint with the new strict margin is rejected. The
point sits inside the OLD radius but outside the new SAME image disk. -/
theorem stale_radius_rejected :
    RationalJetPolePatch.check pilotCenter (1/400) (1/8) pilotParameters = true ∧
    inBall (sub wrongPilotImage (JetPoleContour.value pilotPlan).mid)
      (RationalPoleContourTube.imageRadius (ConstructedRectangleCount.record pilotPlan)) = true ∧
    inBall (sub wrongPilotImage (JetPoleContour.value pilotPlan).mid)
      (JetPoleContour.radius pilotPlan) = false := by decide

theorem stale_image_edge_rejected :
    ¬ JetPoleContour.EdgeValid pilotCenter pilotCenter wrongPilotImage wrongPilotImage pilotPlan := by
  decide

/-- A legitimate zero-width cell at the pilot retains its source and endpoint checks. -/
theorem pilot_constant_edge :
    JetPoleContour.EdgeValid pilotCenter pilotCenter
      (JetPoleContour.value pilotPlan).mid (JetPoleContour.value pilotPlan).mid pilotPlan := by decide

/-- Closedness of each image slice, not a fixed basepoint, is the inherited contract. -/
theorem small_homotopy_closed (lam : I) :
    JetPoleContour.freeHomotopy small_tube_checked (lam,0) =
      JetPoleContour.freeHomotopy small_tube_checked (lam,1) :=
  ((JetPoleContour.freeHomotopy small_tube_checked).prop lam).1

end GRWTSK.RiemannHypothesis.Checks.JetContourControls
