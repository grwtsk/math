# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lineage.Variant0725ecb1b3cc36beb4fcf296354142b3907172becf05f789e6528cf373953277

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aba6f1ad1c47cbf3a3464594328f07466d05f069` · SHA-256 `0725ecb1b3cc36beb4fcf296354142b3907172becf05f789e6528cf373953277`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
