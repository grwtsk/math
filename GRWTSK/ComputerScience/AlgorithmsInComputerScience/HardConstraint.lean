import Mathematics.Relaxation.State

/-! # Hard constraints -/

namespace Mathematics.Relaxation

/-- A named predicate that every admitted relaxation state must preserve. -/
structure HardConstraint where
  constraintId : StableId
  Holds : State → Prop
  statementDigest : Digest

/-- Finite conjunction of hard constraints. -/
def SatisfiesAll
    (constraints : List HardConstraint)
    (state : State) : Prop :=
  ∀ constraint ∈ constraints, constraint.Holds state

end Mathematics.Relaxation
