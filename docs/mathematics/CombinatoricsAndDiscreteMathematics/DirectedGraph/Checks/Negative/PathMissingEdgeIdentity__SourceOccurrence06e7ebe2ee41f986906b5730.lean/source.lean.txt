import GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PathOccurrences

open GRWTSK.Combinatorics.DirectedGraph.PathOccurrences

-- Expected type mismatch: equality of full vertex sequences cannot identify parallel Bool edges.
example : parallelLoop false = parallelLoop true :=
  (rfl : (parallelLoop false).vertices = (parallelLoop true).vertices)
