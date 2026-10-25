# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TT10MaterializedOutgoingEdge.Variantbd8f01f243025c29278235ffe4ba54a950615697773fb705a78ed891b8821266

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2afcb6b8609a311c91bbf114d9f029596f75db3f` · SHA-256 `bd8f01f243025c29278235ffe4ba54a950615697773fb705a78ed891b8821266`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Transport.Graph

universe uCoordinate uMaterializedEdge

namespace FCRS.Transport.Theorems

/--
Materialized existence is obtained only from a source-total realization
contract on the explicitly supplied source scope.
-/
theorem tt10_materializedOutgoingEdge
    {Coordinate : Type uCoordinate}
    {MaterializedEdge : Type uMaterializedEdge}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    {soundness : SieveSoundness procedure}
    {materializedGraph :
      CoordinateGraph .Materialized Coordinate MaterializedEdge}
    {contract : RealizationContract soundness materializedGraph}
    (scope : Coordinate → Prop)
    (sourceTotal : SourceTotalRealization contract scope)
    (source : Coordinate)
    (hScope : scope source) :
    Nonempty (MaterializedOutgoingEvidence contract source) :=
  ⟨sourceTotal.realize source hScope⟩

end FCRS.Transport.Theorems
```
