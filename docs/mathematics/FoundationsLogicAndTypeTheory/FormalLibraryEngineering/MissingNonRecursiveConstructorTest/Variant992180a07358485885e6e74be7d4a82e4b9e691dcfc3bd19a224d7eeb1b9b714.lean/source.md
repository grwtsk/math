# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MissingNonRecursiveConstructorTest.Variant992180a07358485885e6e74be7d4a82e4b9e691dcfc3bd19a224d7eeb1b9b714

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f559923940b040b5fbc58376c133cec46a5d0f40` · SHA-256 `992180a07358485885e6e74be7d4a82e4b9e691dcfc3bd19a224d7eeb1b9b714`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Plausible.Arbitrary
import Plausible.DeriveArbitrary
import Plausible.Attr

open Plausible

/-- A variant of a binary tree datatype where the
    non-recursive `Leaf` constructor is missing.

    We are unable to derive a generator for this type,
    since it is impossible to construct an inhabitant of this type.

    The test below checks that an appropriate error message is emitted
    by the deriving handler. -/
inductive TreeNoLeaf where
  | Node : Nat → TreeNoLeaf → TreeNoLeaf → TreeNoLeaf

set_option trace.plausible.deriving.arbitrary true in
/-- error: derive Arbitrary failed, TreeNoLeaf has no non-recursive constructors -/
#guard_msgs in
deriving instance Arbitrary for TreeNoLeaf
```
