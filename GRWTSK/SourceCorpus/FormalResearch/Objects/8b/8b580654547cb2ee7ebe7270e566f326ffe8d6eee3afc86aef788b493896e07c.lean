import Lean
import FormalResearch.PositiveAtlas.Grassmannian.PivotProjectiveCircle
open Lean Elab Command
set_option pp.all true
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
set_option pp.deepTerms true
set_option pp.maxSteps 100000000
run_cmd do
  let names : List Name := [
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.RealCircle,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.firstPivot,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.secondPivot,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.firstPivot_apply,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.secondPivot_apply,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.doubleAngle,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.doubleAngle_unit,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.doubleAngle_scale,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.fullRankFrame_denominator_pos,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.frameCircle,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.frameCircle_eq_of_rowSpace_eq,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.circleMap,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.circleMap_representedPlane,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.circleMap_normalizedPivotPlane,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.continuous_circleMap_normalizedPivotPlane,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.continuous_circleMap,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.firstPoint,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.secondPoint,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.circleMap_firstPoint,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.circleMap_secondPoint,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.normalized_frame_eq_first,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.normalized_frame_eq_second,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.firstPoint_secondPoint_cover,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.firstPoint_eq_secondPoint_inv,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.firstCircle_fst_ne_neg_one,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.firstCircle_coordinate,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.firstCircle_inverse,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.circleInverse,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.circleInverse_firstPoint,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.circleInverse_circleMap,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.circleMap_circleInverse,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.circleEquiv,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.continuous_firstPoint,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.continuous_secondPoint,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.bounded_chart_cover,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.compactSpace_intrinsicProjectiveLine,
    `FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine.circleHomeomorph ]
  for name in names do
    let axioms ← collectAxioms name
    let record := Json.mkObj [("name", toJson name.toString),
      ("axioms", toJson (axioms.map Name.toString))]
    liftIO <| IO.println ("ATLAS_CIRCLE_EXPORT=" ++ record.compress)
    elabCommand (← `(command| #check $(mkIdent name)))
