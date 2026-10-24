# Complete source: GRWTSK.Algebra.UniversalAlgebra.ZModuleEquivalence.Varianta015c74c24a3ba79deca529ced72d872e57103144b4ce064bb6614a8af96de9e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4321824eb793f41c0c4a12fc487fa41aff33f92` · SHA-256 `a015c74c24a3ba79deca529ced72d872e57103144b4ce064bb6614a8af96de9e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Algebra.Category.ModuleCat.Basic

/-!
# ℤ-modules are equivalent to additive commutative groups

The forgetful functor from ℤ-modules to additive commutative groups is
an equivalence of categories.

## TODO

Either use this equivalence to transport the monoidal structure from `Module ℤ` to `Ab`,
or, having constructed that monoidal structure directly, show this functor is monoidal.
-/

public section

open CategoryTheory

universe u

namespace ModuleCat

/-- The forgetful functor from `ℤ` modules to `AddCommGrpCat` is full. -/
instance forget₂_addCommGroup_full : (forget₂ (ModuleCat ℤ) AddCommGrpCat.{u}).Full where
  map_surjective {A B}
    -- `AddMonoidHom.toIntLinearMap` doesn't work here because `A` and `B` are not
    -- definitionally equal to the canonical `AddCommGroup.toIntModule` module
    -- instances it expects.
    f := ⟨@ModuleCat.ofHom _ _ _ _ _ A.isModule _ B.isModule <|
            @LinearMap.mk _ _ _ _ _ _ _ _ _ A.isModule B.isModule
            { toFun := f,
              map_add' := map_add f.hom }
            (fun n x => by
              convert! AddMonoidHom.map_zsmul f.hom n x <;>
                ext <;> apply int_smul_eq_zsmul), rfl⟩

/-- The forgetful functor from `ℤ` modules to `AddCommGrpCat` is essentially surjective. -/
instance forget₂_addCommGrp_essSurj : (forget₂ (ModuleCat ℤ) AddCommGrpCat.{u}).EssSurj where
  mem_essImage A :=
    ⟨↧A,
      ⟨{  hom := 𝟙 A
          inv := 𝟙 A }⟩⟩

noncomputable instance forget₂AddCommGroupIsEquivalence :
    (forget₂ (ModuleCat ℤ) AddCommGrpCat.{u}).IsEquivalence where

end ModuleCat
```
