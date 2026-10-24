# Complete source: GRWTSK.Algebra.LinearAlgebra.Tannaka.Variantfc6fdfed20dbf742db8f5fa6bab3f33d734c0a1e67eddb159306ca93f6abdb4c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cee6de1856b61b8cc6e92737a320bfb541c87f17` · SHA-256 `fc6fdfed20dbf742db8f5fa6bab3f33d734c0a1e67eddb159306ca93f6abdb4c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Algebra.Category.ModuleCat.Basic
public import Mathlib.LinearAlgebra.Span.Basic

/-!
# Tannaka duality for rings

A ring `R` is equivalent to
the endomorphisms of the additive forgetful functor `Module R ⥤ AddCommGroup`.

-/

@[expose] public section

universe u

open CategoryTheory

set_option backward.isDefEq.respectTransparency false in
attribute [local simp] add_smul mul_smul in
attribute [local ext] End.ext in
/-- An ingredient of Tannaka duality for rings:
A ring `R` is equivalent to
the endomorphisms of the additive forgetful functor `Module R ⥤ AddCommGroup`.
-/
def ringEquivEndForget₂ (R : Type u) [Ring R] :
    R ≃+* End (AdditiveFunctor.of (forget₂ (ModuleCat.{u} R) AddCommGrpCat.{u})) where
  toFun r :=
    ObjectProperty.homMk
      { app M := @AddCommGrpCat.ofHom M.carrier M.carrier _ _
          (DistribSMul.toAddMonoidHom M r) }
  invFun φ := φ.hom.app ↧R (1 : R)
  left_inv _ := by simp
  right_inv φ := by
    ext M (x : M)
    have w := CategoryTheory.congr_fun
      (φ.hom.naturality (ModuleCat.ofHom (LinearMap.toSpanSingleton R M x))) (1 : R)
    exact w.symm.trans (congr_arg (φ.hom.app M) (one_smul R x))
  map_add' := by cat_disch
  map_mul' := by cat_disch
```
