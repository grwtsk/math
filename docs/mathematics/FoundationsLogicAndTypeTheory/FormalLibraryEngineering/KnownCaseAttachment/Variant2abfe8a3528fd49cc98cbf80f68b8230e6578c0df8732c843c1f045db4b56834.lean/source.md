# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KnownCaseAttachment.Variant2abfe8a3528fd49cc98cbf80f68b8230e6578c0df8732c843c1f045db4b56834

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7dcd0da06d0ab0683e91e7ae4d9b51e8c1c2f774` · SHA-256 `2abfe8a3528fd49cc98cbf80f68b8230e6578c0df8732c843c1f045db4b56834`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
