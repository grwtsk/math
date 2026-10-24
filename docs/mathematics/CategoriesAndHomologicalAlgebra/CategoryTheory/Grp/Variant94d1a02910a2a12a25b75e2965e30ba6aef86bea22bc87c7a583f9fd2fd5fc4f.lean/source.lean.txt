-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GrpClassOfRepresentableBy.Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.GrpClassOfRepresentableBy.Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Monoidal/Cartesian/Grp_.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.Algebra.Category.Grp.Limits
import Mathlib.CategoryTheory.Monoidal.Grp_

/-!
# Yoneda embedding of `Grp_ C`

We show that group objects are exactly those whose yoneda presheaf is a presheaf of groups,
by constructing the yoneda embedding `Grp_ C ⥤ Cᵒᵖ ⥤ Grp.{v}` and
showing that it is fully faithful and its (essential) image is the representable functors.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GrpClassOfRepresentableBy.Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789

open CategoryTheory MonoidalCategory Limits Opposite CartesianMonoidalCategory Mon_Class

universe w v u
variable {C : Type u} [Category.{v} C] [CartesianMonoidalCategory C]
  {G H X Y : C} [Grp_Class G] [Grp_Class H]

variable (X) in
/-- If `X` represents a presheaf of monoids, then `X` is a monoid object. -/
def Grp_Class.ofRepresentableBy (F : Cᵒᵖ ⥤ Grp.{w}) (α : (F ⋙ forget _).RepresentableBy X) :
    Grp_Class X where
  __ := Mon_Class.ofRepresentableBy X (F ⋙ forget₂ Grp MonCat) α
  inv := α.homEquiv.symm (α.homEquiv (𝟙 _))⁻¹
  left_inv' := by
    change lift (α.homEquiv.symm (α.homEquiv (𝟙 X))⁻¹) (𝟙 X) ≫
      α.homEquiv.symm (α.homEquiv (fst X X) * α.homEquiv (snd X X)) =
        toUnit X ≫ α.homEquiv.symm 1
    apply α.homEquiv.injective
    simp only [α.homEquiv_comp, Equiv.apply_symm_apply]
    simp only [Functor.comp_map, ConcreteCategory.forget_map_eq_coe, map_one, map_mul]
    simp only [← ConcreteCategory.forget_map_eq_coe, ← Functor.comp_map, ← α.homEquiv_comp]
    simp [← Functor.comp_obj]
  right_inv' := by
    change lift (𝟙 X) (α.homEquiv.symm (α.homEquiv (𝟙 X))⁻¹) ≫
      α.homEquiv.symm (α.homEquiv (fst X X) * α.homEquiv (snd X X)) =
        toUnit X ≫ α.homEquiv.symm 1
    apply α.homEquiv.injective
    simp only [α.homEquiv_comp, Equiv.apply_symm_apply]
    simp only [Functor.comp_map, ConcreteCategory.forget_map_eq_coe, map_one, map_mul]
    simp only [← ConcreteCategory.forget_map_eq_coe, ← Functor.comp_map, ← α.homEquiv_comp]
    simp [← Functor.comp_obj]

/-- If `G` is a group object, then `Hom(X, G)` has a group structure. -/
abbrev Hom.group : Group (X ⟶ G) where
  __ := monoid
  inv f := f ≫ ι
  inv_mul_cancel f := calc
    lift (f ≫ ι) f ≫ μ
    _ = (f ≫ lift ι (𝟙 G)) ≫ μ := by simp
    _ = toUnit X ≫ η := by rw [Category.assoc]; simp

attribute [local instance] Hom.group

lemma Hom.inv_def (f : X ⟶ G) : f⁻¹ = f ≫ ι := rfl

variable (G) in
/-- If `G` is a group object, then `Hom(-, G)` is a presheaf of groups. -/
@[simps]
def yonedaGrpObj : Cᵒᵖ ⥤ Grp.{v} where
  obj X := Grp.of (unop X ⟶ G)
  map φ := Grp.ofHom ((yonedaMonObj G).map φ).hom

variable (G) in
/-- If `G` is a monoid object, then `Hom(-, G)` as a presheaf of monoids is represented by `G`. -/
def yonedaGrpObjRepresentableBy : (yonedaGrpObj G ⋙ forget _).RepresentableBy G :=
  Functor.representableByEquiv.symm (.refl _)

variable (G) in
lemma Grp_Class.ofRepresentableBy_yonedaGrpObjRepresentableBy :
    ofRepresentableBy G _ (yonedaGrpObjRepresentableBy G) = ‹Grp_Class G› := by
  ext; show lift (fst G G) (snd G G) ≫ μ = μ; rw [lift_fst_snd, Category.id_comp]

variable (X) in
/-- If `X` represents a presheaf of groups `F`, then `Hom(-, X)` is isomorphic to `F` as
a presheaf of groups. -/
@[simps! hom inv]
def yonedaGrpObjIsoOfRepresentableBy (F : Cᵒᵖ ⥤ Grp.{v}) (α : (F ⋙ forget _).RepresentableBy X) :
    letI := Grp_Class.ofRepresentableBy X F α
    yonedaGrpObj X ≅ F :=
  letI := Grp_Class.ofRepresentableBy X F α
  NatIso.ofComponents (fun Y ↦ MulEquiv.toGrpIso
    { toEquiv := α.homEquiv
      map_mul' :=
  ((yonedaMonObjIsoOfRepresentableBy X (F ⋙ forget₂ Grp MonCat) α).hom.app Y).hom.map_mul})
      fun φ ↦ Grp.hom_ext <| MonoidHom.ext <| α.homEquiv_comp φ.unop

/-- The yoneda embedding of `Grp_C` into presheaves of groups. -/
@[simps]
def yonedaGrp : Grp_ C ⥤ Cᵒᵖ ⥤ Grp.{v} where
  obj G := yonedaGrpObj G.X
  map {G H} ψ := { app Y := Grp.ofHom ((yonedaMon.map ψ).app Y).hom }

@[reassoc]
lemma yonedaGrp_naturality (α : yonedaGrpObj G ⟶ yonedaGrpObj H) (f : X ⟶ Y) (g : Y ⟶ G) :
    α.app _ (f ≫ g) = f ≫ α.app _ g := congr($(α.naturality f.op) g)

/-- The yoneda embedding for `Grp_C` is fully faithful. -/
def yonedaGrpFullyFaithful : yonedaGrp (C := C).FullyFaithful where
  preimage {G H} α := yonedaMonFullyFaithful.preimage (whiskerRight α (forget₂ Grp MonCat))
  map_preimage {G H} α := by
    ext X : 3
    exact congr(($(yonedaMonFullyFaithful.map_preimage
      (whiskerRight α (forget₂ Grp MonCat))).app X).hom)
  preimage_map := yonedaMonFullyFaithful.preimage_map

instance : yonedaGrp (C := C).Full := yonedaGrpFullyFaithful.full
instance : yonedaGrp (C := C).Faithful := yonedaGrpFullyFaithful.faithful

lemma essImage_yonedaGrp :
    yonedaGrp (C := C).essImage = (· ⋙ forget _) ⁻¹' setOf Functor.IsRepresentable := by
  ext F
  constructor
  · rintro ⟨G, ⟨α⟩⟩
    exact ⟨G.X, ⟨Functor.representableByEquiv.symm (isoWhiskerRight α (forget _))⟩⟩
  · rintro ⟨X, ⟨e⟩⟩
    letI := Grp_Class.ofRepresentableBy X F e
    exact ⟨.mk' X, ⟨yonedaGrpObjIsoOfRepresentableBy X F e⟩⟩

@[reassoc]
lemma Grp_Class.comp_inv (f : X ⟶ Y) (g : Y ⟶ G) : f ≫ g⁻¹ = (f ≫ g)⁻¹ :=
  ((yonedaGrp.obj <| .mk' G).map f.op).hom.map_inv g

@[reassoc]
lemma Grp_Class.inv_comp (f : X ⟶ G) (g : G ⟶ H) [IsMon_Hom g] : f⁻¹ ≫ g = (f ≫ g)⁻¹ := by
  simp [Hom.inv_def,IsMon_Hom.inv_hom]

lemma Grp_Class.inv_eq_inv : ι = (𝟙 G)⁻¹ := by simp [Hom.inv_def]
