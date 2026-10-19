import Mathematics.RHIsolation.UniqueZero

/-!
# Persistent analytic zero lineage

Lineage is minted from equality of accepted analytic representatives, never
from numerical proximity.
-/

namespace Mathematics.RHIsolation

structure SameZeroCertificate
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    (authority :
      ArgumentPrincipleAuthority model xi xiPrime)
    (left right : AnalyticCell) where
  leftUnique :
    UniqueZeroCertificate authority left
  rightUnique :
    UniqueZeroCertificate authority right
  same :
    leftUnique.zero = rightUnique.zero

theorem sameZero_of_nested_unique_cells
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {left right : AnalyticCell}
    (leftCert :
      UniqueZeroCertificate authority left)
    (rightCert :
      UniqueZeroCertificate authority right)
    (subset :
      right.interior ⊆ left.interior) :
    leftCert.zero = rightCert.zero := by
  symm
  exact leftCert.unique
    rightCert.zero
    (subset rightCert.zero_mem)
    rightCert.xi_zero

theorem nested_unique_cells_same_zero
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {left right : AnalyticCell}
    (leftCert :
      UniqueZeroCertificate authority left)
    (rightCert :
      UniqueZeroCertificate authority right)
    (subset :
      right.interior ⊆ left.interior) :
    leftCert.zero = rightCert.zero :=
  sameZero_of_nested_unique_cells
    leftCert rightCert subset

structure ZeroLineage where
  id : ZeroLineageId
  representative : ℂ
  analyticCertificate : CertificateDigest

noncomputable def SameZeroCertificate.mintLineage
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {left right : AnalyticCell}
    (certificate :
      SameZeroCertificate authority left right)
    (id : ZeroLineageId)
    (digest : CertificateDigest) :
    ZeroLineage where
  id := id
  representative := certificate.leftUnique.zero
  analyticCertificate := digest

end Mathematics.RHIsolation
