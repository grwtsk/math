# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Elementwise.Variant2b249752f2f7aa4fee040c8cbc4865672ab078dacc269398a47dd1c89fed2159

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06fe4ef41ec18b1a711a50d5077ec74a727d6145` · SHA-256 `2b249752f2f7aa4fee040c8cbc4865672ab078dacc269398a47dd1c89fed2159`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Tactic.CategoryTheory.Elementwise
import Mathlib.CategoryTheory.ConcreteCategory.Basic

/-!
# Use the `elementwise` attribute to create applied versions of lemmas.

Usually we would use `@[elementwise]` at the point of definition,
however some early parts of the category theory library are imported by `Tactic.Elementwise`,
so we need to add the attribute after the fact.
-/


/-! We now add some `elementwise` attributes to lemmas that were proved earlier. -/


open CategoryTheory

attribute [elementwise (attr := simp)] Iso.hom_inv_id Iso.inv_hom_id

-- This list is incomplete, and it would probably be useful to add more.
set_option linter.existingAttributeWarning false in
attribute [elementwise (attr := simp)] IsIso.hom_inv_id IsIso.inv_hom_id
```
