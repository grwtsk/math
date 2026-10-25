/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

structure InfiniteTimeComputationModel where
  State : Type
  step : State -> State
  limitState : (Nat -> State) -> Option State
  stabilityPredicate : (Nat -> State) -> Prop

def EventuallyStable {α : Type} (x : Nat -> α) : Prop :=
  ∃ N, ∀ n, N ≤ n -> x n = x N

end Legacy
end Surface
