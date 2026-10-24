# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteHorizonGram.Variant7ff80354e2ae104db137fea8d2d6c4da81b265839b653b5a5540d26e3011e41b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62f87a9f880eb48951cf6db84119f4fdd4ea4fa6` · SHA-256 `7ff80354e2ae104db137fea8d2d6c4da81b265839b653b5a5540d26e3011e41b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
