import Mathematics.Progression.All
import Mathlib.Data.Real.Basic

/-! # Exact endpoint-preserving Gamma bridges -/

namespace Mathematics.GammaBridge

universe u

/-- An exact bridge carries its endpoints as fixed predicates. -/
structure Exact (State : Type u) where
  id : GammaBridgeId
  path : ℝ → State
  left : State
  right : State
  left_endpoint : path 0 = left
  right_endpoint : path 1 = right

end Mathematics.GammaBridge
