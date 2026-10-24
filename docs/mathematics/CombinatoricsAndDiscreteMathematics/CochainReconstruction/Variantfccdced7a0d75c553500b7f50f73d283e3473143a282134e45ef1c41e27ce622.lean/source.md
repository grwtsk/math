# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CochainReconstruction.Variantfccdced7a0d75c553500b7f50f73d283e3473143a282134e45ef1c41e27ce622

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8e9d45ce1cce3d09a467342bda88b3af88731a8` · SHA-256 `fccdced7a0d75c553500b7f50f73d283e3473143a282134e45ef1c41e27ce622`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.CochainCurvature

/-!
# Positive exact-component reconstruction

The finite least-squares or semidefinite solver is external.  Its accepted
receipt must bind the reconstructed potential, the projected exact cochain,
and all three visible residual channels.
-/

namespace Mathematics.SemiLocalDefect

universe uPrime

structure DefectCochainProjection
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (measured :
      MeasuredDefectCochain model Prime) where
  potential : Finset Prime → model.Operator
  baseValue : model.Operator
  baseFixed : potential ∅ = baseValue
  projectedIncrement :
    Finset Prime → Prime → model.Operator
  projected_exact :
    ∀ cut prime,
      projectedIncrement cut prime =
        potential (insert prime cut) -
          potential cut
  closednessResidual :
    Finset Prime → Prime → Prime →
      model.Operator
  measurementResidual :
    Finset Prime → Prime → model.Operator
  residual_split :
    ∀ cut prime,
      measured.increment cut prime =
        projectedIncrement cut prime +
          measurementResidual cut prime
  digest : ReconstructionDigest

structure PositiveCapacityReconstruction
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {measured :
      MeasuredDefectCochain model Prime}
    (projection :
      DefectCochainProjection measured) where
  selfAdjoint :
    ∀ cut,
      model.SelfAdjoint (projection.potential cut)
  nonnegative :
    ∀ cut,
      model.Nonnegative (projection.potential cut)
  boundedByIdentity :
    ∀ cut,
      OperatorLE model
        (projection.potential cut)
        model.identity
  monotone :
    ∀ {source target},
      source ⊆ target →
      OperatorLE model
        (projection.potential source)
        (projection.potential target)
  positivityResidual :
    Finset Prime → model.Operator
  positivityResidual_nonnegative :
    ∀ cut,
      model.Nonnegative
        (positivityResidual cut)

end Mathematics.SemiLocalDefect
```
