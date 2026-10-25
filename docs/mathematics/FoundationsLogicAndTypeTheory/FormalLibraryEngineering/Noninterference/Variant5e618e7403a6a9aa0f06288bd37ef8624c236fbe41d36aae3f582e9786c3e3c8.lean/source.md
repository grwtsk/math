# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Noninterference.Variant5e618e7403a6a9aa0f06288bd37ef8624c236fbe41d36aae3f582e9786c3e3c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10e996a6c87f6e6137d769161abe6e99a0a98ff5` · SHA-256 `3776f53dbeae90bf673221f1a2b0186dc4b29529bbbfcc7713cb60a37a319c81`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AccessPresentationChange.Variant171c3567575adc75975b765b905bbfa1e01ab154043682ca4a1223fa574e8253","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"171c3567575adc75975b765b905bbfa1e01ab154043682ca4a1223fa574e8253","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AccessPresentationChange.Variant171c3567575adc75975b765b905bbfa1e01ab154043682ca4a1223fa574e8253","mathematical_subject":"Foundations.Unclassified","original_sha256":"171c3567575adc75975b765b905bbfa1e01ab154043682ca4a1223fa574e8253","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Verification/Noninterference.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Core.Receipt
import Mathematics.GraphAccess.Exploration.Recaman

/-!
# Access/authority and presentation noninterference
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AccessPresentationChange.Variant171c3567575adc75975b765b905bbfa1e01ab154043682ca4a1223fa574e8253

namespace Mathematics.GraphAccess

theorem access_receipt_cannot_commit_state
    (receipt : GraphAccessReceipt) :
    receipt.authoritativeEffect = false :=
  receipt.authoritativeEffect_exact

structure AccessPresentationChange
    (before after : GraphAccessReceipt) where
  requestIdentity :
    after.requestRef = before.requestRef
  graphCutIdentity :
    after.graphCutRef = before.graphCutRef
  dispositionIdentity :
    after.disposition = before.disposition
  exactnessIdentity :
    after.exactness = before.exactness
  certificateIdentity :
    after.certificateRef = before.certificateRef
  obstructionIdentity :
    after.obstructionRef = before.obstructionRef

theorem presentation_change_preserves_access_certificate
    {before after : GraphAccessReceipt}
    (change : AccessPresentationChange before after) :
    after.certificateRef = before.certificateRef :=
  change.certificateIdentity

structure TraversalAuthorityBoundary where
  traversalMode : TraversalMode
  commitAuthority : Bool := false
  commitAuthority_exact : commitAuthority = false
deriving Repr

theorem traversal_mode_does_not_grant_commit_authority
    (boundary : TraversalAuthorityBoundary) :
    boundary.commitAuthority = false :=
  boundary.commitAuthority_exact

end Mathematics.GraphAccess
```
