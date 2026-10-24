# Complete source: GRWTSK.Analysis.FunctionalAnalysis.RhEstimatePrimeSmoothDefect.Variant1fe5cfa7fb8d6bfa6c1817004c3b4f6c41bb95609f563abb710911880bebf6bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c423fdd764aedee7c095bb4839ad3b14f8d254cf` · SHA-256 `cda6c5adfc28fb7eed5af31ac5af23ff830a9a9247299f6b53aa25167340b4d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.EstimatePrimeSmoothDefect.Variantad583904b16184da2225ab2bb2aa2628f60fc2a4165d2e0864dc5a652f0ebd65","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad583904b16184da2225ab2bb2aa2628f60fc2a4165d2e0864dc5a652f0ebd65","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.EstimatePrimeSmoothDefect.Variantad583904b16184da2225ab2bb2aa2628f60fc2a4165d2e0864dc5a652f0ebd65","mathematical_subject":"Foundations.Unclassified","original_sha256":"ad583904b16184da2225ab2bb2aa2628f60fc2a4165d2e0864dc5a652f0ebd65","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/tests/rh_estimate_prime_smooth_defect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect


namespace GRWTSK.Analysis.FunctionalAnalysis.EstimatePrimeSmoothDefect.Variantad583904b16184da2225ab2bb2aa2628f60fc2a4165d2e0864dc5a652f0ebd65

#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect.primePowerContribution_eq_closedPrimeMoment
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect.signedPairing_eq_endpoint_sub_defect
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect.endpointMoment_abs_le
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect.signed_pairing_tail_iff_prime_smooth_defect_tail
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect.prime_smooth_defect_checkpoint

example :
    FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect.PrimeSmoothDefectTailUpperBound →
      FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly.EstimateObligation :=
  FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect.estimate_of_prime_smooth_defect_tail
```
