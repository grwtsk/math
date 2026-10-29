import Mathematics.SemiLocalDefect.PlaceInteraction

/-!
# Operator Möbius interaction

Higher differences are defined independently of first-order monotonicity.
Positivity of every Möbius coefficient is a strictly stronger certificate.
-/

namespace Mathematics.SemiLocalDefect

open scoped BigOperators

universe uPrime

def mobiusSign (degree : Nat) : ℚ :=
  if Even degree then 1 else -1

def higherDifference
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (base directions : Finset Prime) :
    model.Operator :=
  ∑ subset ∈ directions.powerset,
    mobiusSign
      (directions.card - subset.card) •
      capacity.defect (base ∪ subset)

def mobiusInteraction
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (directions : Finset Prime) :
    model.Operator :=
  higherDifference capacity ∅ directions

structure MobiusReconstructionCertificate
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime) where
  reconstruct :
    ∀ cut,
      capacity.defect cut =
        ∑ subset ∈ cut.powerset,
          mobiusInteraction capacity subset

structure CompletelyPositiveInteraction
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime) : Prop where
  positive :
    ∀ directions,
      model.Nonnegative
        (mobiusInteraction
          capacity directions)

end Mathematics.SemiLocalDefect
