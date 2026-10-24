# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PtrSet.Variant907bbf458c242c59150e7eae064b129965849d26bfaba1b718796cf8976b31d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b833996a5a104f07972c9c2946bc28358843085` · SHA-256 `907bbf458c242c59150e7eae064b129965849d26bfaba1b718796cf8976b31d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Leonardo de Moura. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.Hashable
public import Std.Data.HashSet.Basic

public section

namespace Lean

structure Ptr (α : Type u) where
  value : α

unsafe instance : Hashable (Ptr α) where
  hash a := hash64 (ptrAddrUnsafe a).toUInt64

unsafe instance : BEq (Ptr α) where
  beq a b := ptrAddrUnsafe a == ptrAddrUnsafe b

/--
Set of pointers. It is a low-level auxiliary datastructure used for traversing DAGs.
-/
@[expose] unsafe def PtrSet (α : Type) :=
  Std.HashSet (Ptr α)

unsafe def mkPtrSet {α : Type} (capacity : Nat := 64) : PtrSet α :=
  Std.HashSet.emptyWithCapacity capacity

unsafe abbrev PtrSet.insert (s : PtrSet α) (a : α) : PtrSet α :=
  Std.HashSet.insert s { value := a }

unsafe abbrev PtrSet.contains (s : PtrSet α) (a : α) : Bool :=
  Std.HashSet.contains s { value := a }

/--
Map of pointers. It is a low-level auxiliary datastructure used for traversing DAGs.
-/
@[expose] unsafe def PtrMap (α : Type) (β : Type) :=
  Std.HashMap (Ptr α) β

unsafe def mkPtrMap {α β : Type} (capacity : Nat := 64) : PtrMap α β :=
  Std.HashMap.emptyWithCapacity capacity

unsafe abbrev PtrMap.insert (s : PtrMap α β) (a : α) (b : β) : PtrMap α β :=
  Std.HashMap.insert s { value := a } b

unsafe abbrev PtrMap.contains (s : PtrMap α β) (a : α) : Bool :=
  Std.HashMap.contains s { value := a }

unsafe abbrev PtrMap.find? (s : PtrMap α β) (a : α) : Option β :=
  Std.HashMap.get? s { value := a }

end Lean
```
