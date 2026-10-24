# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Frontier.Variant81bf002ad78ac097269aa54232e20a30128f4593fce4a1a2c86e9bf0f2195b77

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b6cda084f3130a2b7f745b1d9fd21eff738ae87f` · SHA-256 `81bf002ad78ac097269aa54232e20a30128f4593fce4a1a2c86e9bf0f2195b77`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Request

/-!
# Certified residual frontier

A residual frontier preserves unresolved traversal state without claiming
unreachability.  Its summary law is supplied by the concrete mode.
-/

namespace Mathematics.GraphAccess

inductive ResidualCause
  | fuelExhausted
  | budgetExhausted
      (dimensions : Finset BudgetDimension)
  | blockedByUnknowns
  | modeStopped
  | compatibilityBudgetExhausted
deriving DecidableEq

instance : Repr ResidualCause where
  reprPrec cause precedence :=
    match cause with
    | .fuelExhausted =>
        Repr.reprPrec (0 : Nat) precedence
    | .budgetExhausted dimensions =>
        Repr.reprPrec (1, dimensions.card) precedence
    | .blockedByUnknowns =>
        Repr.reprPrec (2 : Nat) precedence
    | .modeStopped =>
        Repr.reprPrec (3 : Nat) precedence
    | .compatibilityBudgetExhausted =>
        Repr.reprPrec (4 : Nat) precedence

structure ResidualFrontier
    (G : GraphCut)
    {profiles : ModeProfileFamily G}
    (req : AdmittedAccessRequest G profiles) where
  visited : Finset G.Node
  pending : List G.Node
  activeBoundary : Finset G.Node
  blockedEdges : Finset G.Edge
  usage : TraversalUsage
  cause : ResidualCause
  stateDigest : StateDigest
  cutDigest : CutDigest
  cutDigest_eq : cutDigest = G.digest
  visitedAdmissible :
    ∀ node ∈ visited,
      NodeAdmissible req.admissibility node
  pendingAdmissible :
    ∀ node ∈ pending,
      NodeAdmissible req.admissibility node
  boundaryAdmissible :
    ∀ node ∈ activeBoundary,
      NodeAdmissible req.admissibility node
  pending_nodup : pending.Nodup
  summarySound : Prop

/--
The core has no constructor turning a resource frontier into a graph-theoretic
unreachability proof.  Concrete modes may define a separate certificate type.
-/
def HasCertifiedTargetUnreachability
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    (_frontier : ResidualFrontier G req) : Prop :=
  False

end Mathematics.GraphAccess
```
