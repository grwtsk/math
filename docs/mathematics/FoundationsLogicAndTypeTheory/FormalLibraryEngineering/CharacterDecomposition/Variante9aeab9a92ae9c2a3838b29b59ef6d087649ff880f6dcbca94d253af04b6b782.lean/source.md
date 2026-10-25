# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CharacterDecomposition.Variante9aeab9a92ae9c2a3838b29b59ef6d087649ff880f6dcbca94d253af04b6b782

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4acd4f79ce8c62616d8549731d55c918b835ef06` · SHA-256 `e9aeab9a92ae9c2a3838b29b59ef6d087649ff880f6dcbca94d253af04b6b782`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Orbit.EffectiveOrbit
import Mathematics.Oracle.Naming.CyclicCharacters

/-!
# Character decomposition boundary

Finite turn-group characters are reused without calling them Dirichlet
characters absent conductor, unit-group, and primitivity evidence.
-/

namespace Mathematics.Orbit

structure CharacterProfile where
  turnGroupDigest : Digest
  conductorCertificate : Option CertificateId
  primitivityCertificate : Option CertificateId
  deriving DecidableEq, Repr

end Mathematics.Orbit
```
