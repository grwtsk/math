import Mathematics.SemiLocalDefect.Hardy.CanonicalTransmission

/-!
# Reduced Douglas connectors

The chosen connector is bound to minimal norm, its range support, and the
canonical transmission factorization.
-/

namespace Mathematics.SemiLocalDefect.Hardy

universe uPrime

structure ReducedDouglasConnector
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {capacity :
      PrimeCutDefectCapacity model Prime}
    (canonical :
      CanonicalTransmission capacity)
    (operations :
      OperatorComposition model)
    (cut : Finset Prime)
    (prime : Prime) where
  connector : model.Operator
  contraction : Prop
  contractionProof : contraction
  factorization :
    canonical.transmission (insert prime cut) =
      operations.compose
        connector
        (canonical.transmission cut)
  minimalNorm : Prop
  minimalNormProof : minimalNorm
  rangeSupported : Prop
  rangeSupportedProof : rangeSupported
  incrementFactorization : Prop
  incrementFactorizationProof :
    incrementFactorization

end Mathematics.SemiLocalDefect.Hardy
