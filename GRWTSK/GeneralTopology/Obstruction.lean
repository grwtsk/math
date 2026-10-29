import Surface.ContinuousAssurance.Communication.Cech

/-!
# Stable coherence obstructions

Failed overlap, boundary, translation, global/local, surgery, and
representation squares become stable records.  A nonzero record blocks the
corresponding gluing claim; it is not silently downgraded to prose.
-/

namespace Surface.ContinuousAssurance

inductive ObstructionDegree
  | zero
  | one
  | two
  | higher (degree : Nat)
  deriving DecidableEq, Repr

inductive ObstructionKind
  | uncoveredCoordinate
  | overlapMismatch
  | boundaryMismatch
  | translationDefect
  | operatorRestrictionFailure
  | surgeryLocusMismatch
  | representationTriangleFailure
  | thresholdMarginFailure
  | reviewMismatch
  | authorizationMismatch
  | other
  deriving DecidableEq, Repr

/-- Content-addressable obstruction relative to an exact finite context. -/
structure CoherenceObstruction where
  identity : ObligationId
  kind : ObstructionKind
  degree : ObstructionDegree
  objectId : MathematicalObjectId
  representation : RepresentationId
  globalReference : Option MathematicalObjectId
  attentionRegion : Option GlobalLocusRef
  coefficientObject : String
  metricVersion : Option DAF.Version
  horizon : Option Nat
  thresholdConvention : Option String
  indexRoot : EvidenceDigest
  witnessRef : ArtifactIdentity
  status : ClaimStatus
  assuranceLevel : AssuranceLevel
  deriving Repr

/-- An unresolved obstruction remains an explicit obligation. -/
def CoherenceObstruction.IsOpen (obstruction : CoherenceObstruction) : Prop :=
  obstruction.status ≠ .verified ∧ obstruction.status ≠ .refuted

end Surface.ContinuousAssurance
