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
