# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.BoundaryCochain.Variantf987d5db56082b6d337c7a27be86e3fc5fcf6966980512910996779a4c2b31de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9da6de2e12ff8c093e2d3f52f896397aade85b86` · SHA-256 `f987d5db56082b6d337c7a27be86e3fc5fcf6966980512910996779a4c2b31de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP2.Increment

/-!
# WP2 Sonin boundary cochain

The increment is exposed as a one-cochain.  Positivity and square closure are
projections of the supplied capacity certificate.
-/

namespace Mathematics.SemiLocalDefect.SoninCore

def soninBoundaryCochain
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (P : SoninProjectionProfile H)
    (S : PrimeCut U)
    (p : U.Prime) :
    HilbertEnd H.Ambient :=
  soninIncrement P S p

theorem soninBoundaryCochain_nonnegative
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    {P : SoninProjectionProfile H}
    (cert : SoninCapacityCertificate P)
    (S : PrimeCut U)
    (p : U.Prime)
    (hp : p ∉ S) :
    OperatorNonnegative
      (soninBoundaryCochain P S p) :=
  soninIncrement_nonnegative
    cert S p hp

theorem soninBoundaryCochain_closed
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    {P : SoninProjectionProfile H}
    (cert : SoninCapacityCertificate P)
    (S : PrimeCut U)
    (p q : U.Prime)
    (hp : p ∉ S)
    (hq : q ∉ S)
    (hpq : p ≠ q) :
    soninBoundaryCochain P S p
    +
    soninBoundaryCochain
      P
      (insert p S)
      q
    =
    soninBoundaryCochain P S q
    +
    soninBoundaryCochain
      P
      (insert q S)
      p :=
  cert.square_closed
    S p q hp hq hpq

end Mathematics.SemiLocalDefect.SoninCore
```
