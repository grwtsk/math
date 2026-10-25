# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KnownCaseAttachment.Variant4c44602c56f471a924ae76a4049f02c177d6720293f6ce04acd0b82ce3614680

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `795eece284e20efbbbcda666e3de2bf4718e27ae` · SHA-256 `5e8d532e2258ba6bca289e1dcf46a00b2057cafa9f5ab0fbd2e273ffa3ec9a10`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HodgeKnownCase.Variant2abfe8a3528fd49cc98cbf80f68b8230e6578c0df8732c843c1f045db4b56834","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2abfe8a3528fd49cc98cbf80f68b8230e6578c0df8732c843c1f045db4b56834","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.HodgeKnownCase.Variant2abfe8a3528fd49cc98cbf80f68b8230e6578c0df8732c843c1f045db4b56834","mathematical_subject":"Foundations.Unclassified","original_sha256":"2abfe8a3528fd49cc98cbf80f68b8230e6578c0df8732c843c1f045db4b56834","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/GrandChallenge/Hodge/KnownCaseAttachment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.GrandChallenge.Status

/-!
# Folder.GrandChallenge.Hodge.KnownCaseAttachment

Radiation role: research-boundary
BinaryMatrix spine: This module records known Hodge cases as anchors.
Ontology: hodge_attachment_atlas
Pivot role: attachment
Zero typology: cycle-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HodgeKnownCase.Variant2abfe8a3528fd49cc98cbf80f68b8230e6578c0df8732c843c1f045db4b56834

namespace Folder
namespace GrandChallenge
namespace Hodge

structure HodgeKnownCase where
  label : String
  caseStatus : ChallengeStatus

structure HodgeAttachmentMap where
  source : HodgeKnownCase
  targetLabel : String
  preservesHodgeClass : Prop
  preservesHodgeClass_certified : preservesHodgeClass
  preservesCycleRealization : Prop
  preservesCycleRealization_certified : preservesCycleRealization
  sourceLabel : String

theorem hodge_attachment_preserves_class_if_supplied
    (A : HodgeAttachmentMap) :
    A.preservesHodgeClass :=
  A.preservesHodgeClass_certified

theorem hodge_attachment_preserves_cycle_if_supplied
    (A : HodgeAttachmentMap) :
    A.preservesCycleRealization :=
  A.preservesCycleRealization_certified

end Hodge
end GrandChallenge
end Folder
```
