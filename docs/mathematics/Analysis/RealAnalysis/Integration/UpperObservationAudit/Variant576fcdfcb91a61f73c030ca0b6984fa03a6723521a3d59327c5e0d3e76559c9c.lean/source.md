# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.UpperObservationAudit.Variant576fcdfcb91a61f73c030ca0b6984fa03a6723521a3d59327c5e0d3e76559c9c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a8588523f735b53b89707db6b9cb7b25ae6f336` · SHA-256 `59bd03429891119d1b6e4b7fcc6101af0c718eb0df1254940af75b06ff031245`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.UpperObservation.Variant96eba0d901c281316e45726624403e292a1384963121b3fda5a6dcafbfddfff7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"96eba0d901c281316e45726624403e292a1384963121b3fda5a6dcafbfddfff7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.UpperObservation.Variant96eba0d901c281316e45726624403e292a1384963121b3fda5a6dcafbfddfff7","mathematical_subject":"Analysis.Integration","original_sha256":"96eba0d901c281316e45726624403e292a1384963121b3fda5a6dcafbfddfff7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mertens/UpperObservationAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.mertens.UpperObservation

namespace GRWTSK.Analysis.RealAnalysis.Integration.UpperObservation.Variant96eba0d901c281316e45726624403e292a1384963121b3fda5a6dcafbfddfff7

set_option pp.universes true
set_option pp.explicit true
#check @UpperObservationScratch.finiteObservation
#print axioms UpperObservationScratch.finiteObservation
#check @UpperObservationScratch.source_shift_zero_above_cutoff
#print axioms UpperObservationScratch.source_shift_zero_above_cutoff
#check @UpperObservationScratch.finite_observation_inversion
#print axioms UpperObservationScratch.finite_observation_inversion
#check @UpperObservationScratch.upper_observation_zero_of_log_two_le
#print axioms UpperObservationScratch.upper_observation_zero_of_log_two_le
#check @UpperObservationScratch.upper_observation_shift_zero
#print axioms UpperObservationScratch.upper_observation_shift_zero
#check @UpperObservationScratch.upper_observation_eq_source_sub_lower_shifts
#print axioms UpperObservationScratch.upper_observation_eq_source_sub_lower_shifts
#check @UpperObservationScratch.finiteObservation_continuous
#print axioms UpperObservationScratch.finiteObservation_continuous
#check @UpperObservationScratch.finiteObservation_hasCompactSupport
#print axioms UpperObservationScratch.finiteObservation_hasCompactSupport
#check @UpperObservationScratch.finiteObservation_square_integrable
#print axioms UpperObservationScratch.finiteObservation_square_integrable
#check @UpperObservationScratch.finiteObservation_reflection_integrable
#print axioms UpperObservationScratch.finiteObservation_reflection_integrable
#check @UpperObservationScratch.shifted_source_reflection
#print axioms UpperObservationScratch.shifted_source_reflection
#check @UpperObservationScratch.finiteObservation_reflection_eq
#print axioms UpperObservationScratch.finiteObservation_reflection_eq
#check @UpperObservationScratch.reflection_abs_le_local_square
#print axioms UpperObservationScratch.reflection_abs_le_local_square
#check @UpperObservationScratch.upper_reflection_abs_le_local_square
#print axioms UpperObservationScratch.upper_reflection_abs_le_local_square
#check @UpperObservationScratch.upper_local_square_eq_core_error
#print axioms UpperObservationScratch.upper_local_square_eq_core_error
#check @UpperObservationScratch.core_error_square_integrableOn
#print axioms UpperObservationScratch.core_error_square_integrableOn
#check @UpperObservationScratch.upperChannel_eq_reflection
#print axioms UpperObservationScratch.upperChannel_eq_reflection
#check @UpperObservationScratch.upperChannel_abs_le_local_square
#print axioms UpperObservationScratch.upperChannel_abs_le_local_square
#check @UpperObservationScratch.sourceQuadraticValue_ge_core_sub_local_square
#print axioms UpperObservationScratch.sourceQuadraticValue_ge_core_sub_local_square
```
