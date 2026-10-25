# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Transport.Variantba99d0a187bd92e98b09353c3659cba27085b069f95ee582ee559bdaf22f3186

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f327867116cec4f09c213c0f688dcfd7f987183` · SHA-256 `ba99d0a187bd92e98b09353c3659cba27085b069f95ee582ee559bdaf22f3186`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Presentation.Transport.Model
public import Presentation.Transport.Projection
public import Presentation.Transport.Audit

/-!
# Generic admitted-publication presentation adapter

The adapter consumes exact transport state and emits derived views. It never
creates a second revision, payload, hash, or theorem authority.
-/
```
