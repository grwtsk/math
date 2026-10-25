# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant1ff4fe2f85093348f9fcb0a183ef4f7ee989f8de546ffb654d85811e6e6a8b7a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ab335875a87ab8ac74c149e76d3f81ceb478342` · SHA-256 `1ff4fe2f85093348f9fcb0a183ef4f7ee989f8de546ffb654d85811e6e6a8b7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
module

prelude
public import Init.System.IO

@[expose] public section

namespace Std

/--
`AtomicT α m` is the monad that can be atomically executed inside mutual exclusion primitives like
`Mutex α` with outside monad `m`.
The action has access to the state `α` of the mutex (via `get` and `set`).
-/
abbrev AtomicT := StateRefT' IO.RealWorld

end Std
```
