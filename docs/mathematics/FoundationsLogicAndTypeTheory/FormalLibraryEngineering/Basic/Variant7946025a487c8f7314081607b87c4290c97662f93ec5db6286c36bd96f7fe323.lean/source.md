# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant7946025a487c8f7314081607b87c4290c97662f93ec5db6286c36bd96f7fe323

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9ce5f49526abcc3436a1835a4751368e85c4c7c` · SHA-256 `7946025a487c8f7314081607b87c4290c97662f93ec5db6286c36bd96f7fe323`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 François G. Dorais. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: François G. Dorais
-/
module

@[expose] public section

namespace BitVec

/-- `ofFnLEAux f` returns the `BitVec m` whose `i`th bit is `f i` when `i < m`, little endian. -/
@[inline] def ofFnLEAux (m : Nat) (f : Fin n → Bool) : BitVec m :=
  Fin.foldr n (fun i v => v.shiftConcat (f i)) 0

/-- `ofFnLE f` returns the `BitVec n` whose `i`th bit is `f i` with little endian ordering. -/
@[inline] def ofFnLE (f : Fin n → Bool) : BitVec n := ofFnLEAux n f

/-- `ofFnBE f` returns the `BitVec n` whose `i`th bit is `f i` with big endian ordering. -/
@[inline] def ofFnBE (f : Fin n → Bool) : BitVec n := ofFnLE fun i => f i.rev
```
