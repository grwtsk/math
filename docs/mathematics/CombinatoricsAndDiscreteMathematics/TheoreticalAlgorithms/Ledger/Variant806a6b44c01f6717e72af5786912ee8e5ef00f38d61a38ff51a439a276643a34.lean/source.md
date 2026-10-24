# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Ledger.Variant806a6b44c01f6717e72af5786912ee8e5ef00f38d61a38ff51a439a276643a34

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d47a042a2b9a3ce060df80c7b19193fc46774b8` · SHA-256 `806a6b44c01f6717e72af5786912ee8e5ef00f38d61a38ff51a439a276643a34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import NoeoueueFormalGate.Model

set_option autoImplicit false

namespace NoeoueueFormalGate

structure CertifiedTransition where
  before : State
  intent : Intent
  after : State
  checked : ValidTransition before intent after

structure CertificateLedger where
  genesis : State
  genesisInvariant : Invariant genesis
  transitions : List CertifiedTransition

namespace CertificateLedger

def appendCertified
    (ledger : CertificateLedger)
    (certificate : CertifiedTransition) : CertificateLedger :=
  { ledger with transitions := ledger.transitions ++ [certificate] }

end CertificateLedger

end NoeoueueFormalGate
```
