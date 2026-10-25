# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SizeOfLemmas.Variant073e6fc9cf64f7a38e87014fc8055c125c2d688b57f7a07afae9d6eb4bac8b51

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74324a1d368979df6da50f1c4be7b204994438c4` · SHA-256 `073e6fc9cf64f7a38e87014fc8055c125c2d688b57f7a07afae9d6eb4bac8b51`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
import all Init.Data.Char.Basic
import all Init.SizeOf
public import Init.Data.Char.Basic
import Init.Data.Nat.Internal.Linear
meta import Init.MetaTypes

public section

@[simp] protected theorem Fin.sizeOf (a : Fin n) : sizeOf a = a.val + 1 := by
  cases a; simp +arith

@[simp] protected theorem BitVec.sizeOf (a : BitVec w) : sizeOf a = sizeOf a.toFin + 1 := by
  cases a; simp +arith

@[simp] protected theorem UInt8.sizeOf (a : UInt8) : sizeOf a = a.toNat + 3 := by
  cases a; simp +arith [UInt8.toNat, BitVec.toNat]

@[simp] protected theorem UInt16.sizeOf (a : UInt16) : sizeOf a = a.toNat + 3 := by
  cases a; simp +arith [UInt16.toNat, BitVec.toNat]

@[simp] protected theorem UInt32.sizeOf (a : UInt32) : sizeOf a = a.toNat + 3 := by
  cases a; simp +arith [UInt32.toNat, BitVec.toNat]

@[simp] protected theorem UInt64.sizeOf (a : UInt64) : sizeOf a = a.toNat + 3 := by
  cases a; simp +arith [UInt64.toNat, BitVec.toNat]

@[simp] protected theorem USize.sizeOf (a : USize) : sizeOf a = a.toNat + 3 := by
  cases a; simp +arith [USize.toNat, BitVec.toNat]

@[simp] protected theorem Char.sizeOf (a : Char) : sizeOf a = a.toNat + 4 := by
  cases a; simp +arith [Char.toNat]

@[simp] protected theorem Subtype.sizeOf {α : Sort u_1} {p : α → Prop} (s : Subtype p) : sizeOf s = sizeOf s.val + 1 := by
  cases s; simp
```
