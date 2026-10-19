import Mathematics.GraphAccess.Authority

/-!
# Graph-access objectives

Objectives determine the result category and minimum access capability before
any traversal implementation is selected.
-/

namespace Mathematics.GraphAccess

inductive AccessProductKind
  | path
  | coverage
  | sample
  | proposal
  | obstruction
deriving DecidableEq, Repr

inductive AccessObjective
  | minimumHop
  | minimumCost
  | goalDirectedCost
  | fairExploration
  | universalCoverage
  | finitePatternCoverage
  | invariantSampling
  | multiscaleDiversification
  | primitiveObstruction
  | limitCylinderAccess
deriving DecidableEq, Repr

def AccessObjective.productKind :
    AccessObjective → AccessProductKind
  | .minimumHop => .path
  | .minimumCost => .path
  | .goalDirectedCost => .path
  | .fairExploration => .coverage
  | .universalCoverage => .coverage
  | .finitePatternCoverage => .coverage
  | .invariantSampling => .sample
  | .multiscaleDiversification => .proposal
  | .primitiveObstruction => .obstruction
  | .limitCylinderAccess => .coverage

def AccessObjective.requiresTarget :
    AccessObjective → Bool
  | .minimumHop => true
  | .minimumCost => true
  | .goalDirectedCost => true
  | _ => false

def AccessObjective.requiredCapability :
    AccessObjective → AccessCapability
  | .minimumHop => .traverse
  | .minimumCost => .traverse
  | .goalDirectedCost => .traverse
  | .fairExploration => .traverse
  | .universalCoverage => .traverse
  | .finitePatternCoverage => .traverse
  | .invariantSampling => .sample
  | .multiscaleDiversification => .propose
  | .primitiveObstruction => .traverse
  | .limitCylinderAccess => .traverse

def AuthoritySupports
    (authority : AccessAuthority)
    (objective : AccessObjective) : Prop :=
  authority.grants objective.requiredCapability = true

instance
    (authority : AccessAuthority)
    (objective : AccessObjective) :
    Decidable (AuthoritySupports authority objective) :=
  by
    unfold AuthoritySupports
    infer_instance

end Mathematics.GraphAccess
