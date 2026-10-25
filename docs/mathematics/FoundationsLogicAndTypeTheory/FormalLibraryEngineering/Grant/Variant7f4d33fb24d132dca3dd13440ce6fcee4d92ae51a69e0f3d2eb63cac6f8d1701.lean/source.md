# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grant.Variant7f4d33fb24d132dca3dd13440ce6fcee4d92ae51a69e0f3d2eb63cac6f8d1701

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6133d1dfd3e090bc6d3cf773389357598f1cec0b` · SHA-256 `7f4d33fb24d132dca3dd13440ce6fcee4d92ae51a69e0f3d2eb63cac6f8d1701`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
