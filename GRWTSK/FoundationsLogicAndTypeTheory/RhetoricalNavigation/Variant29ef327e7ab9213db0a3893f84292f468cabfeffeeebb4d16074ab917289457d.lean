-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.RhetoricalEvidenceAuthority.Variant95952e22724a35ec802043ede554f90bfd0a006d869d610126ca7389e756978e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"95952e22724a35ec802043ede554f90bfd0a006d869d610126ca7389e756978e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.RhetoricalEvidenceAuthority.Variant95952e22724a35ec802043ede554f90bfd0a006d869d610126ca7389e756978e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"95952e22724a35ec802043ede554f90bfd0a006d869d610126ca7389e756978e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Universe/RhetoricalNavigation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Universe.RhetoricalRole
import Mathlib.Data.Rat.Lemmas

/-!
# Rhetorical navigation evidence

Rhetorical locations are optional navigation metadata.  Their identities and
scores are deliberately separate from theorem authority.  The proof-bearing
records in this file belong to the trusted receiving context; an external
model supplies only the corresponding locator data.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.RhetoricalEvidenceAuthority.Variant95952e22724a35ec802043ede554f90bfd0a006d869d610126ca7389e756978e

namespace DAF.Universe

/-- The only authority accepted for a rhetorical locator or score. -/
inductive RhetoricalEvidenceAuthority
  | navigationOnly
  | theoremAuthorityClaim
  deriving DecidableEq, Repr, Inhabited

/-- Relation profiles remain distinct at the transport boundary. -/
inductive RhetoricalRelationProfile
  | similarity
  | implicationAffinity
  | oppositionAffinity
  | oppositionResidual
  /-- Exact coordinate negation in one certified finite factor realization;
  this is not the role-induced `J` relation of the completed kernel space. -/
  | coordinateAntipodesExact
  | analogyTranslationAffinity
  | analogyTranslationResidual
  | analogyTranslationExact
  /-- Legacy transport spelling for a requested conditional product-kernel
  score. It does not denote or certify a completed Hilbert tensor product. -/
  | analogyTensorAffinity
  deriving DecidableEq, Repr, Inhabited

/-- Optional rhetorical coordinate attached to a theorem cell.

The digest commits to the kernel identity and index, but this record is not a
component of theorem identity. -/
structure RhetoricalLocation where
  kernelId : StableId
  kernelDigest : Digest
  index : ConceptId × RhetoricalRole
  pointVectorId : StableId
  activeGramTraceId : RuntimeTraceId
  traceDigest : Digest
  psdCertificateId : StableId
  locationDigest : Digest
  deriving DecidableEq, Repr

/-- One model-supplied point claim.  Its diagonal is checked against a trusted
proof-bearing point certificate before the locator is accepted. -/
structure RhetoricalPointLocator where
  concept : ConceptId
  role : RhetoricalRole
  diagonalRe : ℚ
  certificateId : StableId
  deriving DecidableEq, Repr

/-- Exact transport shape of a relation observation.  Normalized values keep
the squared denominator because `n / sqrt(q)` need not be rational; residuals
are squared exact norms; an exact equality flag is a separate trace result. -/
inductive RhetoricalNavigationValue
  | normalized (numerator denominatorSquared : ℚ)
  | squaredResidual (value : ℚ)
  | exactEquality (holds : Bool)
  deriving DecidableEq, Repr

/-- A relation observation is navigation metadata even when computed exactly.
Operands and report identity are mandatory so a trusted RHT1 registry can
check the value against the certified finite Gram.  `theoremAuthorityClaim`
is representable only so the validator can reject promotion explicitly. -/
structure RhetoricalNavigationScore where
  profile : RhetoricalRelationProfile
  operands : List Nat
  reportIndex : Nat
  certificateId : StableId
  value : RhetoricalNavigationValue
  authority : RhetoricalEvidenceAuthority := .navigationOnly
  deriving DecidableEq, Repr

namespace RhetoricalNavigationScore

/-- Executable closed arity/value discipline for each relation profile. -/
def shapeValid (score : RhetoricalNavigationScore) : Bool :=
  match score.profile, score.operands, score.value with
  | .similarity, [_, _], .normalized numerator denominatorSquared
  | .implicationAffinity, [_, _], .normalized numerator denominatorSquared
  | .oppositionAffinity, [_, _], .normalized numerator denominatorSquared
  | .analogyTranslationAffinity, [_, _, _, _],
      .normalized numerator denominatorSquared
  | .analogyTensorAffinity, [_, _, _, _],
      .normalized numerator denominatorSquared =>
      decide (0 < denominatorSquared ∧
        numerator * numerator ≤ denominatorSquared)
  | .oppositionResidual, [_, _], .squaredResidual residual
  | .analogyTranslationResidual, [_, _, _, _],
      .squaredResidual residual => decide (0 ≤ residual)
  | .coordinateAntipodesExact, [_, _], .exactEquality _
  | .analogyTranslationExact, [_, _, _, _], .exactEquality _ => true
  | _, _, _ => false

/-- Proposition retained by a checked locator. -/
def ShapeValid (score : RhetoricalNavigationScore) : Prop :=
  score.shapeValid = true

instance (score : RhetoricalNavigationScore) : Decidable score.ShapeValid := by
  unfold ShapeValid
  infer_instance

end RhetoricalNavigationScore

/-- External-model locator for one clause.  Trace and binding digests pin the
finite Gram evidence used for every point and relation score. -/
structure ExternalRhetoricalLocator where
  locatorId : StableId
  clauseId : ClaimId
  kernelId : StableId
  kernelDigest : Digest
  activeGramTraceId : RuntimeTraceId
  traceDigest : Digest
  psdCertificateId : StableId
  activeGramBindingDigest : Digest
  points : List RhetoricalPointLocator
  scores : List RhetoricalNavigationScore
  authority : RhetoricalEvidenceAuthority := .navigationOnly
  deriving DecidableEq, Repr

namespace ExternalRhetoricalLocator

/-- Every submitted concept-role point has strictly positive diagonal. -/
def PointNormsPositive (locator : ExternalRhetoricalLocator) : Prop :=
  ∀ point ∈ locator.points, 0 < point.diagonalRe


/-- Every relation observation has the exact closed shape for its profile. -/
def ScoreShapesValid (locator : ExternalRhetoricalLocator) : Prop :=
  ∀ score ∈ locator.scores, score.ShapeValid

/-- Neither the locator nor any score requests theorem authority. -/
def NavigationOnly (locator : ExternalRhetoricalLocator) : Prop :=
  locator.authority = .navigationOnly ∧
    ∀ score ∈ locator.scores, score.authority = .navigationOnly

end ExternalRhetoricalLocator

end DAF.Universe
