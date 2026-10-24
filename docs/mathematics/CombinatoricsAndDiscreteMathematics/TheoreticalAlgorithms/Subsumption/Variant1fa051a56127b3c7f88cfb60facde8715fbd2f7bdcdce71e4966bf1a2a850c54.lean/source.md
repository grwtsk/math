# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Subsumption.Variant1fa051a56127b3c7f88cfb60facde8715fbd2f7bdcdce71e4966bf1a2a850c54

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ad09dff2bd06f1027b7cd5465ade8cf16bb6d94` · SHA-256 `1fa051a56127b3c7f88cfb60facde8715fbd2f7bdcdce71e4966bf1a2a850c54`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Geometry.CorpusElement

/-!
# Euclidean subsumption

The modern layer is not a parallel theorem authority.  A proof-bearing
Euclidean item forgets directly to the ordinary Mathematics theorem-element
type.  Book labels and source placement are retained only as detachable
provenance.
-/

namespace Mathematics.Geometry

open Mathematics.Discovery

/--
Every kernel-proved Euclidean corpus item is already an ordinary Mathematics
theorem element for the exact same proposition and immutable seed.
-/
theorem everyKernelProvedEuclideanItemIsMathematicsTheorem
    {statement : Prop}
    {seed : EuclideanSeed statement}
    (item : KernelProvedEuclideanItem seed) :
    ∃ ordinary : LeanTheoremElement seed.proposal,
      ordinary = item.theoremElement := by
  exact ⟨item.asMathematicsTheoremElement, rfl⟩

/--
Replacing every historical coordinate and display label preserves semantic
identity, declared dependencies, theorem identity, and the proof term.
-/
theorem historicalPlacementIsNonauthoritative
    {statement : Prop}
    {seed : EuclideanSeed statement}
    (item : KernelProvedEuclideanItem seed)
    (replacement : List HistoricalProvenance) :
    let relocated := item.withProvenance replacement
    relocated.theoremElement.theoremElementId =
        item.theoremElement.theoremElementId ∧
      relocated.theoremElement.sourceSeedId =
        item.theoremElement.sourceSeedId ∧
      relocated.theoremElement.proof =
        item.theoremElement.proof ∧
      (seed.withProvenance replacement).dependencies =
        seed.dependencies := by
  exact ⟨rfl, rfl, rfl, rfl⟩

/--
The provenance erasure is exact: neither a book coordinate nor a label enters
the ordinary theorem element returned by subsumption.
-/
theorem provenanceErasureIsExact
    {statement : Prop}
    {seed : EuclideanSeed statement}
    (item : KernelProvedEuclideanItem seed) :
    item.asMathematicsTheoremElement = item.theoremElement :=
  rfl

end Mathematics.Geometry
```
