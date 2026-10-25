# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BasicAux.Variant50ba97fd8e3452bd7500140673995b466e06fa20de5c6ac337c12bad57907079

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87a06b3f18bf646d2d3e3ae366e1144aaf0d3e8e` · SHA-256 `50ba97fd8e3452bd7500140673995b466e06fa20de5c6ac337c12bad57907079`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joe Hendrix, Wojciech Nawrocki, Leonardo de Moura, Mario Carneiro, Alex Keizer, Harun Khan, Abdalrhman M Mohamed
-/
module

prelude
public import Init.Grind.Tactics

public section

set_option linter.missingDocs true

/-!
This module exists to provide the very basic `BitVec` definitions required for
`Init.Data.UInt.BasicAux`.
-/

namespace BitVec

section Nat

instance instOfNat : OfNat (BitVec n) i where ofNat := .ofNat n i

/-- Return the bound in terms of toNat. -/
theorem isLt (x : BitVec w) : x.toNat < 2^w := x.toFin.isLt

grind_pattern isLt => x.toNat, 2^w

end Nat

section arithmetic

/--
Adds two bitvectors. This can be interpreted as either signed or unsigned addition modulo `2^n`.
Usually accessed via the `+` operator.

SMT-LIB name: `bvadd`.
-/
@[expose, implicit_reducible]
protected def add (x y : BitVec n) : BitVec n := .ofNat n (x.toNat + y.toNat)
instance : Add (BitVec n) := ⟨BitVec.add⟩

/--
Subtracts one bitvector from another. This can be interpreted as either signed or unsigned subtraction
modulo `2^n`. Usually accessed via the `-` operator.

-/
@[expose, implicit_reducible]
protected def sub (x y : BitVec n) : BitVec n := .ofNat n ((2^n - y.toNat) + x.toNat)
instance : Sub (BitVec n) := ⟨BitVec.sub⟩

end arithmetic

end BitVec
```
