# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hash.Variant31644f93485765de1ffcc7d2baec8d52392465ff153a22fa33eff3595913cfa2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25238b365b88bf25a2d1b4039a41bafb74fc3fb4` · SHA-256 `31644f93485765de1ffcc7d2baec8d52392465ff153a22fa33eff3595913cfa2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
