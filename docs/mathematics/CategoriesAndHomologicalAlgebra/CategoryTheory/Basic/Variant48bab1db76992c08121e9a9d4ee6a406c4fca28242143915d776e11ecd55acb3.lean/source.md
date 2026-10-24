# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant48bab1db76992c08121e9a9d4ee6a406c4fca28242143915d776e11ecd55acb3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `759be56f3e234e59e7704ad7fbb50ee70c80ca45` · SHA-256 `48bab1db76992c08121e9a9d4ee6a406c4fca28242143915d776e11ecd55acb3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Limits.Preorder

/-!
# Limits and colimits indexed by preorders

In this file, we obtain the following very basic results
about limits and colimits indexed by a preordered type `J`:
* a least element in `J` implies the existence of all limits indexed by `J`
* a greatest element in `J` implies the existence of all colimits indexed by `J`

-/

universe v v' u u' w

open CategoryTheory Limits

variable (C : Type u) [Category.{v} C] (J : Type w) [Preorder J]

namespace Preorder

section OrderBot

variable [OrderBot J]

instance : HasLimitsOfShape J C := ⟨fun _ ↦ by infer_instance⟩

end OrderBot

section OrderTop

variable [OrderTop J]

instance : HasColimitsOfShape J C := ⟨fun _ ↦ by infer_instance⟩

end OrderTop

end Preorder
```
