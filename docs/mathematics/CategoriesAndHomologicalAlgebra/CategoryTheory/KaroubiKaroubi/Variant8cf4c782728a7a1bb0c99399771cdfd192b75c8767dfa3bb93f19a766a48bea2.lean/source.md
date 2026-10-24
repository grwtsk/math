# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KaroubiKaroubi.Variant8cf4c782728a7a1bb0c99399771cdfd192b75c8767dfa3bb93f19a766a48bea2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47bfb5c18eeeb463564dbb282d49999fd44b76ff` · SHA-256 `8cf4c782728a7a1bb0c99399771cdfd192b75c8767dfa3bb93f19a766a48bea2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Idempotents.Karoubi

#align_import category_theory.idempotents.karoubi_karoubi from "leanprover-community/mathlib"@"31019c2504b17f85af7e0577585fad996935a317"

/-!
# Idempotence of the Karoubi envelope

In this file, we construct the equivalence of categories
`KaroubiKaroubi.equivalence C : Karoubi C ≌ Karoubi (Karoubi C)` for any category `C`.

-/


open CategoryTheory.Category

open CategoryTheory.Idempotents.Karoubi

namespace CategoryTheory

namespace Idempotents

namespace KaroubiKaroubi

variable (C : Type*) [Category C]

-- porting note: added to ease automation
@[reassoc (attr := simp)]
lemma idem_f (P : Karoubi (Karoubi C)) : P.p.f ≫ P.p.f = P.p.f := by
  simpa only [hom_ext_iff, comp_f] using P.idem

@[reassoc]
lemma p_comm_f {P Q : Karoubi (Karoubi C)} (f : P ⟶ Q) :
  P.p.f ≫ f.f.f = f.f.f ≫ Q.p.f := by
  simpa only [hom_ext_iff, comp_f] using p_comm f

attribute [local simp] p_comm_f

/-- The canonical functor `Karoubi (Karoubi C) ⥤ Karoubi C` -/
@[simps]
def inverse : Karoubi (Karoubi C) ⥤ Karoubi C where
  obj P := ⟨P.X.X, P.p.f, by simpa only [hom_ext_iff] using P.idem⟩
  map f := ⟨f.f.f, by simpa only [hom_ext_iff] using f.comm⟩
#align category_theory.idempotents.karoubi_karoubi.inverse CategoryTheory.Idempotents.KaroubiKaroubi.inverse

instance [Preadditive C] : Functor.Additive (inverse C) where

/-- The unit isomorphism of the equivalence -/
@[simps!]
def unitIso : 𝟭 (Karoubi C) ≅ toKaroubi (Karoubi C) ⋙ inverse C :=
  eqToIso (Functor.ext (by aesop_cat) (by aesop_cat))
#align category_theory.idempotents.karoubi_karoubi.unit_iso CategoryTheory.Idempotents.KaroubiKaroubi.unitIso

/-- The counit isomorphism of the equivalence -/
@[simps]
def counitIso : inverse C ⋙ toKaroubi (Karoubi C) ≅ 𝟭 (Karoubi (Karoubi C)) where
  hom :=
    { app := fun P =>
        { f :=
            { f := P.p.1
              comm := by simp }
          comm := by simp } }
  inv :=
    { app := fun P =>
        { f :=
            { f := P.p.1
              comm := by simp }
          comm := by simp } }
#align category_theory.idempotents.karoubi_karoubi.counit_iso CategoryTheory.Idempotents.KaroubiKaroubi.counitIso

/-- The equivalence `Karoubi C ≌ Karoubi (Karoubi C)` -/
@[simps]
def equivalence : Karoubi C ≌ Karoubi (Karoubi C) where
  functor := toKaroubi (Karoubi C)
  inverse := KaroubiKaroubi.inverse C
  unitIso := KaroubiKaroubi.unitIso C
  counitIso := KaroubiKaroubi.counitIso C
#align category_theory.idempotents.karoubi_karoubi.equivalence CategoryTheory.Idempotents.KaroubiKaroubi.equivalence

instance equivalence.additive_functor [Preadditive C] :
  Functor.Additive (equivalence C).functor where
#align category_theory.idempotents.karoubi_karoubi.equivalence.additive_functor CategoryTheory.Idempotents.KaroubiKaroubi.equivalence.additive_functor

instance equivalence.additive_inverse [Preadditive C] :
  Functor.Additive (equivalence C).inverse where
#align category_theory.idempotents.karoubi_karoubi.equivalence.additive_inverse CategoryTheory.Idempotents.KaroubiKaroubi.equivalence.additive_inverse

end KaroubiKaroubi

end Idempotents

end CategoryTheory
```
