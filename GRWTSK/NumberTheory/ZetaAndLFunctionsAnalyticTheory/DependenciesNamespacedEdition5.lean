-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceJointCountertermLowerTail.Variantee72de0f25f3eb7717beb375208f0de013799b78fb21bbf930b0a2369beadf4f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee72de0f25f3eb7717beb375208f0de013799b78fb21bbf930b0a2369beadf4f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceJointCountertermLowerTail.Variantee72de0f25f3eb7717beb375208f0de013799b78fb21bbf930b0a2369beadf4f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ee72de0f25f3eb7717beb375208f0de013799b78fb21bbf930b0a2369beadf4f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/future-observable/resume-counterterm/audit/Dependencies.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceJointCountertermLowerTail
import Lean.Util.FoldConsts


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceJointCountertermLowerTail.Variantee72de0f25f3eb7717beb375208f0de013799b78fb21bbf930b0a2369beadf4f

open Lean

run_meta do
  let env ← getEnv
  let names : Array Name := #[``FormalResearch.RiemannHypothesis.SourceJointCountertermAlignment.divisor_remainders_eq_joint_work_after_mean_cancellation,
    ``FormalResearch.RiemannHypothesis.SourceJointCountertermLowerTail.divisor_remainders_eq_lower_tail_joint_work_after_mean_cancellation,
    ``FormalResearch.RiemannHypothesis.SourceDivisorCounterterms.independentMainTerm_eq_baseline_add_divisors,
    ``FormalResearch.RiemannHypothesis.SourceDivisorCounterterms.jointSignedRemainder_eq_divisor_remainders,
    ``FormalResearch.RiemannHypothesis.SourceDivisorCounterterms.jointSignedRemainder_eq_covariance]
  for name in names do
    let some info := env.find? name | throwError "missing source dependency {name}"
    let body := match info.value? (allowOpaque := true) with
      | some value => value.getUsedConstants
      | none => #[]
    logInfo m!"{(Json.mkObj [("declaration", toJson name.toString), ("type_constants", toJson (info.type.getUsedConstants.map Name.toString)), ("proof_or_definition_constants", toJson (body.map Name.toString))]).compress}"
