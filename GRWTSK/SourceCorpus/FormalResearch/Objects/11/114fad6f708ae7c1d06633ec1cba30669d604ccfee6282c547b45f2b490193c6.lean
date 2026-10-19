import Think.Logic.Category.Bridge

namespace Think.Logic

structure LogicKnowledgeAuthorityCertificate where
  bridge : CategoricalBridgeEquivalence
  kernelStatus : Bool
  semanticPreservationReceiptHash : String
  roundTripReceiptHash : String
  visualAuthority : Bool
  claimBearing : Bool

def LogicKnowledgeAuthorityCertificate.accepted
  (cert : LogicKnowledgeAuthorityCertificate) : Prop :=
  cert.kernelStatus = true ∧ cert.claimBearing = true ∧ cert.visualAuthority = false

theorem LogicKnowledgeAuthorityCertificate.sound_object_bijection
  (cert : LogicKnowledgeAuthorityCertificate) :
  Bijective cert.bridge.toKnowledge.obj :=
by
  exact CategoricalBridgeEquivalence.object_bijective cert.bridge

theorem LogicKnowledgeAuthorityCertificate.no_visual_authority_if_accepted
  (cert : LogicKnowledgeAuthorityCertificate) :
  cert.accepted → cert.visualAuthority = false :=
by
  intro h
  exact h.right.right

theorem LogicKnowledgeAuthorityCertificate.kernel_checked_if_accepted
  (cert : LogicKnowledgeAuthorityCertificate) :
  cert.accepted → cert.kernelStatus = true :=
by
  intro h
  exact h.left

end Think.Logic
