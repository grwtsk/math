# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ChangeOfRings.Variant048b7a7cd17fbcaac84ed3603dd7f774d7a1a40d85d5a8fbc855f33bef465b5d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e36f05e12ae3450dd59e7fb5ad2ce5286944d95` · SHA-256 `048b7a7cd17fbcaac84ed3603dd7f774d7a1a40d85d5a8fbc855f33bef465b5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/
import Mathlib.Algebra.Category.ModuleCat.Basic
import Mathlib.RingTheory.TensorProduct

#align_import algebra.category.Module.change_of_rings from "leanprover-community/mathlib"@"56b71f0b55c03f70332b862e65c3aa1aa1249ca1"

/-!
# Change Of Rings

## Main definitions

* `CategoryTheory.ModuleCat.restrictScalars`: given rings `R, S` and a ring homomorphism `R ⟶ S`,
  then `restrictScalars : Module S ⥤ Module R` is defined by `M ↦ M` where `M : S-module` is seen
  as `R-module` by `r • m := f r • m` and `S`-linear map `l : M ⟶ M'` is `R`-linear as well.

* `CategoryTheory.ModuleCat.extendScalars`: given **commutative** rings `R, S` and ring homomorphism
  `f : R ⟶ S`, then `extendScalars : Module R ⥤ Module S` is defined by `M ↦ S ⨂ M` where the
  module structure is defined by `s • (s' ⊗ m) := (s * s') ⊗ m` and `R`-linear map `l : M ⟶ M'`
  is sent to `S`-linear map `s ⊗ m ↦ s ⊗ l m : S ⨂ M ⟶ S ⨂ M'`.

* `CategoryTheory.ModuleCat.coextendScalars`: given rings `R, S` and a ring homomorphism `R ⟶ S`
  then `coextendScalars : Module R ⥤ Module S` is defined by `M ↦ (S →ₗ[R] M)` where `S` is seen as
  `R-module` by restriction of scalars and `l ↦ l ∘ _`.

## Main results

* `CategoryTheory.ModuleCat.extendRestrictScalarsAdj`: given commutative rings `R, S` and a ring
  homomorphism `f : R →+* S`, the extension and restriction of scalars by `f` are adjoint functors.
* `CategoryTheory.ModuleCat.restrictCoextendScalarsAdj`: given rings `R, S` and a ring homomorphism
  `f : R ⟶ S` then `coextendScalars f` is the right adjoint of `restrictScalars f`.

## List of notations
Let `R, S` be rings and `f : R →+* S`
* if `M` is an `R`-module, `s : S` and `m : M`, then `s ⊗ₜ[R, f] m` is the pure tensor
  `s ⊗ m : S ⊗[R, f] M`.
-/

set_option linter.uppercaseLean3 false -- Porting note: Module

namespace CategoryTheory.ModuleCat

universe v u₁ u₂

namespace RestrictScalars

variable {R : Type u₁} {S : Type u₂} [Ring R] [Ring S] (f : R →+* S)

variable (M : ModuleCat.{v} S)

/-- Any `S`-module M is also an `R`-module via a ring homomorphism `f : R ⟶ S` by defining
    `r • m := f r • m` (`Module.compHom`). This is called restriction of scalars. -/
def obj' : ModuleCat R where
  carrier := M
  isModule := Module.compHom M f
#align category_theory.Module.restrict_scalars.obj' CategoryTheory.ModuleCat.RestrictScalars.obj'

/-- Given an `S`-linear map `g : M → M'` between `S`-modules, `g` is also `R`-linear between `M` and
`M'` by means of restriction of scalars.
-/
def map' {M M' : ModuleCat.{v} S} (g : M ⟶ M') : obj' f M ⟶ obj' f M' :=
  { g with map_smul' := fun r => g.map_smul (f r) }
#align category_theory.Module.restrict_scalars.map' CategoryTheory.ModuleCat.RestrictScalars.map'

end RestrictScalars

/-- The restriction of scalars operation is functorial. For any `f : R →+* S` a ring homomorphism,
* an `S`-module `M` can be considered as `R`-module by `r • m = f r • m`
* an `S`-linear map is also `R`-linear
-/
def restrictScalars {R : Type u₁} {S : Type u₂} [Ring R] [Ring S] (f : R →+* S) :
    ModuleCat.{v} S ⥤ ModuleCat.{v} R where
  obj := RestrictScalars.obj' f
  map := RestrictScalars.map' f
  map_id _ := LinearMap.ext fun _ => rfl
  map_comp _ _ := LinearMap.ext fun _ => rfl
#align category_theory.Module.restrict_scalars CategoryTheory.ModuleCat.restrictScalars

instance {R : Type u₁} {S : Type u₂} [CommRing R] [CommRing S] (f : R →+* S) :
    CategoryTheory.Faithful (restrictScalars.{v} f) where
  map_injective h :=
    LinearMap.ext fun x => by simpa only using FunLike.congr_fun h x

-- Porting note: this should be automatic
instance {R : Type u₁} {S : Type u₂} [Ring R] [Ring S] {f : R →+* S}
    {M : ModuleCat.{v} S} : Module R <| (restrictScalars f).obj M :=
  inferInstanceAs <| Module R <| RestrictScalars.obj' f M

-- Porting note: this should be automatic
instance {R : Type u₁} {S : Type u₂} [Ring R] [Ring S] {f : R →+* S}
    {M : ModuleCat.{v} S} : Module S <| (restrictScalars f).obj M :=
  inferInstanceAs <| Module S M

@[simp]
theorem restrictScalars.map_apply {R : Type u₁} {S : Type u₂} [Ring R] [Ring S] (f : R →+* S)
    {M M' : ModuleCat.{v} S} (g : M ⟶ M') (x) : (restrictScalars f).map g x = g x :=
  rfl
#align category_theory.Module.restrict_scalars.map_apply CategoryTheory.ModuleCat.restrictScalars.map_apply

@[simp]
theorem restrictScalars.smul_def {R : Type u₁} {S : Type u₂} [Ring R] [Ring S] (f : R →+* S)
    {M : ModuleCat.{v} S} (r : R) (m : (restrictScalars f).obj M) : r • m = (f r • m : M) :=
  rfl
#align category_theory.Module.restrict_scalars.smul_def CategoryTheory.ModuleCat.restrictScalars.smul_def

theorem restrictScalars.smul_def' {R : Type u₁} {S : Type u₂} [Ring R] [Ring S] (f : R →+* S)
    {M : ModuleCat.{v} S} (r : R) (m : M) :
    -- Porting note: clumsy way to coerce
    let m' : (restrictScalars f).obj M := m
    (r • m' : (restrictScalars f).obj M) = (f r • m : M) :=
  rfl
#align category_theory.Module.restrict_scalars.smul_def' CategoryTheory.ModuleCat.restrictScalars.smul_def'


instance (priority := 100) sMulCommClass_mk {R : Type u₁} {S : Type u₂} [Ring R] [CommRing S]
    (f : R →+* S) (M : Type v) [I : AddCommGroup M] [Module S M] :
    have : SMul R M := (RestrictScalars.obj' f (ModuleCat.mk M)).isModule.toSMul
    SMulCommClass R S M :=
  -- Porting note: cannot synth SMul R M
  have : SMul R M := (RestrictScalars.obj' f (ModuleCat.mk M)).isModule.toSMul
  @SMulCommClass.mk R S M (_) _
   <| fun r s m => (by simp [← mul_smul, mul_comm] : f r • s • m = s • f r • m)
#align category_theory.Module.smul_comm_class_mk CategoryTheory.ModuleCat.sMulCommClass_mk

open TensorProduct

variable {R : Type u₁} {S : Type u₂} [CommRing R] [CommRing S] (f : R →+* S)

section CategoryTheory.ModuleCat.Unbundled

variable (M : Type v) [AddCommMonoid M] [Module R M]

-- mathport name: «expr ⊗ₜ[ , ] »
-- This notation is necessary because we need to reason about `s ⊗ₜ m` where `s : S` and `m : M`;
-- without this notation, one need to work with `s : (restrictScalars f).obj ⟨S⟩`.
scoped[ChangeOfRings]
  notation s "⊗ₜ[" R "," f "]" m => @TensorProduct.tmul R _ _ _ _ _ (Module.compHom _ f) _ s m

end Unbundled

namespace ExtendScalars

open ChangeOfRings

variable (M : ModuleCat.{v} R)

/-- Extension of scalars turn an `R`-module into `S`-module by M ↦ S ⨂ M
-/
def obj' : ModuleCat S :=
  ⟨TensorProduct R ((restrictScalars f).obj ⟨S⟩) M⟩
#align category_theory.Module.extend_scalars.obj' CategoryTheory.ModuleCat.ExtendScalars.obj'

/-- Extension of scalars is a functor where an `R`-module `M` is sent to `S ⊗ M` and
`l : M1 ⟶ M2` is sent to `s ⊗ m ↦ s ⊗ l m`
-/
def map' {M1 M2 : ModuleCat.{v} R} (l : M1 ⟶ M2) : obj' f M1 ⟶ obj' f M2 :=
  by-- The "by apply" part makes this require 75% fewer heartbeats to process (#16371).
  apply @LinearMap.baseChange R S M1 M2 _ _ ((algebraMap S _).comp f).toAlgebra _ _ _ _ l
#align category_theory.Module.extend_scalars.map' CategoryTheory.ModuleCat.ExtendScalars.map'

theorem map'_id {M : ModuleCat.{v} R} : map' f (𝟙 M) = 𝟙 _ :=
  LinearMap.ext fun x : obj' f M => by
    dsimp only [map']
    -- Porting note: this got put in the dsimp by mathport
    rw [ModuleCat.id_apply]
    induction' x using TensorProduct.induction_on with _ _ m s ihx ihy
    · rw [map_zero] -- Porting note: simp only [map_zero] failed
    · -- Porting note: issues with synthesizing Algebra R S
      erw [@LinearMap.baseChange_tmul R S M M _ _ (_), ModuleCat.id_apply]
    · rw [map_add, ihx, ihy]
#align category_theory.Module.extend_scalars.map'_id CategoryTheory.ModuleCat.ExtendScalars.map'_id

theorem map'_comp {M₁ M₂ M₃ : ModuleCat.{v} R} (l₁₂ : M₁ ⟶ M₂) (l₂₃ : M₂ ⟶ M₃) :
    map' f (l₁₂ ≫ l₂₃) = map' f l₁₂ ≫ map' f l₂₃ :=
  LinearMap.ext fun x : obj' f M₁ => by
    dsimp only [map']
    induction' x using TensorProduct.induction_on with _ _ x y ihx ihy
    · rfl
    · rfl
    · rw [map_add, map_add, ihx, ihy] -- Porting note: simp again failing where rw succeeds
#align category_theory.Module.extend_scalars.map'_comp CategoryTheory.ModuleCat.ExtendScalars.map'_comp

end ExtendScalars

/-- Extension of scalars is a functor where an `R`-module `M` is sent to `S ⊗ M` and
`l : M1 ⟶ M2` is sent to `s ⊗ m ↦ s ⊗ l m`
-/
def extendScalars {R : Type u₁} {S : Type u₂} [CommRing R] [CommRing S] (f : R →+* S) :
    ModuleCat R ⥤ ModuleCat S where
  obj M := ExtendScalars.obj' f M
  map l := ExtendScalars.map' f l
  map_id _ := ExtendScalars.map'_id f
  map_comp := ExtendScalars.map'_comp f
#align category_theory.Module.extend_scalars CategoryTheory.ModuleCat.extendScalars

namespace ExtendScalars

open ChangeOfRings

variable {R : Type u₁} {S : Type u₂} [CommRing R] [CommRing S] (f : R →+* S)

@[simp]
protected theorem smul_tmul {M : ModuleCat.{v} R} (s s' : S) (m : M) :
    s • (s'⊗ₜ[R,f]m : (extendScalars f).obj M) = (s * s')⊗ₜ[R,f]m :=
  rfl
#align category_theory.Module.extend_scalars.smul_tmul CategoryTheory.ModuleCat.ExtendScalars.smul_tmul

@[simp]
theorem map_tmul {M M' : ModuleCat.{v} R} (g : M ⟶ M') (s : S) (m : M) :
    (extendScalars f).map g (s⊗ₜ[R,f]m) = s⊗ₜ[R,f]g m :=
  rfl
#align category_theory.Module.extend_scalars.map_tmul CategoryTheory.ModuleCat.ExtendScalars.map_tmul

end ExtendScalars

namespace CoextendScalars

variable {R : Type u₁} {S : Type u₂} [Ring R] [Ring S] (f : R →+* S)

section Unbundled

variable (M : Type v) [AddCommMonoid M] [Module R M]

-- mathport name: exprS'
-- We use `S'` to denote `S` viewed as `R`-module, via the map `f`.
-- Porting note: this seems to cause problems related to lack of reducibility
-- local notation "S'" => (restrictScalars f).obj ⟨S⟩

/-- Given an `R`-module M, consider Hom(S, M) -- the `R`-linear maps between S (as an `R`-module by
 means of restriction of scalars) and M. `S` acts on Hom(S, M) by `s • g = x ↦ g (x • s)`
 -/
instance hasSMul : SMul S <| (restrictScalars f).obj ⟨S⟩ →ₗ[R] M where
  smul s g :=
    { toFun := fun s' : S => g (s' * s : S)
      map_add' := fun x y : S => by dsimp; rw [add_mul, map_add]
      map_smul' := fun r (t : S) => by
        -- Porting note: needed some erw's even after dsimp to clean things up
        dsimp
        rw [← LinearMap.map_smul]
        erw [smul_eq_mul, smul_eq_mul, mul_assoc] }
#align category_theory.Module.coextend_scalars.has_smul CategoryTheory.ModuleCat.CoextendScalars.hasSMul

@[simp]
theorem smul_apply' (s : S) (g : (restrictScalars f).obj ⟨S⟩ →ₗ[R] M) (s' : S) :
    (s • g) s' = g (s' * s : S) :=
  rfl
#align category_theory.Module.coextend_scalars.smul_apply' CategoryTheory.ModuleCat.CoextendScalars.smul_apply'

instance mulAction : MulAction S <| (restrictScalars f).obj ⟨S⟩ →ₗ[R] M :=
  { CoextendScalars.hasSMul f _ with
    one_smul := fun g => LinearMap.ext fun s : S => by simp
    mul_smul := fun (s t : S) g => LinearMap.ext fun x : S => by simp [mul_assoc] }
#align category_theory.Module.coextend_scalars.mul_action CategoryTheory.ModuleCat.CoextendScalars.mulAction

instance distribMulAction : DistribMulAction S <| (restrictScalars f).obj ⟨S⟩ →ₗ[R] M :=
  { CoextendScalars.mulAction f _ with
    smul_add := fun s g h => LinearMap.ext fun t : S => by simp
    smul_zero := fun s => LinearMap.ext fun t : S => by simp }
#align category_theory.Module.coextend_scalars.distrib_mul_action CategoryTheory.ModuleCat.CoextendScalars.distribMulAction

/-- `S` acts on Hom(S, M) by `s • g = x ↦ g (x • s)`, this action defines an `S`-module structure on
Hom(S, M).
 -/
instance isModule : Module S <| (restrictScalars f).obj ⟨S⟩ →ₗ[R] M :=
  { CoextendScalars.distribMulAction f _ with
    add_smul := fun s1 s2 g => LinearMap.ext fun x : S => by simp [mul_add, LinearMap.map_add]
    zero_smul := fun g => LinearMap.ext fun x : S => by simp [LinearMap.map_zero] }
#align category_theory.Module.coextend_scalars.is_module CategoryTheory.ModuleCat.CoextendScalars.isModule

end Unbundled

variable (M : ModuleCat.{v} R)

/-- If `M` is an `R`-module, then the set of `R`-linear maps `S →ₗ[R] M` is an `S`-module with
scalar multiplication defined by `s • l := x ↦ l (x • s)`-/
def obj' : ModuleCat S :=
  ⟨(restrictScalars f).obj ⟨S⟩ →ₗ[R] M⟩
#align category_theory.Module.coextend_scalars.obj' CategoryTheory.ModuleCat.CoextendScalars.obj'

instance : CoeFun (obj' f M) fun _ => S → M where coe g := g.toFun

/-- If `M, M'` are `R`-modules, then any `R`-linear map `g : M ⟶ M'` induces an `S`-linear map
`(S →ₗ[R] M) ⟶ (S →ₗ[R] M')` defined by `h ↦ g ∘ h`-/
@[simps]
def map' {M M' : ModuleCat R} (g : M ⟶ M') : obj' f M ⟶ obj' f M' where
  toFun h := g.comp h
  map_add' _ _ := LinearMap.comp_add _ _ _
  map_smul' s h := LinearMap.ext fun t : S => by dsimp; rw [smul_apply',smul_apply']; simp
  -- Porting note: smul_apply' not working in simp
#align category_theory.Module.coextend_scalars.map' CategoryTheory.ModuleCat.CoextendScalars.map'

end CoextendScalars

/--
For any rings `R, S` and a ring homomorphism `f : R →+* S`, there is a functor from `R`-module to
`S`-module defined by `M ↦ (S →ₗ[R] M)` where `S` is considered as an `R`-module via restriction of
scalars and `g : M ⟶ M'` is sent to `h ↦ g ∘ h`.
-/
def coextendScalars {R : Type u₁} {S : Type u₂} [Ring R] [Ring S] (f : R →+* S) :
    ModuleCat R ⥤ ModuleCat S where
  obj := CoextendScalars.obj' f
  map := CoextendScalars.map' f
  map_id _ := LinearMap.ext fun _ => LinearMap.ext fun _ => rfl
  map_comp _ _ := LinearMap.ext fun _ => LinearMap.ext fun _ => rfl
#align category_theory.Module.coextend_scalars CategoryTheory.ModuleCat.coextendScalars

namespace CoextendScalars

variable {R : Type u₁} {S : Type u₂} [Ring R] [Ring S] (f : R →+* S)

-- Porting note: this coercion doesn't line up well with task below
instance (M : ModuleCat R) : CoeFun ((coextendScalars f).obj M) fun _ => S → M :=
  inferInstanceAs <| CoeFun (CoextendScalars.obj' f M) _

theorem smul_apply (M : ModuleCat R) (g : (coextendScalars f).obj M) (s s' : S) :
    (s • g) s' = g (s' * s) :=
  rfl
#align category_theory.Module.coextend_scalars.smul_apply CategoryTheory.ModuleCat.CoextendScalars.smul_apply

@[simp]
theorem map_apply {M M' : ModuleCat R} (g : M ⟶ M') (x) (s : S) :
    (coextendScalars f).map g x s = g (x s) :=
  rfl
#align category_theory.Module.coextend_scalars.map_apply CategoryTheory.ModuleCat.CoextendScalars.map_apply

end CoextendScalars

namespace RestrictionCoextensionAdj

variable {R : Type u₁} {S : Type u₂} [Ring R] [Ring S] (f : R →+* S)

-- Porting note: too much time
set_option maxHeartbeats 600000 in
/-- Given `R`-module X and `S`-module Y, any `g : (restrictScalars f).obj Y ⟶ X`
corresponds to `Y ⟶ (coextendScalars f).obj X` by sending `y ↦ (s ↦ g (s • y))`
-/
@[simps apply_apply]
def HomEquiv.fromRestriction {X : ModuleCat R} {Y : ModuleCat S}
    (g : (restrictScalars f).obj Y ⟶ X) : Y ⟶ (coextendScalars f).obj X where
  toFun := fun y : Y =>
    { toFun := fun s : S => g <| (s • y : Y)
      map_add' := fun s1 s2 : S => by simp only [add_smul]; rw [LinearMap.map_add]
      map_smul' := fun r (s : S) => by
        -- Porting note: dsimp clears out some rw's but less eager to apply others with Lean 4
        dsimp
        rw [← g.map_smul]
        erw [smul_eq_mul, mul_smul]
        rfl}
  map_add' := fun y1 y2 : Y =>
    LinearMap.ext fun s : S => by
      -- Porting note: double dsimp seems odd
      dsimp
      rw [LinearMap.add_apply, LinearMap.coe_mk, LinearMap.coe_mk]
      dsimp
      rw [smul_add, map_add]
  map_smul' := fun (s : S) (y : Y) => LinearMap.ext fun t : S => by
      -- Porting note: used to be simp [mul_smul]
      rw [RingHom.id_apply, LinearMap.coe_mk, CategoryTheory.ModuleCat.CoextendScalars.smul_apply',
        LinearMap.coe_mk]
      dsimp
      rw [mul_smul]
#align category_theory.Module.restriction_coextension_adj.hom_equiv.from_restriction CategoryTheory.ModuleCat.RestrictionCoextensionAdj.HomEquiv.fromRestriction

/-- Given `R`-module X and `S`-module Y, any `g : Y ⟶ (coextendScalars f).obj X`
corresponds to `(restrictScalars f).obj Y ⟶ X` by `y ↦ g y 1`
-/
@[simps apply]
def HomEquiv.toRestriction {X Y} (g : Y ⟶ (coextendScalars f).obj X) : (restrictScalars f).obj Y ⟶ X
    where
  toFun := fun y : Y => (g y) (1 : S)
  map_add' x y := by dsimp; rw [g.map_add, LinearMap.add_apply]
  map_smul' r (y : Y) := by
    dsimp
    rw [← LinearMap.map_smul]
    erw [smul_eq_mul, mul_one, LinearMap.map_smul]
    -- Porting note: should probably change CoeFun for obj above
    rw [← LinearMap.coe_toAddHom, ←AddHom.toFun_eq_coe]
    rw [CoextendScalars.smul_apply (s := f r) (g := g y) (s' := 1), one_mul]
    rw [AddHom.toFun_eq_coe, LinearMap.coe_toAddHom]
#align category_theory.Module.restriction_coextension_adj.hom_equiv.to_restriction CategoryTheory.ModuleCat.RestrictionCoextensionAdj.HomEquiv.toRestriction

-- Porting note: add to address timeout in unit'
def app' (Y : ModuleCat S) : Y →ₗ[S] (restrictScalars f ⋙ coextendScalars f).obj Y :=
  { toFun := fun y : Y =>
      { toFun := fun s : S => (s • y : Y)
        map_add' := fun s s' => add_smul _ _ _
        map_smul' := fun r (s : S) => by
          dsimp
          erw [smul_eq_mul, mul_smul] }
    map_add' := fun y1 y2 =>
      LinearMap.ext fun s : S => by
        -- Porting note: double dsimp seems odd
        dsimp
        rw [LinearMap.add_apply, LinearMap.coe_mk, LinearMap.coe_mk, LinearMap.coe_mk]
        dsimp
        rw [smul_add]
    map_smul' := fun s (y : Y) => LinearMap.ext fun t : S => by
      -- Porting note: used to be simp [mul_smul]
      rw [RingHom.id_apply, LinearMap.coe_mk, CoextendScalars.smul_apply', LinearMap.coe_mk]
      dsimp
      rw [mul_smul] }

/--
The natural transformation from identity functor to the composition of restriction and coextension
of scalars.
-/
-- @[simps] Porting note: not in normal form and not used
protected def unit' : 𝟭 (ModuleCat S) ⟶ restrictScalars f ⋙ coextendScalars f where
  app Y := app' f Y
  naturality Y Y' g :=
    LinearMap.ext fun y : Y => LinearMap.ext fun s : S => by
      -- Porting note: previously simp [CoextendScalars.map_apply]
      simp only [ModuleCat.coe_comp, Functor.id_map, Functor.id_obj, Functor.comp_obj,
        Functor.comp_map]
      rw [coe_comp, coe_comp, Function.comp, Function.comp]
      conv_rhs => rw [← LinearMap.coe_toAddHom, ←AddHom.toFun_eq_coe]
      erw [CoextendScalars.map_apply, AddHom.toFun_eq_coe, LinearMap.coe_toAddHom,
        restrictScalars.map_apply f]
      change s • (g y) = g (s • y)
      rw [map_smul]
#align category_theory.Module.restriction_coextension_adj.unit' CategoryTheory.ModuleCat.RestrictionCoextensionAdj.unit'

/-- The natural transformation from the composition of coextension and restriction of scalars to
identity functor.
-/
-- @[simps] Porting note: not in normal form and not used
protected def counit' : coextendScalars f ⋙ restrictScalars f ⟶ 𝟭 (ModuleCat R) where
  app X :=
    { toFun := fun g => g.toFun (1 : S)
      map_add' := fun x1 x2 => by
        dsimp
        rw [LinearMap.add_apply]
      map_smul' := fun r (g : (restrictScalars f).obj ((coextendScalars f).obj X)) => by
        dsimp
        rw [← LinearMap.coe_toAddHom, ←AddHom.toFun_eq_coe]
        rw [CoextendScalars.smul_apply (s := f r) (g := g) (s' := 1), one_mul, ← LinearMap.map_smul]
        rw [← LinearMap.coe_toAddHom, ←AddHom.toFun_eq_coe]
        congr
        change f r = (f r) • (1 : S)
        rw [smul_eq_mul (a := f r) (a' := 1), mul_one] }
  naturality X X' g := LinearMap.ext fun h => by
    rw [ModuleCat.coe_comp]
    rfl
#align category_theory.Module.restriction_coextension_adj.counit' CategoryTheory.ModuleCat.RestrictionCoextensionAdj.counit'

end RestrictionCoextensionAdj

-- Porting note: very fiddly universes
/-- Restriction of scalars is left adjoint to coextension of scalars. -/
-- @[simps] Porting note: not in normal form and not used
def restrictCoextendScalarsAdj {R : Type u₁} {S : Type u₂} [Ring R] [Ring S] (f : R →+* S) :
    restrictScalars.{max v u₂,u₁,u₂} f ⊣ coextendScalars f where
  homEquiv X Y :=
    { toFun := RestrictionCoextensionAdj.HomEquiv.fromRestriction.{u₁,u₂,v} f
      invFun := RestrictionCoextensionAdj.HomEquiv.toRestriction.{u₁,u₂,v} f
      left_inv := fun g => LinearMap.ext fun x : X => by
        -- Porting note: once just simp
        rw [RestrictionCoextensionAdj.HomEquiv.toRestriction_apply, AddHom.toFun_eq_coe,
          LinearMap.coe_toAddHom, RestrictionCoextensionAdj.HomEquiv.fromRestriction_apply_apply,
          one_smul]
      right_inv := fun g => LinearMap.ext fun x => LinearMap.ext fun s : S => by
        -- Porting note: once just simp
        rw [RestrictionCoextensionAdj.HomEquiv.fromRestriction_apply_apply,
          RestrictionCoextensionAdj.HomEquiv.toRestriction_apply, AddHom.toFun_eq_coe,
          LinearMap.coe_toAddHom, LinearMap.map_smulₛₗ, RingHom.id_apply,
          CoextendScalars.smul_apply', one_mul] }
  unit := RestrictionCoextensionAdj.unit'.{u₁,u₂,v} f
  counit := RestrictionCoextensionAdj.counit'.{u₁,u₂,v} f
  homEquiv_unit := LinearMap.ext fun y => rfl
  homEquiv_counit := fun {X Y g} => LinearMap.ext <| by
    -- Porting note: previously simp [RestrictionCoextensionAdj.counit']
    intro x; dsimp
    rw [coe_comp, Function.comp]
    change _ = (((restrictScalars f).map g) x).toFun (1 : S)
    rw [AddHom.toFun_eq_coe, LinearMap.coe_toAddHom, restrictScalars.map_apply]
#align category_theory.Module.restrict_coextend_scalars_adj CategoryTheory.ModuleCat.restrictCoextendScalarsAdj

instance {R : Type u₁} {S : Type u₂} [Ring R] [Ring S] (f : R →+* S) :
    CategoryTheory.IsLeftAdjoint (restrictScalars f) :=
  ⟨_, restrictCoextendScalarsAdj f⟩

instance {R : Type u₁} {S : Type u₂} [Ring R] [Ring S] (f : R →+* S) :
    CategoryTheory.IsRightAdjoint (coextendScalars f) :=
  ⟨_, restrictCoextendScalarsAdj f⟩

namespace ExtendRestrictScalarsAdj

open ChangeOfRings

open TensorProduct

variable {R : Type u₁} {S : Type u₂} [CommRing R] [CommRing S] (f : R →+* S)

/--
Given `R`-module X and `S`-module Y and a map `g : (extendScalars f).obj X ⟶ Y`, i.e. `S`-linear
map `S ⨂ X → Y`, there is a `X ⟶ (restrictScalars f).obj Y`, i.e. `R`-linear map `X ⟶ Y` by
`x ↦ g (1 ⊗ x)`.
-/
@[simps apply]
def HomEquiv.toRestrictScalars {X Y} (g : (extendScalars f).obj X ⟶ Y) :
    X ⟶ (restrictScalars f).obj Y where
  toFun x := g <| (1 : S)⊗ₜ[R,f]x
  map_add' _ _ := by dsimp; rw [tmul_add, map_add]
  map_smul' r x := by
    letI : Module R S := Module.compHom S f
    letI : Module R Y := Module.compHom Y f
    dsimp
    rw [RestrictScalars.smul_def, ← LinearMap.map_smul]
    erw [tmul_smul]
    congr
#align category_theory.Module.extend_restrict_scalars_adj.hom_equiv.to_restrict_scalars CategoryTheory.ModuleCat.ExtendRestrictScalarsAdj.HomEquiv.toRestrictScalars

-- Porting note: forced to break apart fromExtendScalars due to timeouts
/--
The map `S → X →ₗ[R] Y` given by `fun s x => s • (g x)`
-/
@[simps]
def HomEquiv.evalAt {X : ModuleCat R} {Y : ModuleCat S} (s : S)
    (g : X ⟶ (restrictScalars f).obj Y) : have : Module R Y := Module.compHom Y f
    X →ₗ[R] Y :=
  @LinearMap.mk _ _ _ _ (RingHom.id R) X Y _ _ _ (_)
    { toFun := fun x => s • (g x : Y)
      map_add' := by intros; dsimp; rw [map_add,smul_add] }
    (by
      intros r x
      rw [AddHom.toFun_eq_coe, AddHom.coe_mk, RingHom.id_apply,
        LinearMap.map_smul, smul_comm r s (g x : Y)] )

/--
Given `R`-module X and `S`-module Y and a map `X ⟶ (restrict_scalars f).obj Y`, i.e `R`-linear map
`X ⟶ Y`, there is a map `(extend_scalars f).obj X ⟶ Y`, i.e `S`-linear map `S ⨂ X → Y` by
`s ⊗ x ↦ s • g x`.
-/
@[simps apply]
def HomEquiv.fromExtendScalars {X Y} (g : X ⟶ (restrictScalars f).obj Y) :
    (extendScalars f).obj X ⟶ Y := by
  letI m1 : Module R S := Module.compHom S f; letI m2 : Module R Y := Module.compHom Y f
  refine {toFun := fun z => TensorProduct.lift ?_ z, map_add' := ?_, map_smul' := ?_}
  · refine
    {toFun := fun s => HomEquiv.evalAt f s g, map_add' := fun (s₁ s₂ : S) => ?_,
      map_smul' := fun (r : R) (s : S) => ?_}
    · ext
      dsimp
      rw [← add_smul]
    · ext x
      apply mul_smul (f r) s (g x)
  · intros z₁ z₂
    change lift _ (z₁ + z₂) = lift _ z₁ + lift _ z₂
    rw [map_add]
  · intro s z
    change lift _ (s • z) = s • lift _ z
    induction' z using TensorProduct.induction_on with s' x x y ih1 ih2
    · rw [smul_zero, map_zero, smul_zero]
    · rw [LinearMap.coe_mk, ExtendScalars.smul_tmul]
      erw [lift.tmul, lift.tmul]
      set s' : S := s'
      change (s * s') • (g x) = s • s' • (g x)
      rw [mul_smul]
    · rw [smul_add, map_add, ih1, ih2, map_add, smul_add]
#align category_theory.Module.extend_restrict_scalars_adj.hom_equiv.from_extend_scalars CategoryTheory.ModuleCat.ExtendRestrictScalarsAdj.HomEquiv.fromExtendScalars

/-- Given `R`-module X and `S`-module Y, `S`-linear linear maps `(extendScalars f).obj X ⟶ Y`
bijectively correspond to `R`-linear maps `X ⟶ (restrictScalars f).obj Y`.
-/
@[simps symm_apply]
def homEquiv {X Y} :
    ((extendScalars f).obj X ⟶ Y) ≃ (X ⟶ (restrictScalars.{max v u₂,u₁,u₂} f).obj Y) where
  toFun := HomEquiv.toRestrictScalars.{u₁,u₂,v} f
  invFun := HomEquiv.fromExtendScalars.{u₁,u₂,v} f
  left_inv g := by
    letI m1 : Module R S := Module.compHom S f; letI m2 : Module R Y := Module.compHom Y f
    apply LinearMap.ext; intro z
    induction' z using TensorProduct.induction_on with x s z1 z2 ih1 ih2
    · rw [map_zero, map_zero]
    · erw [TensorProduct.lift.tmul]
      simp only [LinearMap.coe_mk]
      change S at x
      dsimp
      erw [← LinearMap.map_smul, ExtendScalars.smul_tmul, mul_one x]
    · rw [map_add, map_add, ih1, ih2]
  right_inv g := by
    letI m1 : Module R S := Module.compHom S f; letI m2 : Module R Y := Module.compHom Y f
    apply LinearMap.ext; intro x
    rw [HomEquiv.toRestrictScalars_apply, HomEquiv.fromExtendScalars_apply, lift.tmul,
      LinearMap.coe_mk, LinearMap.coe_mk]
    dsimp
    rw [one_smul]
#align category_theory.Module.extend_restrict_scalars_adj.hom_equiv CategoryTheory.ModuleCat.ExtendRestrictScalarsAdj.homEquiv

/--
For any `R`-module X, there is a natural `R`-linear map from `X` to `X ⨂ S` by sending `x ↦ x ⊗ 1`
-/
-- @[simps] Porting note: not in normal form and not used
def Unit.map {X} : X ⟶ (extendScalars f ⋙ restrictScalars f).obj X where
  toFun x := (1 : S)⊗ₜ[R,f]x
  map_add' x x' := by dsimp; rw [TensorProduct.tmul_add]
  map_smul' r x := by
    letI m1 : Module R S := Module.compHom S f
    -- Porting note: used to be rfl
    dsimp; rw [←TensorProduct.smul_tmul,TensorProduct.smul_tmul']
#align category_theory.Module.extend_restrict_scalars_adj.unit.map CategoryTheory.ModuleCat.ExtendRestrictScalarsAdj.Unit.map

/--
The natural transformation from identity functor on `R`-module to the composition of extension and
restriction of scalars.
-/
@[simps]
def unit : 𝟭 (ModuleCat R) ⟶ extendScalars f ⋙ restrictScalars.{max v u₂,u₁,u₂} f where
  app _ := Unit.map.{u₁,u₂,v} f
#align category_theory.Module.extend_restrict_scalars_adj.unit CategoryTheory.ModuleCat.ExtendRestrictScalarsAdj.unit

/-- For any `S`-module Y, there is a natural `R`-linear map from `S ⨂ Y` to `Y` by
`s ⊗ y ↦ s • y`
-/
@[simps apply]
def Counit.map {Y} : (restrictScalars f ⋙ extendScalars f).obj Y ⟶ Y := by
  letI m1 : Module R S := Module.compHom S f
  letI m2 : Module R Y := Module.compHom Y f
  refine'
    {toFun := TensorProduct.lift
      {toFun := fun s : S => {toFun := fun y : Y => s • y, map_add' := smul_add _, map_smul' := _},
        map_add' := _, map_smul' := _}, map_add' := _, map_smul' := _}
  · intros r y
    dsimp
    change s • f r • y = f r • s • y
    rw [←mul_smul, mul_comm, mul_smul]
  · intros s₁ s₂
    ext y
    change (s₁ + s₂) • y = s₁ • y + s₂ • y
    rw [add_smul]
  · intros r s
    ext y
    change (f r • s) • y = (f r) • s • y
    rw [smul_eq_mul,mul_smul]
  · intros
    rw [map_add]
  · intro s z
    dsimp
    induction' z using TensorProduct.induction_on with s' y z1 z2 ih1 ih2
    · rw [smul_zero, map_zero, smul_zero]
    · rw [ExtendScalars.smul_tmul, LinearMap.coe_mk]
      erw [TensorProduct.lift.tmul, TensorProduct.lift.tmul]
      set s' : S := s'
      change (s * s') • y = s • s' • y
      rw [mul_smul]
    · rw [smul_add, map_add, map_add, ih1, ih2, smul_add]
#align category_theory.Module.extend_restrict_scalars_adj.counit.map CategoryTheory.ModuleCat.ExtendRestrictScalarsAdj.Counit.map

-- Porting note: this file has to probably be reworked when
-- coercions and instance synthesis are fixed for concrete categories
-- so I say nolint now and move on
attribute [nolint simpNF] Counit.map_apply

/-- The natural transformation from the composition of restriction and extension of scalars to the
identity functor on `S`-module.
-/
@[simps app]
def counit : restrictScalars.{max v u₂,u₁,u₂} f ⋙ extendScalars f ⟶ 𝟭 (ModuleCat S) where
  app _ := Counit.map.{u₁,u₂,v} f
  naturality Y Y' g := by
    -- Porting note: this is very annoying; fix instances in concrete categories
    letI m1 : Module R S := Module.compHom S f
    letI m2 : Module R Y := Module.compHom Y f
    letI m2 : Module R Y' := Module.compHom Y' f
    apply LinearMap.ext; intro z
    induction' z using TensorProduct.induction_on with s' y z₁ z₂ ih₁ ih₂
    · rw [map_zero, map_zero]
    · dsimp
      rw [ModuleCat.coe_comp, ModuleCat.coe_comp,Function.comp,Function.comp,
        ExtendScalars.map_tmul, restrictScalars.map_apply, Counit.map_apply, Counit.map_apply,
        lift.tmul, lift.tmul, LinearMap.coe_mk, LinearMap.coe_mk]
      set s' : S := s'
      change s' • g y = g (s' • y)
      rw [map_smul]
    · rw [map_add,map_add]
      congr 1
#align category_theory.Module.extend_restrict_scalars_adj.counit CategoryTheory.ModuleCat.ExtendRestrictScalarsAdj.counit
end ExtendRestrictScalarsAdj

/-- Given commutative rings `R, S` and a ring hom `f : R →+* S`, the extension and restriction of
scalars by `f` are adjoint to each other.
-/
-- @[simps] -- Porting note: removed not in normal form and not used
def extendRestrictScalarsAdj {R : Type u₁} {S : Type u₂} [CommRing R] [CommRing S] (f : R →+* S) :
    extendScalars.{u₁,u₂,max v u₂} f ⊣ restrictScalars.{max v u₂,u₁,u₂} f where
  homEquiv _ _ := ExtendRestrictScalarsAdj.homEquiv.{v,u₁,u₂} f
  unit := ExtendRestrictScalarsAdj.unit.{v,u₁,u₂} f
  counit := ExtendRestrictScalarsAdj.counit.{v,u₁,u₂} f
  homEquiv_unit {X Y g} := LinearMap.ext fun x => by
    dsimp
    rw [ModuleCat.coe_comp, Function.comp, restrictScalars.map_apply]
    rfl
  homEquiv_counit {X Y g} := LinearMap.ext fun x => by
      -- Porting note: once again reminding Lean of the instances
      letI m1 : Module R S := Module.compHom S f
      letI m2 : Module R Y := Module.compHom Y f
      induction' x using TensorProduct.induction_on with s x _ _ _ _
      · rw [map_zero, map_zero]
      · rw [ExtendRestrictScalarsAdj.homEquiv_symm_apply, ModuleCat.coe_comp, Function.comp_apply,
          ExtendRestrictScalarsAdj.counit_app, ExtendRestrictScalarsAdj.Counit.map_apply]
        dsimp
        rw [TensorProduct.lift.tmul]
        rfl
      · rw [map_add,map_add]
        congr 1
#align category_theory.Module.extend_restrict_scalars_adj CategoryTheory.ModuleCat.extendRestrictScalarsAdj

instance {R : Type u₁} {S : Type u₂} [CommRing R] [CommRing S] (f : R →+* S) :
    CategoryTheory.IsLeftAdjoint (extendScalars f) :=
  ⟨_, extendRestrictScalarsAdj f⟩

instance {R : Type u₁} {S : Type u₂} [CommRing R] [CommRing S] (f : R →+* S) :
    CategoryTheory.IsRightAdjoint (restrictScalars f) :=
  ⟨_, extendRestrictScalarsAdj f⟩

end CategoryTheory.ModuleCat
```
