# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Audit.Variant1f371d16d7357b25e481b2f2f28d9f7f90ddbe84f601a543dc60a29b4163378a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `250f35aa1d2b771d6dfc4c1f9fde1065443491d1` · SHA-256 `5bf4b99c917949af7bcbb17e65f4e270a25e683ef8627b323aa07cedb1cd58cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePhaseMassFTC.Variant622da82c5baa8fd43c01ddbe55fcb8ef1570236c444430e89b7c31fbf25ac246","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"622da82c5baa8fd43c01ddbe55fcb8ef1570236c444430e89b7c31fbf25ac246","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourcePhaseMassFTC.Variant622da82c5baa8fd43c01ddbe55fcb8ef1570236c444430e89b7c31fbf25ac246","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"622da82c5baa8fd43c01ddbe55fcb8ef1570236c444430e89b7c31fbf25ac246","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle15/phase-mass-canonical/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePhaseMassFTC


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePhaseMassFTC.Variant622da82c5baa8fd43c01ddbe55fcb8ef1570236c444430e89b7c31fbf25ac246

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
