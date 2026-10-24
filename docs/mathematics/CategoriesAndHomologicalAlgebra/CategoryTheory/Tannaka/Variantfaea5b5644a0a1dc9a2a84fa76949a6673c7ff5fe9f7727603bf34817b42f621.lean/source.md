# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Tannaka.Variantfaea5b5644a0a1dc9a2a84fa76949a6673c7ff5fe9f7727603bf34817b42f621

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7ff744db0088b6bd9306e734a612d2e1a87919d` · SHA-256 `faea5b5644a0a1dc9a2a84fa76949a6673c7ff5fe9f7727603bf34817b42f621`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Category.ModuleCat.Basic
import Mathlib.LinearAlgebra.Span.Basic

/-!
# Tannaka duality for rings

A ring `R` is equivalent to
the endomorphisms of the additive forgetful functor `Module R ⥤ AddCommGroup`.

-/

universe u

open CategoryTheory

/-- An ingredient of Tannaka duality for rings:
A ring `R` is equivalent to
the endomorphisms of the additive forgetful functor `Module R ⥤ AddCommGroup`.
-/
def ringEquivEndForget₂ (R : Type u) [Ring R] :
    R ≃+* End (AdditiveFunctor.of (forget₂ (ModuleCat.{u} R) AddCommGrp.{u})) where
  toFun r :=
    { app := fun M =>
        @AddCommGrp.ofHom M.carrier M.carrier _ _ (DistribMulAction.toAddMonoidHom M r) }
  invFun φ := φ.app (ModuleCat.of R R) (1 : R)
  left_inv := by
    intro r
    simp
  right_inv := by
    intro φ
    apply NatTrans.ext
    ext M (x : M)
    have w := CategoryTheory.congr_fun
      (φ.naturality (ModuleCat.ofHom (LinearMap.toSpanSingleton R M x))) (1 : R)
    exact w.symm.trans (congr_arg (φ.app M) (one_smul R x))
  map_add' := by
    intros
    apply NatTrans.ext
    ext
    simp only [AdditiveFunctor.of_fst, ModuleCat.forget₂_obj, AddCommGrp.ofHom_apply,
      DistribMulAction.toAddMonoidHom_apply, add_smul, AddCommGrp.hom_ofHom]
    rfl
  map_mul' := by
    intros
    apply NatTrans.ext
    ext
    simp only [AdditiveFunctor.of_fst, ModuleCat.forget₂_obj, AddCommGrp.ofHom_apply,
      DistribMulAction.toAddMonoidHom_apply, mul_smul, AddCommGrp.hom_ofHom]
    rfl
```
