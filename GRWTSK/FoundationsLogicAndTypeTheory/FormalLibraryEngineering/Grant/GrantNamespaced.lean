-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GrantRequest.Variant7f4d33fb24d132dca3dd13440ce6fcee4d92ae51a69e0f3d2eb63cac6f8d1701","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f4d33fb24d132dca3dd13440ce6fcee4d92ae51a69e0f3d2eb63cac6f8d1701","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.GrantRequest.Variant7f4d33fb24d132dca3dd13440ce6fcee4d92ae51a69e0f3d2eb63cac6f8d1701","mathematical_subject":"Foundations.Unclassified","original_sha256":"7f4d33fb24d132dca3dd13440ce6fcee4d92ae51a69e0f3d2eb63cac6f8d1701","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Capability/Grant.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Capability.Permission
import Mathematics.Capability.Scope

/-!
# Certified grants

A grant is a conjunction of independent veto observations and a
nonamplifying capability refinement.  The record does not infer permission
from competence, model output, or operating-system API availability.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GrantRequest.Variant7f4d33fb24d132dca3dd13440ce6fcee4d92ae51a69e0f3d2eb63cac6f8d1701

namespace Mathematics.Capability

structure GrantRequest where
  requestId : RequestId
  requester : Principal
  capability : OperationalCapability

structure CertifiedGrant where
  grantId : GrantId
  issuer : Principal
  holder : Principal
  request : GrantRequest
  capability : OperationalCapability
  veto : IndependentVeto
  capability_within_request :
    capability ≤ request.capability
  veto_allows :
    veto.PermitsExecution

namespace CertifiedGrant

theorem nonamplifying
    (grant : CertifiedGrant) :
    grant.capability ≤ grant.request.capability :=
  grant.capability_within_request

theorem human_permitted
    (grant : CertifiedGrant) :
    grant.veto.human.Permits :=
  grant.veto_allows.1

theorem operating_system_permitted
    (grant : CertifiedGrant) :
    grant.veto.operatingSystem.Permits :=
  grant.veto_allows.2.1

theorem hardware_permitted
    (grant : CertifiedGrant) :
    grant.veto.hardware.Permits :=
  grant.veto_allows.2.2

end CertifiedGrant

end Mathematics.Capability
