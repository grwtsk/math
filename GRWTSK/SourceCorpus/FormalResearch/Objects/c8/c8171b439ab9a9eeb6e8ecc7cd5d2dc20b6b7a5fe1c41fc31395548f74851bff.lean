import FCRS.Transport.Derivation

universe uInput uWitness uCoordinate uMaterializedEdge

namespace FCRS.Transport.Theorems

/-!
This converse begins with an independently supplied materialized occurrence and
the theorem-derived declaration indexed by that exact occurrence.  It requires
accepted validation of the exact graph version and three independent reflection
capabilities.  No completed forward derivation, selected source witness, or
source admissibility proof occurs in the theorem's premises.
-/

theorem tt11_reflectiveRecovery
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate}
    {MaterializedEdge : Type uMaterializedEdge}
    {profile : IntervalProfile Input Witness}
    {input : Input}
    {interpretation : BinaryInterpretation Input Witness Coordinate}
    {constraint : BinaryConstraint Coordinate}
    {specification : SieveSpecification Coordinate}
    {materializedGraph :
      CoordinateGraph .Materialized Coordinate MaterializedEdge}
    (observation : ReflectiveRecoveryObservation profile input interpretation
      materializedGraph)
    (validationExecution : ValidationExecution materializedGraph.version)
    (validationResult : ValidationResult validationExecution)
    (_validationDecision : AcceptanceDecision validationResult)
    (realizationReflects : RealizationReflection
      specification materializedGraph)
    (sieveReflects : SieveReflection constraint specification)
    (coordinateReflects : InterpretationReflection
      profile interpretation constraint) :
    profile.admissible input observation.witness :=
  coordinateReflects.reflects input observation.witness
    (sieveReflects.reflects
      (interpretation.source input)
      (interpretation.target observation.witness)
      (realizationReflects.reflects observation.occurrence))

end FCRS.Transport.Theorems
