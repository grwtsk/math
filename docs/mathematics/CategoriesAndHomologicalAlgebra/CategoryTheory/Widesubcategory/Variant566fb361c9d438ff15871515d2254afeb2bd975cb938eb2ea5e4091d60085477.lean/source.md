# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Widesubcategory.Variant566fb361c9d438ff15871515d2254afeb2bd975cb938eb2ea5e4091d60085477

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63c4b51250193b930875b562134e63ce9ad4c9ed` · SHA-256 `566fb361c9d438ff15871515d2254afeb2bd975cb938eb2ea5e4091d60085477`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Gaëtan Serré. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gaëtan Serré
-/
module

public import Mathlib.CategoryTheory.Monoidal.Widesubcategory
public import Mathlib.CategoryTheory.CopyDiscardCategory.Basic

/-!
# Copy-discard structures on wide subcategories

Given a monoidal category `C`, a morphism property `P : MorphismProperty C` satisfying
`P.IsMonoidalStable` and a comonoid object `c : C`, we introduce a condition `P.
IsStableUnderComonoid c` saying that `c` inherits a comonoid object structure in the category of
`WideSubcategory P`. If `C` is a copy-discard category, if `P` is also stable under braiding and
that this condition `P. IsStableUnderComonoid` holds for all objects `c : C`, we show that
`WideSubcategory P` is also a copy-discard category.
-/

public section

namespace CategoryTheory.MorphismProperty

open scoped ComonObj

variable {C : Type*} [Category* C] (P : MorphismProperty C) [MonoidalCategory C]

/-- A braided-stable morphism property stable under comonoid counit and comultiplication. -/
class IsStableUnderComonoid (P : MorphismProperty C) (c : C) [ComonObj c] : Prop where
  counit_mem (P) : P ε[c]
  comul_mem (P) : P Δ[c]

export IsStableUnderComonoid (counit_mem comul_mem)

@[simps]
instance [P.IsMonoidalStable] (c : WideSubcategory P) [ComonObj c.obj]
    [P.IsStableUnderComonoid c.obj] : ComonObj c where
  counit := ⟨ε[c.obj], P.counit_mem⟩
  comul := ⟨Δ[c.obj], P.comul_mem⟩

instance [BraidedCategory C] [P.IsStableUnderBraiding] (c : WideSubcategory P) [ComonObj c.obj]
    [IsCommComonObj c.obj] [P.IsStableUnderComonoid c.obj] : IsCommComonObj c where
  comul_comm := by
    ext
    exact IsCommComonObj.comul_comm _

open CopyDiscardCategory in
attribute [local simp] copy_tensor discard_tensor copy_unit discard_unit in
instance [CopyDiscardCategory C] [P.IsStableUnderBraiding] [∀ c, P.IsStableUnderComonoid c] :
    CopyDiscardCategory (WideSubcategory P) where

end CategoryTheory.MorphismProperty
```
