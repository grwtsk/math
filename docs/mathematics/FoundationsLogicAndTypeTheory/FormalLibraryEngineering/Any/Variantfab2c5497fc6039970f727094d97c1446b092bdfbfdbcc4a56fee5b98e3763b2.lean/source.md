# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Any.Variantfab2c5497fc6039970f727094d97c1446b092bdfbfdbcc4a56fee5b98e3763b2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb5a6037aa4ca27c8d7784ba9172329e8432be1e` · SHA-256 `fab2c5497fc6039970f727094d97c1446b092bdfbfdbcc4a56fee5b98e3763b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Http.Data.Body.Basic

public section

/-!
# Body.Any

A type-erased body backed by closures. Implements `Http.Body` and can be constructed from any
type that also implements `Http.Body`. Used as the default handler response body type.
-/

namespace Std.Http.Body
open Std Async

set_option linter.all true

/--
A type-erased body handle. Operations are stored as closures, making it open to any body type
that implements `Http.Body`.
-/
structure Any where

  /--
  Receives the next body chunk. Returns `none` at end-of-stream.
  -/
  recv : Async (Option Chunk)

  /--
  Closes the body stream.
  -/
  close : Async Unit

  /--
  Returns `true` when the body stream is closed.
  -/
  isClosed : Async Bool

  /--
  Selector that resolves when a chunk is available or EOF is reached.
  -/
  recvSelector : Selector (Option Chunk)

  /--
  Non-blocking receive attempt. Returns `none` if no chunk is immediately available,
  `some (some chunk)` when a chunk is ready, or `some none` at end-of-stream.
  -/
  tryRecv : Async (Option (Option Chunk))

  /--
  Returns the declared size.
  -/
  getKnownSize : Async (Option Body.Length)

  /--
  Sets the size of the body.
  -/
  setKnownSize : Option Body.Length → Async Unit
namespace Any

/--
Erases a body of any `Http.Body` instance into a `Body.Any`.
-/
def ofBody [Http.Body α] (body : α) : Any where
  recv := Http.Body.recv body
  close := Http.Body.close body
  isClosed := Http.Body.isClosed body
  recvSelector := Http.Body.recvSelector body
  tryRecv := Http.Body.tryRecv body
  getKnownSize := Http.Body.getKnownSize body
  setKnownSize := Http.Body.setKnownSize body

end Any

instance : Http.Body Any where
  recv := Any.recv
  close := Any.close
  isClosed := Any.isClosed
  recvSelector := Any.recvSelector
  tryRecv := Any.tryRecv
  getKnownSize := Any.getKnownSize
  setKnownSize := Any.setKnownSize

end Std.Http.Body
```
