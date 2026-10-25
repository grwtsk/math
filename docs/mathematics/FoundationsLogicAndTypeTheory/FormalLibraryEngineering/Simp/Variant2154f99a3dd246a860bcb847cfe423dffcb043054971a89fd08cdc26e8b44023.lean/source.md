# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simp.Variant2154f99a3dd246a860bcb847cfe423dffcb043054971a89fd08cdc26e8b44023

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ab86683cd04c12aedcc45c6496428eadb47f0a5` · SHA-256 `2154f99a3dd246a860bcb847cfe423dffcb043054971a89fd08cdc26e8b44023`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Paul Lezeau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Lezeau
-/
import Lean.Meta.Tactic.Simp.Types
import Mathlib.Init
import Qq

/-! # Additional simp utilities

This file adds additional tools for metaprogramming with the `simp` tactic

-/

open Lean Meta Qq

namespace Lean.Meta.Simp

/-- `Qq` version of `Lean.Meta.Simp.Methods.discharge?`, which avoids having to use `~q` matching
on the proof expression returned by `discharge?`

`dischargeQ? (a : Q(Prop))` attempts to prove `a` using the discharger, returning
`some (pf : Q(a))` if a proof is found and `none` otherwise. -/
@[inline]
def Methods.dischargeQ? (M : Methods) (a : Q(Prop)) : SimpM <| Option Q($a) := M.discharge? a

end Lean.Meta.Simp
```
