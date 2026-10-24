# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Products.Variantb77d55b89025f577a147ed251f6db85302fc8c458f8235d8d527bbd677d1a448

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ed63ef43168a5d63ff85097a4f0337ecb34f871` · SHA-256 `f9c44b739bd77995d5cec1cedc8b426b210decc0527677147a50dae4b89da5c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ProdComonad.Variant3bca200058c388f259ab82c319cf8a19d98f565c02b7a201ea50f2ceb57dd534","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3bca200058c388f259ab82c319cf8a19d98f565c02b7a201ea50f2ceb57dd534","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ProdComonad.Variant3bca200058c388f259ab82c319cf8a19d98f565c02b7a201ea50f2ceb57dd534","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"3bca200058c388f259ab82c319cf8a19d98f565c02b7a201ea50f2ceb57dd534","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Monad/Products.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
import Mathlib.CategoryTheory.Comma.Over.Basic
import Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts
import Mathlib.CategoryTheory.Monad.Algebra

/-!
# Algebras for the coproduct monad

The functor `Y ↦ X ⨿ Y` forms a monad, whose category of monads is equivalent to the under category
of `X`. Similarly, `Y ↦ X ⨯ Y` forms a comonad, whose category of comonads is equivalent to the
over category of `X`.

## TODO

Show that `Over.forget X : Over X ⥤ C` is a comonadic left adjoint and `Under.forget : Under X ⥤ C`
is a monadic right adjoint.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ProdComonad.Variant3bca200058c388f259ab82c319cf8a19d98f565c02b7a201ea50f2ceb57dd534

noncomputable section

universe v u

namespace CategoryTheory

open Category Limits

variable {C : Type u} [Category.{v} C] (X : C)

section

open Comonad

variable [HasBinaryProducts C]

/-- `X ⨯ -` has a comonad structure. This is sometimes called the writer comonad. -/
@[simps!]
def prodComonad : Comonad C where
  toFunctor := prod.functor.obj X
  ε := { app := fun _ => Limits.prod.snd }
  δ := { app := fun _ => prod.lift Limits.prod.fst (𝟙 _) }

/-- The forward direction of the equivalence from coalgebras for the product comonad to the over
category.
-/
@[simps]
def coalgebraToOver : Coalgebra (prodComonad X) ⥤ Over X where
  obj A := Over.mk (A.a ≫ Limits.prod.fst)
  map f :=
    Over.homMk f.f
      (by
        rw [Over.mk_hom, ← f.h_assoc]
        dsimp
        simp)

/-- The backward direction of the equivalence from coalgebras for the product comonad to the over
category.
-/
@[simps]
def overToCoalgebra : Over X ⥤ Coalgebra (prodComonad X) where
  obj f :=
    { A := f.left
      a := prod.lift f.hom (𝟙 _) }
  map g := { f := g.left }

/-- The equivalence from coalgebras for the product comonad to the over category. -/
@[simps]
def coalgebraEquivOver : Coalgebra (prodComonad X) ≌ Over X where
  functor := coalgebraToOver X
  inverse := overToCoalgebra X
  unitIso := NatIso.ofComponents fun A =>
    Coalgebra.isoMk (Iso.refl _) (Limits.prod.hom_ext (by simp) (by simpa using A.counit))
  counitIso := NatIso.ofComponents fun f => Over.isoMk (Iso.refl _)

end

section

open Monad

variable [HasBinaryCoproducts C]

/-- `X ⨿ -` has a monad structure. This is sometimes called the either monad. -/
@[simps!]
def coprodMonad : Monad C where
  toFunctor := coprod.functor.obj X
  η := { app := fun _ => coprod.inr }
  μ := { app := fun _ => coprod.desc coprod.inl (𝟙 _) }

/-- The forward direction of the equivalence from algebras for the coproduct monad to the under
category.
-/
@[simps]
def algebraToUnder : Monad.Algebra (coprodMonad X) ⥤ Under X where
  obj A := Under.mk (coprod.inl ≫ A.a)
  map f :=
    Under.homMk f.f
      (by
        rw [Under.mk_hom, Category.assoc, ← f.h]
        dsimp
        simp)

/-- The backward direction of the equivalence from algebras for the coproduct monad to the under
category.
-/
@[simps]
def underToAlgebra : Under X ⥤ Monad.Algebra (coprodMonad X) where
  obj f :=
    { A := f.right
      a := coprod.desc f.hom (𝟙 _) }
  map g := { f := g.right }

/-- The equivalence from algebras for the coproduct monad to the under category.
-/
@[simps]
def algebraEquivUnder : Monad.Algebra (coprodMonad X) ≌ Under X where
  functor := algebraToUnder X
  inverse := underToAlgebra X
  unitIso := NatIso.ofComponents fun A =>
    Monad.Algebra.isoMk (Iso.refl _) (coprod.hom_ext (by simp) (by simpa using A.unit.symm))
  counitIso :=
    NatIso.ofComponents fun f => Under.isoMk (Iso.refl _)

end

end CategoryTheory
```
