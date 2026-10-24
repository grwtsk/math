# Complete source: GRWTSK.Topology.GeneralTopology.293777a8de30e435f6cf291d75c81d220ffd22ea17a7916b38d6e10a30d4f2a5BoundaryRieszLap.Variant4bbc531f024f06cecdd3e33c40622fe18c50e10e99c2eda2db7bf84164aa23c6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3a0a281363178f28b858ec71c5df2134cd28a97` · SHA-256 `848e26bcb2efe74f260adfc2aa8bd239340a8564adf2ea6b3267a23f67268a3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.StructureAuditNameParts.Variant293777a8de30e435f6cf291d75c81d220ffd22ea17a7916b38d6e10a30d4f2a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"293777a8de30e435f6cf291d75c81d220ffd22ea17a7916b38d6e10a30d4f2a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.StructureAuditNameParts.Variant293777a8de30e435f6cf291d75c81d220ffd22ea17a7916b38d6e10a30d4f2a5","mathematical_subject":"Topology.GeneralTopology","original_sha256":"293777a8de30e435f6cf291d75c81d220ffd22ea17a7916b38d6e10a30d4f2a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/29/293777a8de30e435f6cf291d75c81d220ffd22ea17a7916b38d6e10a30d4f2a5--BoundaryRieszLaplaceEnvironment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.BoundaryRieszLaplace
import Lean.Elab.Print
import Lean.Util.CollectAxioms


namespace GRWTSK.Topology.GeneralTopology.StructureAuditNameParts.Variant293777a8de30e435f6cf291d75c81d220ffd22ea17a7916b38d6e10a30d4f2a5

open Lean Elab Command

private def structureAuditNameParts : Name → List Json
  | .anonymous => []
  | .str parent component => structureAuditNameParts parent ++
      [Json.mkObj [("kind", toJson "str"), ("value", toJson component)]]
  | .num parent component => structureAuditNameParts parent ++
      [Json.mkObj [("kind", toJson "num"), ("value", toJson component)]]

private def structureAuditKind : ConstantInfo → String
  | .axiomInfo _ => "axiom"
  | .defnInfo _ => "definition"
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .quotInfo _ => "quotient"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor"
  | .recInfo _ => "recursor"

private def structureAuditMaintainedModule (name : Name) : Bool :=
  let text := name.toString
  text == "FormalResearch.RiemannHypothesis.BoundaryRieszLaplace"

elab "audit_maintained_environment" : command => do
  let env := (← getEnv).setExporting false
  let modules := env.allImportedModuleNames
  let candidates := (env.constants.toList.filter fun entry =>
    match env.getModuleIdxFor? entry.1 with
    | some index => structureAuditMaintainedModule modules[index]!
    | none => false).toArray.qsort (fun a b => Name.quickLt a.1 b.1)
  let mut results : Array Json := #[]
  let mut forbidden : Array Json := #[]
  let mut directAxioms : Array Json := #[]
  for (name, info) in candidates do
    if let some moduleIndex := env.getModuleIdxFor? name then
      let owner := modules[moduleIndex]!
      if structureAuditMaintainedModule owner then
        let axioms ← collectAxioms name
        let bad := axioms.filter fun ax =>
          ax != ``propext && ax != ``Classical.choice && ax != ``Quot.sound
        let entry := Json.mkObj [
          ("name", toJson name.toString),
          ("name_parts", toJson (structureAuditNameParts name)),
          ("module", toJson owner.toString),
          ("kind", toJson (structureAuditKind info)),
          ("unsafe", toJson info.isUnsafe),
          ("axioms", toJson (axioms.map Name.toString)),
          ("forbidden_axioms", toJson (bad.map Name.toString))]
        results := results.push entry
        if !bad.isEmpty then forbidden := forbidden.push entry
        if let .axiomInfo _ := info then directAxioms := directAxioms.push entry
        -- Use the actual Lean.Name. Numeric private-name components are retained.
        let ident := mkIdent name
        elabCommand (← `(command| #print sig $ident:ident))
        elabCommand (← `(command| #print axioms $ident:ident))
  let report := Json.mkObj [
    ("schema", toJson "formal-research/whole-maintained-axiom-environment/v1"),
    ("root_import", toJson "FormalResearch.RiemannHypothesis.BoundaryRieszLaplace"),
    ("selection", toJson "owning imported module is exactly FormalResearch.RiemannHypothesis.BoundaryRieszLaplace"),
    ("allowed_axioms", toJson #["propext", "Classical.choice", "Quot.sound"]),
    ("maintained_imported_modules", toJson
      ((modules.filter structureAuditMaintainedModule).map Name.toString)),
    ("declarations", toJson results),
    ("count", toJson results.size),
    ("forbidden_count", toJson forbidden.size),
    ("direct_axiom_count", toJson directAxioms.size),
    ("forbidden", toJson forbidden),
    ("direct_axioms", toJson directAxioms)]
  liftIO <| IO.FS.writeFile "artifacts/structure-audit/boundary-riesz-laplace-environment.json"
    (report.pretty ++ "\n")
  logInfo m!"Whole maintained environment: {results.size} declarations; {forbidden.size} forbidden axiom sets; {directAxioms.size} direct axiom declarations."
  if !forbidden.isEmpty || !directAxioms.isEmpty then
    throwError "Whole maintained environment axiom audit rejected the candidate."

audit_maintained_environment
```
