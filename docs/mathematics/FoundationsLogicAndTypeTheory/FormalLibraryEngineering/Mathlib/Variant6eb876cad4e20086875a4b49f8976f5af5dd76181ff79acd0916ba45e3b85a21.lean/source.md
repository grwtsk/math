# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mathlib.Variant6eb876cad4e20086875a4b49f8976f5af5dd76181ff79acd0916ba45e3b85a21

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd0b69b67bd733452107d5661d60ebfdc8ff29cf` · SHA-256 `6eb876cad4e20086875a4b49f8976f5af5dd76181ff79acd0916ba45e3b85a21`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

-- We verify that `exact?` copes with all of Mathlib.
-- On `v4.7.0-rc1` this revealed a cache corruption problem.

/-- info: Try this: exact Nat.one_pos -/
#guard_msgs in
example : 0 < 1 := by exact?
```
