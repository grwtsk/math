# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variant7177f512abaa35157234e11ea7d1bf18dd14489c210ca33546b5d9d45eab8de4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b7c070425f287a777a6e3bf529c0cb396d4a3bc` · SHA-256 `91ef65e80535fc2ac656ae6b273a6ee9788f3018b3d4864d17ae73f25511ecd4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ImageToKernelOp.Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ImageToKernelOp.Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Homology/Opposite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Amelia Livingston. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Amelia Livingston
-/
import Mathlib.CategoryTheory.Abelian.Opposite
import Mathlib.CategoryTheory.Abelian.Homology
import Mathlib.Algebra.Homology.Additive


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ImageToKernelOp.Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4

#align_import algebra.homology.opposite from "leanprover-community/mathlib"@"8c75ef3517d4106e89fe524e6281d0b0545f47fc"

/-!
# Opposite categories of complexes
Given a preadditive category `V`, the opposite of its category of chain complexes is equivalent to
the category of cochain complexes of objects in `Vᵒᵖ`. We define this equivalence, and another
analogous equivalence (for a general category of homological complexes with a general
complex shape).

We then show that when `V` is abelian, if `C` is a homological complex, then the homology of
`op(C)` is isomorphic to `op` of the homology of `C` (and the analogous result for `unop`).

## Implementation notes
It is convenient to define both `op` and `opSymm`; this is because given a complex shape `c`,
`c.symm.symm` is not defeq to `c`.

## Tags
opposite, chain complex, cochain complex, homology, cohomology, homological complex
-/


noncomputable section

open Opposite CategoryTheory CategoryTheory.Limits

section

variable {V : Type*} [Category V] [Abelian V]

theorem imageToKernel_op {X Y Z : V} (f : X ⟶ Y) (g : Y ⟶ Z) (w : f ≫ g = 0) :
    imageToKernel g.op f.op (by rw [← op_comp, w, op_zero]) =
      (imageSubobjectIso _ ≪≫ (imageOpOp _).symm).hom ≫
        (cokernel.desc f (factorThruImage g)
              (by rw [← cancel_mono (image.ι g), Category.assoc, image.fac, w, zero_comp])).op ≫
          (kernelSubobjectIso _ ≪≫ kernelOpOp _).inv := by
  ext
  simp only [Iso.trans_hom, Iso.symm_hom, Iso.trans_inv, kernelOpOp_inv, Category.assoc,
    imageToKernel_arrow, kernelSubobject_arrow', kernel.lift_ι, ← op_comp, cokernel.π_desc,
    ← imageSubobject_arrow, ← imageUnopOp_inv_comp_op_factorThruImage g.op]
  rfl
#align image_to_kernel_op imageToKernel_op

theorem imageToKernel_unop {X Y Z : Vᵒᵖ} (f : X ⟶ Y) (g : Y ⟶ Z) (w : f ≫ g = 0) :
    imageToKernel g.unop f.unop (by rw [← unop_comp, w, unop_zero]) =
      (imageSubobjectIso _ ≪≫ (imageUnopUnop _).symm).hom ≫
        (cokernel.desc f (factorThruImage g)
              (by rw [← cancel_mono (image.ι g), Category.assoc, image.fac, w, zero_comp])).unop ≫
          (kernelSubobjectIso _ ≪≫ kernelUnopUnop _).inv := by
  ext
  dsimp only [imageUnopUnop]
  simp only [Iso.trans_hom, Iso.symm_hom, Iso.trans_inv, kernelUnopUnop_inv, Category.assoc,
    imageToKernel_arrow, kernelSubobject_arrow', kernel.lift_ι, cokernel.π_desc, Iso.unop_inv,
    ← unop_comp, factorThruImage_comp_imageUnopOp_inv, Quiver.Hom.unop_op, imageSubobject_arrow]
#align image_to_kernel_unop imageToKernel_unop

/-- Given `f, g` with `f ≫ g = 0`, the homology of `g.op, f.op` is the opposite of the homology of
`f, g`. -/
def homologyOp {X Y Z : V} (f : X ⟶ Y) (g : Y ⟶ Z) (w : f ≫ g = 0) :
    homology g.op f.op (by rw [← op_comp, w, op_zero]) ≅ Opposite.op (homology f g w) :=
  cokernelIsoOfEq (imageToKernel_op _ _ w) ≪≫ cokernelEpiComp _ _ ≪≫ cokernelCompIsIso _ _ ≪≫
    cokernelOpOp _ ≪≫ (homologyIsoKernelDesc _ _ _ ≪≫
    kernelIsoOfEq (by ext; simp only [image.fac, cokernel.π_desc, cokernel.π_desc_assoc]) ≪≫
    kernelCompMono _ (image.ι g)).op
#align homology_op homologyOp

/-- Given morphisms `f, g` in `Vᵒᵖ` with `f ≫ g = 0`, the homology of `g.unop, f.unop` is the
opposite of the homology of `f, g`. -/
def homologyUnop {X Y Z : Vᵒᵖ} (f : X ⟶ Y) (g : Y ⟶ Z) (w : f ≫ g = 0) :
    homology g.unop f.unop (by rw [← unop_comp, w, unop_zero]) ≅ Opposite.unop (homology f g w) :=
  cokernelIsoOfEq (imageToKernel_unop _ _ w) ≪≫ cokernelEpiComp _ _ ≪≫ cokernelCompIsIso _ _ ≪≫
    cokernelUnopUnop _ ≪≫ (homologyIsoKernelDesc _ _ _ ≪≫
    kernelIsoOfEq (by ext; simp only [image.fac, cokernel.π_desc, cokernel.π_desc_assoc]) ≪≫
    kernelCompMono _ (image.ι g)).unop
#align homology_unop homologyUnop

end

namespace HomologicalComplex

variable {ι V : Type*} [Category V] {c : ComplexShape ι}

section

variable [Preadditive V]

/-- Sends a complex `X` with objects in `V` to the corresponding complex with objects in `Vᵒᵖ`. -/
@[simps]
protected def op (X : HomologicalComplex V c) : HomologicalComplex Vᵒᵖ c.symm where
  X i := op (X.X i)
  d i j := (X.d j i).op
  shape i j hij := by simp only; rw [X.shape j i hij, op_zero]
  d_comp_d' _ _ _ _ _ := by rw [← op_comp, X.d_comp_d, op_zero]
#align homological_complex.op HomologicalComplex.op

/-- Sends a complex `X` with objects in `V` to the corresponding complex with objects in `Vᵒᵖ`. -/
@[simps]
protected def opSymm (X : HomologicalComplex V c.symm) : HomologicalComplex Vᵒᵖ c where
  X i := op (X.X i)
  d i j := (X.d j i).op
  shape i j hij := by simp only; rw [X.shape j i hij, op_zero]
  d_comp_d' _ _ _ _ _ := by rw [← op_comp, X.d_comp_d, op_zero]
#align homological_complex.op_symm HomologicalComplex.opSymm

/-- Sends a complex `X` with objects in `Vᵒᵖ` to the corresponding complex with objects in `V`. -/
@[simps]
protected def unop (X : HomologicalComplex Vᵒᵖ c) : HomologicalComplex V c.symm where
  X i := unop (X.X i)
  d i j := (X.d j i).unop
  shape i j hij := by simp only; rw [X.shape j i hij, unop_zero]
  d_comp_d' _ _ _ _ _ := by rw [← unop_comp, X.d_comp_d, unop_zero]
#align homological_complex.unop HomologicalComplex.unop

/-- Sends a complex `X` with objects in `Vᵒᵖ` to the corresponding complex with objects in `V`. -/
@[simps]
protected def unopSymm (X : HomologicalComplex Vᵒᵖ c.symm) : HomologicalComplex V c where
  X i := unop (X.X i)
  d i j := (X.d j i).unop
  shape i j hij := by simp only; rw [X.shape j i hij, unop_zero]
  d_comp_d' _ _ _ _ _ := by rw [← unop_comp, X.d_comp_d, unop_zero]
#align homological_complex.unop_symm HomologicalComplex.unopSymm

variable (V c)

/-- Auxiliary definition for `opEquivalence`. -/
@[simps]
def opFunctor : (HomologicalComplex V c)ᵒᵖ ⥤ HomologicalComplex Vᵒᵖ c.symm where
  obj X := (unop X).op
  map f :=
    { f := fun i => (f.unop.f i).op
      comm' := fun i j _ => by simp only [op_d, ← op_comp, f.unop.comm] }
#align homological_complex.op_functor HomologicalComplex.opFunctor

/-- Auxiliary definition for `opEquivalence`. -/
@[simps]
def opInverse : HomologicalComplex Vᵒᵖ c.symm ⥤ (HomologicalComplex V c)ᵒᵖ where
  obj X := op X.unopSymm
  map f := Quiver.Hom.op
    { f := fun i => (f.f i).unop
      comm' := fun i j _ => by simp only [unopSymm_d, ← unop_comp, f.comm] }
#align homological_complex.op_inverse HomologicalComplex.opInverse

/-- Auxiliary definition for `opEquivalence`. -/
def opUnitIso : 𝟭 (HomologicalComplex V c)ᵒᵖ ≅ opFunctor V c ⋙ opInverse V c :=
  NatIso.ofComponents
    (fun X =>
      (HomologicalComplex.Hom.isoOfComponents (fun i => Iso.refl _) fun i j _ => by
            simp only [Iso.refl_hom, Category.id_comp, unopSymm_d, op_d, Quiver.Hom.unop_op,
              Category.comp_id] :
          (Opposite.unop X).op.unopSymm ≅ unop X).op)
    (by
      intro X Y f
      refine' Quiver.Hom.unop_inj _
      ext x
      simp only [Quiver.Hom.unop_op, Functor.id_map, Iso.op_hom, Functor.comp_map, unop_comp,
        comp_f, Hom.isoOfComponents_hom_f]
      erw [Category.id_comp, Category.comp_id (f.unop.f x)])
#align homological_complex.op_unit_iso HomologicalComplex.opUnitIso

/-- Auxiliary definition for `opEquivalence`. -/
def opCounitIso : opInverse V c ⋙ opFunctor V c ≅ 𝟭 (HomologicalComplex Vᵒᵖ c.symm) :=
  NatIso.ofComponents
    fun X => HomologicalComplex.Hom.isoOfComponents fun i => Iso.refl _
#align homological_complex.op_counit_iso HomologicalComplex.opCounitIso

/-- Given a category of complexes with objects in `V`, there is a natural equivalence between its
opposite category and a category of complexes with objects in `Vᵒᵖ`. -/
@[simps]
def opEquivalence : (HomologicalComplex V c)ᵒᵖ ≌ HomologicalComplex Vᵒᵖ c.symm where
  functor := opFunctor V c
  inverse := opInverse V c
  unitIso := opUnitIso V c
  counitIso := opCounitIso V c
  functor_unitIso_comp X := by
    ext
    simp only [opUnitIso, opCounitIso, NatIso.ofComponents_hom_app, Iso.op_hom, comp_f,
      opFunctor_map_f, Quiver.Hom.unop_op, Hom.isoOfComponents_hom_f]
    exact Category.comp_id _
#align homological_complex.op_equivalence HomologicalComplex.opEquivalence

/-- Auxiliary definition for `unopEquivalence`. -/
@[simps]
def unopFunctor : (HomologicalComplex Vᵒᵖ c)ᵒᵖ ⥤ HomologicalComplex V c.symm where
  obj X := (unop X).unop
  map f :=
    { f := fun i => (f.unop.f i).unop
      comm' := fun i j _ => by simp only [unop_d, ← unop_comp, f.unop.comm] }
#align homological_complex.unop_functor HomologicalComplex.unopFunctor

/-- Auxiliary definition for `unopEquivalence`. -/
@[simps]
def unopInverse : HomologicalComplex V c.symm ⥤ (HomologicalComplex Vᵒᵖ c)ᵒᵖ where
  obj X := op X.opSymm
  map f := Quiver.Hom.op
    { f := fun i => (f.f i).op
      comm' := fun i j _ => by simp only [opSymm_d, ← op_comp, f.comm] }
#align homological_complex.unop_inverse HomologicalComplex.unopInverse

/-- Auxiliary definition for `unopEquivalence`. -/
def unopUnitIso : 𝟭 (HomologicalComplex Vᵒᵖ c)ᵒᵖ ≅ unopFunctor V c ⋙ unopInverse V c :=
  NatIso.ofComponents
    (fun X =>
      (HomologicalComplex.Hom.isoOfComponents (fun i => Iso.refl _) fun i j _ => by
            simp only [Iso.refl_hom, Category.id_comp, unopSymm_d, op_d, Quiver.Hom.unop_op,
              Category.comp_id] :
          (Opposite.unop X).op.unopSymm ≅ unop X).op)
    (by
      intro X Y f
      refine' Quiver.Hom.unop_inj _
      ext x
      simp only [Quiver.Hom.unop_op, Functor.id_map, Iso.op_hom, Functor.comp_map, unop_comp,
        comp_f, Hom.isoOfComponents_hom_f]
      erw [Category.id_comp, Category.comp_id (f.unop.f x)])
#align homological_complex.unop_unit_iso HomologicalComplex.unopUnitIso

/-- Auxiliary definition for `unopEquivalence`. -/
def unopCounitIso : unopInverse V c ⋙ unopFunctor V c ≅ 𝟭 (HomologicalComplex V c.symm) :=
  NatIso.ofComponents
    fun X => HomologicalComplex.Hom.isoOfComponents fun i => Iso.refl _
#align homological_complex.unop_counit_iso HomologicalComplex.unopCounitIso

/-- Given a category of complexes with objects in `Vᵒᵖ`, there is a natural equivalence between its
opposite category and a category of complexes with objects in `V`. -/
@[simps]
def unopEquivalence : (HomologicalComplex Vᵒᵖ c)ᵒᵖ ≌ HomologicalComplex V c.symm where
  functor := unopFunctor V c
  inverse := unopInverse V c
  unitIso := unopUnitIso V c
  counitIso := unopCounitIso V c
  functor_unitIso_comp X := by
    ext
    simp only [opUnitIso, opCounitIso, NatIso.ofComponents_hom_app, Iso.op_hom, comp_f,
      opFunctor_map_f, Quiver.Hom.unop_op, Hom.isoOfComponents_hom_f]
    exact Category.comp_id _
#align homological_complex.unop_equivalence HomologicalComplex.unopEquivalence

variable {V c}

instance opFunctor_additive : (@opFunctor ι V _ c _).Additive where
#align homological_complex.op_functor_additive HomologicalComplex.opFunctor_additive

instance unopFunctor_additive : (@unopFunctor ι V _ c _).Additive where
#align homological_complex.unop_functor_additive HomologicalComplex.unopFunctor_additive

end

variable [Abelian V] (C : HomologicalComplex V c) (i : ι)

/-- Auxiliary tautological definition for `homologyOp`. -/
def homologyOpDef : C.op.homology i ≅
    _root_.homology (C.dFrom i).op (C.dTo i).op (by rw [← op_comp, C.dTo_comp_dFrom i, op_zero]) :=
  Iso.refl _
#align homological_complex.homology_op_def HomologicalComplex.homologyOpDef

/-- Given a complex `C` of objects in `V`, the `i`th homology of its 'opposite' complex (with
objects in `Vᵒᵖ`) is the opposite of the `i`th homology of `C`. -/
nonrec def homologyOp : C.op.homology i ≅ Opposite.op (C.homology i) :=
  homologyOpDef _ _ ≪≫ homologyOp _ _ _
#align homological_complex.homology_op HomologicalComplex.homologyOp

/-- Auxiliary tautological definition for `homologyUnop`. -/
def homologyUnopDef (C : HomologicalComplex Vᵒᵖ c) :
    C.unop.homology i ≅
      _root_.homology (C.dFrom i).unop (C.dTo i).unop
        (by rw [← unop_comp, C.dTo_comp_dFrom i, unop_zero]) :=
  Iso.refl _
#align homological_complex.homology_unop_def HomologicalComplex.homologyUnopDef

/-- Given a complex `C` of objects in `Vᵒᵖ`, the `i`th homology of its 'opposite' complex (with
objects in `V`) is the opposite of the `i`th homology of `C`. -/
nonrec def homologyUnop (C : HomologicalComplex Vᵒᵖ c) :
    C.unop.homology i ≅ Opposite.unop (C.homology i) :=
  homologyUnopDef _ _ ≪≫ homologyUnop _ _ _
#align homological_complex.homology_unop HomologicalComplex.homologyUnop

end HomologicalComplex
```
