# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TT07RealizationEndpoints.Variantf0312ae2708398a7e1150744030eb8eff186343d8e18321d461aae58f803bb60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9ba6ea646535bdfe76bb954e2360c408d5b8a51` · SHA-256 `f0312ae2708398a7e1150744030eb8eff186343d8e18321d461aae58f803bb60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Transport.Graph

universe uCoordinate uMaterializedEdge

namespace FCRS.Transport.Theorems

/-- A realization record retains both exact materialized endpoint equations. -/
theorem tt07_realizationEndpoints
    {Coordinate : Type uCoordinate}
    {MaterializedEdge : Type uMaterializedEdge}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    {soundness : SieveSoundness procedure}
    {materializedGraph :
      CoordinateGraph .Materialized Coordinate MaterializedEdge}
    {contract : RealizationContract soundness materializedGraph}
    {source target : Coordinate}
    {evaluation : SieveEvaluation procedure source target}
    {witness : SieveWitness soundness evaluation}
    (record : RealizationRecord contract evaluation witness) :
    materializedGraph.source record.occurrence.edge = source ∧
      materializedGraph.target record.occurrence.edge = target :=
  ⟨record.occurrence.sourceEquation, record.occurrence.targetEquation⟩

end FCRS.Transport.Theorems
```
