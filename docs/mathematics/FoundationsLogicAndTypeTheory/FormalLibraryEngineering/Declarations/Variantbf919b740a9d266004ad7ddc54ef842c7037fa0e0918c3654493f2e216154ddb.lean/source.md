# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Declarations.Variantbf919b740a9d266004ad7ddc54ef842c7037fa0e0918c3654493f2e216154ddb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0458c18693b0a9ba98b541dd5c6601c065a0eea6` · SHA-256 `4b3126d73db33725ace6d12d5dba158868fcfc67c97490cf7f8a4897fad60c21`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bound.Variant4dd959033c4e62e0750a4b586c6ac8e3afe88d069b7975caa855ab1a256f9464","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4dd959033c4e62e0750a4b586c6ac8e3afe88d069b7975caa855ab1a256f9464","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.Bound.Variant4dd959033c4e62e0750a4b586c6ac8e3afe88d069b7975caa855ab1a256f9464","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"4dd959033c4e62e0750a4b586c6ac8e3afe88d069b7975caa855ab1a256f9464","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/artifacts/type-theory/export-probe/Declarations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.Certificates.Bound
import Lean.Util.CollectAxioms


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bound.Variant4dd959033c4e62e0750a4b586c6ac8e3afe88d069b7975caa855ab1a256f9464

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
run_cmd do
  let env ← getEnv
  let selected : Array String := #["FormalResearch.MathematicalTooling.Certificates.Bound"]
  for mod in env.header.moduleNames do
    logInfo m!"TT_IMPORT {mod}"
  for (name, info) in env.constants do
    if let some idx := env.getModuleIdxFor? name then
      let mod := env.header.moduleNames[idx.toNat]!
      if selected.contains mod.toString && !name.isInternal then
        let axioms ← Lean.collectAxioms name
        if axioms.contains ``sorryAx then
          throwError "Rejected sorryAx dependency: {name}"
        for axiomName in axioms do
          if !#[``propext, ``Classical.choice, ``Quot.sound].contains axiomName then
            throwError "Unadmitted axiom {axiomName} in {name}"
        let kind := match info with
          | .thmInfo _ => "theorem"
          | .axiomInfo _ => "axiom"
          | .defnInfo _ => "definition"
          | .opaqueInfo _ => "opaque"
          | .inductInfo _ => "inductive"
          | .ctorInfo _ => "constructor"
          | .recInfo _ => "recursor"
          | .quotInfo _ => "quotient"
        let declarationType ← liftTermElabM <| PrettyPrinter.ppExpr info.type
        let record := Json.mkObj [
          ("name", toJson name.toString),
          ("module", toJson mod.toString),
          ("kind", toJson kind),
          ("universe_parameters", toJson (info.levelParams.map Name.toString)),
          ("type", toJson declarationType.pretty),
          ("axioms", toJson (axioms.map Name.toString))]
        logInfo m!"TT_DECL {record.compress}"
```
