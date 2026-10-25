# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemma.Variantbf534e768b810014e26b13692b95540ed05f67a1a186b309b494c0cc3c2c1028

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10d49cd8d8a8f292c928905a256ce82d63d0a397` · SHA-256 `bf534e768b810014e26b13692b95540ed05f67a1a186b309b494c0cc3c2c1028`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Kyle Miller
-/
import Mathlib.Init
import Lean.Parser.Command

/-!
# Support for `lemma` as a synonym for `theorem`.
-/

open Lean

-- higher priority to override the one in Batteries
/-- `lemma` means the same as `theorem`. It is used to denote "less important" theorems -/
syntax (name := lemma) (priority := default + 1) declModifiers
  group("lemma " declId ppIndent(declSig) declVal) : command

/-- Implementation of the `lemma` command, by macro expansion to `theorem`. -/
@[macro «lemma»] def expandLemma : Macro := fun stx =>
  -- Not using a macro match, to be more resilient against changes to `lemma`.
  -- This implementation ensures that any future changes to `theorem` are reflected in `lemma`
  let stx := stx.modifyArg 1 fun stx =>
    let stx := stx.modifyArg 0 (mkAtomFrom · "theorem" (canonical := true))
    stx.setKind ``Parser.Command.theorem
  pure <| stx.setKind ``Parser.Command.declaration
```
