# Complete source: GRWTSK.Analysis.TestFunctions.Checks.SeparationAudit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25e5edda695dbb760bb000d45b380579a1cf3018` · SHA-256 `983419ccaaca5e15c307665205391d0c7c67962def161f8e7e8d1d04b91022b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.TestFunctions.ExponentialMomentVariation
import Lean

open Lean Elab Command

elab "audit_smooth_test_separation" : command => do
  let selectedModules := #[
    ("GRWTSK.Analysis.TestFunctions.Separation").toName,
    ("GRWTSK.Analysis.TestFunctions.EvenSeparation").toName,
    ("GRWTSK.Analysis.TestFunctions.ExponentialMomentVariation").toName
  ]
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, owner) =>
      if selectedModules.contains owner then
        data.constants.toList.map fun info => (owner, info.name, info)
      else []
  if declarations.isEmpty then throwError "empty RH declaration family"
  for (storageOwner, n, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {n}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {n}"
    | _ => pure ()
    let resolvedAxioms ← collectAxioms n
    let dependencies := info.type.getUsedConstants.toList ++
      ((info.value? true).map (fun body => body.getUsedConstants.toList)).getD []
    let mut axioms : Array Name := #[]
    for dependency in dependencies do
      for ax in (← collectAxioms dependency) do
        unless axioms.contains ax do axioms := axioms.push ax
    for ax in resolvedAxioms do
      unless axioms.contains ax do axioms := axioms.push ax
    let some resolvedInfo := env.find? n | throwError "stored constant is unresolved: {n}"
    let resolvedTypeEqual := info.type == resolvedInfo.type
    let resolvedBodyEqual := info.value? true == resolvedInfo.value? true
    unless resolvedTypeEqual && resolvedBodyEqual do
      throwError "stored declaration does not resolve exactly: {n}"
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {n}"
    let type ← liftTermElabM do Meta.ppExpr info.type
    let kind := match info with
      | .thmInfo _ => "theorem"
      | .defnInfo _ => "definition"
      | .opaqueInfo _ => "opaque"
      | .ctorInfo _ => "constructor"
      | .recInfo _ => "recursor"
      | .inductInfo _ => "inductive"
      | _ => "other"
    let owner := moduleNames[(env.getModuleIdxFor? n).get!]!
    let entry := Json.mkObj [
      ("module", toJson owner.toString),
      ("storage_module", toJson storageOwner.toString),
      ("resolved_type_equal", toJson resolvedTypeEqual),
      ("resolved_body_equal", toJson resolvedBodyEqual),
      ("stored_type_hash", toJson (toString info.type.hash)),
      ("stored_body_hash", toJson ((info.value? true).map (fun body => toString body.hash))),
      ("level_parameters", toJson (info.levelParams.map Name.toString)),
      ("name", toJson n.toString),
      ("kind", toJson kind),
      ("type", toJson type.pretty),
      ("axioms", toJson (axioms.toList.map Name.toString))]
    logInfo m!"SMOOTH_TEST_DECL::{entry.compress}"
  logInfo m!"SMOOTH_TEST_COUNT::{declarations.length}"

audit_smooth_test_separation
```
