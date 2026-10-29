import SourceJointMangoldtBaseline
import Lean.Util.FoldConsts

open Lean

run_meta do
  let env ← getEnv
  let labels : Array String := #["_private.SourceJointMangoldtBaseline.0.FormalResearch.RiemannHypothesis.SourceJointMangoldtBaseline.originalPrefix",
    "_private.SourceJointMangoldtBaseline.0.FormalResearch.RiemannHypothesis.SourceJointMangoldtBaseline.shiftedColumnTest",
    "_private.SourceJointMangoldtBaseline.0.FormalResearch.RiemannHypothesis.SourceJointMangoldtBaseline.shiftedColumnTest_integrable",
    "_private.SourceJointMangoldtBaseline.0.FormalResearch.RiemannHypothesis.SourceJointMangoldtBaseline.shiftedColumnTest_integral_zero",
    "_private.SourceJointMangoldtBaseline.0.FormalResearch.RiemannHypothesis.SourceJointMangoldtBaseline.shiftedColumnTest_zero_above"]
  for label in labels do
    let name := (label.splitOn ".").foldl (fun acc part =>
      match part.toNat? with
      | some n => Name.num acc n
      | none => Name.str acc part) Name.anonymous
    let some info := env.find? name | throwError "missing private dependency {name}"
    let body := match info.value? (allowOpaque := true) with
      | some value => value.getUsedConstants
      | none => #[]
    logInfo m!"{(Json.mkObj [("declaration", toJson name.toString), ("type_constants", toJson (info.type.getUsedConstants.map Name.toString)), ("proof_or_definition_constants", toJson (body.map Name.toString))]).compress}"
