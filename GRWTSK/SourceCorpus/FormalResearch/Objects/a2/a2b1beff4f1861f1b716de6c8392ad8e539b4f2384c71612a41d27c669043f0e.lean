-- lean/cognition/Core/FlowRegion.lean

namespace Cognition.Core

/--
`FlowRegion` models cognitive workload zones:

- `underloaded`: the user has spare capacity.
- `optimal`: operating near ideal focus.
- `overloaded`: overwhelmed or cognitively saturated.
-/
inductive FlowRegion
  /-- Region A: spare capacity. -/
  | underloaded
  /-- Region B: optimal cognitive workload. -/
  | optimal
  /-- Region C: overwhelmed or overloaded. -/
  | overloaded
  deriving DecidableEq, Repr

namespace FlowRegion

/-- All known flow regions in order of increasing load. -/
def all : List FlowRegion :=
  [underloaded, optimal, overloaded]

/-- Render a `FlowRegion` as a human-readable string. -/
def toString : FlowRegion → String
  | underloaded => "Underloaded"
  | optimal     => "Optimal"
  | overloaded  => "Overloaded"

instance : ToString FlowRegion := ⟨toString⟩

end FlowRegion

end Cognition.Core
