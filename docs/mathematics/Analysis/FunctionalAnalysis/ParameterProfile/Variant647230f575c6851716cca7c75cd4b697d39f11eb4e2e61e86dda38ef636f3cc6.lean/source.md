# Complete source: GRWTSK.Analysis.FunctionalAnalysis.ParameterProfile.Variant647230f575c6851716cca7c75cd4b697d39f11eb4e2e61e86dda38ef636f3cc6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b54a7228cce040f262692a672ced30d5fa882643` · SHA-256 `647230f575c6851716cca7c75cd4b697d39f11eb4e2e61e86dda38ef636f3cc6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GammaBridge.Regularity

/-! # Banach/Hilbert capability separation -/

namespace Mathematics.GammaBridge

inductive GeometryCapability
  | banach
  | hilbert
  deriving DecidableEq, Repr

def GeometryCapability.hasInnerProduct : GeometryCapability → Bool
  | .banach => false
  | .hilbert => true

@[simp] theorem banach_does_not_supply_inner_product :
    GeometryCapability.banach.hasInnerProduct = false := rfl

structure ParameterProfile where
  id : InterpretationProfileId
  digest : Digest
  geometry : GeometryCapability
  regularity : RegularityRequest
  deriving DecidableEq, Repr

end Mathematics.GammaBridge
```
