-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceOperatorObservable.Variant823ea41dd2da7b725aad7f39adef121361e568fa74eb79160cc5cdf0f0313736","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"823ea41dd2da7b725aad7f39adef121361e568fa74eb79160cc5cdf0f0313736","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceOperatorObservable.Variant823ea41dd2da7b725aad7f39adef121361e568fa74eb79160cc5cdf0f0313736","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"823ea41dd2da7b725aad7f39adef121361e568fa74eb79160cc5cdf0f0313736","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/future-observable/operator-source/Dependencies.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceOperatorObservable
import Lean.Util.FoldConsts


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceOperatorObservable.Variant823ea41dd2da7b725aad7f39adef121361e568fa74eb79160cc5cdf0f0313736

open Lean

run_meta do
  let env ← getEnv
  let names : Array Name := #[
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.quadratic,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.pullback,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.quadratic_pullback,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.pullback_comp,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.signedDefect,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.quadratic_signedDefect,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.signedDefect_comp,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.quadratic_add,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.passive_coordinates,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.SourceIndex,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.changedSourceReadout,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.sourceDefectReadout,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.source_readout_eq_operator,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.changedSourceReadout_eq_operator_add_defect,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.changedSourceReadout_eq_twice_residual_add_defect,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.twice_residual_eq_changedSourceReadout_sub_defect,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.sourceDefectReadout_comp,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.changedSourceReadout_eq_of_defect_zero,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.passive_source_readout,
    ``FormalResearch.RiemannHypothesis.SourceOperatorObservable.passive_source_readout_eq_twice_residual]
  for name in names do
    let some info := env.find? name | throwError "missing declaration {name}"
    let body := match info.value? (allowOpaque := true) with
      | some value => value.getUsedConstants
      | none => #[]
    let record := Json.mkObj [("declaration", toJson name.toString),
      ("type_constants", toJson (info.type.getUsedConstants.map Name.toString)),
      ("proof_or_definition_constants", toJson (body.map Name.toString))]
    logInfo m!"{record.compress}"
