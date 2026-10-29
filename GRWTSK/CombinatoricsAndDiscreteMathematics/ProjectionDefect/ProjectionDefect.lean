import Mathematics.SemiLocalDefect.Sonin.RangeProjection

/-!
# Sonin projection defect realization

The finite-horizon projection is related to the primary capacity by an
explicit realization certificate; it is never silently identified with it.
-/

namespace Mathematics.SemiLocalDefect.Sonin

universe uPrime uSpace

structure SoninProjectionDefectRealization
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    {connectors : SoninConnectorSystem family}
    (range :
      FiniteHorizonRangeProjection
        model connectors)
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (horizon : Finset Prime) where
  comparisonDefect :
    Finset Prime → model.Operator
  comparison :
    ∀ cut,
      cut ⊆ horizon →
      range.projection cut horizon =
        capacity.defect cut +
          comparisonDefect cut
  exactOnHorizon : Prop
  exactOnHorizonProof : exactOnHorizon
  packetTraceCompatible : Prop
  packetTraceCompatibleProof :
    packetTraceCompatible

def soninProjectionIncrement
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    {connectors : SoninConnectorSystem family}
    (range :
      FiniteHorizonRangeProjection
        model connectors)
    (source horizon : Finset Prime)
    (prime : Prime) :
    model.Operator :=
  range.projection (insert prime source) horizon -
    range.projection source horizon

theorem soninProjectionIncrement_nonnegative
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    {connectors : SoninConnectorSystem family}
    (range :
      FiniteHorizonRangeProjection
        model connectors)
    (source horizon : Finset Prime)
    (prime : Prime)
    (insertSubset :
      insert prime source ⊆ horizon) :
    model.Nonnegative
      (soninProjectionIncrement
        range source horizon prime) := by
  exact range.monotone
    (Finset.subset_insert prime source)
    insertSubset

end Mathematics.SemiLocalDefect.Sonin
