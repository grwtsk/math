# Complete source: GRWTSK.Topology.GeneralTopology.Bijection.Variant84fa5bfe210afdd9edd9ee60c4bc686b0bbc23788ca2c21b1ec49d2ad4ab0f3c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c5f43204e5e0175b3a410f9b88f372e5288be6d` · SHA-256 `84fa5bfe210afdd9edd9ee60c4bc686b0bbc23788ca2c21b1ec49d2ad4ab0f3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
