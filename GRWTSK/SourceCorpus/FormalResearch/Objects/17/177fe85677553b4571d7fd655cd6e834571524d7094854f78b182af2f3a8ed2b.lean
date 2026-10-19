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
