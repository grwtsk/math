# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Request.Variant15aa7a54b3b0ab108136294953bc85bb12546691267f9f234108a2ccd2b589cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b933d0b165720c264bf0265ce847ce09fe5b8a2` · SHA-256 `9758b1e38f3dc44853ae107dd117717d23711e6855e5a15fdd2faf4e6f4b6ed8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdmittedAccessRequest.Variant67d43ad2a1b147477278380e24867b8f503ef6f6e3b9c70ca73f1b1520bfac6d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"67d43ad2a1b147477278380e24867b8f503ef6f6e3b9c70ca73f1b1520bfac6d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AdmittedAccessRequest.Variant67d43ad2a1b147477278380e24867b8f503ef6f6e3b9c70ca73f1b1520bfac6d","mathematical_subject":"Foundations.Unclassified","original_sha256":"67d43ad2a1b147477278380e24867b8f503ef6f6e3b9c70ca73f1b1520bfac6d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/GraphAccess/Request.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Unknown

/-!
# Fully admitted graph-access request

Dependent field order makes the scope, admissibility profile, neighbor
certificate, selected mode profile, and authority proof part of one immutable
request envelope.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdmittedAccessRequest.Variant67d43ad2a1b147477278380e24867b8f503ef6f6e3b9c70ca73f1b1520bfac6d

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
