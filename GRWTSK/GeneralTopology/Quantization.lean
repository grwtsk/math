import Mathematics.MobiusOntology.BehavioralCompactification
import Mathematics.MobiusOntology.TwistedBitfield

/-!
# Proof-bearing continuous-to-Boolean quantization
-/

namespace Mathematics.MobiusOntology

universe u v w x

structure QuantizationCertificate
    (Continuous : Type u) (Decoded : Type v)
    (Semantic : Type w) (width : Nat)
    [PseudoMetricSpace Decoded] where
  quantize : Continuous → BooleanBitfield width
  decode : BooleanBitfield width → Decoded
  realize : Continuous → Decoded
  observeContinuous : Continuous → Semantic
  observeDecoded : Decoded → Semantic
  error : ℝ≥0
  metricSound :
    ∀ state,
      nndist (decode (quantize state)) (realize state) ≤ error
  observationSound :
    ∀ state,
      observeDecoded (decode (quantize state)) =
        observeContinuous state

structure EquivariantQuantizationCertificate
    (Continuous : Type u) (Decoded : Type v)
    (Semantic : Type w) (width : Nat)
    [PseudoMetricSpace Decoded]
    (continuousTwist : Continuous → Continuous)
    (bitTwist : BitfieldInvolution width) where
  base : QuantizationCertificate Continuous Decoded Semantic width
  equivariant :
    ∀ state,
      base.quantize (continuousTwist state) =
        bitTwist.twist (base.quantize state)

end Mathematics.MobiusOntology
