# Complete source: GRWTSK.Topology.GeneralTopology.Quantization.Variant311b421e0fa715a3031f3f164718ea6a274d946cfed428d5fa19398018a62020

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66a08fee731f3e7dbb33e1d14ba5f2141a9ad653` · SHA-256 `311b421e0fa715a3031f3f164718ea6a274d946cfed428d5fa19398018a62020`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
