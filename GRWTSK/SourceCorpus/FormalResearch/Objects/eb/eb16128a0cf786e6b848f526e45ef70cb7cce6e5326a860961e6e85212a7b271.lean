import Mathematics.StratifiedBoundary.Symmetry.CutAction
import Mathematics.StratifiedBoundary.Boundary.SuccessorConnector

/-!
# Successor symmetry compatibility
-/

namespace Mathematics.StratifiedBoundary

structure SuccessorAutomorphismCompatibility
    (SuccessorGroup PredecessorGroup
      SuccessorState PredecessorState : Type u) where
  successorAction :
    CutAutomorphismAction SuccessorGroup SuccessorState
  predecessorAction :
    CutAutomorphismAction PredecessorGroup PredecessorState
  connector :
    SuccessorStateConnector PredecessorState SuccessorState
  restrictGroup : SuccessorGroup → PredecessorGroup
  projects :
    ∀ groupElement state,
      connector.project
          (successorAction.act groupElement state) =
        predecessorAction.act
          (restrictGroup groupElement)
          (connector.project state)

end Mathematics.StratifiedBoundary
