# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Discrete.Variantd47b15634d20f69ab110abf6531d86dde2589dba91fa62200f6f28d73d38fe35

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ff05508909a9218c1c6c840b935269dab58a303` · SHA-256 `d47b15634d20f69ab110abf6531d86dde2589dba91fa62200f6f28d73d38fe35`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Groupoid
import Mathlib.CategoryTheory.Discrete.Basic
/-!

# Discrete categories are groupoids
-/

namespace CategoryTheory

variable {C : Type*}

instance : Groupoid (Discrete C) := { inv := fun h ↦ ⟨⟨h.1.1.symm⟩⟩ }

instance [Category C] [IsDiscrete C] : IsGroupoid C where

end CategoryTheory
```
