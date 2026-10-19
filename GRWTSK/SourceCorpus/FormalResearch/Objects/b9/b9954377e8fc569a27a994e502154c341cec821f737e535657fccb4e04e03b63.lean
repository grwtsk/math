import Mathlib.Data.Finset.Basic
import Noeoueue.Memory.Identity

namespace Noeoueue.TypeMemory

structure TheoremHyperedge (alpha : Type) where
  theoremId : TheoremId
  statementSupport : Finset alpha
  proofDependencies : Finset alpha
  deriving DecidableEq

/-- `type-memory://noeoueue/type-graph@1`: repeated syntax is one statement incidence. -/
theorem statement_support_idempotent {alpha} [DecidableEq alpha] (s : Finset alpha) :
    s ∪ s = s := by simp

end Noeoueue.TypeMemory
