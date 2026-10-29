-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceUnit.Variant99e4af077b8b7f0c0b907a4cda4d532c693422c5e6d751f042e57da3684f8cf9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"99e4af077b8b7f0c0b907a4cda4d532c693422c5e6d751f042e57da3684f8cf9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceUnit.Variant99e4af077b8b7f0c0b907a4cda4d532c693422c5e6d751f042e57da3684f8cf9","mathematical_subject":"Foundations.Unclassified","original_sha256":"99e4af077b8b7f0c0b907a4cda4d532c693422c5e6d751f042e57da3684f8cf9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Instances/DecidableEqProp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module -- shake: keep-all
import Mathlib

/-!
# No decidable equality for `Prop`

We import everything to verify that nothing exposes a `DecidableEq` instance for `Prop`.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceUnit.Variant99e4af077b8b7f0c0b907a4cda4d532c693422c5e6d751f042e57da3684f8cf9

/--
error: failed to synthesize
  DecidableEq Prop

Hint: Additional diagnostic information may be available using the `set_option diagnostics true` command.
-/
#guard_msgs in
#synth DecidableEq Prop
