# Complete source: GRWTSK.Algebra.LinearAlgebra.Certificate.Variant681da5aa1535a41e2f3b776aabacdfa5fb2bc1535cfb4ea245dda5cb56f6220c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a7cf67ec5aeda82732fa16fb64617c0b08e0e9d` · SHA-256 `681da5aa1535a41e2f3b776aabacdfa5fb2bc1535cfb4ea245dda5cb56f6220c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP2.Increment.Definition

/-!
# Projection-increment certificate primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

structure SoninCapacityCertificate
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (P : SoninProjectionProfile H) where
  differenceLayer :
    ∀ {S T : PrimeCut U},
      S ⊆ T →
      Submodule ℂ H.Ambient
  difference_range :
    ∀ {S T : PrimeCut U}
      (hST : S ⊆ T),
      LinearMap.range
        (projectionDifference
          P S T).toLinearMap
      =
      differenceLayer hST
  difference_isProjection :
    ∀ {S T : PrimeCut U}
      (_hST : S ⊆ T),
      OrthogonalProjectionCertificate
        (projectionDifference P S T)
  square_closed :
    ∀ (S : PrimeCut U)
      (p q : U.Prime),
      p ∉ S →
      q ∉ S →
      p ≠ q →
      soninIncrement P S p
      +
      soninIncrement
        P
        (insert p S)
        q
      =
      soninIncrement P S q
      +
      soninIncrement
        P
        (insert q S)
        p

end Mathematics.SemiLocalDefect.SoninCore
```
