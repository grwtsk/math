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
