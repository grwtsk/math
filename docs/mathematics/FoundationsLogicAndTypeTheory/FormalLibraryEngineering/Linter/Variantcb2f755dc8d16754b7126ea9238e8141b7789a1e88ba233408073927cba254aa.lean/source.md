# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Linter.Variantcb2f755dc8d16754b7126ea9238e8141b7789a1e88ba233408073927cba254aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `848b4d646d051bfe133d2b53f094c057515af05e` · SHA-256 `cb2f755dc8d16754b7126ea9238e8141b7789a1e88ba233408073927cba254aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Lean

/-!
# Additional declarations related to linters
-/

set_option autoImplicit true

open Lean Elab

namespace Lean.Linter

/-- If `linterOption` is true, print a linter warning message at the position determined by `stx`.
-/
def logLintIf [Monad m] [MonadLog m] [AddMessageContext m] [MonadOptions m]
    (linterOption : Lean.Option Bool) (stx : Syntax) (msg : MessageData) : m Unit := do
  if linterOption.get (← getOptions) then logLint linterOption stx msg

end Lean.Linter
```
