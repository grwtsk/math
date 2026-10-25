# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Symbolic.Variant4d83ba516124b0c4bb26cd88be0acdcc9b9a35bd912e61ab9ad8f95c65cb8ec0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `53bc1a4e01751ea9e88a81e50c211e78eb9a2b64` · SHA-256 `4d83ba516124b0c4bb26cd88be0acdcc9b9a35bd912e61ab9ad8f95c65cb8ec0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Kakeya.Gauge.Reference

namespace Think.Kakeya.Torsion

/-!
Symbolic torsion layer.

This is the default browser claim level before a complex-torus or Weierstrass
group law is enabled. It records the terminology boundary: symbolic torsion
analogues are not literal elliptic-curve torsion claims.
-/

inductive EllipticTorsionMode where
  | symbolicTorsionStyle
  | complexTorusGroupLaw
  | weierstrassGroupLaw
deriving Repr, DecidableEq

def symbolicTorsionLabel : String :=
  "torsion-style symbolic calculus"

def finiteKSymbolTorsionAnalogueLabel : String :=
  "finite K-symbol torsion analogue"

end Think.Kakeya.Torsion
```
