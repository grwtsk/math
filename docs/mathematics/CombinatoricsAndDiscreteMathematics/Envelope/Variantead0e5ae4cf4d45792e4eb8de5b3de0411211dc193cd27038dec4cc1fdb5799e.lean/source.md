# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Envelope.Variantead0e5ae4cf4d45792e4eb8de5b3de0411211dc193cd27038dec4cc1fdb5799e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a13502c5d8f80ac09daa240e5fbcf7f2c438167` · SHA-256 `ead0e5ae4cf4d45792e4eb8de5b3de0411211dc193cd27038dec4cc1fdb5799e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.RHIsolation.UniqueZero

/-!
# Certified outer and minimum enclosing disks

Containment is authoritative for localization.  Minimality and its support
witness are strictly stronger, optional geometric claims.
-/

namespace Mathematics.RHIsolation

structure CertifiedOuterDisk
    (carrier : Set ℂ) where
  center : ℂ
  radius : ℝ
  radius_nonneg : 0 ≤ radius
  contains :
    ∀ z ∈ carrier,
      dist z center ≤ radius

structure CertifiedMinimumEnclosingDisk
    (carrier : Set ℂ)
    extends CertifiedOuterDisk carrier where
  minimal :
    ∀ center' radius',
      0 ≤ radius' →
      (∀ z ∈ carrier,
        dist z center' ≤ radius') →
      radius ≤ radius'

structure DiskSupportCertificate
    (carrier : Set ℂ)
    (disk :
      CertifiedMinimumEnclosingDisk carrier) where
  support : Finset ℂ
  support_card : support.card ≤ 3
  support_in_set :
    ∀ z ∈ support, z ∈ carrier
  support_on_boundary :
    ∀ z ∈ support,
      dist z disk.center = disk.radius
  determinesDisk : Prop
  determinesDiskProof : determinesDisk

theorem outerDisk_contains_unique_zero
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cell : AnalyticCell}
    (unique :
      UniqueZeroCertificate authority cell)
    {carrier : Set ℂ}
    (cellInside :
      cell.interior ⊆ carrier)
    (disk : CertifiedOuterDisk carrier) :
    dist unique.zero disk.center ≤ disk.radius :=
  disk.contains unique.zero
    (cellInside unique.zero_mem)

theorem minimumDisk_support_card_le_three
    {carrier : Set ℂ}
    {disk :
      CertifiedMinimumEnclosingDisk carrier}
    (support :
      DiskSupportCertificate carrier disk) :
    support.support.card ≤ 3 :=
  support.support_card

end Mathematics.RHIsolation
```
