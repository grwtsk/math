# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BinaryFrontier.Variant5e8da8199adfb259bccd380ec19670f6df803bd8038ba853205ed0134d13ed22

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf9b962d054c09609863b27d58c3817b199d4c78` · SHA-256 `5e8da8199adfb259bccd380ec19670f6df803bd8038ba853205ed0134d13ed22`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Binary-frontier access references

The integration layer retains finite frontier and obstruction identities; it
does not reinterpret their certificates.
-/

namespace Mathematics.GraphAccess

structure BinaryFrontierAccessRef where
  frontierRef : String
  distinctionBitfieldRef : String
  continuationCoverRef : Option String
  primitiveObstructionRef : Option String
deriving DecidableEq, Repr

end Mathematics.GraphAccess
```
