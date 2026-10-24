import FormalResearch.PositiveAtlas.OrderTwoRecursiveCumulant
import Mathlib.Data.Fin.VecNotation
namespace FormalResearch.PositiveAtlas.MomentCumulant
example {E : Type} (directions : Fin 4 → E) :
    blockDirections directions ({(0 : Fin 4), (2 : Fin 4)} : Finset (Fin 4)) =
      ![directions 0, directions 2] := by
  have h := Finset.orderEmbOfFin_unique
    (s := ({(0 : Fin 4), (2 : Fin 4)} : Finset (Fin 4)))
    (f := (![0, 2] : Fin 2 → Fin 4)) (by decide : _ = 2)
    (by decide) (by decide)
  funext j
  unfold blockDirections blockOrderIso
  rw [Finset.coe_orderIsoOfFin_apply, ← h]
  fin_cases j <;> rfl
end FormalResearch.PositiveAtlas.MomentCumulant
