# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Exception.Variant425fac490c56586cd204b058024f9eac671ab39aafbc26ff4349b89708555201

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c15fad88d8c233c7bbd0a879063c19e1df78a9e3` · SHA-256 `425fac490c56586cd204b058024f9eac671ab39aafbc26ff4349b89708555201`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Edward Ayers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Edward Ayers
-/
import Mathlib.Init
import Lean.Exception

/-!
# Additional methods for working with `Exception`s

This file contains two additional methods for working with `Exception`s
* `successIfFail`, a generalisation of `fail_if_success` to arbitrary `MonadError`s
* `isFailedToSynthesize`: check if an exception is of the "failed to synthesize" form

-/

open Lean

/--
A generalisation of `fail_if_success` to an arbitrary `MonadError`.
-/
def successIfFail {α : Type} {M : Type → Type} [MonadError M] [Monad M] (m : M α) :
    M Exception := do
  match ← tryCatch (m *> pure none) (pure ∘ some) with
  | none => throwError "Expected an exception."
  | some ex => return ex

namespace Lean

namespace Exception

/--
Check if an exception is a "failed to synthesize" exception.

These exceptions are raised in several different places,
and the only commonality is the prefix of the string, so that's what we look for.
-/
def isFailedToSynthesize (e : Exception) : IO Bool := do
  pure <| (← e.toMessageData.toString).startsWith "failed to synthesize"

end Exception

end Lean
```
