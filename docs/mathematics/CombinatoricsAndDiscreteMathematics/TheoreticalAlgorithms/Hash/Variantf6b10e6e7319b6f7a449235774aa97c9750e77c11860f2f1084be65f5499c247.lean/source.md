# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hash.Variantf6b10e6e7319b6f7a449235774aa97c9750e77c11860f2f1084be65f5499c247

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f567e8a9ca9f317e3734ff154b6d69525fb5f9e1` · SHA-256 `f6b10e6e7319b6f7a449235774aa97c9750e77c11860f2f1084be65f5499c247`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.Transport.Hash

/-!
# XYZ hash compatibility surface

The implementation is payload-neutral in `Surface.Core.Transport`. These
abbreviations and thin theorem wrapper preserve the published XYZ API exactly;
Lean still validates framing only and does not compute SHA-256.
-/

public section

namespace Surface.Core.XYZ

abbrev Hash256 := Surface.Core.Transport.Hash256
abbrev Hash256.algorithm := Surface.Core.Transport.Hash256.algorithm
abbrev Hash256.hex := Surface.Core.Transport.Hash256.hex
abbrev lowerHexAlphabet := Surface.Core.Transport.lowerHexAlphabet
abbrev IsLowerHexDigit := Surface.Core.Transport.IsLowerHexDigit
abbrev Hash256.Valid (hash : Hash256) :=
  Surface.Core.Transport.Hash256.Valid hash
abbrev verifyHash256 := Surface.Core.Transport.verifyHash256

@[surface_novel, surface_published, surface_certificate]
theorem verifyHash256_sound (hash : Hash256)
    (accepted : verifyHash256 hash = true) : hash.Valid :=
  Surface.Core.Transport.verifyHash256_sound hash accepted

end Surface.Core.XYZ
```
