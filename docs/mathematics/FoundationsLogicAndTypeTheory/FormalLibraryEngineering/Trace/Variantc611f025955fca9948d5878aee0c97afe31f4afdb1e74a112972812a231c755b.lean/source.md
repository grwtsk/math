# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Trace.Variantc611f025955fca9948d5878aee0c97afe31f4afdb1e74a112972812a231c755b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e5673d8cd79976d8fff0d8b1ba40790668d8673` · SHA-256 `c611f025955fca9948d5878aee0c97afe31f4afdb1e74a112972812a231c755b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Init
import Lean.Elab.Tactic.ElabTerm
import Lean.Meta.Eval

/-!
# Defines the `trace` tactic.
-/

open Lean Meta Elab Tactic

/-- Evaluates a term to a string (when possible), and prints it as a trace message. -/
elab (name := Lean.Parser.Tactic.trace) tk:"trace " val:term : tactic => do
  let e ← elabTerm (← `(toString $val)) (some (mkConst `String))
  logInfoAt tk <|← unsafe evalExpr String (mkConst `String) e
```
