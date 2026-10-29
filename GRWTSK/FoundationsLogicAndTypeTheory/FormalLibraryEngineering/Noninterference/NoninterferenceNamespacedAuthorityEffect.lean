-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuthorityEffect.Varianta9a1d084c0a9ef335f22de0cc198efc9c1e27e9df593024df132159ddbc51e5d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a9a1d084c0a9ef335f22de0cc198efc9c1e27e9df593024df132159ddbc51e5d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AuthorityEffect.Varianta9a1d084c0a9ef335f22de0cc198efc9c1e27e9df593024df132159ddbc51e5d","mathematical_subject":"Foundations.Unclassified","original_sha256":"a9a1d084c0a9ef335f22de0cc198efc9c1e27e9df593024df132159ddbc51e5d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SemiLocalDefect/Noninterference.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Authority noninterference

Finite proofs, numerical evidence, and presentation records are all
nonauthoritative artifacts.  Only an external owner admission can change
capacity or theorem authority.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuthorityEffect.Varianta9a1d084c0a9ef335f22de0cc198efc9c1e27e9df593024df132159ddbc51e5d

namespace Mathematics.SemiLocalDefect

inductive AuthorityEffect
  | none
  | proposal
  | commit
deriving DecidableEq, Repr

inductive SemiLocalArtifactKind
  | finiteExactProof
  | numericalPsdEvidence
  | presentation
deriving DecidableEq, Repr

def SemiLocalArtifactKind.authorityEffect
    (_ : SemiLocalArtifactKind) : AuthorityEffect :=
  .none

structure CapacityPresentation where
  capacityRef : String
  authorityRef : String
  presentationRef : String

def CapacityPresentation.withPresentation
    (record : CapacityPresentation)
    (presentationRef : String) :
    CapacityPresentation where
  capacityRef := record.capacityRef
  authorityRef := record.authorityRef
  presentationRef := presentationRef

theorem presentation_cannot_change_capacity_authority
    (record : CapacityPresentation)
    (presentationRef : String) :
    (record.withPresentation presentationRef).authorityRef =
      record.authorityRef :=
  rfl

theorem presentation_cannot_change_capacity_identity
    (record : CapacityPresentation)
    (presentationRef : String) :
    (record.withPresentation presentationRef).capacityRef =
      record.capacityRef :=
  rfl

theorem numerical_psd_evidence_does_not_create_theorem :
    SemiLocalArtifactKind.numericalPsdEvidence.authorityEffect =
      .none :=
  rfl

theorem finite_proof_does_not_commit_runtime_state :
    SemiLocalArtifactKind.finiteExactProof.authorityEffect =
      .none :=
  rfl

end Mathematics.SemiLocalDefect
