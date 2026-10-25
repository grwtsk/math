# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unknown.Variant289a858c0fa77911c7c6d770d033c89adb6debd4528f473e9112097939b35e60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da432e9161cea71b9c7ecaa27f0b673886bb95d0` · SHA-256 `289a858c0fa77911c7c6d770d033c89adb6debd4528f473e9112097939b35e60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
