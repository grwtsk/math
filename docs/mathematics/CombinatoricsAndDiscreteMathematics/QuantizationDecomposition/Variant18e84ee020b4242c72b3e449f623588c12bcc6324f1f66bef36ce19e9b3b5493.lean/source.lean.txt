import Surface.ContinuousAssurance.CompilerTarget
import Surface.ContinuousAssurance.Claim
import Surface.ContinuousAssurance.ProgressiveEvidence
import Mathlib.Data.Finset.Basic
import Mathlib.Data.Fintype.Basic

/-!
# Decomposition-independent quantization

A finite decomposition supplies stable local carriers and provenance, but does
not claim a cubical complex, overlap coherence, or a gluing theorem.  Local bit
resolution is representational metadata: it cannot change authority or make a
piece eligible or ineligible for surgery.
-/

namespace Surface.ContinuousAssurance

universe u

/-- Generic finite local carriers with stable subjects and source evidence. -/
structure FiniteDecomposition where
  Piece : Type u
  pieceFintype : Fintype Piece
  pieceDecEq : DecidableEq Piece
  identity : ArtifactIdentity
  subjectAt : Piece → ArtifactIdentity
  localEvidence : Piece → List ArtifactIdentity

attribute [instance] FiniteDecomposition.pieceFintype
attribute [instance] FiniteDecomposition.pieceDecEq

/--
The conservative generic eligibility predicate: every declared decomposition
piece begins eligible.  Domain integrations may refine the decomposition
itself, but low resolution is never a reason for exclusion.
-/
def SiteEligible
    (decomposition : FiniteDecomposition)
    (_site : decomposition.Piece) : Prop :=
  True

/--
Stable, assurance-aware metadata for one declared surgical site.  The degree is
optional because a generic finite decomposition need not be graded.  Evidence
authority and assurance are tied to the supplied progressive evidence rather
than inferred from resolution or enumeration order.
-/
structure SurgicalSiteMetadata
    (decomposition : FiniteDecomposition)
    (site : decomposition.Piece) where
  stableSiteIdentity : ArtifactIdentity
  subjectIdentity : ArtifactIdentity
  subject_identity_exact : subjectIdentity = decomposition.subjectAt site
  decompositionIdentity : ArtifactIdentity
  decomposition_identity_exact : decompositionIdentity = decomposition.identity
  degree : Option Nat
  sourceEvidence : ProgressiveEvidence
  currentAssurance : AssuranceLevel
  currentAuthority : AuthorityClass
  currentClaimStatus : ClaimStatus
  evidence_assurance_exact : sourceEvidence.level = currentAssurance
  evidence_authority_exact : sourceEvidence.authority = currentAuthority
  affectedClaims : List ArtifactIdentity
  openObligations : List ArtifactIdentity

/-- Complete, stably ordered universe of sites considered by selection. -/
structure SurgicalSiteUniverse
    (decomposition : FiniteDecomposition) where
  eligible : Finset decomposition.Piece
  eligible_spec :
    ∀ site, site ∈ eligible ↔ SiteEligible decomposition site
  stableOrderKey : decomposition.Piece → String
  orderKey_injective : Function.Injective stableOrderKey
  metadataAt : (site : decomposition.Piece) →
    SurgicalSiteMetadata decomposition site
  siteIdentity_injective :
    Function.Injective (fun site => (metadataAt site).stableSiteIdentity)

namespace SurgicalSiteUniverse

/-- Generic eligibility means the initial universe contains every piece. -/
theorem eligible_eq_univ
    {decomposition : FiniteDecomposition}
    (siteUniverse : SurgicalSiteUniverse decomposition) :
    siteUniverse.eligible = Finset.univ := by
  ext site
  simp [siteUniverse.eligible_spec, SiteEligible]

/-- Site identities are stable typed metadata, independent of enumeration order. -/
theorem site_identity_injective
    {decomposition : FiniteDecomposition}
    (siteUniverse : SurgicalSiteUniverse decomposition) :
    Function.Injective
      (fun site => (siteUniverse.metadataAt site).stableSiteIdentity) :=
  siteUniverse.siteIdentity_injective

/-- Every site metadata record points back to the declared subject. -/
theorem metadata_subject_exact
    {decomposition : FiniteDecomposition}
    (siteUniverse : SurgicalSiteUniverse decomposition)
    (site : decomposition.Piece) :
    (siteUniverse.metadataAt site).subjectIdentity = decomposition.subjectAt site :=
  (siteUniverse.metadataAt site).subject_identity_exact

/-- Every site metadata record is bound to the decomposition identity. -/
theorem metadata_decomposition_exact
    {decomposition : FiniteDecomposition}
    (siteUniverse : SurgicalSiteUniverse decomposition)
    (site : decomposition.Piece) :
    (siteUniverse.metadataAt site).decompositionIdentity = decomposition.identity :=
  (siteUniverse.metadataAt site).decomposition_identity_exact

end SurgicalSiteUniverse

/-- Positive per-piece resolutions bounded by one submitted compiler target. -/
structure DecomposedQuantizationField
    (decomposition : FiniteDecomposition)
    (compiler : CompilerTarget) where
  bitsAt : decomposition.Piece → ResolutionBits
  bounded :
    ∀ piece, (bitsAt piece).value ≤ compiler.wordBits
  sourceEvidenceAt : decomposition.Piece → ProgressiveEvidence
  quantizedEvidenceAt : decomposition.Piece → ProgressiveEvidence
  quantized_derives_from_source : ∀ piece,
    (sourceEvidenceAt piece).identity ∈
      (quantizedEvidenceAt piece).derivesFrom
  quantized_authority_exact : ∀ piece,
    (quantizedEvidenceAt piece).authority =
      (sourceEvidenceAt piece).authority
  quantized_evidence_class_exact : ∀ piece,
    (quantizedEvidenceAt piece).evidenceClass =
      (sourceEvidenceAt piece).evidenceClass
  quantized_assurance_exact : ∀ piece,
    (quantizedEvidenceAt piece).level =
      (sourceEvidenceAt piece).level
  sourceClaimStatusAt : decomposition.Piece → ClaimStatus
  quantizedClaimStatusAt : decomposition.Piece → ClaimStatus
  quantized_claim_status_exact : ∀ piece,
    quantizedClaimStatusAt piece = sourceClaimStatusAt piece

namespace DecomposedQuantizationField

theorem bitsAt_positive
    {decomposition : FiniteDecomposition}
    {compiler : CompilerTarget}
    (field : DecomposedQuantizationField decomposition compiler)
    (piece : decomposition.Piece) :
    0 < (field.bitsAt piece).value :=
  (field.bitsAt piece).positive

theorem subject_identity_is_decomposition_owned
    {decomposition : FiniteDecomposition}
    {compiler : CompilerTarget}
    (_field : DecomposedQuantizationField decomposition compiler)
    (piece : decomposition.Piece) :
    decomposition.subjectAt piece = decomposition.subjectAt piece :=
  rfl

/-- Bit depth is not consulted when deciding generic site eligibility. -/
theorem resolution_does_not_exclude_piece
    {decomposition : FiniteDecomposition}
    {compiler : CompilerTarget}
    (_field : DecomposedQuantizationField decomposition compiler)
    (piece : decomposition.Piece) :
    SiteEligible decomposition piece :=
  trivial

/-- DEC-03/04: local resolution cannot strengthen or change evidence authority. -/
theorem local_resolution_does_not_alter_authority
    {decomposition : FiniteDecomposition}
    {compiler : CompilerTarget}
    (field : DecomposedQuantizationField decomposition compiler)
    (piece : decomposition.Piece) :
    (field.quantizedEvidenceAt piece).authority =
      (field.sourceEvidenceAt piece).authority :=
  field.quantized_authority_exact piece

/-- DEC-03/04: local resolution cannot change the evidence-production class. -/
theorem local_resolution_does_not_alter_evidence_class
    {decomposition : FiniteDecomposition}
    {compiler : CompilerTarget}
    (field : DecomposedQuantizationField decomposition compiler)
    (piece : decomposition.Piece) :
    (field.quantizedEvidenceAt piece).evidenceClass =
      (field.sourceEvidenceAt piece).evidenceClass :=
  field.quantized_evidence_class_exact piece

/-- DEC-03/04: quantization cannot promote or otherwise reclassify a claim. -/
theorem local_quantization_preserves_claim_status
    {decomposition : FiniteDecomposition}
    {compiler : CompilerTarget}
    (field : DecomposedQuantizationField decomposition compiler)
    (piece : decomposition.Piece) :
    field.quantizedClaimStatusAt piece = field.sourceClaimStatusAt piece :=
  field.quantized_claim_status_exact piece

/-- Quantized local evidence keeps an explicit derivation link to its source. -/
theorem local_quantization_retains_provenance
    {decomposition : FiniteDecomposition}
    {compiler : CompilerTarget}
    (field : DecomposedQuantizationField decomposition compiler)
    (piece : decomposition.Piece) :
    (field.sourceEvidenceAt piece).identity ∈
      (field.quantizedEvidenceAt piece).derivesFrom :=
  field.quantized_derives_from_source piece

end DecomposedQuantizationField

end Surface.ContinuousAssurance
