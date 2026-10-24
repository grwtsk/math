# Complete source: GRWTSK.Topology.GeneralTopology.Bca27b09f9e1360773dd5f76c2369a199327d257cd2d581a70e6e70c4b645028RieszResidueAudi.Variant03422c285194d075ac9837febaa55f01f9e0403b6c1cfd66a5c71a49cd3809f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `387ee87c2c0490f7558bca0c26207e0205bedc1b` · SHA-256 `80a6afe77d9c10addf8cf62617dad3277ccbf28d95138de1ef4d4141d1f95234`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.StructureAuditNameParts.Variantbca27b09f9e1360773dd5f76c2369a199327d257cd2d581a70e6e70c4b645028","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bca27b09f9e1360773dd5f76c2369a199327d257cd2d581a70e6e70c4b645028","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.StructureAuditNameParts.Variantbca27b09f9e1360773dd5f76c2369a199327d257cd2d581a70e6e70c4b645028","mathematical_subject":"Topology.GeneralTopology","original_sha256":"bca27b09f9e1360773dd5f76c2369a199327d257cd2d581a70e6e70c4b645028","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/bc/bca27b09f9e1360773dd5f76c2369a199327d257cd2d581a70e6e70c4b645028--RieszResidueAuditEnvironment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.RieszResidueAudit
import Lean.Elab.Print
import Lean.Util.CollectAxioms


namespace GRWTSK.Topology.GeneralTopology.StructureAuditNameParts.Variantbca27b09f9e1360773dd5f76c2369a199327d257cd2d581a70e6e70c4b645028

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
  text == "FormalResearch.RiemannHypothesis.RieszResidueAudit"

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
        logInfo m!"BOUNDARY_SIGNATURE_BEGIN {name}"
        elabCommand (← `(command| #print sig $ident:ident))
        logInfo m!"BOUNDARY_SIGNATURE_END {name}"
        elabCommand (← `(command| #print axioms $ident:ident))
  let report := Json.mkObj [
    ("schema", toJson "formal-research/whole-maintained-axiom-environment/v1"),
    ("root_import", toJson "FormalResearch.RiemannHypothesis.RieszResidueAudit"),
    ("selection", toJson "owning imported module is exactly FormalResearch.RiemannHypothesis.RieszResidueAudit"),
    ("allowed_axioms", toJson #["propext", "Classical.choice", "Quot.sound"]),
    ("maintained_imported_modules", toJson
      ((modules.filter structureAuditMaintainedModule).map Name.toString)),
    ("declarations", toJson results),
    ("count", toJson results.size),
    ("forbidden_count", toJson forbidden.size),
    ("direct_axiom_count", toJson directAxioms.size),
    ("forbidden", toJson forbidden),
    ("direct_axioms", toJson directAxioms)]
  liftIO <| IO.FS.writeFile "artifacts/structure-audit/riesz-residue-audit-environment.json"
    (report.pretty ++ "\n")
  logInfo m!"Whole maintained environment: {results.size} declarations; {forbidden.size} forbidden axiom sets; {directAxioms.size} direct axiom declarations."
  if !forbidden.isEmpty || !directAxioms.isEmpty then
    throwError "Whole maintained environment axiom audit rejected the candidate."

audit_maintained_environment
```
