# Complete source: GRWTSK.Topology.GeneralTopology.Regularity.Variantd95b5450283c4de958dfd0d1f8f105e8b0e0f0ea3c4005ba34b4c30afbf1a904

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8d7ff78e7290596656e63f6b9128fee2d9d87f8` · SHA-256 `d95b5450283c4de958dfd0d1f8f105e8b0e0f0ea3c4005ba34b4c30afbf1a904`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GammaBridge.Exact

/-! # Explicit regularity authority -/

namespace Mathematics.GammaBridge

inductive RegularityRequest
  | continuous
  | lipschitz
  | continuouslyDifferentiable
  deriving DecidableEq, Repr

inductive RegularityStatus
  | proved
  | unavailable
  deriving DecidableEq, Repr

/-- Regularity is a separate certificate and is never inferred from endpoint
preservation. -/
structure RegularityCertificate where
  request : RegularityRequest
  status : RegularityStatus
  evidence : Option CertificateId
  deriving DecidableEq, Repr

def RegularityCertificate.Valid (certificate : RegularityCertificate) : Prop :=
  certificate.status = .proved → certificate.evidence.isSome

end Mathematics.GammaBridge
```
