# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StructureFieldMetadataFixture.Variantb20e4239c38a83e6ea21b1152a6f1a11aff668b8721dbb7684414a52c9dfdf3c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd74c3fc73ee117c8cc5130c37c17df88725a1a5` · SHA-256 `b20e4239c38a83e6ea21b1152a6f1a11aff668b8721dbb7684414a52c9dfdf3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean

namespace NoeFixtures.ParentAuto

structure Base where
  n : Nat

structure Embedded extends Base where
  ready : True := by trivial

structure SharedLeft where
  n : Nat

structure SharedRight where
  n : Nat
  extra : Nat

structure Copied extends SharedLeft, SharedRight where
  ready : True := by trivial

end NoeFixtures.ParentAuto
```
