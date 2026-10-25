# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IO.Variant71a78a383985067f9dcc6e78d67848d596480ce57505c42cf9120b29cd229ce0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed49b53a8235b37c13ee882805daa80a3f575f73` · SHA-256 `71a78a383985067f9dcc6e78d67848d596480ce57505c42cf9120b29cd229ce0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Async.Select

public section

namespace Std
namespace Async
namespace IO

open Std.Async

/-!
This module provides buffered asynchronous I/O operations for efficient reading and writing.
-/

/--
Interface for asynchronous reading operations.
-/
class AsyncRead (α : Type) (β : Type) where
  read : α → Async β

/--
Interface for asynchronous writing operations.
-/
class AsyncWrite (α : Type) (β : Type) where
  write : α → β → Async Unit

  writeAll : α → Array β → Async Unit :=
    fun socket data => data.forM (write socket)

  flush : α → Async Unit :=
    fun _ => pure ()

/--
Interface for asynchronous streaming with selector-based iteration.
-/
class AsyncStream (α : Type) (β : outParam Type) where
  next : α → Selector β

  stop : α → IO Unit :=
    fun _ => pure ()

end IO
end Async
end Std
```
