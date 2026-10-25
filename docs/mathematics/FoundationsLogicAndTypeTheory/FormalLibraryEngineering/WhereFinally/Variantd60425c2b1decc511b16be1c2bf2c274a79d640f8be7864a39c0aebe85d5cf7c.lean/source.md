# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WhereFinally.Variantd60425c2b1decc511b16be1c2bf2c274a79d640f8be7864a39c0aebe85d5cf7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd54d7f0296658e638968fe135f55460f1136ed8` · SHA-256 `d60425c2b1decc511b16be1c2bf2c274a79d640f8be7864a39c0aebe85d5cf7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Lean.Parser.Term

public section

namespace Lean.Elab

structure WhereFinallyView where
  ref       : Syntax
  tactic    : TSyntax ``Lean.Parser.Tactic.tacticSeq
  deriving Inhabited

def WhereFinallyView.none : WhereFinallyView := { ref := .missing, tactic := ⟨.missing⟩ }

def WhereFinallyView.isNone (o : WhereFinallyView) : Bool := o.ref.isMissing && o.tactic.raw.isMissing

/-- Creates a view of the `finally` section of a `whereDecls` syntax object -/
def mkWhereFinallyView {m} [Monad m] [MonadError m] (stx : TSyntax ``Parser.Term.whereDecls) : m WhereFinallyView := do
  -- Fail gracefully upon partial parses/missing where or finally sections
  let whereFinally := stx.raw[2][0]
  if whereFinally.isMissing then
    return { ref := stx, tactic := ⟨.missing⟩ }
  if !whereFinally[2][0].isMissing then
    throwErrorAt stx "`where ... finally` does not currently support any named sub-sections `| sectionName => ...`"
  let tactic := ⟨whereFinally[1]⟩
  return { ref := whereFinally, tactic }
```
