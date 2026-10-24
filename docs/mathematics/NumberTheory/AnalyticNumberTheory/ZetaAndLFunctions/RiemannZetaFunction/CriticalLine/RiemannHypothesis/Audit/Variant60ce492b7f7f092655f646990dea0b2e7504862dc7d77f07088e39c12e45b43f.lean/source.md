# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Audit.Variant60ce492b7f7f092655f646990dea0b2e7504862dc7d77f07088e39c12e45b43f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a15d87e609fc7be09cc995ecd771d1688b6e9f71` · SHA-256 `2b17e498f1b4fa876d24640a0a69e39e030438c481ed94833f5658bdf3c27398`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceBumpPeano.Variantc06e063f8a95619f795fd609602d52fb3670d256d7db7df3b76d3641ae4c4edb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c06e063f8a95619f795fd609602d52fb3670d256d7db7df3b76d3641ae4c4edb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceBumpPeano.Variantc06e063f8a95619f795fd609602d52fb3670d256d7db7df3b76d3641ae4c4edb","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"c06e063f8a95619f795fd609602d52fb3670d256d7db7df3b76d3641ae4c4edb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-packet-20261005/peano-worker/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceBumpPeano


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceBumpPeano.Variantc06e063f8a95619f795fd609602d52fb3670d256d7db7df3b76d3641ae4c4edb

#print FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapProfile_neg_deriv
#print axioms FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapProfile_neg_deriv

#print FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapProfile_deriv
#print axioms FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapProfile_deriv

#print FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapProfile_deriv_eq
#print axioms FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapProfile_deriv_eq

#print FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapProfile_second_deriv_certificate
#print axioms FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapProfile_second_deriv_certificate

#print FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapP0_nonneg
#print axioms FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapP0_nonneg

#print FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapP1_nonneg
#print axioms FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapP1_nonneg

#print FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapP2_nonneg
#print axioms FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapP2_nonneg

#print FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapProfile_nonneg
#print axioms FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapProfile_nonneg

#print FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapProfile_deriv_nonpos
#print axioms FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapProfile_deriv_nonpos

#print FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapProfile_second_deriv_lower
#print axioms FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapProfile_second_deriv_lower

#print FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapProfile_zero
#print axioms FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapProfile_zero

#print FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapProfile_deriv_zero
#print axioms FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapProfile_deriv_zero

#print FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapProfile_second_deriv_zero
#print axioms FormalResearch.RiemannHypothesis.SourceBumpPeano.overlapProfile_second_deriv_zero

#print FormalResearch.RiemannHypothesis.SourceBumpPeano.peanoNumerator_decomposition
#print axioms FormalResearch.RiemannHypothesis.SourceBumpPeano.peanoNumerator_decomposition

#print FormalResearch.RiemannHypothesis.SourceBumpPeano.peanoNumerator_nonneg
#print axioms FormalResearch.RiemannHypothesis.SourceBumpPeano.peanoNumerator_nonneg

#print FormalResearch.RiemannHypothesis.SourceBumpPeano.peanoNumerator_nonneg_iff
#print axioms FormalResearch.RiemannHypothesis.SourceBumpPeano.peanoNumerator_nonneg_iff

```
