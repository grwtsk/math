# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.181c960b5ab383417170081eb01534ab31e1fde45aa6f7997a3cb44fc9870c25Audit.Variantcfac4648a819814fd29b33f10b4ce2c3e965207ac4a748390e978310d9cc7080

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5819b60ad3ad533e46364be2b9911818b04f3581` · SHA-256 `a51c95adba16e9c1d03bc0ca5617c1d2bb7b436052daa9d6c37e590a29a793e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.SourceProjectionReadout.Variant181c960b5ab383417170081eb01534ab31e1fde45aa6f7997a3cb44fc9870c25","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"181c960b5ab383417170081eb01534ab31e1fde45aa6f7997a3cb44fc9870c25","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.SourceProjectionReadout.Variant181c960b5ab383417170081eb01534ab31e1fde45aa6f7997a3cb44fc9870c25","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"181c960b5ab383417170081eb01534ab31e1fde45aa6f7997a3cb44fc9870c25","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/owner-refocus-six93-native-source-recovery-20261007T081625Z/bytes/181c960b5ab383417170081eb01534ab31e1fde45aa6f7997a3cb44fc9870c25--audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceProjectionReadout


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.SourceProjectionReadout.Variant181c960b5ab383417170081eb01534ab31e1fde45aa6f7997a3cb44fc9870c25

open FormalResearch.RiemannHypothesis.SourceProjectionReadout

set_option pp.all true in
#print stateIncrement
#print axioms stateIncrement

set_option pp.all true in
#print projectedState
#print axioms projectedState

set_option pp.all true in
#print projectionDifference
#print axioms projectionDifference

set_option pp.all true in
#print combinedProjectionRow
#print axioms combinedProjectionRow

set_option pp.all true in
#print scalarContinuumAnchor
#print axioms scalarContinuumAnchor

set_option pp.all true in
#print scalarCompensatedPrimeOperator
#print axioms scalarCompensatedPrimeOperator

set_option pp.all true in
#print quadratic_difference_eq_combined
#print axioms quadratic_difference_eq_combined

set_option pp.all true in
#print quadratic_difference_eq_diagonal_cross
#print axioms quadratic_difference_eq_diagonal_cross

set_option pp.all true in
#print quadratic_finite_telescope
#print axioms quadratic_finite_telescope

set_option pp.all true in
#print quadratic_finite_combined_telescope
#print axioms quadratic_finite_combined_telescope

set_option pp.all true in
#print finite_inner_sum_abs_le
#print axioms finite_inner_sum_abs_le

set_option pp.all true in
#print finite_inner_sum_abs_le_of_square_bounds
#print axioms finite_inner_sum_abs_le_of_square_bounds

set_option pp.all true in
#print smaller_projection_larger
#print axioms smaller_projection_larger

set_option pp.all true in
#print larger_projection_smaller
#print axioms larger_projection_smaller

set_option pp.all true in
#print projection_difference_fixes_increment
#print axioms projection_difference_fixes_increment

set_option pp.all true in
#print projection_difference_inner_symmetric
#print axioms projection_difference_inner_symmetric

set_option pp.all true in
#print projected_increment_norm_sq
#print axioms projected_increment_norm_sq

set_option pp.all true in
#print projected_increment_energy_eq
#print axioms projected_increment_energy_eq

set_option pp.all true in
#print projected_increment_energy_le
#print axioms projected_increment_energy_le

set_option pp.all true in
#print combined_projection_row_inner
#print axioms combined_projection_row_inner

set_option pp.all true in
#print projected_readout_combined_telescope
#print axioms projected_readout_combined_telescope

set_option pp.all true in
#print projected_readout_abs_le_of_row_square
#print axioms projected_readout_abs_le_of_row_square

set_option pp.all true in
#print full_readout_abs_le_of_projection_rows
#print axioms full_readout_abs_le_of_projection_rows

set_option pp.all true in
#print mertensResidual_eq_projection_telescope
#print axioms mertensResidual_eq_projection_telescope

set_option pp.all true in
#print mertensResidual_abs_le_of_projection_rows
#print axioms mertensResidual_abs_le_of_projection_rows

set_option pp.all true in
#print mertensResidual_centered_abs_le_of_projection_rows
#print axioms mertensResidual_centered_abs_le_of_projection_rows

set_option pp.all true in
#print mertensResidual_le_two_add_sqrt_of_centered_projection_rows
#print axioms mertensResidual_le_two_add_sqrt_of_centered_projection_rows

set_option pp.all true in
#print scalarContinuumAnchor_selfAdjoint
#print axioms scalarContinuumAnchor_selfAdjoint

set_option pp.all true in
#print scalarContinuumAnchor_source_readout
#print axioms scalarContinuumAnchor_source_readout

set_option pp.all true in
#print scalarCompensatedPrimeOperator_selfAdjoint
#print axioms scalarCompensatedPrimeOperator_selfAdjoint

set_option pp.all true in
#print scalarCompensatedPrimeOperator_source_readout
#print axioms scalarCompensatedPrimeOperator_source_readout

set_option pp.all true in
#print mertensResidual_le_two_add_sqrt_of_scalar_compensated_rows
#print axioms mertensResidual_le_two_add_sqrt_of_scalar_compensated_rows
```
