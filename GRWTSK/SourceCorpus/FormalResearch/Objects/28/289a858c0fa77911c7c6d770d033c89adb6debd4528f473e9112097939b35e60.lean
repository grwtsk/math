import Mathematics.GraphAccess.Budget

/-!
# Graph-access unknown, rejection, and operational-failure channels

Unknown mathematics, malformed admission, and runtime failure inhabit separate
types and therefore cannot collapse into one another.
-/

namespace Mathematics.GraphAccess

inductive GraphAccessUnknownKind
  | graphFiniteness
  | neighborCompleteness
  | edgeAdmissibility
  | targetReachability
  | edgeCost
  | costProfileCompleteness
  | heuristicAdmissibility
  | heuristicConsistency
  | portLabelCompleteness
  | universalSequenceClass
  | actionAlphabetCompleteness
  | discrepancyBound
  | invariantLaw
  | testClassUniformity
  | recamanActionMap
  | plateauDetection
  | completionDecision
  | primitiveObstruction
  | projectiveCompatibility
  | cylinderStageIndependence
  | connectorResidual
  | independentVerification
  | replayCompatibility
  | resourceCompletion
  | modeInvariant
  | stateDecoding
deriving DecidableEq, Ord, Repr

inductive AccessRejection
  | modeObjectiveMismatch
  | invalidCostProfile
  | invalidAuthority
  | missingRequiredTarget
  | unsupportedGraphClass
  | invalidPortProfile
  | malformedLimitRequest
  | staleCut
  | malformedCheckpoint
  | cutDigestMismatch
  | missingProfile
  | unsupportedCombination
deriving DecidableEq, Repr

inductive OperationalFailure
  | storageUnavailable
  | checkpointCorrupt
  | checkerUnavailable
  | serializationFailure
  | internalInvariantViolation
  | profileRegistryUnavailable
deriving DecidableEq, Repr

structure VerificationProfileRef where
  digest : ProfileDigest
deriving DecidableEq, Repr

structure PresentationProfileRef where
  digest : ProfileDigest
deriving DecidableEq, Repr

end Mathematics.GraphAccess
