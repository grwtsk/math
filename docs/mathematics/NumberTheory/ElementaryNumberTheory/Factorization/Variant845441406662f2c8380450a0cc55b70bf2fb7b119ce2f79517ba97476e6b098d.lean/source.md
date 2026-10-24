# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.Factorization.Variant845441406662f2c8380450a0cc55b70bf2fb7b119ce2f79517ba97476e6b098d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `44517e69ffe122af95eb5f35b9801e8e2433195b` · SHA-256 `845441406662f2c8380450a0cc55b70bf2fb7b119ce2f79517ba97476e6b098d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
