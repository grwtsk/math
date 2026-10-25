# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Authority.Variant7ae55fe0b5830f550521ceb0ac80d63b775cd777af4d8728d5361ea0d9dc6e86

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0dd1644864cef1977abe024f5f30f325beff0e54` · SHA-256 `7ae55fe0b5830f550521ceb0ac80d63b775cd777af4d8728d5361ea0d9dc6e86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.NeighborEnumeration

/-!
# Access authority

Access authority grants observation, traversal, sampling, or proposal
capabilities.  It contains no owner-commit token and no trusted conversion to
one.
-/

namespace Mathematics.GraphAccess

inductive AccessCapability
  | observe
  | traverse
  | sample
  | propose
deriving DecidableEq, Ord, Repr

inductive AccessAuthority
  | observe
  | traverse
  | sample
  | propose
deriving DecidableEq, Repr

def AccessAuthority.grants :
    AccessAuthority → AccessCapability → Bool
  | .observe, .observe => true
  | .traverse, .observe => true
  | .traverse, .traverse => true
  | .sample, .observe => true
  | .sample, .sample => true
  | .propose, .observe => true
  | .propose, .traverse => true
  | .propose, .propose => true
  | _, _ => false

end Mathematics.GraphAccess
```
