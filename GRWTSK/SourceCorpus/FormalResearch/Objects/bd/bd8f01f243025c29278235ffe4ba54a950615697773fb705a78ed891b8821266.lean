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
