# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.RangeProjection.Variantd80ee2cebc65daee089609297c0542946daa320c5ccaabfcc7e183c49a2149b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e3cd4536f52371e7a239548b661cbf79711729e` · SHA-256 `d80ee2cebc65daee089609297c0542946daa320c5ccaabfcc7e183c49a2149b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Sonin.FiniteHorizon
import Mathematics.SemiLocalDefect.Hardy.BlockDecomposition

/-!
# Finite-horizon range projections

Projection order realizes nested Sonin images at a fixed horizon.
-/

namespace Mathematics.SemiLocalDefect.Sonin

open Mathematics.SemiLocalDefect.Hardy

universe uPrime uSpace

structure FiniteHorizonRangeProjection
    (model : OperatorModel)
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    (connectors : SoninConnectorSystem family) where
  operations : OperatorComposition model
  projection :
    Finset Prime → Finset Prime → model.Operator
  selfAdjoint :
    ∀ source horizon,
      model.SelfAdjoint (projection source horizon)
  nonnegative :
    ∀ source horizon,
      model.Nonnegative (projection source horizon)
  idempotent :
    ∀ source horizon,
      operations.compose
          (projection source horizon)
          (projection source horizon) =
        projection source horizon
  boundedByIdentity :
    ∀ source horizon,
      OperatorLE model
        (projection source horizon)
        model.identity
  monotone :
    ∀ {source target horizon},
      source ⊆ target →
      target ⊆ horizon →
      OperatorLE model
        (projection source horizon)
        (projection target horizon)
  realizesImage : Prop
  realizesImageProof : realizesImage
  digest : RealizationDigest

end Mathematics.SemiLocalDefect.Sonin
```
