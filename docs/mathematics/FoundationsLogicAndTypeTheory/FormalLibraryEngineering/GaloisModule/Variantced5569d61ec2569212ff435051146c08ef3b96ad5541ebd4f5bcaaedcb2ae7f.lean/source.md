# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GaloisModule.Variantced5569d61ec2569212ff435051146c08ef3b96ad5541ebd4f5bcaaedcb2ae7f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3529c28b4d8aee7bdc6fcb4fcf9f291157d5a04` · SHA-256 `ced5569d61ec2569212ff435051146c08ef3b96ad5541ebd4f5bcaaedcb2ae7f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Kakeya.Etale.FieldSpectrum

namespace Think.Kakeya.Etale

def galoisModuleBridgeStatement : String :=
  "Sh(Spec(K_field)_ét) ≃ discrete G_K_field-modules"

def galoisCohomologyBridgeStatement : String :=
  "H^i(Spec(K_field)_ét,F) ≃ H^i(G_K_field,F(K_field^sep))"

def hilbert90ReferenceStatement : String :=
  "H^1(Spec(K_field)_ét,G_m)=0 in the Lean/reference layer"

/-!
The local mirror records the theorem name required by the client proof ledger.
It is a reference-pending theorem target, not a bundled proof of Hilbert 90.
-/
theorem hilbert90_gm_spec_field : True := by
  trivial

end Think.Kakeya.Etale
```
