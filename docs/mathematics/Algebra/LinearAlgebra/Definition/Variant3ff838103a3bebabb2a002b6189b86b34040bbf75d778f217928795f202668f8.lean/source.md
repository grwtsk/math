# Complete source: GRWTSK.Algebra.LinearAlgebra.Definition.Variant3ff838103a3bebabb2a002b6189b86b34040bbf75d778f217928795f202668f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99d15d2c9de68e3436908f298759bca2d6fe7049` · SHA-256 `3ff838103a3bebabb2a002b6189b86b34040bbf75d778f217928795f202668f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP2.OperatorOrder

/-!
# Sonin projection-profile primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

structure SoninProjectionProfile
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U) where
  projection :
    PrimeCut U →
    HilbertEnd H.Ambient
  projection_isProjection :
    ∀ S,
      OrthogonalProjectionCertificate
        (projection S)
  projection_range :
    ∀ S,
      LinearMap.range
        (projection S).toLinearMap
      =
      H.transportedRange S
  projection_absorbs_left :
    ∀ {S T : PrimeCut U},
      S ⊆ T →
      (projection T).comp
        (projection S)
      =
      projection S
  projection_absorbs_right :
    ∀ {S T : PrimeCut U},
      S ⊆ T →
      (projection S).comp
        (projection T)
      =
      projection S
  projection_mono :
    ∀ {S T : PrimeCut U},
      S ⊆ T →
      OperatorLE
        (projection S)
        (projection T)
  projection_top :
    projection (topCut U)
    =
    ContinuousLinearMap.id
      ℂ
      H.Ambient

end Mathematics.SemiLocalDefect.SoninCore
```
