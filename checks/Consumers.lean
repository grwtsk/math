import GRWTSK.Combinatorics.GraphTheory.HadwigerNelson.Moser
open GRWTSK.Combinatorics.GraphTheory.HadwigerNelson
-- Apply the shared canonical theorem directly to separate obligations.
example : FinitePointColorable 4 := moser_unit_graph_exact_four.1
example : ¬ FinitePointColorable 2 :=
  moser_unit_graph_exact_four.2 2 (by decide)
example : ¬ PlaneColorable 3 := plane_not_three_colorable
