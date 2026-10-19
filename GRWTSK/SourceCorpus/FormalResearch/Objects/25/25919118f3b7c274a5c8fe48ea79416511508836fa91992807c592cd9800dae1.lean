import Mathematics.GraphAccess.Core.Objective
import Mathematics.GraphAccess.Core.Budget

/-!
# Proposal-only graph-access request
-/

namespace Mathematics.GraphAccess

structure GraphAccessRequest where
  schemaVersion : String := "noeoueeue.graph-access-request.v1"
  requestId : String
  graphCutRef : String
  sourceNodeRef : String
  targetNodeRef : Option String
  authorityMode : AuthorityMode
  objective : AccessObjective
  requestedMode : Option TraversalMode
  relationScopeRef : String
  admissibilityRef : String
  edgeCostProfileRef : Option String
  heuristicProfileRef : Option String
  portLabelProfileRef : Option String
  actionAlphabetRef : Option String
  invariantLawRef : Option String
  traversalBudget : GraphAccessBudget
  verificationProfileRef : String
  presentationProfileRef : String
  contextCutRef : String
  principalRef : String
  authorityRef : String
  authoritativeEffect : Bool := false
  authoritativeEffect_exact : authoritativeEffect = false
deriving Repr

theorem access_request_is_nonauthoritative
    (request : GraphAccessRequest) :
    request.authoritativeEffect = false :=
  request.authoritativeEffect_exact

end Mathematics.GraphAccess
