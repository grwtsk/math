# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Encode.Variant9433d8c9b8b8664dfdb9f8e9d761a85b40752ca2f873d695ea49fd3d629a3ab3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a335f6b4157199eac1c8122313f40c5194bf9d8` · SHA-256 `9433d8c9b8b8664dfdb9f8e9d761a85b40752ca2f873d695ea49fd3d629a3ab3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Http.Internal.ChunkedBuffer
public import Std.Http.Data.Version

public section

/-!
# Encode

Serializes types to a `ChunkedBuffer` containing their canonical HTTP representation for a specific
protocol version.
-/

namespace Std.Http.Internal

set_option linter.all true

/--
Serializes a type `t` to a `ChunkedBuffer` containing its canonical HTTP representation for protocol
version `v`.
-/
class Encode (v : Version) (t : Type) where
  /--
  Encodes a type `t` to a `ChunkedBuffer`.
  -/
  encode : ChunkedBuffer → t → ChunkedBuffer

instance : Encode .v11 Version where
  encode buffer := buffer.writeString ∘ toString

end Std.Http.Internal
```
