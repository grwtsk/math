# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ingress.Variantf4aa02084566d3dab9e927330299f44ed90128ece16eb2d2839a097bafe19e85

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f315209b2720023fdfe03d25ea7809f24e4d9c1b` · SHA-256 `f4aa02084566d3dab9e927330299f44ed90128ece16eb2d2839a097bafe19e85`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Resolution.Context

/-!
# Canonical browser and native invocation ingress
-/

namespace Mathematics.Resolution

inductive IngressKind
  | browser
  | native
  deriving DecidableEq, Repr

structure InvocationIntent where
  cutDigest : String
  contextDigest : String
  authorityDigest : String
  deriving DecidableEq, Repr

structure CanonicalResolutionCommand where
  intent : InvocationIntent
  deriving DecidableEq, Repr

def canonicalizeIngress
    (_kind : IngressKind)
    (intent : InvocationIntent) :
    CanonicalResolutionCommand :=
  ⟨intent⟩

theorem browser_native_canonicalize_equally
    (intent : InvocationIntent) :
    canonicalizeIngress .browser intent =
      canonicalizeIngress .native intent :=
  rfl

end Mathematics.Resolution
```
