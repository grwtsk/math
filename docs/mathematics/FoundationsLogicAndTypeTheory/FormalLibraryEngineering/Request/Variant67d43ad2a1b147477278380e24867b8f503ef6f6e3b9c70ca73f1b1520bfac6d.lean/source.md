# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Request.Variant67d43ad2a1b147477278380e24867b8f503ef6f6e3b9c70ca73f1b1520bfac6d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c48efbc2705ac3d3b9cb763aeb2fdcf33742563a` · SHA-256 `67d43ad2a1b147477278380e24867b8f503ef6f6e3b9c70ca73f1b1520bfac6d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Unknown

/-!
# Fully admitted graph-access request

Dependent field order makes the scope, admissibility profile, neighbor
certificate, selected mode profile, and authority proof part of one immutable
request envelope.
-/

namespace Mathematics.GraphAccess

structure AdmittedAccessRequest
    (G : GraphCut)
    (profiles : ModeProfileFamily G) where
  requestId : RequestId
  requestDigest : RequestDigest
  authority : AccessAuthority
  objective : AccessObjective
  plan : ModePlan objective
  scope : RelationScope G
  admissibility : AdmissibilityProfile G
  source : G.Node
  target : Option G.Node
  neighbors :
    NeighborEnumeration G scope admissibility
  modeProfile :
    profiles.Profile plan.primary
  budget : TraversalBudget
  verification : VerificationProfileRef
  presentation : PresentationProfileRef
  contextCut : ContextCutId
  principal : PrincipalId
  cutDigest : CutDigest
  authoritySupports :
    AuthoritySupports authority objective
  targetPresent :
    objective.requiresTarget = true →
      target.isSome
  sourceAdmissible :
    NodeAdmissible admissibility source
  targetAdmissible :
    ∀ targetNode,
      target = some targetNode →
        NodeAdmissible admissibility targetNode
  cutDigest_eq :
    cutDigest = G.digest

end Mathematics.GraphAccess
```
