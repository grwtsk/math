import Mathematics.RHIsolation.Correspondence

/-!
# Perfect finite certified matching

The two inverse maps are the finite no-missing/no-spurious witness.  Every
matched edge carries a certified local correspondence and hence preserves
divisor multiplicity.
-/

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
