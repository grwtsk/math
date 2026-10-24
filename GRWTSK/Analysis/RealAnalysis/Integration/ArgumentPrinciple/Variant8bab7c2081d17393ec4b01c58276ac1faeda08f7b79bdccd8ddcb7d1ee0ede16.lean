-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.BoundaryZeroFreeCertificate.Variant47b410a140a5a34a5f6a098b48f9183d2df83bd590e8984476b1e1a43ab8ebfa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"47b410a140a5a34a5f6a098b48f9183d2df83bd590e8984476b1e1a43ab8ebfa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.BoundaryZeroFreeCertificate.Variant47b410a140a5a34a5f6a098b48f9183d2df83bd590e8984476b1e1a43ab8ebfa","mathematical_subject":"Analysis.Integration","original_sha256":"47b410a140a5a34a5f6a098b48f9183d2df83bd590e8984476b1e1a43ab8ebfa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/RHIsolation/ArgumentPrinciple.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.RHIsolation.Divisor
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

/-!
# Exact argument-principle certificates

Numerical enclosures are evidence.  The trusted analytic authority is the
separate theorem that turns validated boundary and contour data into equality
with the finite zero divisor.  `ArgumentPrincipleCertificate.countSound` is
derived from that authority; callers cannot supply it as an unrelated field.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.BoundaryZeroFreeCertificate.Variant47b410a140a5a34a5f6a098b48f9183d2df83bd590e8984476b1e1a43ab8ebfa

namespace Mathematics.RHIsolation

structure BoundaryZeroFreeCertificate
    (xi : ℂ → ℂ)
    (cell : AnalyticCell) where
  xiEnclosure :
    ∀ z, z ∈ cell.contour.range →
      ComplexInterval
  excludesZero :
    ∀ z (hz : z ∈ cell.contour.range),
      ¬ (xiEnclosure z hz).Contains 0
  evaluationSound :
    ∀ z (hz : z ∈ cell.contour.range),
      (xiEnclosure z hz).Contains (xi z)

structure ValidatedContourFunction
    (contour : OrientedContour) where
  function : ℂ → ℂ
  enclosure :
    ∀ z, z ∈ contour.range →
      ComplexInterval
  evaluationSound :
    ∀ z (hz : z ∈ contour.range),
      (enclosure z hz).Contains (function z)

structure FiniteContourPartition
    (contour : OrientedContour) where
  segmentCount : Nat
  segmentCount_pos : 0 < segmentCount
  coversContour : Prop
  coversContourProof : coversContour

structure ContourIntegrationModel where
  integral :
    (ℂ → ℂ) → OrientedContour → ℂ

structure ValidatedArgumentIntegral
    (model : ContourIntegrationModel)
    (xi xiPrime : ℂ → ℂ)
    (cell : AnalyticCell) where
  xiPrimeEnclosure :
    ValidatedContourFunction cell.contour
  quotientEnclosure :
    ValidatedContourFunction cell.contour
  quotient_correct :
    ∀ z (_hz : z ∈ cell.contour.range),
      xi z ≠ 0 →
      quotientEnclosure.function z =
        xiPrime z / xi z
  integrationPartition :
    FiniteContourPartition cell.contour
  integralEnclosure : ComplexInterval
  integralValue : ℂ
  integral_eq :
    integralValue =
      model.integral
        quotientEnclosure.function
        cell.contour
  integralSound :
    integralEnclosure.Contains integralValue
  count : Nat
  isolatesUniqueInteger :
    integralValue =
      (2 * (Real.pi : ℂ) * Complex.I) *
        (count : ℂ)

structure ArgumentPrincipleAuthority
    (model : ContourIntegrationModel)
    (xi xiPrime : ℂ → ℂ) where
  divisor :
    (cell : AnalyticCell) →
      AnalyticZeroDivisor xi cell.interior
  argumentPrinciple :
    ∀ (cell : AnalyticCell)
      (_boundary :
        BoundaryZeroFreeCertificate xi cell)
      (integral :
        ValidatedArgumentIntegral
          model xi xiPrime cell),
      (divisor cell).count = integral.count

structure ArgumentPrincipleCertificate
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    (authority :
      ArgumentPrincipleAuthority model xi xiPrime)
    (cell : AnalyticCell) where
  boundaryZeroFree :
    BoundaryZeroFreeCertificate xi cell
  validatedIntegral :
    ValidatedArgumentIntegral
      model xi xiPrime cell

def ArgumentPrincipleCertificate.count
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cell : AnalyticCell}
    (certificate :
      ArgumentPrincipleCertificate authority cell) :
    Nat :=
  certificate.validatedIntegral.count

theorem ArgumentPrincipleCertificate.countSound
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cell : AnalyticCell}
    (certificate :
      ArgumentPrincipleCertificate authority cell) :
    (authority.divisor cell).count =
      certificate.count :=
  authority.argumentPrinciple
    cell
    certificate.boundaryZeroFree
    certificate.validatedIntegral

theorem argumentPrincipleCertificate_sound
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cell : AnalyticCell}
    (certificate :
      ArgumentPrincipleCertificate authority cell) :
    (authority.divisor cell).count =
      certificate.count :=
  certificate.countSound

end Mathematics.RHIsolation
