# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.MobiusNormalizationAPI.Variantcb334197eff2a355c1f1cd3d1d4657fdb5f25d7403402a44f1d80520b59a29d8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0c54247a3c8776f119fe2abfbadb34e4266b4cc` · SHA-256 `02710a18d6358adfaa01781d2fb46f6d68e1d51d7a0d94884c7fa7ba1b243989`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.ThetaErrorMoments.Variant0c6b76d07103de10e341fc6aed3d092722795b634eb1d0b44e51f016c663d508","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c6b76d07103de10e341fc6aed3d092722795b634eb1d0b44e51f016c663d508","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.ThetaErrorMoments.Variant0c6b76d07103de10e341fc6aed3d092722795b634eb1d0b44e51f016c663d508","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"0c6b76d07103de10e341fc6aed3d092722795b634eb1d0b44e51f016c663d508","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-covariance/MobiusNormalizationAPI.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments
import FormalResearch.RiemannHypothesis.SourceComparison.MertensBoundary
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.NumberTheory.LSeries.SumCoeff


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.ThetaErrorMoments.Variant0c6b76d07103de10e341fc6aed3d092722795b634eb1d0b44e51f016c663d508

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000

#check @ArithmeticFunction.LSeriesSummable_moebius_iff
#print axioms ArithmeticFunction.LSeriesSummable_moebius_iff
#check @ArithmeticFunction.LSeries_zeta_mul_Lseries_moebius
#print axioms ArithmeticFunction.LSeries_zeta_mul_Lseries_moebius
#check @ArithmeticFunction.LSeries_zeta_eq_riemannZeta
#print axioms ArithmeticFunction.LSeries_zeta_eq_riemannZeta
#check @riemannZeta_residue_one
#print axioms riemannZeta_residue_one
#check @LSeries_eq_mul_integral
#print axioms LSeries_eq_mul_integral
#check @ZetaInvBnd
#print axioms ZetaInvBnd
#check @ZetaZeroFree
#print axioms ZetaZeroFree
#check @ZetaNoZerosInBox
#print axioms ZetaNoZerosInBox
#check @MediumPNT
#print axioms MediumPNT
#check @FormalResearch.RiemannHypothesis.SourceComparison.MertensTransport.sum_moebius_mul_eq
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.MertensTransport.sum_moebius_mul_eq
#check @FormalResearch.RiemannHypothesis.SourceComparison.MertensBoundary.mertensSum_abs_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.MertensBoundary.mertensSum_abs_le
#check @FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments.thetaLogError_moment_integrable
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments.thetaLogError_moment_integrable
```
