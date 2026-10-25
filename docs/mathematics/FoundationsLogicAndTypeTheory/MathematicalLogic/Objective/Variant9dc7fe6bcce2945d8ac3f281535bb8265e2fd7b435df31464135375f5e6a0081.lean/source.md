# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Objective.Variant9dc7fe6bcce2945d8ac3f281535bb8265e2fd7b435df31464135375f5e6a0081

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `80b600d3f1907e36c6c95a462f73c86043a7101b` · SHA-256 `9dc7fe6bcce2945d8ac3f281535bb8265e2fd7b435df31464135375f5e6a0081`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
