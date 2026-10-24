# Complete source: GRWTSK.Algebra.UniversalAlgebra.Prod.Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f842a4cf7dc01946b293e339f9b49be2f370c3a1` · SHA-256 `9009fae52f6e30ec2da066e8823a59844fbbc2d6fb6648127f10ba06096dc714`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.AlgebraMapApply.Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.AlgebraMapApply.Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"f8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Algebra/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau, Yury Kudryashov
-/
import Mathlib.Algebra.Algebra.Equiv
import Mathlib.Algebra.Algebra.Hom
import Mathlib.Algebra.Module.Prod

/-!
# The R-algebra structure on products of R-algebras

The R-algebra structure on `(i : I) → A i` when each `A i` is an R-algebra.

## Main definitions

* `Prod.algebra`
* `AlgHom.fst`
* `AlgHom.snd`
* `AlgHom.prod`
* `AlgEquiv.prodUnique` and `AlgEquiv.uniqueProd`
-/



namespace GRWTSK.Algebra.UniversalAlgebra.AlgebraMapApply.Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083

variable {R A B C : Type*}
variable [CommSemiring R]
variable [Semiring A] [Algebra R A] [Semiring B] [Algebra R B] [Semiring C] [Algebra R C]

namespace Prod

variable (R A B)

open Algebra

instance algebra : Algebra R (A × B) where
  algebraMap := RingHom.prod (algebraMap R A) (algebraMap R B)
  commutes' := by
    rintro r ⟨a, b⟩
    dsimp
    rw [commutes r a, commutes r b]
  smul_def' := by
    rintro r ⟨a, b⟩
    dsimp
    rw [Algebra.smul_def r a, Algebra.smul_def r b]

variable {R A B}

@[simp]
theorem algebraMap_apply (r : R) : algebraMap R (A × B) r = (algebraMap R A r, algebraMap R B r) :=
  rfl

end Prod

namespace AlgHom

variable (R A B)

/-- First projection as `AlgHom`. -/
def fst : A × B →ₐ[R] A :=
  { RingHom.fst A B with commutes' := fun _r => rfl }

/-- Second projection as `AlgHom`. -/
def snd : A × B →ₐ[R] B :=
  { RingHom.snd A B with commutes' := fun _r => rfl }

variable {A B}

@[simp]
theorem fst_apply (a) : fst R A B a = a.1 := rfl

@[simp]
theorem snd_apply (a) : snd R A B a = a.2 := rfl

variable {R}

/-- The `Pi.prod` of two morphisms is a morphism. -/
@[simps!]
def prod (f : A →ₐ[R] B) (g : A →ₐ[R] C) : A →ₐ[R] B × C :=
  { f.toRingHom.prod g.toRingHom with
    commutes' := fun r => by
      simp only [toRingHom_eq_coe, RingHom.toFun_eq_coe, RingHom.prod_apply, coe_toRingHom,
        commutes, Prod.algebraMap_apply] }

theorem coe_prod (f : A →ₐ[R] B) (g : A →ₐ[R] C) : ⇑(f.prod g) = Pi.prod f g :=
  rfl

@[simp]
theorem fst_prod (f : A →ₐ[R] B) (g : A →ₐ[R] C) : (fst R B C).comp (prod f g) = f := by ext; rfl

@[simp]
theorem snd_prod (f : A →ₐ[R] B) (g : A →ₐ[R] C) : (snd R B C).comp (prod f g) = g := by ext; rfl

@[simp]
theorem prod_fst_snd : prod (fst R A B) (snd R A B) = AlgHom.id R _ := rfl

theorem prod_comp {C' : Type*} [Semiring C'] [Algebra R C']
    (f : A →ₐ[R] B) (g : B →ₐ[R] C) (g' : B →ₐ[R] C') :
    (g.prod g').comp f = (g.comp f).prod (g'.comp f) := rfl

/-- Taking the product of two maps with the same domain is equivalent to taking the product of
their codomains. -/
@[simps]
def prodEquiv : (A →ₐ[R] B) × (A →ₐ[R] C) ≃ (A →ₐ[R] B × C) where
  toFun f := f.1.prod f.2
  invFun f := ((fst _ _ _).comp f, (snd _ _ _).comp f)
  left_inv f := by ext <;> rfl
  right_inv f := by ext <;> rfl

/-- `Prod.map` of two algebra homomorphisms. -/
def prodMap {D : Type*} [Semiring D] [Algebra R D] (f : A →ₐ[R] B) (g : C →ₐ[R] D) :
    A × C →ₐ[R] B × D :=
  { toRingHom := f.toRingHom.prodMap g.toRingHom
    commutes' := fun r => by simp [commutes] }

end AlgHom

namespace AlgEquiv

/-- Multiplying by the trivial algebra from the right does not change the structure.
This is the `AlgEquiv` version of `LinearEquiv.prodUnique` and `RingEquiv.prodZeroRing.symm`. -/
@[simps!]
def prodUnique [Unique B] : (A × B) ≃ₐ[R] A where
  toFun := Prod.fst
  invFun x := (x, 0)
  __ := (RingEquiv.prodZeroRing A B).symm
  commutes' _ := rfl

/-- Multiplying by the trivial algebra from the left does not change the structure.
This is the `AlgEquiv` version of `LinearEquiv.uniqueProd` and `RingEquiv.zeroRingProd.symm`.
-/
@[simps!]
def uniqueProd [Unique B] : (B × A) ≃ₐ[R] A where
  toFun := Prod.snd
  invFun x := (0, x)
  __ := (RingEquiv.zeroRingProd A B).symm
  commutes' _ := rfl

end AlgEquiv
```
