# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Decoder.Variant06c55567ab4c634b446184d11c381993f6c5883295aa6642be368051fc21b04d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `823e05108aa364f79b954c368abda1f58eb6a392` · SHA-256 `06c55567ab4c634b446184d11c381993f6c5883295aa6642be368051fc21b04d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.AbelReynolds.Boundary
import Mathematics.TensorNetwork.MappingTorus

/-!
# Typed boundary decoding and confinement

Carrier round-trip and semantic correspondence are separate certificates.
Cross-snapshot or cross-decoder consumption additionally requires the existing
directional boundary-transport path.
-/

namespace Mathematics.TensorNetwork

universe u v w x

/-- Commuting server/client decoder square for the typed protocol involution. -/
structure MobiusDecoderCertificate
    (Carrier : Type u)
    (ServerSemantics : Type v)
    (ClientSemantics : Type w)
    (Observation : Type x) where
  twist : Carrier → Carrier
  decodeServer : Carrier → ServerSemantics
  decodeClient : Carrier → ClientSemantics
  semanticTransport : ServerSemantics → ClientSemantics
  semanticCommutes :
    ∀ carrier,
      decodeClient (twist carrier) =
        semanticTransport (decodeServer carrier)
  observeServer : Observation → ServerSemantics → ℂ
  observeClient : Observation → ClientSemantics → ℂ
  observationTransport : Observation → ℂ → ℂ
  observationCommutes :
    ∀ observation carrier,
      observeClient observation (decodeClient (twist carrier)) =
        observationTransport observation
          (observeServer observation (decodeServer carrier))

/-- Typed transport is required before a decoded artifact may cross boundaries. -/
structure ConfinedDecoderCertificate
    (Carrier : Type u)
    (ServerSemantics : Type v)
    (ClientSemantics : Type w)
    (Observation : Type x) where
  decoder :
    MobiusDecoderCertificate
      Carrier ServerSemantics ClientSemantics Observation
  source : Mathematics.AbelReynolds.BoundaryKey
  target : Mathematics.AbelReynolds.BoundaryKey
  transports : List Mathematics.AbelReynolds.BoundaryTransport
  mayConsume :
    Mathematics.AbelReynolds.MayConsume source target transports

end Mathematics.TensorNetwork
```
