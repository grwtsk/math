import Mathematics.SemiLocalDefect.Sonin.ProjectionDefect

/-!
# Finite-horizon Gram operators

The compatible metric is built relative to a top cut and is not promoted to a
global metric without a cofinal stability certificate.
-/

namespace Mathematics.SemiLocalDefect.Sonin

universe uPrime uSpace

structure FiniteHorizonGramFamily
    (model : OperatorModel)
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    (connectors : SoninConnectorSystem family)
    (range :
      FiniteHorizonRangeProjection
        model connectors) where
  connectorOperator :
    Finset Prime → Finset Prime → model.Operator
  gram :
    Finset Prime → Finset Prime → model.Operator
  gram_eq_pullback :
    ∀ source horizon,
      gram source horizon =
        range.operations.compose
          (range.operations.adjoint
            (connectorOperator source horizon))
          (connectorOperator source horizon)
  selfAdjoint :
    ∀ source horizon,
      model.SelfAdjoint (gram source horizon)
  nonnegative :
    ∀ source horizon,
      model.Nonnegative (gram source horizon)
  compatible :
    ∀ {source target horizon},
      source ⊆ target →
      target ⊆ horizon →
      gram source horizon =
        range.operations.compose
          (range.operations.adjoint
            (connectorOperator source target))
          (range.operations.compose
            (gram target horizon)
            (connectorOperator source target))
  lowerBound :
    Finset Prime → ℚ
  upperBound :
    Finset Prime → ℚ
  lowerBound_positive :
    ∀ source, 0 < lowerBound source
  bounded : Prop
  boundedProof : bounded

end Mathematics.SemiLocalDefect.Sonin
