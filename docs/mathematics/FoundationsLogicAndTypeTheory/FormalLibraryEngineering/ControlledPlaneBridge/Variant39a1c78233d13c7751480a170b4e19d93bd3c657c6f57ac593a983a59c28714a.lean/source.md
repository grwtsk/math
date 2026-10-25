# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ControlledPlaneBridge.Variant39a1c78233d13c7751480a170b4e19d93bd3c657c6f57ac593a983a59c28714a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `760475510780549c53d95dd12255dfde698e72e5` · SHA-256 `39a1c78233d13c7751480a170b4e19d93bd3c657c6f57ac593a983a59c28714a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledPlane
import FCRS.Transport.Derivation

universe uInput uWitness

namespace FCRS.Transport

open FCRS.ControlledPlane

/-!
The extension leaves `ControlledPlaneModel` unchanged and explicitly joins the
arithmetic, pair-sieve, coordinate-graph, factoring-sieve, and controlled-graph
paths.  In particular, the realized coordinate-graph edge is proved to be the
same `edgeForPair` used by the controlled-plane occurrence relation.
-/

structure ControlledPlaneTransportExtension
    (S : RealizationSystem) (M : ControlledPlaneModel S) where
  Input : Type uInput
  Witness : Type uWitness
  profile : IntervalProfile Input Witness
  interpretation :
    BinaryInterpretation Input Witness M.ClosedCoordinate
  constraint : BinaryConstraint M.ClosedCoordinate
  interpretationBridge : InterpretationBridge
    profile interpretation constraint

  pairSieveSpecification : SieveSpecification M.ClosedCoordinate
  pairSieveProcedure : SieveProcedure pairSieveSpecification
  pairSieveSoundness : SieveSoundness pairSieveProcedure
  pairSieveCompleteness : SieveCompleteness pairSieveProcedure
  constraintSieveBridge : ConstraintSieveBridge
    constraint pairSieveSpecification

  coordinateToPrimitive : M.ClosedCoordinate → M.GraphPrimitive
  pairToMorphism : M.ClosedCoordinate → M.ClosedCoordinate → M.GraphMorphism
  pairToFactorization :
    M.ClosedCoordinate → M.ClosedCoordinate → M.Factorization
  edgeForPair : M.ClosedCoordinate → M.ClosedCoordinate → M.GraphEdge

  factoringAcceptanceCorrespondence :
    ∀ left right,
      pairSieveSpecification.accepts left right ↔
        M.sieve.accepts
          (M.sieve.factorMorph (pairToFactorization left right))
  factoringMorphismCorrespondence :
    ∀ left right,
      M.sieve.factorMorph (pairToFactorization left right) =
        pairToMorphism left right
  factoringOccurrenceCorrespondence :
    ∀ left right,
      pairSieveProcedure.evaluate left right = .Accepted ↔
        M.occurs (edgeForPair left right)
          (pairToFactorization left right)
  sourceCorrespondence :
    ∀ left right,
      M.graph.source (edgeForPair left right) = coordinateToPrimitive left
  targetCorrespondence :
    ∀ left right,
      M.graph.target (edgeForPair left right) = coordinateToPrimitive right

  intensionalGraph :
    CoordinateGraph .Intensional M.ClosedCoordinate M.GraphEdge
  intensionalSemantics : IntensionalGraphSemantics
    pairSieveSpecification intensionalGraph
  intensionalSourceCommutes :
    ∀ edge,
      M.graph.source edge =
        coordinateToPrimitive (intensionalGraph.source edge)
  intensionalTargetCommutes :
    ∀ edge,
      M.graph.target edge =
        coordinateToPrimitive (intensionalGraph.target edge)
  intensionalEdgeForPair :
    ∀ {left right}
      (acceptance : pairSieveSpecification.accepts left right),
      (intensionalSemantics.realize acceptance).edge =
        edgeForPair left right
  materializedGraph :
    CoordinateGraph .Materialized M.ClosedCoordinate M.GraphEdge
  realizationContract : RealizationContract
    pairSieveSoundness materializedGraph

  materializedSourceCommutes :
    ∀ edge,
      M.graph.source edge =
        coordinateToPrimitive (materializedGraph.source edge)
  materializedTargetCommutes :
    ∀ edge,
      M.graph.target edge =
        coordinateToPrimitive (materializedGraph.target edge)
  realizedEdgeForPair :
    ∀ {left right}
      (evaluation : SieveEvaluation pairSieveProcedure left right)
      (witness : SieveWitness pairSieveSoundness evaluation),
      (realizationContract.realizeMaterialized evaluation witness).edge =
        edgeForPair left right

  coordinateReflection : InterpretationReflection
    profile interpretation constraint
  sieveReflection : SieveReflection constraint pairSieveSpecification
  realizationReflection : RealizationReflection
    pairSieveSpecification materializedGraph

end FCRS.Transport
```
