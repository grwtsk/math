/- Copyright (c) 2026 grwtsk contributors. MIT.
Focused SOURCE-LEVEL examples; native elaboration NOT_RUN. -/
import GRWTSK.ManifoldsAndCellComplexes.PrimeHopfKnotIntersection

namespace GRWTSK.Topology.GeometricTopology.PrimeLinkGeometrization
namespace PrimeHopfKnotIntersection

/-- Individual components remain injective, even while the pair intersects. -/
example : Function.Injective (chosenKnot 11) := chosenKnot_injective 11
example : Function.Injective (chosenKnot 13) := chosenKnot_injective 13
example : Topology.IsEmbedding (chosenKnot 11) := chosenKnot_isEmbedding 11
example : Topology.IsEmbedding (chosenKnot 13) := chosenKnot_isEmbedding 13

/-- The obstruction is shared by all p and q, not only prime labels. -/
example (p q : ℕ) :
    chosenKnot p (1 : Circle) = chosenKnot q (1 : Circle) :=
  chosenKnot_commonPoint p q

/-- The concrete published eleven/thirteen example is not a disjoint link. -/
example :
    ¬ Disjoint (Set.range (chosenKnot 11))
        (Set.range (chosenKnot 13)) :=
  chosenKnot_ranges_not_disjoint 11 13

/-- Regression on the exact original PrimePair structure and its gap. -/
example :
    ¬ Disjoint
      (Set.range (chosenKnot exampleElevenThirteen.p))
      (Set.range (chosenKnot exampleElevenThirteen.q)) :=
  primePair_chosen_representatives_not_disjoint exampleElevenThirteen

/-- This remains ARITHMETIC DATA and is not a linking-number theorem. -/
example :
    PrimeHopfKnotProjection.projectedWinding 13 -
      PrimeHopfKnotProjection.projectedWinding 11 = 4 := by
  norm_num [PrimeHopfKnotProjection.projectedWinding]

#print axioms chosenKnot_injective
#print axioms chosenKnot_isEmbedding
#print axioms chosenKnot_ranges_not_disjoint
#print axioms primePair_chosen_representatives_not_disjoint

end PrimeHopfKnotIntersection
end GRWTSK.Topology.GeometricTopology.PrimeLinkGeometrization
