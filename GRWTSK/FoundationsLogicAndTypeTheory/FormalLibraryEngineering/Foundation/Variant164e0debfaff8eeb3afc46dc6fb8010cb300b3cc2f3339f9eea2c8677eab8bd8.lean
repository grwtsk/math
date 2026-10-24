-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RHAuthorityChannel.Variantfe2a82114bc1760cc17e5d7ee61106328fd04fbf2e96c67688476cab5c278e43","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe2a82114bc1760cc17e5d7ee61106328fd04fbf2e96c67688476cab5c278e43","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RHAuthorityChannel.Variantfe2a82114bc1760cc17e5d7ee61106328fd04fbf2e96c67688476cab5c278e43","mathematical_subject":"Foundations.Unclassified","original_sha256":"fe2a82114bc1760cc17e5d7ee61106328fd04fbf2e96c67688476cab5c278e43","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/RHIsolation/Foundation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.RHIsolation.UnknownLedger

/-!
# RH-directed authority factorization

Analytic isolation, spectral proposal generation, and certified
correspondence remain separate channels.  Only the analytic channel constructs
finite-height zero authority.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RHAuthorityChannel.Variantfe2a82114bc1760cc17e5d7ee61106328fd04fbf2e96c67688476cab5c278e43

namespace Mathematics.RHIsolation

inductive RHAuthorityChannel
  | analyticIsolation
  | spectralProposal
  | certifiedCorrespondence
deriving DecidableEq, Repr

structure RHDirectedFiniteClosure
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    (authority :
      ArgumentPrincipleAuthority model xi xiPrime)
    (cut : CriticalStripCut) where
  analytic :
    FiniteHeightRHCertificate authority cut
  spectral : SelfAdjointSpectralCut
  correspondence :
    FiniteSpectralMatchingCertificate authority
  traceAuthorityPresent : Prop
  traceAuthorityPresentProof :
    traceAuthorityPresent

theorem RHDirectedFiniteClosure.actualZeroOnLine
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cut : CriticalStripCut}
    (closure :
      RHDirectedFiniteClosure authority cut)
    {z : ℂ}
    (owned : cut.owns z)
    (zero : xi z = 0) :
    z.re = (1 : ℝ) / 2 :=
  finiteHeightRH_sound closure.analytic z owned zero

theorem spectralProposal_channel_nonauthoritative
    (candidate : SpectralCandidate) :
    ¬ CarriesAnalyticZeroAuthority candidate :=
  spectralCandidate_has_no_analyticAuthority candidate

end Mathematics.RHIsolation
