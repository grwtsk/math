# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Audit.Variantac2e943db4956acefaf70cc24719b4c5fcd6f4d124ddd2447dfd597a7c65d46b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43dd33db14d45a8e110d3f46c096e855b199014d` · SHA-256 `e9e1d82b50a209557f71bff58fc80f911b7633aef69ab24540cfcac9c2d1377e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceScaleDerivative.Variantb5d09e1956bd7f86aa12b80bac6834123cc4ecd5063ce08bb2d26b2f328d4ae7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b5d09e1956bd7f86aa12b80bac6834123cc4ecd5063ce08bb2d26b2f328d4ae7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.SourceScaleDerivative.Variantb5d09e1956bd7f86aa12b80bac6834123cc4ecd5063ce08bb2d26b2f328d4ae7","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"b5d09e1956bd7f86aa12b80bac6834123cc4ecd5063ce08bb2d26b2f328d4ae7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle3/regent-scale-derivative/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceScaleDerivative

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceScaleDerivative.Variantb5d09e1956bd7f86aa12b80bac6834123cc4ecd5063ce08bb2d26b2f328d4ae7

set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourceScaleDerivative
#check normalizationDerivative
#print axioms normalizationDerivative
#check sourceNormalization_hasDerivAt
#print axioms sourceNormalization_hasDerivAt
#check sourceNormalization_deriv
#print axioms sourceNormalization_deriv
#check scaleAmplitude
#print axioms scaleAmplitude
#check scaleAmplitude_eq
#print axioms scaleAmplitude_eq
#check scaleProfile_eq_amplitude
#print axioms scaleProfile_eq_amplitude
#check scaleAmplitude_hasDerivAt
#print axioms scaleAmplitude_hasDerivAt
#check scaleDerivative
#print axioms scaleDerivative
#check scaleDerivative_eq_actual
#print axioms scaleDerivative_eq_actual
#check scaleProfile_hasDerivAt
#print axioms scaleProfile_hasDerivAt
#check normalizedSource_hasDerivAt
#print axioms normalizedSource_hasDerivAt
#check sourceBump_traces_zero_of_le_abs
#print axioms sourceBump_traces_zero_of_le_abs
#check scaleDerivative_zero_of_le_abs
#print axioms scaleDerivative_zero_of_le_abs
#check scaleDerivative_continuousAt_joint
#print axioms scaleDerivative_continuousAt_joint
#check scaleDerivative_continuousOn_joint
#print axioms scaleDerivative_continuousOn_joint
#check scaleDerivative_continuous
#print axioms scaleDerivative_continuous
#check scaleDerivative_hasCompactSupport
#print axioms scaleDerivative_hasCompactSupport
#check scaleDerivative_memLp
#print axioms scaleDerivative_memLp
#check scaleDerivativeL2
#print axioms scaleDerivativeL2
#check scaleDerivativeL2_coe_ae
#print axioms scaleDerivativeL2_coe_ae
#check local_source_derivative_zero
#print axioms local_source_derivative_zero
#check local_scaleDerivative_bound
#print axioms local_scaleDerivative_bound
#check scaleDerivativeState
#print axioms scaleDerivativeState
#check scaleDerivativeState_eq
#print axioms scaleDerivativeState_eq
#check scaleDerivativeState_coe_ae
#print axioms scaleDerivativeState_coe_ae
#check scaleDerivativeState_norm_sub_sq
#print axioms scaleDerivativeState_norm_sub_sq
#check scaleDerivative_differenceIntegral_continuousOn
#print axioms scaleDerivative_differenceIntegral_continuousOn
#check scaleDerivativeState_continuousAt
#print axioms scaleDerivativeState_continuousAt
#check scaleDerivativeState_continuousOn
#print axioms scaleDerivativeState_continuousOn
#check scaleRemainder
#print axioms scaleRemainder
#check scaleRemainder_sq_tendsto
#print axioms scaleRemainder_sq_tendsto
#check local_scaleRemainder_bound
#print axioms local_scaleRemainder_bound
#check local_scaleRemainder_zero
#print axioms local_scaleRemainder_zero
#check scaleRemainderL2
#print axioms scaleRemainderL2
#check scaleRemainderL2_coe_ae
#print axioms scaleRemainderL2_coe_ae
#check scaleRemainderL2_norm_sq
#print axioms scaleRemainderL2_norm_sq
#check scaleRemainder_energy_tendsto
#print axioms scaleRemainder_energy_tendsto
#check originalSourceState_hasDerivAt
#print axioms originalSourceState_hasDerivAt
#check originalSourceState_deriv
#print axioms originalSourceState_deriv
#check originalSourceState_contDiffOn
#print axioms originalSourceState_contDiffOn
#check originalSourceState_contDiffAt
#print axioms originalSourceState_contDiffAt
#check orbitAtom_hasDerivAt
#print axioms orbitAtom_hasDerivAt
#check orbitAtom_contDiffOn
#print axioms orbitAtom_contDiffOn
#check finiteProfile_hasDerivAt
#print axioms finiteProfile_hasDerivAt
#check finiteProfile_contDiffOn
#print axioms finiteProfile_contDiffOn
#check scaleDerivative_one_at_zero
#print axioms scaleDerivative_one_at_zero
#check scaleDerivative_one_at_zero_pos
#print axioms scaleDerivative_one_at_zero_pos
#check spatialSourceDerivative_one_at_zero
#print axioms spatialSourceDerivative_one_at_zero
#check scaleDerivative_one_ne_spatial
#print axioms scaleDerivative_one_ne_spatial
```
