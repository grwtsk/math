# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadBacktrack.Variant4172b1f417572d450c2ce74d585fcb4b83419a5cc974b3fef5620291252d792f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `266754d66ce7cf03cf159354549537d8d43130a8` · SHA-256 `4172b1f417572d450c2ce74d585fcb4b83419a5cc974b3fef5620291252d792f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Lean.Util.MonadBacktrack

namespace Lean

/--
Execute the action `x`, then restore the initial state. Returns the state after
`x` finished.
-/
def withoutModifyingState' [Monad m] [MonadBacktrack s m] [MonadFinally m]
    (x : m α) : m (α × s) :=
  withoutModifyingState do
    let result ← x
    let finalState ← saveState
    return (result, finalState)

end Lean
```
