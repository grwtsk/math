# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TT09IntensionalOutgoingEdge.Variantc9246c42272489159376c1a2c52acb86ba67ebab868f6533f846df08dd1f39d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f552dd296316c9593db98d1860375a764123d7a1` · SHA-256 `c9246c42272489159376c1a2c52acb86ba67ebab868f6533f846df08dd1f39d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Transport.Theorems.TT06_SieveCertificationSoundness
import FCRS.Transport.Graph

universe uCoordinate uIntensionalEdge

namespace FCRS.Transport.Theorems

/--
An accepted sieve witness yields an intensional edge only through the exact
`accepts ↔ edge` semantics of the declared intensional graph.
-/
theorem tt09_intensionalOutgoingEdge
    {Coordinate : Type uCoordinate}
    {IntensionalEdge : Type uIntensionalEdge}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    {soundness : SieveSoundness procedure}
    {intensionalGraph :
      CoordinateGraph .Intensional Coordinate IntensionalEdge}
    (semantics : IntensionalGraphSemantics specification intensionalGraph)
    {source target : Coordinate}
    (evaluation : SieveEvaluation procedure source target)
    (witness : SieveWitness soundness evaluation) :
    Nonempty (EdgeOccurrence intensionalGraph source target) :=
  ⟨semantics.realize (tt06_sieveCertificationSound witness)⟩

end FCRS.Transport.Theorems
```
