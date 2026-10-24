# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunctions.Variant680b8e06bc976ae22f0a202af8a09e56a2365471c4ce1e6809740972d7226bfc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39b4b1bc731bff1d8b9fff59638d7dc81b7cb435` · SHA-256 `ad2b19dfe9905f727122e25425b9023eb2e916a5efa8ae0ff677761751b8832d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Free.Variantacea6cb62eccf0948a630346aefe3f874ecec839ea825993b6453345c23b9555","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"acea6cb62eccf0948a630346aefe3f874ecec839ea825993b6453345c23b9555","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Free.Variantacea6cb62eccf0948a630346aefe3f874ecec839ea825993b6453345c23b9555","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"acea6cb62eccf0948a630346aefe3f874ecec839ea825993b6453345c23b9555","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/Ring/Adjunctions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Johannes Hölzl, Andrew Yang
-/
module

public import Mathlib.Algebra.Category.Ring.Colimits
public import Mathlib.Algebra.MvPolynomial.CommRing
public import Mathlib.CategoryTheory.Comma.Over.Basic
public import Mathlib.CategoryTheory.Limits.Shapes.Terminal

/-!
# Adjunctions in `CommRingCat`

## Main results
- `CommRingCat.adj`: `σ ↦ ℤ[σ]` is left adjoint to the forgetful functor `CommRingCat ⥤ Type`.
- `CommRingCat.coyonedaAdj`: `Fun(-, R)` is left adjoint to `Hom_{CRing}(R, -)`.
- `CommRingCat.monoidAlgebraAdj`: `G ↦ R[G]` as `CommGrpCat ⥤ R-Alg` is left adjoint to `S ↦ Sˣ`.
- `CommRingCat.unitsAdj`: `G ↦ ℤ[G]` is left adjoint to `S ↦ Sˣ`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Free.Variantacea6cb62eccf0948a630346aefe3f874ecec839ea825993b6453345c23b9555

@[expose] public section

noncomputable section

universe v u

open MvPolynomial Opposite CategoryTheory

namespace CommRingCat

/-- The free functor `Type u ⥤ CommRingCat` sending a type `X` to the multivariable (commutative)
polynomials with variables `x : X`.
-/
def free : Type u ⥤ CommRingCat.{u} where
  obj α := of (MvPolynomial α ℤ)
  map {X Y} f := ofHom (↑(rename f : _ →ₐ[ℤ] _) : MvPolynomial X ℤ →+* MvPolynomial Y ℤ)

@[simp]
theorem free_obj_coe {α : Type u} : (free.obj α : Type u) = MvPolynomial α ℤ :=
  rfl

-- This is not a `@[simp]` lemma as the left-hand side simplifies via `dsimp`.
theorem free_map_coe {α β : Type u} {f : α ⟶ β} : ⇑(free.map f) = ⇑(rename f) :=
  rfl

set_option backward.isDefEq.respectTransparency false in
/-- The free-forgetful adjunction for commutative rings. -/
def adj : free ⊣ forget CommRingCat.{u} :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun _ _ ↦
        { toFun := fun f ↦ ↾(homEquiv f.hom)
          invFun := fun f ↦ ofHom <| homEquiv.symm f
          left_inv := fun f ↦ congrArg ofHom (homEquiv.left_inv f.hom)
          right_inv := by cat_disch }
      homEquiv_naturality_left_symm := fun {_ _ Y} f g =>
        hom_ext <| RingHom.ext fun x ↦ eval₂_cast_comp f (Int.castRingHom Y) g x }

instance : (forget CommRingCat.{u}).IsRightAdjoint :=
  ⟨_, ⟨adj⟩⟩

/-- `Fun(-, -)` as a functor `Type vᵒᵖ ⥤ CommRingCat ⥤ CommRingCat`. -/
@[simps]
def coyoneda : Type vᵒᵖ ⥤ CommRingCat.{u} ⥤ CommRingCat.{max u v} where
  obj n :=
  { obj R := ↧(unop n → R)
    map {R S} φ := CommRingCat.ofHom (RingHom.pi (φ.hom.comp <| Pi.evalRingHom _ ·)) }
  map {m n} f :=
  { app R := CommRingCat.ofHom (RingHom.pi (Pi.evalRingHom _ <| f.unop ·)) }

/-- The adjunction `Hom_{CRing}(Fun(n, R), S) ≃ Fun(n, Hom_{CRing}(R, S))`. -/
def coyonedaAdj (R : CommRingCat.{u}) :
    (coyoneda.flip.obj R).rightOp ⊣ yoneda.obj R where
  unit := { app n := ↾fun i ↦ CommRingCat.ofHom (Pi.evalRingHom _ i) }
  counit := { app S := (CommRingCat.ofHom (RingHom.pi fun f ↦ f.hom)).op }

instance (R : CommRingCat.{u}) : (yoneda.obj R).IsRightAdjoint := ⟨_, ⟨coyonedaAdj R⟩⟩

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- If `n` is a singleton, `Hom(n, -)` is the identity in `CommRingCat`. -/
@[simps!]
def coyonedaUnique {n : Type v} [Unique n] : coyoneda.obj (op n) ≅ 𝟭 CommRingCat.{max u v} :=
  NatIso.ofComponents (fun X ↦ (RingEquiv.piUnique _).toCommRingCatIso) (fun f ↦ by ext; simp)

set_option backward.defeqAttrib.useBackward true in
/-- The monoid algebra functor `CommGrpCat ⥤ R-Alg` given by `G ↦ R[G]`. -/
@[simps]
def monoidAlgebra (R : CommRingCat.{max u v}) : CommMonCat.{v} ⥤ Under R where
  obj G := Under.mk (CommRingCat.ofHom MonoidAlgebra.singleOneRingHom)
  map f := Under.homMk (CommRingCat.ofHom <| MonoidAlgebra.mapDomainRingHom R f.hom)
  map_comp f g := by ext : 2; apply MonoidAlgebra.ringHom_ext <;> intro <;> simp

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The adjunction `G ↦ R[G]` and `S ↦ Sˣ` between `CommGrpCat` and `R-Alg`. -/
def monoidAlgebraAdj (R : CommRingCat.{u}) :
    monoidAlgebra R ⊣ Under.forget R ⋙ forget₂ _ _ where
  unit := { app G := CommMonCat.ofHom (MonoidAlgebra.of R G) }
  counit :=
  { app S := Under.homMk (CommRingCat.ofHom (MonoidAlgebra.liftNCRingHom S.hom.hom
      (.id _) fun _ _ ↦ .all _ _)) (by ext; simp [MonoidAlgebra.liftNCRingHom]),
    naturality S T f := by
      ext : 2
      apply MonoidAlgebra.ringHom_ext <;>
        intro <;> simp [MonoidAlgebra.liftNCRingHom, ← Under.w f, -Under.w] }
  left_triangle_components G := by
    ext : 2
    apply MonoidAlgebra.ringHom_ext <;> intro <;> simp [MonoidAlgebra.liftNCRingHom]
  right_triangle_components S := by dsimp; ext; simp [MonoidAlgebra.liftNCRingHom]

/-- The adjunction `G ↦ ℤ[G]` and `R ↦ Rˣ` between `CommGrpCat` and `CommRing`. -/
def forget₂Adj {R : CommRingCat.{u}} (hR : Limits.IsInitial R) :
    monoidAlgebra R ⋙ Under.forget R ⊣ forget₂ _ _ :=
  (monoidAlgebraAdj R).comp (Under.equivalenceOfIsInitial hR).toAdjunction

instance (R : CommRingCat) : (monoidAlgebra.{u, u} R).IsLeftAdjoint :=
  ⟨_, ⟨CommRingCat.monoidAlgebraAdj R⟩⟩

instance : (forget₂ CommRingCat CommMonCat).IsRightAdjoint :=
  ⟨_, ⟨CommRingCat.forget₂Adj Limits.initialIsInitial⟩⟩

end CommRingCat
```
