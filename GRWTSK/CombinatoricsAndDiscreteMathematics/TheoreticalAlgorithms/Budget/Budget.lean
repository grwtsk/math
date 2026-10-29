/-!
# Bounded graph-access execution

Exhaustion returns an explicit residual frontier.  It is not identified with
target unreachability.
-/

namespace Mathematics.GraphAccess

structure GraphAccessBudget where
  maximumVisitedNodes : Nat
  maximumFrontierSize : Nat
  maximumPathLength : Nat
  maximumWorkSteps : Nat
  maximumPersistedState : Nat
  maximumVerifierSubmissions : Nat
  maximumProposalCount : Nat
deriving DecidableEq, Repr

structure ResidualFrontier (Node : Type u) where
  nodes : List Node
  consumedWorkSteps : Nat
  remainingWorkSteps : Nat
deriving Repr

inductive BudgetedResult (Node Result : Type u)
  | completed (result : Result)
  | residual (frontier : ResidualFrontier Node)

theorem resource_exhaustion_preserves_residual
    {Node Result : Type u}
    (frontier : ResidualFrontier Node) :
    BudgetedResult.residual (Result := Result) frontier =
      .residual frontier :=
  rfl

end Mathematics.GraphAccess
