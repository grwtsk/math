# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Vector.Variante21d74ed572e3ad076f1718800d4a0ad302087be81686beea8cc33da917860ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b58c4d1f53a75e27f1dc4b6e62bdf8e43cd5a97f` · SHA-256 `e21d74ed572e3ad076f1718800d4a0ad302087be81686beea8cc33da917860ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Data.Fintype.Vector

/-!
# Finiteness of vector types
-/

variable {α : Type*}

instance List.Vector.finite [Finite α] {n : ℕ} : Finite (Vector α n) := by
  haveI := Fintype.ofFinite α
  infer_instance

instance [Finite α] {n : ℕ} : Finite (Sym α n) := by
  classical
  haveI := Fintype.ofFinite α
  infer_instance
```
