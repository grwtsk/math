# Complete source: GRWTSK.Algebra.Prod.Variant1cb3787869d6543d79cf35e9447a0f0a5ea5a20286141c518dbc5e032f500222

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `096c833b3b83030a8be81bf48a27e87f46264122` · SHA-256 `e71514380f42daef976d646d59cea09eb50220824195c4513c192c4eed571e45`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Fst.Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Fst.Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Chris Hughes, Mario Carneiro, Yury Kudryashov
-/
import Mathlib.Data.Int.Cast.Prod
import Mathlib.Algebra.GroupWithZero.Prod
import Mathlib.Algebra.Ring.CompTypeclasses
import Mathlib.Algebra.Ring.Equiv

/-!
# Semiring, ring etc structures on `R × S`

In this file we define two-binop (`Semiring`, `Ring` etc) structures on `R × S`. We also prove
trivial `simp` lemmas, and define the following operations on `RingHom`s and similarly for
`NonUnitalRingHom`s:

* `fst R S : R × S →+* R`, `snd R S : R × S →+* S`: projections `Prod.fst` and `Prod.snd`
  as `RingHom`s;
* `f.prod g : R →+* S × T`: sends `x` to `(f x, g x)`;
* `f.prod_map g : R × S → R' × S'`: `Prod.map f g` as a `RingHom`,
  sends `(x, y)` to `(f x, g y)`.
-/



namespace GRWTSK.Algebra.Fst.Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae

variable {R R' S S' T : Type*}

namespace Prod

/-- Product of two distributive types is distributive. -/
instance instDistrib [Distrib R] [Distrib S] : Distrib (R × S) where
  left_distrib _ _ _ := by ext <;> exact left_distrib ..
  right_distrib _ _ _ := by ext <;> exact right_distrib ..

/-- Product of two `NonUnitalNonAssocSemiring`s is a `NonUnitalNonAssocSemiring`. -/
instance instNonUnitalNonAssocSemiring [NonUnitalNonAssocSemiring R] [NonUnitalNonAssocSemiring S] :
    NonUnitalNonAssocSemiring (R × S) :=
  { inferInstanceAs (AddCommMonoid (R × S)),
    inferInstanceAs (Distrib (R × S)),
    inferInstanceAs (MulZeroClass (R × S)) with }

/-- Product of two `NonUnitalSemiring`s is a `NonUnitalSemiring`. -/
instance instNonUnitalSemiring [NonUnitalSemiring R] [NonUnitalSemiring S] :
    NonUnitalSemiring (R × S) :=
  { inferInstanceAs (NonUnitalNonAssocSemiring (R × S)),
    inferInstanceAs (SemigroupWithZero (R × S)) with }

/-- Product of two `NonAssocSemiring`s is a `NonAssocSemiring`. -/
instance instNonAssocSemiring [NonAssocSemiring R] [NonAssocSemiring S] :
    NonAssocSemiring (R × S) :=
  { inferInstanceAs (NonUnitalNonAssocSemiring (R × S)),
    inferInstanceAs (MulZeroOneClass (R × S)),
    inferInstanceAs (AddMonoidWithOne (R × S)) with }

/-- Product of two semirings is a semiring. -/
instance instSemiring [Semiring R] [Semiring S] : Semiring (R × S) :=
  { inferInstanceAs (NonUnitalSemiring (R × S)),
    inferInstanceAs (NonAssocSemiring (R × S)),
    inferInstanceAs (MonoidWithZero (R × S)) with }

/-- Product of two `NonUnitalCommSemiring`s is a `NonUnitalCommSemiring`. -/
instance instNonUnitalCommSemiring [NonUnitalCommSemiring R] [NonUnitalCommSemiring S] :
    NonUnitalCommSemiring (R × S) :=
  { inferInstanceAs (NonUnitalSemiring (R × S)), inferInstanceAs (CommSemigroup (R × S)) with }

/-- Product of two commutative semirings is a commutative semiring. -/
instance instCommSemiring [CommSemiring R] [CommSemiring S] : CommSemiring (R × S) :=
  { inferInstanceAs (Semiring (R × S)), inferInstanceAs (CommMonoid (R × S)) with }

instance instNonUnitalNonAssocRing [NonUnitalNonAssocRing R] [NonUnitalNonAssocRing S] :
    NonUnitalNonAssocRing (R × S) :=
  { inferInstanceAs (AddCommGroup (R × S)),
    inferInstanceAs (NonUnitalNonAssocSemiring (R × S)) with }

instance instNonUnitalRing [NonUnitalRing R] [NonUnitalRing S] : NonUnitalRing (R × S) :=
  { inferInstanceAs (NonUnitalNonAssocRing (R × S)),
    inferInstanceAs (NonUnitalSemiring (R × S)) with }

instance instNonAssocRing [NonAssocRing R] [NonAssocRing S] : NonAssocRing (R × S) :=
  { inferInstanceAs (NonUnitalNonAssocRing (R × S)),
    inferInstanceAs (NonAssocSemiring (R × S)),
    inferInstanceAs (AddGroupWithOne (R × S)) with }

/-- Product of two rings is a ring. -/
instance instRing [Ring R] [Ring S] : Ring (R × S) :=
  { inferInstanceAs (Semiring (R × S)),
    inferInstanceAs (AddCommGroup (R × S)),
    inferInstanceAs (AddGroupWithOne (R × S)) with }

/-- Product of two `NonUnitalCommRing`s is a `NonUnitalCommRing`. -/
instance instNonUnitalCommRing [NonUnitalCommRing R] [NonUnitalCommRing S] :
    NonUnitalCommRing (R × S) :=
  { inferInstanceAs (NonUnitalRing (R × S)), inferInstanceAs (CommSemigroup (R × S)) with }

/-- Product of two commutative rings is a commutative ring. -/
instance instCommRing [CommRing R] [CommRing S] : CommRing (R × S) :=
  { inferInstanceAs (Ring (R × S)), inferInstanceAs (CommMonoid (R × S)) with }

end Prod

namespace NonUnitalRingHom

variable (R S) [NonUnitalNonAssocSemiring R] [NonUnitalNonAssocSemiring S]

/-- Given non-unital semirings `R`, `S`, the natural projection homomorphism from `R × S` to `R`. -/
def fst : R × S →ₙ+* R :=
  { MulHom.fst R S, AddMonoidHom.fst R S with toFun := Prod.fst }

/-- Given non-unital semirings `R`, `S`, the natural projection homomorphism from `R × S` to `S`. -/
def snd : R × S →ₙ+* S :=
  { MulHom.snd R S, AddMonoidHom.snd R S with toFun := Prod.snd }

variable {R S}

@[simp]
theorem coe_fst : ⇑(fst R S) = Prod.fst :=
  rfl

@[simp]
theorem coe_snd : ⇑(snd R S) = Prod.snd :=
  rfl

section Prod

variable [NonUnitalNonAssocSemiring T] (f : R →ₙ+* S) (g : R →ₙ+* T)

/-- Combine two non-unital ring homomorphisms `f : R →ₙ+* S`, `g : R →ₙ+* T` into
`f.prod g : R →ₙ+* S × T` given by `(f.prod g) x = (f x, g x)` -/
protected def prod (f : R →ₙ+* S) (g : R →ₙ+* T) : R →ₙ+* S × T :=
  { MulHom.prod (f : MulHom R S) (g : MulHom R T), AddMonoidHom.prod (f : R →+ S) (g : R →+ T) with
    toFun := fun x => (f x, g x) }

@[simp]
theorem prod_apply (x) : f.prod g x = (f x, g x) :=
  rfl

@[simp]
theorem fst_comp_prod : (fst S T).comp (f.prod g) = f :=
  ext fun _ => rfl

@[simp]
theorem snd_comp_prod : (snd S T).comp (f.prod g) = g :=
  ext fun _ => rfl

theorem prod_unique (f : R →ₙ+* S × T) : ((fst S T).comp f).prod ((snd S T).comp f) = f :=
  ext fun x => by simp only [prod_apply, coe_fst, coe_snd, comp_apply]

end Prod

section prodMap

variable [NonUnitalNonAssocSemiring R'] [NonUnitalNonAssocSemiring S'] [NonUnitalNonAssocSemiring T]
variable (f : R →ₙ+* R') (g : S →ₙ+* S')

/-- `Prod.map` as a `NonUnitalRingHom`. -/
def prodMap : R × S →ₙ+* R' × S' :=
  (f.comp (fst R S)).prod (g.comp (snd R S))

theorem prodMap_def : prodMap f g = (f.comp (fst R S)).prod (g.comp (snd R S)) :=
  rfl

@[simp]
theorem coe_prodMap : ⇑(prodMap f g) = Prod.map f g :=
  rfl

theorem prod_comp_prodMap (f : T →ₙ+* R) (g : T →ₙ+* S) (f' : R →ₙ+* R') (g' : S →ₙ+* S') :
    (f'.prodMap g').comp (f.prod g) = (f'.comp f).prod (g'.comp g) :=
  rfl

end prodMap

end NonUnitalRingHom

namespace RingHom

variable (R S) [NonAssocSemiring R] [NonAssocSemiring S]

/-- Given semirings `R`, `S`, the natural projection homomorphism from `R × S` to `R`. -/
def fst : R × S →+* R :=
  { MonoidHom.fst R S, AddMonoidHom.fst R S with toFun := Prod.fst }

/-- Given semirings `R`, `S`, the natural projection homomorphism from `R × S` to `S`. -/
def snd : R × S →+* S :=
  { MonoidHom.snd R S, AddMonoidHom.snd R S with toFun := Prod.snd }

instance (R S) [Semiring R] [Semiring S] : RingHomSurjective (fst R S) := ⟨(⟨⟨·, 0⟩, rfl⟩)⟩
instance (R S) [Semiring R] [Semiring S] : RingHomSurjective (snd R S) := ⟨(⟨⟨0, ·⟩, rfl⟩)⟩

variable {R S}

@[simp]
theorem coe_fst : ⇑(fst R S) = Prod.fst :=
  rfl

@[simp]
theorem coe_snd : ⇑(snd R S) = Prod.snd :=
  rfl

section Prod

variable [NonAssocSemiring T] (f : R →+* S) (g : R →+* T)

/-- Combine two ring homomorphisms `f : R →+* S`, `g : R →+* T` into `f.prod g : R →+* S × T`
given by `(f.prod g) x = (f x, g x)` -/
protected def prod (f : R →+* S) (g : R →+* T) : R →+* S × T :=
  { MonoidHom.prod (f : R →* S) (g : R →* T), AddMonoidHom.prod (f : R →+ S) (g : R →+ T) with
    toFun := fun x => (f x, g x) }

@[simp]
theorem prod_apply (x) : f.prod g x = (f x, g x) :=
  rfl

@[simp]
theorem fst_comp_prod : (fst S T).comp (f.prod g) = f :=
  ext fun _ => rfl

@[simp]
theorem snd_comp_prod : (snd S T).comp (f.prod g) = g :=
  ext fun _ => rfl

theorem prod_unique (f : R →+* S × T) : ((fst S T).comp f).prod ((snd S T).comp f) = f :=
  ext fun x => by simp only [prod_apply, coe_fst, coe_snd, comp_apply]

end Prod

section prodMap

variable [NonAssocSemiring R'] [NonAssocSemiring S'] [NonAssocSemiring T]
variable (f : R →+* R') (g : S →+* S')

/-- `Prod.map` as a `RingHom`. -/
def prodMap : R × S →+* R' × S' :=
  (f.comp (fst R S)).prod (g.comp (snd R S))

theorem prodMap_def : prodMap f g = (f.comp (fst R S)).prod (g.comp (snd R S)) :=
  rfl

@[simp]
theorem coe_prodMap : ⇑(prodMap f g) = Prod.map f g :=
  rfl

theorem prod_comp_prodMap (f : T →+* R) (g : T →+* S) (f' : R →+* R') (g' : S →+* S') :
    (f'.prodMap g').comp (f.prod g) = (f'.comp f).prod (g'.comp g) :=
  rfl

end prodMap

end RingHom

namespace RingEquiv

variable [NonAssocSemiring R] [NonAssocSemiring S] [NonAssocSemiring R'] [NonAssocSemiring S']

/-- Swapping components as an equivalence of (semi)rings. -/
def prodComm : R × S ≃+* S × R :=
  { AddEquiv.prodComm, MulEquiv.prodComm with }

@[simp]
theorem coe_prodComm : ⇑(prodComm : R × S ≃+* S × R) = Prod.swap :=
  rfl

@[simp]
theorem coe_prodComm_symm : ⇑(prodComm : R × S ≃+* S × R).symm = Prod.swap :=
  rfl

@[simp]
theorem fst_comp_coe_prodComm :
    (RingHom.fst S R).comp ↑(prodComm : R × S ≃+* S × R) = RingHom.snd R S :=
  RingHom.ext fun _ => rfl

@[simp]
theorem snd_comp_coe_prodComm :
    (RingHom.snd S R).comp ↑(prodComm : R × S ≃+* S × R) = RingHom.fst R S :=
  RingHom.ext fun _ => rfl

section

variable (R R' S S')

/-- Four-way commutativity of `Prod`. The name matches `mul_mul_mul_comm`. -/
@[simps apply]
def prodProdProdComm : (R × R') × S × S' ≃+* (R × S) × R' × S' :=
  { AddEquiv.prodProdProdComm R R' S S', MulEquiv.prodProdProdComm R R' S S' with
    toFun := fun rrss => ((rrss.1.1, rrss.2.1), (rrss.1.2, rrss.2.2))
    invFun := fun rsrs => ((rsrs.1.1, rsrs.2.1), (rsrs.1.2, rsrs.2.2)) }

@[simp]
theorem prodProdProdComm_symm : (prodProdProdComm R R' S S').symm = prodProdProdComm R S R' S' :=
  rfl

@[simp]
theorem prodProdProdComm_toAddEquiv :
    (prodProdProdComm R R' S S' : _ ≃+ _) = AddEquiv.prodProdProdComm R R' S S' :=
  rfl

@[simp]
theorem prodProdProdComm_toMulEquiv :
    (prodProdProdComm R R' S S' : _ ≃* _) = MulEquiv.prodProdProdComm R R' S S' :=
  rfl

@[simp]
theorem prodProdProdComm_toEquiv :
    (prodProdProdComm R R' S S' : _ ≃ _) = Equiv.prodProdProdComm R R' S S' :=
  rfl

end

variable (R S) [Subsingleton S]

/-- A ring `R` is isomorphic to `R × S` when `S` is the zero ring -/
@[simps]
def prodZeroRing : R ≃+* R × S where
  toFun x := (x, 0)
  invFun := Prod.fst
  map_add' := by simp
  map_mul' := by simp
  left_inv _ := rfl
  right_inv x := by cases x; simp [eq_iff_true_of_subsingleton]

/-- A ring `R` is isomorphic to `S × R` when `S` is the zero ring -/
@[simps]
def zeroRingProd : R ≃+* S × R where
  toFun x := (0, x)
  invFun := Prod.snd
  map_add' := by simp
  map_mul' := by simp
  left_inv _ := rfl
  right_inv x := by cases x; simp [eq_iff_true_of_subsingleton]

end RingEquiv

/-- The product of two nontrivial rings is not a domain -/
theorem false_of_nontrivial_of_product_domain (R S : Type*) [Semiring R] [Semiring S]
    [IsDomain (R × S)] [Nontrivial R] [Nontrivial S] : False := by
  have :=
    NoZeroDivisors.eq_zero_or_eq_zero_of_mul_eq_zero (show ((0 : R), (1 : S)) * (1, 0) = 0 by simp)
  rw [Prod.mk_eq_zero, Prod.mk_eq_zero] at this
  rcases this with (⟨_, h⟩ | ⟨h, _⟩)
  · exact zero_ne_one h.symm
  · exact zero_ne_one h.symm
```
