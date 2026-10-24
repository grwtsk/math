# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.PositiveCapacity.Variant8fb03204736aa1474b2c2d5d5b043d95e61db80702382e0ecb3b115d998c882b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90c19ba5020612adeba72d27574e7146758423fc` · SHA-256 `8fb03204736aa1474b2c2d5d5b043d95e61db80702382e0ecb3b115d998c882b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.OperatorOrder

/-!
# Positive finite-prime defect capacity

This is the authoritative abstract potential.  Hardy and Sonin objects may
realize it only through later certificates.
-/

namespace Mathematics.SemiLocalDefect

universe uPrime

structure PrimeCutDefectCapacity
    (model : OperatorModel)
    (Prime : Type uPrime)
    [DecidableEq Prime] where
  defect : Finset Prime → model.Operator
  selfAdjoint :
    ∀ cut,
      model.SelfAdjoint (defect cut)
  nonnegative :
    ∀ cut,
      model.Nonnegative (defect cut)
  boundedByIdentity :
    ∀ cut,
      OperatorLE model
        (defect cut) model.identity
  monotone :
    ∀ {source target},
      source ⊆ target →
      OperatorLE model
        (defect source) (defect target)
  digest : CapacityDigest

def PrimeCutDefectCapacity.baseline
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime) :
    model.Operator :=
  capacity.defect ∅

def PrimeCutDefectCapacity.reducedDefect
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime) :
    model.Operator :=
  capacity.defect cut - capacity.baseline

def PrimeCutDefectCapacity.increment
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (prime : Prime) :
    model.Operator :=
  capacity.defect (insert prime cut) -
    capacity.defect cut

theorem reducedDefect_empty
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime) :
    capacity.reducedDefect ∅ = 0 := by
  simp [PrimeCutDefectCapacity.reducedDefect,
    PrimeCutDefectCapacity.baseline]

theorem reducedDefect_nonnegative
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime) :
    model.Nonnegative
      (capacity.reducedDefect cut) := by
  exact capacity.monotone (Finset.empty_subset cut)

theorem increment_nonnegative
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (prime : Prime) :
    model.Nonnegative
      (capacity.increment cut prime) :=
  capacity.monotone
    (Finset.subset_insert prime cut)

theorem increment_selfAdjoint
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (prime : Prime) :
    model.SelfAdjoint
      (capacity.increment cut prime) :=
  model.sub_selfAdjoint
    (capacity.selfAdjoint _)
    (capacity.selfAdjoint _)

end Mathematics.SemiLocalDefect
```
