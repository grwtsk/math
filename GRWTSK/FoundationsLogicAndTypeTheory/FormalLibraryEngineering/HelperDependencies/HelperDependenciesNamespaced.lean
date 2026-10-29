-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceJointMangoldtBaseline.Variant151ea595b9e7d5f5e9bd9d9eac4beebd285a5004160792352e86ee4391949a76","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"151ea595b9e7d5f5e9bd9d9eac4beebd285a5004160792352e86ee4391949a76","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SourceJointMangoldtBaseline.Variant151ea595b9e7d5f5e9bd9d9eac4beebd285a5004160792352e86ee4391949a76","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"151ea595b9e7d5f5e9bd9d9eac4beebd285a5004160792352e86ee4391949a76","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/future-observable/resume-baseline/audit/HelperDependencies.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceJointMangoldtBaseline
import Lean.Util.FoldConsts


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceJointMangoldtBaseline.Variant151ea595b9e7d5f5e9bd9d9eac4beebd285a5004160792352e86ee4391949a76

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
