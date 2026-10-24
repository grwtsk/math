# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CanonicalTransmission.Variant177fe85677553b4571d7fd655cd6e834571524d7094854f78b182af2f3a8ed2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3c59df2269414d7e37de64ddc2840876af9ecd3` · SHA-256 `177fe85677553b4571d7fd655cd6e834571524d7094854f78b182af2f3a8ed2b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Hardy.ConditionalPassivity

/-!
# Canonical transmission reconstructed from capacity

Functional calculus and the reduced Douglas solution are explicit bridge
data; they are not inferred from an operator digest.
-/

namespace Mathematics.SemiLocalDefect.Hardy

universe uPrime

structure CanonicalTransmission
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime) where
  transmission :
    Finset Prime → model.Operator
  gram :
    Finset Prime → model.Operator
  gram_eq_complement :
    ∀ cut,
      gram cut =
        model.identity - capacity.defect cut
  squareRootFunctionalCalculus : Prop
  squareRootFunctionalCalculusProof :
    squareRootFunctionalCalculus
  gram_monotone_reverse :
    ∀ {source target},
      source ⊆ target →
      OperatorLE model
        (gram target) (gram source)

structure HardyCanonicalTransmissionBridge
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {capacity :
      PrimeCutDefectCapacity model Prime}
    (canonical :
      CanonicalTransmission capacity) where
  hardyTransmission :
    Finset Prime → model.Operator
  comparisonDefect :
    Finset Prime → model.Operator
  comparison :
    ∀ cut,
      hardyTransmission cut =
        canonical.transmission cut +
          comparisonDefect cut

end Mathematics.SemiLocalDefect.Hardy
```
