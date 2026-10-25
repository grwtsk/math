# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TryThis.Variant4bf1ad3adc344b017b40c119edac556de311e9ab3a7e53a45ab10fecc04ce03a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f34ea59970cb96a6d83a50132f5caa16e98c857b` · SHA-256 `4bf1ad3adc344b017b40c119edac556de311e9ab3a7e53a45ab10fecc04ce03a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Init
import Lean.Meta.Tactic.TryThis

/-!
# 'Try this' tactic macro

This is a convenient shorthand intended for macro authors to be able to generate "Try this"
recommendations. (It is not the main implementation of 'Try this',
which is implemented in Lean core, see `Lean.Meta.Tactic.TryThis`.)
-/

namespace Mathlib.Tactic
open Lean

/-- Produces the text `Try this: <tac>` with the given tactic, and then executes it. -/
elab tk:"try_this" tac:tactic info:(str)? : tactic => do
  Elab.Tactic.evalTactic tac
  Meta.Tactic.TryThis.addSuggestion tk
    { suggestion := tac, postInfo? := TSyntax.getString <$> info }
    (origSpan? := ← getRef)

/-- Produces the text `Try this: <tac>` with the given conv tactic, and then executes it. -/
elab tk:"try_this" tac:conv info:(str)? : conv => do
  Elab.Tactic.evalTactic tac
  Meta.Tactic.TryThis.addSuggestion tk
    { suggestion := tac, postInfo? := TSyntax.getString <$> info }
    (origSpan? := ← getRef)

end Mathlib.Tactic
```
