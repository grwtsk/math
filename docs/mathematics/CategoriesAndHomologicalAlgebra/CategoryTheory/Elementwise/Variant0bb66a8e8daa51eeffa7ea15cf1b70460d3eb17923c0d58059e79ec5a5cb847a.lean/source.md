# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Elementwise.Variant0bb66a8e8daa51eeffa7ea15cf1b70460d3eb17923c0d58059e79ec5a5cb847a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `790b625b2f21d6dc40169b1c838f864d9fbfc811` · SHA-256 `0bb66a8e8daa51eeffa7ea15cf1b70460d3eb17923c0d58059e79ec5a5cb847a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
module

public import Mathlib.Tactic.CategoryTheory.Elementwise
public import Mathlib.CategoryTheory.Limits.HasLimits
public import Mathlib.CategoryTheory.Limits.Shapes.Kernels

/-!
# Elementwise lemmas for concrete categories

In this file we provide various simp lemmas in its elementwise form via `Tactic.Elementwise`.
-/

public section


open CategoryTheory CategoryTheory.Limits

attribute [elementwise] limit.lift_π limit.w
  colimit.ι_desc colimit.w kernel.lift_ι cokernel.π_desc kernel.condition cokernel.condition

attribute [simp] limit.lift_π_apply limit.w_apply colimit.ι_desc_apply colimit.w_apply
  kernel.lift_ι_apply cokernel.π_desc_apply kernel.condition_apply cokernel.condition_apply
```
