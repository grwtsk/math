# Complete source: GRWTSK.Topology.GeneralTopology.A39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7RieszZeroSummabi.Variant608bf58adef20f9f69678d5149006837b9015cf6eb69c15a279211b3fdff0fe4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67cd9228cc940c432cfa22621c0c9c5c638fc86d` · SHA-256 `60a592706f602d4f722f6388d86901e2e8c54bd31e7d53186f13669fa01dc4ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.StructureAuditNameParts.Varianta39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.StructureAuditNameParts.Varianta39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7","mathematical_subject":"Topology.GeneralTopology","original_sha256":"a39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/a3/a39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7--RieszZeroSummabilityEnvironment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.RieszZeroSummability
import Lean.Elab.Print
import Lean.Util.CollectAxioms


namespace GRWTSK.Topology.GeneralTopology.StructureAuditNameParts.Varianta39c0c121c69eb5c7df2682aa8364d3868139c088c322e62de38a0107955a9b7

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
  text == "FormalResearch.RiemannHypothesis.RieszZeroSummability"

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
        logInfo m!"RIESZ_ZERO_SIGNATURE_BEGIN {name}"
        elabCommand (← `(command| #print sig $ident:ident))
        logInfo m!"RIESZ_ZERO_SIGNATURE_END {name}"
        elabCommand (← `(command| #print axioms $ident:ident))
  let report := Json.mkObj [
    ("schema", toJson "formal-research/whole-maintained-axiom-environment/v1"),
    ("root_import", toJson "FormalResearch.RiemannHypothesis.RieszZeroSummability"),
    ("selection", toJson "owning imported module is exactly FormalResearch.RiemannHypothesis.RieszZeroSummability"),
    ("allowed_axioms", toJson #["propext", "Classical.choice", "Quot.sound"]),
    ("maintained_imported_modules", toJson
      ((modules.filter structureAuditMaintainedModule).map Name.toString)),
    ("declarations", toJson results),
    ("count", toJson results.size),
    ("forbidden_count", toJson forbidden.size),
    ("direct_axiom_count", toJson directAxioms.size),
    ("forbidden", toJson forbidden),
    ("direct_axioms", toJson directAxioms)]
  liftIO <| IO.FS.writeFile "artifacts/structure-audit/riesz-zero-summability-environment.json"
    (report.pretty ++ "\n")
  logInfo m!"Whole maintained environment: {results.size} declarations; {forbidden.size} forbidden axiom sets; {directAxioms.size} direct axiom declarations."
  if !forbidden.isEmpty || !directAxioms.isEmpty then
    throwError "Whole maintained environment axiom audit rejected the candidate."

audit_maintained_environment
```
