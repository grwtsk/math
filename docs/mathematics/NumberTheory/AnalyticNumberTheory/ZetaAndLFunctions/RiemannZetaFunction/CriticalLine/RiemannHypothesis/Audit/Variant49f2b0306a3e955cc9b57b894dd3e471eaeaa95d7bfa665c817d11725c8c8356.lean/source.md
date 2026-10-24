# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Audit.Variant49f2b0306a3e955cc9b57b894dd3e471eaeaa95d7bfa665c817d11725c8c8356

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a81cd76e7024d95674129e3c48bf33bd053cc411` · SHA-256 `76c32e0af966a0d5ed6f47a1852ae5d6f1c29ce2590038088d04ebd20d9d81cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Prototype.Variant38ddfea8b0873cfde47e51939e6c1593cefb2d6d7e09d89ac14d8d42c6bb3b49","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"38ddfea8b0873cfde47e51939e6c1593cefb2d6d7e09d89ac14d8d42c6bb3b49","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.Prototype.Variant38ddfea8b0873cfde47e51939e6c1593cefb2d6d7e09d89ac14d8d42c6bb3b49","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"38ddfea8b0873cfde47e51939e6c1593cefb2d6d7e09d89ac14d8d42c6bb3b49","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle14/phase-mass-ftc/attempt-04/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Prototype


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Prototype.Variant38ddfea8b0873cfde47e51939e6c1593cefb2d6d7e09d89ac14d8d42c6bb3b49

set_option linter.hashCommand false

open FormalResearch.RiemannHypothesis.SourcePhaseMassFTC

#check @criticalPrimeTest_sub_one_eq_phase_prefix
#print axioms criticalPrimeTest_sub_one_eq_phase_prefix

#check @positive_phase_prefix_le_mass
#print axioms positive_phase_prefix_le_mass

#check @positiveMass_ge_criticalPrimeTest_sub_one
#print axioms positiveMass_ge_criticalPrimeTest_sub_one

#check @criticalPrimeTest_early_point_ge
#print axioms criticalPrimeTest_early_point_ge

#check @positiveMass_ge_early_exponential
#print axioms positiveMass_ge_early_exponential

#check @negativeMass_ge_early_exponential
#print axioms negativeMass_ge_early_exponential

#check @criticalPrimeTest_variation_ge_early_exponential
#print axioms criticalPrimeTest_variation_ge_early_exponential

#check @pairedTailTest_variation_ge_early_exponential
#print axioms pairedTailTest_variation_ge_early_exponential

#check @positiveMass_ge_linear
#print axioms positiveMass_ge_linear

#check @positiveMass_not_eventually_bounded
#print axioms positiveMass_not_eventually_bounded

```
