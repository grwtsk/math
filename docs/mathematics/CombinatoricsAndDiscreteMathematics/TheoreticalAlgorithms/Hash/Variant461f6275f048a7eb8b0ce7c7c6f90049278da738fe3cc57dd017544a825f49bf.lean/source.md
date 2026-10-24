# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hash.Variant461f6275f048a7eb8b0ce7c7c6f90049278da738fe3cc57dd017544a825f49bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5af965d32300706c94f351f617f2baf27a3dcc16` · SHA-256 `461f6275f048a7eb8b0ce7c7c6f90049278da738fe3cc57dd017544a825f49bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
abbrev Hash256.algorithm (hash : Hash256) : String :=
  Surface.Core.Transport.Hash256.algorithm hash
abbrev Hash256.hex (hash : Hash256) : String :=
  Surface.Core.Transport.Hash256.hex hash
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
