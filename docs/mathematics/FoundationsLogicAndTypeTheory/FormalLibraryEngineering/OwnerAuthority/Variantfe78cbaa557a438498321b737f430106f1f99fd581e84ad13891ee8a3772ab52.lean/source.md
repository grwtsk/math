# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OwnerAuthority.Variantfe78cbaa557a438498321b737f430106f1f99fd581e84ad13891ee8a3772ab52

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb4bd9de06331b9eabc37a32571aa141aef70a81` · SHA-256 `fe78cbaa557a438498321b737f430106f1f99fd581e84ad13891ee8a3772ab52`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Owner authority

This module is deliberately not imported by the graph-access core.  Owner
commit authority is supplied only by the external state owner.
-/

namespace Mathematics.GraphAccess.Owner

inductive OwnerAuthority
  | commit
deriving DecidableEq, Repr

end Mathematics.GraphAccess.Owner
```
