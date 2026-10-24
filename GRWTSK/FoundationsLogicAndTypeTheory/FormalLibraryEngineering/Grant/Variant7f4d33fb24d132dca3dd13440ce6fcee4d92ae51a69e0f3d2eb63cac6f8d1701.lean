import Mathematics.Capability.Permission
import Mathematics.Capability.Scope

/-!
# Certified grants

A grant is a conjunction of independent veto observations and a
nonamplifying capability refinement.  The record does not infer permission
from competence, model output, or operating-system API availability.
-/

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
