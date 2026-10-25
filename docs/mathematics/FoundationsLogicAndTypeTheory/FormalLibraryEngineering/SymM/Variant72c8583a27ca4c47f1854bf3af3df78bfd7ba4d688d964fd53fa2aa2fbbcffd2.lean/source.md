# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Symm.Variant72c8583a27ca4c47f1854bf3af3df78bfd7ba4d688d964fd53fa2aa2fbbcffd2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2cfb43bf914b5584ae8287ca23cae5e15bb51012` · SHA-256 `72c8583a27ca4c47f1854bf3af3df78bfd7ba4d688d964fd53fa2aa2fbbcffd2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Siddhartha Gadgil. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Siddhartha Gadgil, Mario Carneiro, Kim Morrison
-/
module

prelude
public import Lean.Meta.Tactic.Symm
public import Lean.Elab.Tactic.Location

public section

namespace Lean.Elab.Tactic

@[builtin_tactic Lean.Parser.Tactic.symm]
def evalSymm : Tactic := fun stx =>
  match stx with
  | `(tactic| symm $(loc?)?) => do
    let atHyp h := liftMetaTactic1 fun g => g.applySymmAt h
    let atTarget := liftMetaTactic1 fun g => g.applySymm
    let loc := if let some loc := loc? then expandLocation loc else Location.targets #[] true
    withLocation loc atHyp atTarget fun _ => throwError "`symm` made no progress"
  | _ => throwUnsupportedSyntax

@[builtin_tactic Lean.Parser.Tactic.symmSaturate]
def evalSymmSaturate : Tactic := fun stx =>
  match stx with
  | `(tactic| symm_saturate) => do
    liftMetaTactic1 fun g => g.symmSaturate
  | _ => throwUnsupportedSyntax
```
