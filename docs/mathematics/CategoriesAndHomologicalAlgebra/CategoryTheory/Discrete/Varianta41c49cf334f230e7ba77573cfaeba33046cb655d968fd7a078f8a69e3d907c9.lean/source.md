# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Discrete.Varianta41c49cf334f230e7ba77573cfaeba33046cb655d968fd7a078f8a69e3d907c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33192f1707b1b3112a7431bf45da655261e52cda` · SHA-256 `a41c49cf334f230e7ba77573cfaeba33046cb655d968fd7a078f8a69e3d907c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.CategoryTheory.Groupoid
public import Mathlib.CategoryTheory.Discrete.Basic
/-!

# Discrete categories are groupoids
-/

public section

namespace CategoryTheory

variable {C : Type*}

instance : Groupoid (Discrete C) := { inv := fun h ↦ ⟨h.1.symm⟩ }

instance [Category* C] [IsDiscrete C] : IsGroupoid C where

end CategoryTheory
```
