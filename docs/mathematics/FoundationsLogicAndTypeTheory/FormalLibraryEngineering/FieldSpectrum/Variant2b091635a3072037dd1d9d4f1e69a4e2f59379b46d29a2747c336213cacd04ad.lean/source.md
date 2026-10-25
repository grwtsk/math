# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FieldSpectrum.Variant2b091635a3072037dd1d9d4f1e69a4e2f59379b46d29a2747c336213cacd04ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ea7f09ad0c8b863266dc429e94ae6dff7c41096` · SHA-256 `2b091635a3072037dd1d9d4f1e69a4e2f59379b46d29a2747c336213cacd04ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Kakeya.Gauge.Reference

namespace Think.Kakeya.Etale

/-!
Reference-layer labels for the arithmetic étale site.

These definitions deliberately distinguish `K_field` from the browser's
finite-measurement tolerance `K128`.
-/

structure FieldSpectrumReference where
  baseFieldLabel : String
  specLabel : String
deriving Repr, DecidableEq

def specKFieldEtale : FieldSpectrumReference :=
  { baseFieldLabel := "K_field", specLabel := "Spec(K_field)_ét" }

def absoluteGaloisGroupLabel : String :=
  "G_K_field"

def zariskiTooCoarseForClientArithmeticInvariant : String :=
  "Zariski topology is too coarse for this client arithmetic invariant role, not globally invalid."

end Think.Kakeya.Etale
```
