# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CircleClosure.Variantbd1af326f3f93a28e208c1351fb0f3d911acd323208f44b095e3788e475b29ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af0b4fbe529aae661d3cf84edc042877ed016a40` · SHA-256 `bd1af326f3f93a28e208c1351fb0f3d911acd323208f44b095e3788e475b29ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Orbit.Phase

/-! # Certified circle-closure claims -/

namespace Mathematics.Orbit

structure CircleClosureCertificate where
  phaseDigest : Digest
  irrationalityCertificate : CertificateId
  deriving DecidableEq, Repr

def CircleClosureCertificate.status (_ : CircleClosureCertificate) : Status :=
  .denseCircle

end Mathematics.Orbit
```
