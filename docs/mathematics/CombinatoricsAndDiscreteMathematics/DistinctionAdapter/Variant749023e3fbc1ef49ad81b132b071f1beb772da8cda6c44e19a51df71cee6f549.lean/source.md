# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DistinctionAdapter.Variant749023e3fbc1ef49ad81b132b071f1beb772da8cda6c44e19a51df71cee6f549

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `625ab7f8e1995454886966dc0c328344aa739de8` · SHA-256 `749023e3fbc1ef49ad81b132b071f1beb772da8cda6c44e19a51df71cee6f549`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.Refinement.Tree

/-!
# Presentation distinction adapters

Coordinate meaning is carried by immutable semantic references, never inferred
from array position.  Multi-coordinate edits are represented as explicit
chains of certified one-coordinate edges.
-/

namespace Mathematics.BinaryFrontier

structure DistinctionCoordinate (n : Nat) where
  index : Fin n
  coordinateId : String
  name : String
  semanticRef : String
  kindRef : String
  zeroMeaningRef : String
  oneMeaningRef : String
  unresolvedMeaningRef : String
  verifierRef : String
  authorityRef : String
  cognitiveLoadWeight : Nat

structure DistinctionRegistry (n : Nat) where
  registryId : String
  revisionRef : String
  coordinates : Fin n → DistinctionCoordinate n
  index_exact :
    ∀ index, (coordinates index).index = index

structure PresentationRefinementStep
    {n : Nat} where
  parent : PartialBitfield n
  child : PartialBitfield n
  edge : RefinementEdge parent child

structure PresentationRefinementChain
    (n : Nat) where
  sourcePresentationRef : String
  candidatePresentationRef : String
  steps : List (PresentationRefinementStep (n := n))
  affectedCoordinates : Finset (Fin n)
  everyAffectedCoordinateHasStep :
    ∀ coordinate ∈ affectedCoordinates,
      ∃ step ∈ steps,
        step.edge.resolution.coordinate = coordinate

def presentation_refinement_step_changes_one_coordinate
    {n : Nat}
    (step : PresentationRefinementStep (n := n)) :
    OneCoordinateResolution step.parent step.child :=
  step.edge.resolution

end Mathematics.BinaryFrontier
```
