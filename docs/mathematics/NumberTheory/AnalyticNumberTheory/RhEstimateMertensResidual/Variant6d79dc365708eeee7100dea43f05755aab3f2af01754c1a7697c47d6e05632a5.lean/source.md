# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.RhEstimateMertensResidual.Variant6d79dc365708eeee7100dea43f05755aab3f2af01754c1a7697c47d6e05632a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5c9848fdcfc5db747ca7de89e1d9837b444869f` · SHA-256 `0202ef5b5febec9bdabeff0d45f344b5fed2b5910537cf0fca5759ab4cededaa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateMertensResidual.Variant04093178dd1ef45673a0a927c9b115f153a4ef49e249ad2472235eb7ac238d1b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"04093178dd1ef45673a0a927c9b115f153a4ef49e249ad2472235eb7ac238d1b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.EstimateMertensResidual.Variant04093178dd1ef45673a0a927c9b115f153a4ef49e249ad2472235eb7ac238d1b","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"04093178dd1ef45673a0a927c9b115f153a4ef49e249ad2472235eb7ac238d1b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/tests/rh_estimate_mertens_residual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateMertensResidual.Variant04093178dd1ef45673a0a927c9b115f153a4ef49e249ad2472235eb7ac238d1b

#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual.smoothMoment_abs_le
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual.mertensResidual_eq_closedPrimeMoment
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual.prime_smooth_tail_iff_mertens_residual_tail
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual.signed_pairing_tail_iff_mertens_residual_tail
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual.estimate_of_mertens_residual_tail
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual.mertens_residual_checkpoint

example :
    FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual.MertensResidualTailUpperBound →
      FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly.EstimateObligation :=
  FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual.estimate_of_mertens_residual_tail
```
