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
