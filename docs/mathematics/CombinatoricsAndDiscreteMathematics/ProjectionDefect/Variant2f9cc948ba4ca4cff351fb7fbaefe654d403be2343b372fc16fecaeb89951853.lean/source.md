# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ProjectionDefect.Variant2f9cc948ba4ca4cff351fb7fbaefe654d403be2343b372fc16fecaeb89951853

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab957c28c7914322a02152e5d8e1df51eba8fd1c` · SHA-256 `2f9cc948ba4ca4cff351fb7fbaefe654d403be2343b372fc16fecaeb89951853`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
