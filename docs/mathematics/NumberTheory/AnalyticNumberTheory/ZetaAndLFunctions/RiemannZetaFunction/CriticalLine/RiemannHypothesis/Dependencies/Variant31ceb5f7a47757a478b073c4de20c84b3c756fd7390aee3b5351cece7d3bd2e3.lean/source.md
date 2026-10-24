# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Dependencies.Variant31ceb5f7a47757a478b073c4de20c84b3c756fd7390aee3b5351cece7d3bd2e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73310b463ed39f31e80a3025143662dcb66f54ef` · SHA-256 `c37131fad2d8591ac5e6e5b7e84a35e928edebb73d6720b5fec223d0aa45aed1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceJointMangoldtBaseline.Variant766a4a6291caeaada281ec398ac5fc0923f615662c683c2a21196ca5f8222233","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"766a4a6291caeaada281ec398ac5fc0923f615662c683c2a21196ca5f8222233","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceJointMangoldtBaseline.Variant766a4a6291caeaada281ec398ac5fc0923f615662c683c2a21196ca5f8222233","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"766a4a6291caeaada281ec398ac5fc0923f615662c683c2a21196ca5f8222233","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/future-observable/resume-baseline-independent/Dependencies.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceJointMangoldtBaseline
import SourceJointCountertermLowerTail
import JointMangoldtBaselineScopeFixtures
import Lean.Util.FoldConsts


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceJointMangoldtBaseline.Variant766a4a6291caeaada281ec398ac5fc0923f615662c683c2a21196ca5f8222233

open Lean

run_meta do
  let env ← getEnv
  let names : Array Name := #[
    ``FormalResearch.RiemannHypothesis.SourceJointMangoldtBaseline.jointMangoldtTestProfile_integrable_and_integral_zero,
    ``FormalResearch.RiemannHypothesis.SourceJointMangoldtBaseline.jointMangoldtTestProfile_zero_of_log_cutoff_le,
    ``FormalResearch.RiemannHypothesis.SourceJointMangoldtBaseline.jointMangoldtTestProfile_window_eq_neg_lower_tail,
    ``FormalResearch.RiemannHypothesis.SourceJointMangoldtBaseline.strictColumnInterior_eq_neg_lower_tail_and_joint_work,
    ``FormalResearch.RiemannHypothesis.SourceJointCountertermAlignment.divisor_remainders_eq_joint_work_after_mean_cancellation,
    ``FormalResearch.RiemannHypothesis.SourceJointCountertermLowerTail.divisor_remainders_eq_lower_tail_joint_work_after_mean_cancellation,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.actual_test_integrable,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.actual_whole_line_moment_zero,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.actual_upper_endpoint_zero,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.actual_entire_upper_tail_zero,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.actual_finite_baseline_retains_lower_tail,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.actual_compensations_retained_once,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.empty_strict_inventory_test_zero,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.lower_Iic_endpoint_included,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.upper_Ioi_endpoint_excluded,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.zero_total_does_not_force_zero_half,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.endpoint_zero_alone_not_tail_zero,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.unit_k_not_strict_product_growth,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.lower_tail_and_error_boundary_have_distinct_copies,
    ``FormalResearch.RiemannHypothesis.JointMangoldtBaselineScopeFixtures.upper_bound_does_not_bound_absolute]
  for name in names do
    let some info := env.find? name | throwError "missing declaration {name}"
    let body := match info.value? (allowOpaque := true) with
      | some value => value.getUsedConstants
      | none => #[]
    let record := Json.mkObj [("declaration", toJson name.toString),
      ("type_constants", toJson (info.type.getUsedConstants.map Name.toString)),
      ("proof_or_definition_constants", toJson (body.map Name.toString))]
    logInfo m!"{record.compress}"
```
