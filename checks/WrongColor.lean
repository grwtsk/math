import GRWTSK.Combinatorics.GraphTheory.HadwigerNelson.Moser
open GRWTSK.Combinatorics.GraphTheory.HadwigerNelson
def badColor : Fin 7 → Fin 4 := ![0, 1, 2, 0, 1, 2, 0]
example : ∀ i j, (i,j) ∈ moserEdges → badColor i ≠ badColor j := by
  decide
