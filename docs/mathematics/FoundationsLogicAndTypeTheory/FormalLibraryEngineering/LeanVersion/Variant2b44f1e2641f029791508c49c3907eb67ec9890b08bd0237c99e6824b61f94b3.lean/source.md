# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanVersion.Variant2b44f1e2641f029791508c49c3907eb67ec9890b08bd0237c99e6824b61f94b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2459f4f1c32aa0085f3b42db0165aa7a2a886867` · SHA-256 `2b44f1e2641f029791508c49c3907eb67ec9890b08bd0237c99e6824b61f94b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.Id

/-! # Exact Lean toolchain versions -/

namespace Mathematics.Toolchain

structure LeanVersion where
  release : String
  compilerDigest : Digest
  kernelDigest : Digest
  deriving DecidableEq, Repr

def LeanVersion.Valid (version : LeanVersion) : Prop :=
  version.release ≠ "" ∧
    version.compilerDigest.Valid ∧
    version.kernelDigest.Valid

end Mathematics.Toolchain
```
