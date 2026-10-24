# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.RhEstimateMobiusIntegerTransport.Variant0c0dea71c5cb4206e8c6ed76a5c09de03a57f26c4a105c6a2df6537a0a0c9638

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bde89b71504c0375b1ae22ad24a9d67c76e3529f` · SHA-256 `34c4f2607877986d8c4612a1a19f63907be0c1f8224e7d7c1921eb1a4f14e161`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateMobiusIntegerTransport.Variant46ac1af467c025c07b23b0eba28d3765fb4d07774372e469eec7ec5b50858018","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"46ac1af467c025c07b23b0eba28d3765fb4d07774372e469eec7ec5b50858018","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.EstimateMobiusIntegerTransport.Variant46ac1af467c025c07b23b0eba28d3765fb4d07774372e469eec7ec5b50858018","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"46ac1af467c025c07b23b0eba28d3765fb4d07774372e469eec7ec5b50858018","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/tests/rh_estimate_mobius_integer_transport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateMobiusIntegerTransport.Variant46ac1af467c025c07b23b0eba28d3765fb4d07774372e469eec7ec5b50858018

#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport.antidiagonal_first_factor
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport.sourceMobiusKernel_integerAgreement
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport.sourceMobiusKernel_contract
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport.largeDivisorMobiusMoment_eq_abel_sum
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport.largeDivisorMobiusMoment_eq_mertens
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport.mobius_integer_transport_checkpoint

example (A : ℝ) (hA : 1 ≤ A) :
    FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel.SourceMobiusKernelContract A
      (FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel.sourceMobiusKernel A) :=
  FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport.sourceMobiusKernel_contract A hA
```
