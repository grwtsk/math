# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Audit.Variant66da5f8027dd3c8e521a016e7a1bd70fe45a2abf5e7ceb79a53035d6860d3362

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df68b86a58c509a9e1f5d1eb26c886b6c7666327` · SHA-256 `9f4013f15074cc56aeb65f6a38c5c46de4a498296fa06af64dcc17ee6c470e6b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.HarmonicAnalysis.FourierAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SourceDualRotation.Variant9cc4536b5b4d0d782cfe9e46d7d2c1030d04a2ef101ccc93bfbc1448f4e23486","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9cc4536b5b4d0d782cfe9e46d7d2c1030d04a2ef101ccc93bfbc1448f4e23486","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FourierAnalysis.SourceCorpus.SourceDualRotation.Variant9cc4536b5b4d0d782cfe9e46d7d2c1030d04a2ef101ccc93bfbc1448f4e23486","mathematical_subject":"Analysis.FourierAnalysis","original_sha256":"9cc4536b5b4d0d782cfe9e46d7d2c1030d04a2ef101ccc93bfbc1448f4e23486","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/rotation/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceDualRotation

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SourceDualRotation.Variant9cc4536b5b4d0d782cfe9e46d7d2c1030d04a2ef101ccc93bfbc1448f4e23486

set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourceDualRotation
#check quarterTurn
#print axioms quarterTurn
#check quarterTurn_apply
#print axioms quarterTurn_apply
#check quarterTurn_sq
#print axioms quarterTurn_sq
#check quarterTurn_inner_skew
#print axioms quarterTurn_inner_skew
#check quarterTurnCLM
#print axioms quarterTurnCLM
#check quarterTurn_adjoint
#print axioms quarterTurn_adjoint
#check reflection_translation_reverse
#print axioms reflection_translation_reverse
#check quarterTurn_translation_reverse
#print axioms quarterTurn_translation_reverse
#check dual_quarterTurn_reverse
#print axioms dual_quarterTurn_reverse
#check rotationMap
#print axioms rotationMap
#check rotationMap_apply
#print axioms rotationMap_apply
#check rotation_comp
#print axioms rotation_comp
#check rotation_inverse
#print axioms rotation_inverse
#check rotation_inner
#print axioms rotation_inner
#check rotation_norm
#print axioms rotation_norm
#check rotationLI
#print axioms rotationLI
#check rotation
#print axioms rotation
#check rotation_apply
#print axioms rotation_apply
#check dual_rotation_reverse
#print axioms dual_rotation_reverse
#check angleRotation
#print axioms angleRotation
#check angleRotation_apply
#print axioms angleRotation_apply
#check angleRotation_comp
#print axioms angleRotation_comp
#check angleRotation_zero
#print axioms angleRotation_zero
#check angleRotation_inverse
#print axioms angleRotation_inverse
#check angleRotation_pi_div_two
#print axioms angleRotation_pi_div_two
#check dual_angleRotation_reverse
#print axioms dual_angleRotation_reverse
#check even_dual_inner_zero
#print axioms even_dual_inner_zero
#check even_inner_dual_zero
#print axioms even_inner_dual_zero
#check quarterTurn_even
#print axioms quarterTurn_even
#check quarterTurn_even_dual
#print axioms quarterTurn_even_dual
#check sourcePlane
#print axioms sourcePlane
#check sourcePlane_reflection
#print axioms sourcePlane_reflection
#check sourcePlane_duality
#print axioms sourcePlane_duality
#check sourcePlane_quarterTurn
#print axioms sourcePlane_quarterTurn
#check sourcePlane_rotation
#print axioms sourcePlane_rotation
#check sourcePlane_inner
#print axioms sourcePlane_inner
#check rotation_norm_not_signed_readout
#print axioms rotation_norm_not_signed_readout
#check actual_source_even
#print axioms actual_source_even
#check actual_source_norm_sq
#print axioms actual_source_norm_sq
#check actual_source_exists
#print axioms actual_source_exists
#check actual_source_rotation_readout
#print axioms actual_source_rotation_readout
#check rotation_even_fourier_coe_ae
#print axioms rotation_even_fourier_coe_ae
#check rotation_source_angular_symbol
#print axioms rotation_source_angular_symbol
#check rotation_equal_coefficient_negative_half
#print axioms rotation_equal_coefficient_negative_half
#check rotation_equal_coefficient_positive_half
#print axioms rotation_equal_coefficient_positive_half
#check rotationMap_adjoint
#print axioms rotationMap_adjoint
#check rotation_symm_apply
#print axioms rotation_symm_apply
#check rotation_translation
#print axioms rotation_translation
#check reflection_quarterTurn_reverse
#print axioms reflection_quarterTurn_reverse
#check reflection_rotation_reverse
#print axioms reflection_rotation_reverse
#check sourcePlane_norm_sq
#print axioms sourcePlane_norm_sq
#check sourcePlane_reflected_inner
#print axioms sourcePlane_reflected_inner
#check even_fourier_coe_ae
#print axioms even_fourier_coe_ae
#check rotation_paired_fourier_mass
#print axioms rotation_paired_fourier_mass
#check unit_equal_coefficient_spectral_half
#print axioms unit_equal_coefficient_spectral_half
#check angleRotation_mul
#print axioms angleRotation_mul
#check angleRotation_commute
#print axioms angleRotation_commute
#check angleRotation_inv
#print axioms angleRotation_inv
#check angular_duality_inv
#print axioms angular_duality_inv
#check angleRotation_sign_conjugation
#print axioms angleRotation_sign_conjugation
#check angleRotation_pi
#print axioms angleRotation_pi
#check angleRotation_two_pi
#print axioms angleRotation_two_pi
#check rotation_even_source_angular_fourier_coe_ae
#print axioms rotation_even_source_angular_fourier_coe_ae
#check angleRotation_pi_div_four_spectral_half
#print axioms angleRotation_pi_div_four_spectral_half
```
