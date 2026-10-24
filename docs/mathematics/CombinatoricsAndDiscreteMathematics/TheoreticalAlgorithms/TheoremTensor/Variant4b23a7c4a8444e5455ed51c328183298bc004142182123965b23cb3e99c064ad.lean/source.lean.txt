import Mathlib.Data.List.Basic

namespace Noeoueue.Modular.TheoremTensor

/-- Row-major tensor half-turn, represented after shape validation by list reversal. -/
def halfTurn {alpha : Type} (slots : List alpha) : List alpha := slots.reverse

theorem halfTurn_involution {alpha : Type} (slots : List alpha) :
    halfTurn (halfTurn slots) = slots := by
  simp [halfTurn]

theorem halfTurn_preserves_length {alpha : Type} (slots : List alpha) :
    (halfTurn slots).length = slots.length := by
  simp [halfTurn]

end Noeoueue.Modular.TheoremTensor
