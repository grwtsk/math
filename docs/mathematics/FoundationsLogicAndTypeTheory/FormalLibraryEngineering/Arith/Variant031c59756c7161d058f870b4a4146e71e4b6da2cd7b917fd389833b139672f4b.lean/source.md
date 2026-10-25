# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Arith.Variant031c59756c7161d058f870b4a4146e71e4b6da2cd7b917fd389833b139672f4b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e950223c347945d23cfffb41b17b6b64b6e26baf` · SHA-256 `031c59756c7161d058f870b4a4146e71e4b6da2cd7b917fd389833b139672f4b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Sebastian Ullrich. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich
-/
module

prelude
public import Lean.Meta.Tactic.Simp.Arith.Nat
public import Lean.Meta.Tactic.Simp.Arith.Int

public section

namespace Lean.Meta.Simp.Arith

def parentIsTarget (parent? : Option Expr) : Bool :=
  match parent? with
  | none => false
  | some parent => isLinearTerm parent || isLinearCnstr parent || isDvdCnstr parent

end Lean.Meta.Simp.Arith
```
