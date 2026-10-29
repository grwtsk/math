-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GraphAccessUnknownKind.Variant289a858c0fa77911c7c6d770d033c89adb6debd4528f473e9112097939b35e60","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"289a858c0fa77911c7c6d770d033c89adb6debd4528f473e9112097939b35e60","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.GraphAccessUnknownKind.Variant289a858c0fa77911c7c6d770d033c89adb6debd4528f473e9112097939b35e60","mathematical_subject":"Foundations.Unclassified","original_sha256":"289a858c0fa77911c7c6d770d033c89adb6debd4528f473e9112097939b35e60","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/GraphAccess/Unknown.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Budget

/-!
# Graph-access unknown, rejection, and operational-failure channels

Unknown mathematics, malformed admission, and runtime failure inhabit separate
types and therefore cannot collapse into one another.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GraphAccessUnknownKind.Variant289a858c0fa77911c7c6d770d033c89adb6debd4528f473e9112097939b35e60

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
