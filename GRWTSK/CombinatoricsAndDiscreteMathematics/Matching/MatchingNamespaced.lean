-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteSpectralMatchingCertificate.Variant17786e9b38fa25a49a9f95efc270d5e439b794d99d4961efc29b8d98b2bcaba1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"17786e9b38fa25a49a9f95efc270d5e439b794d99d4961efc29b8d98b2bcaba1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteSpectralMatchingCertificate.Variant17786e9b38fa25a49a9f95efc270d5e439b794d99d4961efc29b8d98b2bcaba1","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"17786e9b38fa25a49a9f95efc270d5e439b794d99d4961efc29b8d98b2bcaba1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/RHIsolation/Matching.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.RHIsolation.Correspondence

/-!
# Perfect finite certified matching

The two inverse maps are the finite no-missing/no-spurious witness.  Every
matched edge carries a certified local correspondence and hence preserves
divisor multiplicity.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteSpectralMatchingCertificate.Variant17786e9b38fa25a49a9f95efc270d5e439b794d99d4961efc29b8d98b2bcaba1

namespace Mathematics.RHIsolation

universe uAnalytic uSpectral

set_option linter.checkUnivs false in
structure FiniteSpectralMatchingCertificate
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    (authority :
      ArgumentPrincipleAuthority model xi xiPrime) where
  AnalyticVertex : Type uAnalytic
  SpectralVertex : Type uSpectral
  analyticFintype : Fintype AnalyticVertex
  analyticDecEq : DecidableEq AnalyticVertex
  spectralFintype : Fintype SpectralVertex
  spectralDecEq : DecidableEq SpectralVertex
  analytic :
    AnalyticVertex →
      CertifiedZeroRegion authority
  spectral :
    SpectralVertex → SpectralCandidate
  toSpectral :
    AnalyticVertex → SpectralVertex
  toAnalytic :
    SpectralVertex → AnalyticVertex
  analyticRoundTrip :
    ∀ analyticVertex,
      toAnalytic (toSpectral analyticVertex) =
        analyticVertex
  spectralRoundTrip :
    ∀ spectralVertex,
      toSpectral (toAnalytic spectralVertex) =
        spectralVertex
  edgeCertified :
    ∀ analyticVertex,
      LocalCorrespondenceCertificate
        (analytic analyticVertex)
        (spectral (toSpectral analyticVertex))

attribute [instance]
  FiniteSpectralMatchingCertificate.analyticFintype
  FiniteSpectralMatchingCertificate.analyticDecEq
  FiniteSpectralMatchingCertificate.spectralFintype
  FiniteSpectralMatchingCertificate.spectralDecEq

theorem perfectCertifiedMatching_noMissing
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    (matching :
      FiniteSpectralMatchingCertificate authority)
    (analyticVertex : matching.AnalyticVertex) :
    ∃ spectralVertex,
      matching.toAnalytic spectralVertex =
        analyticVertex :=
  ⟨matching.toSpectral analyticVertex,
    matching.analyticRoundTrip analyticVertex⟩

theorem perfectCertifiedMatching_noSpurious
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    (matching :
      FiniteSpectralMatchingCertificate authority)
    (spectralVertex : matching.SpectralVertex) :
    ∃ analyticVertex,
      matching.toSpectral analyticVertex =
        spectralVertex :=
  ⟨matching.toAnalytic spectralVertex,
    matching.spectralRoundTrip spectralVertex⟩

theorem perfectCertifiedMatching_preservesMultiplicity
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    (matching :
      FiniteSpectralMatchingCertificate authority)
    (analyticVertex : matching.AnalyticVertex) :
    (matching.analytic analyticVertex).count.count =
      (matching.spectral
        (matching.toSpectral analyticVertex)).multiplicity :=
  (matching.edgeCertified analyticVertex).multiplicityEqual

theorem perfectCertifiedMatching_noMissing_noSpurious
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    (matching :
      FiniteSpectralMatchingCertificate authority) :
    (∀ analyticVertex,
      ∃ spectralVertex,
        matching.toAnalytic spectralVertex =
          analyticVertex) ∧
    (∀ spectralVertex,
      ∃ analyticVertex,
        matching.toSpectral analyticVertex =
          spectralVertex) :=
  ⟨fun analyticVertex =>
      perfectCertifiedMatching_noMissing
        matching analyticVertex,
    fun spectralVertex =>
      perfectCertifiedMatching_noSpurious
        matching spectralVertex⟩

end Mathematics.RHIsolation
