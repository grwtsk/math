import Mathematics.Concept.PointUniverse
import Mathematics.Relaxation.State

/-!
# Elemental relaxation state

Relaxation operates over one canonical point universe.  Immutable sources,
project-local identity, negative evidence, and open branches are carried as
separate coordinates so an optimization cannot erase them.
-/

namespace Mathematics.Relaxation

structure ElementalState where
  relaxation : State
  pointUniverse : Concept.PointUniverse
  immutableSourceAddressIds : List StableId
  projectLocalPointIds : List ElementId
  negativeElementIds : List ElementId
  unknownBranchIds : List StableId
  projectionIds : List StableId
  embeddingObservationIds : List EvidenceId
  stateDigest : Digest

/-- Embedding observations are evidence only and have no identity field. -/
structure EmbeddingObservation where
  observationId : EvidenceId
  leftPointId : ElementId
  rightPointId : ElementId
  encoderDigest : Digest
  metricDigest : Digest
  scoreNumerator : Int
  scoreDenominator : Nat
  deriving DecidableEq, Repr

end Mathematics.Relaxation
