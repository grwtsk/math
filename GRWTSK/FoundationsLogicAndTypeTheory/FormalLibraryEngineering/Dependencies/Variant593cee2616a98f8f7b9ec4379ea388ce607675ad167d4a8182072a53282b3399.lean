import FormalResearch.PositiveAtlas.FutureObservableProvenance
import Lean.Util.FoldConsts

open Lean

run_meta do
  let env ← getEnv
  let names : Array Name := #[
    ``FormalResearch.PositiveAtlas.FutureObservableProvenance.matrixWord,
    ``FormalResearch.PositiveAtlas.FutureObservableProvenance.matrixWord_cons,
    ``FormalResearch.PositiveAtlas.FutureObservableProvenance.matrixWord_fold,
    ``FormalResearch.PositiveAtlas.FutureObservableProvenance.matrixWord_execute,
    ``FormalResearch.PositiveAtlas.FutureObservableProvenance.provenance_extension,
    ``FormalResearch.PositiveAtlas.FutureObservableProvenance.quadratic_matrixWord]
  for name in names do
    let some info := env.find? name | throwError "missing declaration {name}"
    let body := match info.value? (allowOpaque := true) with
      | some value => value.getUsedConstants
      | none => #[]
    let record := Json.mkObj [("declaration", toJson name.toString),
      ("type_constants", toJson (info.type.getUsedConstants.map Name.toString)),
      ("proof_or_definition_constants", toJson (body.map Name.toString))]
    logInfo m!"{record.compress}"
