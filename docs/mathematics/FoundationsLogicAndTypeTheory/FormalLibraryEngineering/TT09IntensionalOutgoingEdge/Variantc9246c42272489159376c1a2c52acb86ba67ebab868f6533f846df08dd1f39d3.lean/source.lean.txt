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
