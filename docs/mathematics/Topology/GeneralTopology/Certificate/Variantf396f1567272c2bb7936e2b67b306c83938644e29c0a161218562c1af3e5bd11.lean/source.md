# Complete source: GRWTSK.Topology.GeneralTopology.Certificate.Variantf396f1567272c2bb7936e2b67b306c83938644e29c0a161218562c1af3e5bd11

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51f0415b583573f3e215e51c67c76e2ecaa446b8` · SHA-256 `f396f1567272c2bb7936e2b67b306c83938644e29c0a161218562c1af3e5bd11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP1.TransportedRange.Definition

/-!
# Transported-range certificate primitives
-/

namespace Mathematics.SemiLocalDefect.SoninCore

structure TransportedRangeNesting
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U) :
    Prop where
  mono :
    ∀ {S T : PrimeCut U},
      S ⊆ T →
      H.transportedRange S ≤
      H.transportedRange T

structure TransportedRangeClosed
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U) :
    Prop where
  isClosed :
    ∀ S,
      IsClosed
        (H.transportedRange S :
          Set H.Ambient)

structure SoninConnectorGeometry
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U) :
    Prop where
  nesting :
    TransportedRangeNesting H
  closed :
    TransportedRangeClosed H

theorem transportedRange_mono
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (cert : TransportedRangeNesting H)
    {S T : PrimeCut U}
    (hST : S ⊆ T) :
    H.transportedRange S ≤
    H.transportedRange T :=
  cert.mono hST

theorem transportedRange_isClosed
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (cert : TransportedRangeClosed H)
    (S : PrimeCut U) :
    IsClosed
      (H.transportedRange S :
        Set H.Ambient) :=
  cert.isClosed S

end Mathematics.SemiLocalDefect.SoninCore
```
