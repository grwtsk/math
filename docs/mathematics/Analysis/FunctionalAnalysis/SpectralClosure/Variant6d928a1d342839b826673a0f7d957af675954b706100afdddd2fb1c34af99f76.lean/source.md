# Complete source: GRWTSK.Analysis.FunctionalAnalysis.SpectralClosure.Variant6d928a1d342839b826673a0f7d957af675954b706100afdddd2fb1c34af99f76

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e66af66c2fdda972a92c0e4728fe3ffe3f08c33b` · SHA-256 `831d58f48a89e662b16b7013cef9dbc2b674ea18e09f67f738dfaac22a849802`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.FiniteHeightSpectralClosureCertificate.Variantf71b973300ec0fa1c861b445c1bf09cea9ff69f6270560fa3a3dbe750fe47c82","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f71b973300ec0fa1c861b445c1bf09cea9ff69f6270560fa3a3dbe750fe47c82","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FiniteHeightSpectralClosureCertificate.Variantf71b973300ec0fa1c861b445c1bf09cea9ff69f6270560fa3a3dbe750fe47c82","mathematical_subject":"Foundations.Unclassified","original_sha256":"f71b973300ec0fa1c861b445c1bf09cea9ff69f6270560fa3a3dbe750fe47c82","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/RHIsolation/SpectralClosure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.RHIsolation.IsolationMachine

/-!
# Finite-height spectral proposal closure

The analytic finite-height certificate already proves line membership.  The
additional fields certify a finite spectral realization, a perfect
multiplicity-preserving match, and equality in a measure-determining test
class.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.FiniteHeightSpectralClosureCertificate.Variantf71b973300ec0fa1c861b445c1bf09cea9ff69f6270560fa3a3dbe750fe47c82

namespace Mathematics.RHIsolation

universe uMeasure uTest uAnalytic uSpectral

set_option linter.checkUnivs false in
structure FiniteHeightSpectralClosureCertificate
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    (authority :
      ArgumentPrincipleAuthority model xi xiPrime)
    (cut : CriticalStripCut)
    (Measure : Type uMeasure)
    (Test : Type uTest) where
  finiteHeightRH :
    FiniteHeightRHCertificate authority cut
  spectralModel :
    SelfAdjointSpectralCut
  matching :
    FiniteSpectralMatchingCertificate.{uAnalytic, uSpectral}
      authority
  modelMatchesMatching : Prop
  modelMatchesMatchingProof :
    modelMatchesMatching
  analyticCount : Nat
  spectralCount : Nat
  countEqual :
    analyticCount = spectralCount
  traceIdentity :
    CertifiedArithmeticTraceIdentity Test
  testClass :
    MeasureDeterminingTestClass Measure Test
  analyticZeroMeasure : Measure
  spectralMeasure : Measure
  testEquality :
    ∀ test,
      testClass.evaluate test analyticZeroMeasure =
        testClass.evaluate test spectralMeasure

theorem FiniteHeightSpectralClosureCertificate.measureEquality
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cut : CriticalStripCut}
    {Measure : Type uMeasure}
    {Test : Type uTest}
    (certificate :
      FiniteHeightSpectralClosureCertificate
        authority cut Measure Test) :
    certificate.analyticZeroMeasure =
      certificate.spectralMeasure :=
  certificate.testClass.separatesFiniteMeasures
    certificate.analyticZeroMeasure
    certificate.spectralMeasure
    certificate.testEquality

theorem finiteHeightSpectralClosure_sound
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cut : CriticalStripCut}
    {Measure : Type uMeasure}
    {Test : Type uTest}
    (certificate :
      FiniteHeightSpectralClosureCertificate
        authority cut Measure Test) :
    ∀ z,
      cut.owns z →
      xi z = 0 →
      z.re = (1 : ℝ) / 2 :=
  finiteHeightRH_sound certificate.finiteHeightRH

theorem finiteSpectralClosure_places_actualZerosOnLine
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cut : CriticalStripCut}
    {Measure : Type uMeasure}
    {Test : Type uTest}
    (certificate :
      FiniteHeightSpectralClosureCertificate
        authority cut Measure Test) :
    ∀ z,
      cut.owns z →
      xi z = 0 →
      z.re = (1 : ℝ) / 2 :=
  finiteHeightSpectralClosure_sound certificate

end Mathematics.RHIsolation
```
