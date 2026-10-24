# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ArgumentPrinciple.Variant47b410a140a5a34a5f6a098b48f9183d2df83bd590e8984476b1e1a43ab8ebfa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5c54b5c8399701376e194814e9f531b7f11a387` · SHA-256 `47b410a140a5a34a5f6a098b48f9183d2df83bd590e8984476b1e1a43ab8ebfa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.RHIsolation.Divisor
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

/-!
# Exact argument-principle certificates

Numerical enclosures are evidence.  The trusted analytic authority is the
separate theorem that turns validated boundary and contour data into equality
with the finite zero divisor.  `ArgumentPrincipleCertificate.countSound` is
derived from that authority; callers cannot supply it as an unrelated field.
-/

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
```
