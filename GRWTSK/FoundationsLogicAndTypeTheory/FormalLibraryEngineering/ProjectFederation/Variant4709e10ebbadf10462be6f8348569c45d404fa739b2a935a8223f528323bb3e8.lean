import Mathematics.Relaxation.Operator

/-!
# Project-federated relaxation invariants

Relaxation may change the overlay, but it cannot rewrite, reorder, merge, or
drop the immutable project snapshots that define its work package.
-/

namespace Mathematics.Relaxation

namespace Operator

theorem preserves_source_snapshots
    (operator : Operator)
    (state : State) :
    (operator.step state).workPackage.sourceSnapshots =
      state.workPackage.sourceSnapshots := by
  exact congrArg WorkPackage.sourceSnapshots
    (operator.source_preserved state).2

theorem preserves_project_snapshot_keys
    (operator : Operator)
    (state : State) :
    (operator.step state).workPackage.projectSnapshots =
      state.workPackage.projectSnapshots := by
  exact congrArg WorkPackage.projectSnapshots
    (operator.source_preserved state).2

theorem preserves_source_object_scope
    (operator : Operator)
    (state : State) :
    (operator.step state).workPackage.sourceObjectIds =
      state.workPackage.sourceObjectIds := by
  exact congrArg WorkPackage.sourceObjectIds
    (operator.source_preserved state).2

end Operator

end Mathematics.Relaxation
