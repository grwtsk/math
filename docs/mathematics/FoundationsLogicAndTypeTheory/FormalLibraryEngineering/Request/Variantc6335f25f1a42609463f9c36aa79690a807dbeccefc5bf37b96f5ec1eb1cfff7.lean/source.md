# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Request.Variantc6335f25f1a42609463f9c36aa79690a807dbeccefc5bf37b96f5ec1eb1cfff7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eeb2d2550d300b93b55fc54129eb828a340f3a6d` · SHA-256 `fbe9e93bb1ddf32be51f0a3dd744fe03f21852578ba8d8de51c233a337b6e864`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
