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
