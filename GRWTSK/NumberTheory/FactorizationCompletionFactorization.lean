import Mathematics.BinaryFrontier.Obstruction.MUS

/-!
# Independent completion factorization

Support disjointness does not imply a product decomposition.  The split,
satisfaction equivalence, no-cross-constraint law, and symmetry
compatibility are carried explicitly.
-/

namespace Mathematics.BinaryFrontier.Obstruction

open Mathematics.BinaryFrontier.Completion

universe uPartial uFull uConstraint uLeft uRight uCoordinate

structure CompletionFactorization
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    (semantics :
      Semantics Partial Full Constraint)
    (left right : Finset Constraint)
    (partial : Partial) where
  LeftFull : Type uLeft
  RightFull : Type uRight
  split :
    Full ≃ LeftFull × RightFull
  leftSatisfaction :
    LeftFull → Prop
  rightSatisfaction :
    RightFull → Prop
  factors :
    ∀ completion,
      semantics.SatisfiesAll
          completion (left ∪ right) ↔
        leftSatisfaction (split completion).1 ∧
          rightSatisfaction (split completion).2

structure CoprimeObstructionCertificate
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {semantics :
      Semantics Partial Full Constraint}
    {registry : Finset Constraint}
    {partial : Partial}
    (leftCore rightCore :
      PrimitiveCore
        semantics registry partial)
    (Coordinate : Type uCoordinate)
    [DecidableEq Coordinate] where
  protectedSupport :
    Constraint → Finset Coordinate
  support_disjoint :
    Disjoint
      (leftCore.constraints.biUnion
        protectedSupport)
      (rightCore.constraints.biUnion
        protectedSupport)
  crossConstraint :
    Constraint → Prop
  no_cross_constraints :
    ∀ constraint ∈
        leftCore.constraints ∪
          rightCore.constraints,
      ¬crossConstraint constraint
  completion_factors :
    CompletionFactorization
      semantics
      leftCore.constraints
      rightCore.constraints
      partial
  quotientCompatible : Prop
  quotient_compatible :
    quotientCompatible

theorem coprime_core_factorization_sound
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {semantics :
      Semantics Partial Full Constraint}
    {registry : Finset Constraint}
    {partial : Partial}
    {leftCore rightCore :
      PrimitiveCore
        semantics registry partial}
    {Coordinate : Type uCoordinate}
    [DecidableEq Coordinate]
    (certificate :
      CoprimeObstructionCertificate
        leftCore rightCore Coordinate)
    (completion : Full) :
    semantics.SatisfiesAll completion
        (leftCore.constraints ∪
          rightCore.constraints) ↔
      certificate.completion_factors.leftSatisfaction
          (certificate.completion_factors.split
            completion).1 ∧
        certificate.completion_factors.rightSatisfaction
          (certificate.completion_factors.split
            completion).2 :=
  certificate.completion_factors.factors
    completion

end Mathematics.BinaryFrontier.Obstruction
