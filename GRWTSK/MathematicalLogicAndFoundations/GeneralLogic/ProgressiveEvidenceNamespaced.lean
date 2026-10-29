-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.ProgressiveEvidence.Variantf9098b0efa56a955cdbd1c451f0702ad63dfe79debef37e123c3f515f55e83d6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f9098b0efa56a955cdbd1c451f0702ad63dfe79debef37e123c3f515f55e83d6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.ProgressiveEvidence.Variantf9098b0efa56a955cdbd1c451f0702ad63dfe79debef37e123c3f515f55e83d6","mathematical_subject":"Logic.ProofTheory","original_sha256":"f9098b0efa56a955cdbd1c451f0702ad63dfe79debef37e123c3f515f55e83d6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/ProgressiveEvidence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.AssuranceLevel
import Surface.ContinuousAssurance.Transformation

/-!
# Progressive evidence identity and lineage

Progressive evidence is immutable evidence with a stage annotation and explicit
derivation links.  Advancing evidence preserves its authority class.  A later
release or formal-audit rerun can have a new identity while retaining links to
the development request, candidate, check, review, and authorization records.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.ProgressiveEvidence.Variantf9098b0efa56a955cdbd1c451f0702ad63dfe79debef37e123c3f515f55e83d6

namespace Surface.ContinuousAssurance

abbrev HumanRequestIdentity := ArtifactIdentity
abbrev SnapshotEvidenceIdentity := ArtifactIdentity
abbrev ModelResponseIdentity := ArtifactIdentity
abbrev ObligationIdentity := ArtifactIdentity
abbrev CandidateIdentity := ArtifactIdentity
abbrev LeanCheckIdentity := ArtifactIdentity
abbrev DeveloperReportIdentity := ArtifactIdentity
abbrev ReviewIdentity := ArtifactIdentity
abbrev AuthorizationIdentity := ArtifactIdentity
abbrev ProposalIdentity := ArtifactIdentity
abbrev PatchIdentity := ArtifactIdentity
abbrev ReleaseReferenceIdentity := ArtifactIdentity
abbrev DeclarationIdentity := ArtifactIdentity

/-- One evidence object in the progressive lineage graph. -/
structure ProgressiveEvidence where
  identity : ArtifactIdentity
  level : AssuranceLevel
  authority : AuthorityClass
  evidenceClass : EvidenceClass
  derivesFrom : List ArtifactIdentity
  materialization : MaterializationRule
  source : Option ArtifactIdentity
  deriving DecidableEq, Repr

namespace ProgressiveEvidence

/--
Advance evidence to a no-weaker stage.  The new record references its direct
predecessor and retains the complete earlier ancestry.  Authority is copied,
not recomputed from assurance level.
-/
def advance
    (evidence : ProgressiveEvidence)
    (identity : ArtifactIdentity)
    (level : AssuranceLevel)
    (_monotone : evidence.level.AtMost level)
    (materialization : MaterializationRule := .reference) :
    ProgressiveEvidence :=
  { identity
    level
    authority := evidence.authority
    evidenceClass := evidence.evidenceClass
    derivesFrom := evidence.identity :: evidence.derivesFrom
    materialization
    source := some evidence.identity }

/-- Advancing assurance level never strengthens evidence authority. -/
@[simp]
theorem advance_preserves_authority
    (evidence : ProgressiveEvidence)
    (identity : ArtifactIdentity)
    (level : AssuranceLevel)
    (monotone : evidence.level.AtMost level)
    (materialization : MaterializationRule := .reference) :
    (evidence.advance identity level monotone materialization).authority =
      evidence.authority :=
  rfl

/-- Progression also preserves the evidence-production class. -/
@[simp]
theorem advance_preserves_evidence_class
    (evidence : ProgressiveEvidence)
    (identity : ArtifactIdentity)
    (level : AssuranceLevel)
    (monotone : evidence.level.AtMost level)
    (materialization : MaterializationRule := .reference) :
    (evidence.advance identity level monotone materialization).evidenceClass =
      evidence.evidenceClass :=
  rfl

/-- Every advancement records the immediately preceding evidence identity. -/
theorem advance_derives_from_source
    (evidence : ProgressiveEvidence)
    (identity : ArtifactIdentity)
    (level : AssuranceLevel)
    (monotone : evidence.level.AtMost level)
    (materialization : MaterializationRule := .reference) :
    evidence.identity ∈
      (evidence.advance identity level monotone materialization).derivesFrom := by
  simp [advance]

/-- A formal-audit advancement retains its development lineage. -/
theorem audit_preserves_derivation_link
    (evidence : ProgressiveEvidence)
    (identity : ArtifactIdentity)
    (monotone : evidence.level.AtMost .formalAudit) :
    evidence.identity ∈
      (evidence.advance identity .formalAudit monotone .independentRerun).derivesFrom :=
  advance_derives_from_source evidence identity .formalAudit monotone .independentRerun

end ProgressiveEvidence

end Surface.ContinuousAssurance
