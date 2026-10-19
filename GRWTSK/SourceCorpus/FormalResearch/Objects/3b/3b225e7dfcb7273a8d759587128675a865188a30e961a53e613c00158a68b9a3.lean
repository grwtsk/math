import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Finset.Card
import Noeoueue.Memory.TypeGraph

namespace Noeoueue.TypeMemory

inductive FrequencyStatus | exact | rounded | residual | unknown
  deriving DecidableEq, Repr

/-- `type-memory://noeoueue/prime-frequency@1` -/
def incidenceCount {alpha} [DecidableEq alpha] (edges : Finset (TheoremHyperedge alpha))
    (t : alpha) : Nat := (edges.filter fun h => t ∈ h.statementSupport).card

def exactAt (theoremCount assignedPrime observed : Nat) : Prop :=
  assignedPrime * observed = theoremCount

theorem failed_target_is_residual {n p c : Nat} (h : p * c ≠ n) : Not (exactAt n p c) := h

end Noeoueue.TypeMemory
