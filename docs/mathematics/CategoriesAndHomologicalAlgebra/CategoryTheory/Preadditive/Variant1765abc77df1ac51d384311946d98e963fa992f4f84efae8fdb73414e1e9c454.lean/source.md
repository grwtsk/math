# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preadditive.Variant1765abc77df1ac51d384311946d98e963fa992f4f84efae8fdb73414e1e9c454

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a128681ba0a1c2657324700ec73671fe40c8ad5` · SHA-256 `1765abc77df1ac51d384311946d98e963fa992f4f84efae8fdb73414e1e9c454`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.Algebra.Category.GroupCat.Basic
import Mathlib.CategoryTheory.Preadditive.Basic

#align_import algebra.category.Group.preadditive from "leanprover-community/mathlib"@"829895f162a1f29d0133f4b3538f4cd1fb5bffd3"

/-!
# The category of additive commutative groups is preadditive.
-/

open CategoryTheory

universe u

namespace AddCommGroupCat

-- porting note: this instance was not necessary in mathlib
instance (P Q : AddCommGroupCat) : AddCommGroup (P ⟶ Q) :=
  (inferInstance : AddCommGroup (AddMonoidHom P Q))

-- porting note: this lemma was not necessary in mathlib
@[simp]
lemma hom_add_apply {P Q : AddCommGroupCat} (f g : P ⟶ Q) (x : P) :
  (f + g) x = f x + g x := rfl

section

-- porting note: the simp attribute was locally deactivated here,
-- otherwise Lean would try to infer `Preadditive AddCommGroupCat`
-- in order to prove the axioms `add_comp` and `comp_add` in the
-- next instance declaration
attribute [-simp] Preadditive.add_comp Preadditive.comp_add

instance : Preadditive AddCommGroupCat where

end

end AddCommGroupCat
```
