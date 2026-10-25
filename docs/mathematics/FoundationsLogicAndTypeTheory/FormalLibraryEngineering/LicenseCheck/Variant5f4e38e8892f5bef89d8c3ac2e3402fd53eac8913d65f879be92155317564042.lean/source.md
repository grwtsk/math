# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LicenseCheck.Variant5f4e38e8892f5bef89d8c3ac2e3402fd53eac8913d65f879be92155317564042

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7276838e0b017a5f736003b17b2ebdd95644aa0f` · SHA-256 `5f4e38e8892f5bef89d8c3ac2e3402fd53eac8913d65f879be92155317564042`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ecosystem.License
import Mathematics.Reflection.Patch

/-! # Reflection license compatibility -/

namespace Mathematics.Reflection

structure LicenseCheck (patch : Patch) where
  sourceLicense : Ecosystem.LicenseRecord
  destinationLicense : Ecosystem.LicenseRecord
  compatible : Bool
  attributionPreserved : Bool
  checkDigest : Digest

def LicenseCheck.Passes {patch : Patch} (check : LicenseCheck patch) : Prop :=
  check.compatible = true ∧
    check.attributionPreserved = true ∧
    check.sourceLicense.LegallyAdmissible

end Mathematics.Reflection
```
