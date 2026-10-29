-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ControlledPlaneTransportExtension.Variant39a1c78233d13c7751480a170b4e19d93bd3c657c6f57ac593a983a59c28714a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"39a1c78233d13c7751480a170b4e19d93bd3c657c6f57ac593a983a59c28714a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ControlledPlaneTransportExtension.Variant39a1c78233d13c7751480a170b4e19d93bd3c657c6f57ac593a983a59c28714a","mathematical_subject":"Foundations.Unclassified","original_sha256":"39a1c78233d13c7751480a170b4e19d93bd3c657c6f57ac593a983a59c28714a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Transport/ControlledPlaneBridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledPlane
import FCRS.Transport.Derivation


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ControlledPlaneTransportExtension.Variant39a1c78233d13c7751480a170b4e19d93bd3c657c6f57ac593a983a59c28714a

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
