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
