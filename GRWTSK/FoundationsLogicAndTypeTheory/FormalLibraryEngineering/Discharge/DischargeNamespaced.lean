-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DischargeKind.Variant528149c424bae479d125cd3b2a6ef5eb6bf4d6f3cb1ac60da4ea5c88a0c727c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"528149c424bae479d125cd3b2a6ef5eb6bf4d6f3cb1ac60da4ea5c88a0c727c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DischargeKind.Variant528149c424bae479d125cd3b2a6ef5eb6bf4d6f3cb1ac60da4ea5c88a0c727c1","mathematical_subject":"Foundations.Unclassified","original_sha256":"528149c424bae479d125cd3b2a6ef5eb6bf4d6f3cb1ac60da4ea5c88a0c727c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Mutation/Discharge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Mutation.Problem

/-! # Certificate-gated discharge -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DischargeKind.Variant528149c424bae479d125cd3b2a6ef5eb6bf4d6f3cb1ac60da4ea5c88a0c727c1

namespace Mathematics.Mutation

inductive DischargeKind
  | clarification
  | juris
  | containment
  | rollback
  | localRepair
  | formal
  | runtime
  | representation
  | branch
  | quarantine
  | snapshotSurgery
  deriving DecidableEq, Repr

structure DischargeCandidate (Certificate : Type) where
  candidateId : StableId
  kind : DischargeKind
  admission : HardAdmission
  accepts : Certificate → Prop

def acceptsDischarge
    (candidate : DischargeCandidate Certificate)
    (certificate : Certificate) : Prop :=
  candidate.accepts certificate

structure AcceptedDischarge
    (candidate : DischargeCandidate Certificate) where
  certificate : Certificate
  accepted :
    acceptsDischarge candidate certificate

theorem discharge_requires_exact_certificate
    (candidate : DischargeCandidate Certificate)
    (discharged : AcceptedDischarge candidate) :
    ∃ certificate,
      acceptsDischarge candidate certificate :=
  ⟨discharged.certificate, discharged.accepted⟩

end Mathematics.Mutation
