import Think.Epistemology.Induction.Gluing

namespace Think.Epistemology.Induction

/-! Scaling of Think Logic bijection boundaries through Epistemology. -/

def ScaledContinuousBijection
    (cert : Think.Logic.ThinkContinuousBijectionCertificate)
    (n : Nat) : Prop :=
  StableAtScale (Think.Logic.Bijective cert.bridge.toKnowledge) n

theorem continuous_bijection_scales
    (cert : Think.Logic.ThinkContinuousBijectionCertificate) :
    ∀ n : Nat, ScaledContinuousBijection cert n :=
by
  exact atScale_of_base (Think.Logic.ThinkContinuousBijectionCertificate.sound cert)

def ScaledFiveLayerBijection
    (cert : Think.Logic.ThinkFiveLayerCertificate)
    (n : Nat) : Prop :=
  StableAtScale (Think.Logic.Bijective cert.chain.logicToWisdom) n

theorem five_layer_bijection_scales
    (cert : Think.Logic.ThinkFiveLayerCertificate) :
    ∀ n : Nat, ScaledFiveLayerBijection cert n :=
by
  exact atScale_of_base (Think.Logic.ThinkFiveLayerCertificate.sound cert)

def ScaledCategoricalObjectBijection
    (cert : Think.Logic.LogicKnowledgeAuthorityCertificate)
    (n : Nat) : Prop :=
  StableAtScale (Think.Logic.Bijective cert.bridge.toKnowledge.obj) n

theorem categorical_object_bijection_scales
    (cert : Think.Logic.LogicKnowledgeAuthorityCertificate) :
    ∀ n : Nat, ScaledCategoricalObjectBijection cert n :=
by
  exact atScale_of_base
    (Think.Logic.LogicKnowledgeAuthorityCertificate.sound_object_bijection cert)

end Think.Epistemology.Induction
