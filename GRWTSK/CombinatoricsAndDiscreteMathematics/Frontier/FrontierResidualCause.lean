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
