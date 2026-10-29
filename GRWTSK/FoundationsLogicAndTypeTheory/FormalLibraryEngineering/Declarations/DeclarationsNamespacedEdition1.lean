-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bound.Variant28f611eff2bd16cfcde0ccf4d0e8aefe741d56c9588efb948c1ecbde488e2a99","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"28f611eff2bd16cfcde0ccf4d0e8aefe741d56c9588efb948c1ecbde488e2a99","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.Bound.Variant28f611eff2bd16cfcde0ccf4d0e8aefe741d56c9588efb948c1ecbde488e2a99","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"28f611eff2bd16cfcde0ccf4d0e8aefe741d56c9588efb948c1ecbde488e2a99","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/artifacts/type-theory/export-input-probe/Declarations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.Certificates.Bound
import Lean.Util.CollectAxioms


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bound.Variant28f611eff2bd16cfcde0ccf4d0e8aefe741d56c9588efb948c1ecbde488e2a99

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
run_cmd do
  let env ← getEnv
  let selected : Array String := #["FormalResearch.MathematicalTooling.Certificates.Bound"]
  let profile : Array String := #["FormalResearch.MathematicalTooling.Certificates.Bound"]
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
        if !profile.contains mod.toString then
          let record := Json.mkObj [
            ("name", toJson name.toString),
            ("module", toJson mod.toString),
            ("axioms", toJson (axioms.map Name.toString))]
          logInfo m!"TT_AUDIT {record.compress}"
          continue
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
        let mut definitionBody : Json := Json.null
        let mut kernelDefinition : Json := Json.null
        if #["FormalResearch.MathematicalTooling.Coverage.RevisedCoveringStatement",
            "FormalResearch.MathematicalTooling.Coverage.RevisedGCHStatement",
            "FormalResearch.MathematicalTooling.Coverage.RevisedPowerCandidate",
            "FormalResearch.MathematicalTooling.Coverage.RevisedPowerEquals",
            "FormalResearch.Construct.Envelope.EnvelopeValid",
            "FormalResearch.Construct.Envelope.Closed",
            "FormalResearch.TypeTheory.IntendedPTS.monomorphicArrow",
            "OAI.PureTypeSystem.Legal",
            "OAI.PureTypeSystem.SystemWeaklyNormalizing",
            "OAI.PureTypeSystem.SystemStronglyNormalizing",
            "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.WireNormalization.PacketValid",
            "FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.TagAssignmentValid"].contains name.toString then
          if let some value := info.value? then
            definitionBody := toJson (← liftTermElabM <| PrettyPrinter.ppExpr value).pretty
            kernelDefinition := toJson (reprStr value)
        let record := Json.mkObj [
          ("name", toJson name.toString),
          ("module", toJson mod.toString),
          ("kind", toJson kind),
          ("universe_parameters", toJson (info.levelParams.map Name.toString)),
          ("type", toJson declarationType.pretty),
          ("kernel_type_repr", toJson (reprStr info.type)),
          ("definition_body", definitionBody),
          ("kernel_definition_repr", kernelDefinition),
          ("axioms", toJson (axioms.map Name.toString))]
        logInfo m!"TT_DECL {record.compress}"
