# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Omit.Variant5ff3574681691161186ddda8acbd301ed0804d1855542da4c21afc82c637c223

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d0db9725c9fbbdcddcd8606f3622d78bc352063` · SHA-256 `5ff3574681691161186ddda8acbd301ed0804d1855542da4c21afc82c637c223`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich
-/
module

prelude
public import Lean.Elab.Command
public import Lean.Linter.Util

public section

namespace Lean.Linter
open Elab.Command

register_builtin_option linter.omit : Bool := {
  defValue := false
  descr := "enable the 'avoid omit' linter"
}

def «omit» : Linter where
  run stx := do
    unless getLinterValue linter.omit (← getLinterOptions) do
      return
    if let some stx := stx.find? (·.isOfKind ``Lean.Parser.Command.«omit») then
      logLint linter.omit stx m!"`omit` should be avoided in favor of restructuring your \
        `variable` declarations"

builtin_initialize addLinter «omit»
```
