-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GraphAccessRequest.Variant25919118f3b7c274a5c8fe48ea79416511508836fa91992807c592cd9800dae1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"25919118f3b7c274a5c8fe48ea79416511508836fa91992807c592cd9800dae1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.GraphAccessRequest.Variant25919118f3b7c274a5c8fe48ea79416511508836fa91992807c592cd9800dae1","mathematical_subject":"Foundations.Unclassified","original_sha256":"25919118f3b7c274a5c8fe48ea79416511508836fa91992807c592cd9800dae1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Core/Request.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Core.Objective
import Mathematics.GraphAccess.Core.Budget

/-!
# Proposal-only graph-access request
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GraphAccessRequest.Variant25919118f3b7c274a5c8fe48ea79416511508836fa91992807c592cd9800dae1

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
