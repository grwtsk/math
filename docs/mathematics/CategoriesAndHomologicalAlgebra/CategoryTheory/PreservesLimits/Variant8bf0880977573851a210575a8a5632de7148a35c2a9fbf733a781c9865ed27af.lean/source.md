# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesLimits.Variant8bf0880977573851a210575a8a5632de7148a35c2a9fbf733a781c9865ed27af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cfb73fe87c9756e4959c0fa64719be5dd3abc32c` · SHA-256 `edda507e15f71259ab23a7f629daf4508dbd920c0b13d3de604f8cce1a116523`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesLimit.Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PreservesLimit.Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/ObjectProperty/FunctorCategory/PreservesLimits.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.ObjectProperty.LimitsOfShape
public import Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Basic

/-!
# Preservation of limits, as a property of objects in the functor category

We make the typeclass `PreservesLimitsOfShape K` (resp. `PreservesFiniteLimits`)
a property of objects in the functor category `J ⥤ C`, and show that
it is stable under colimits of shape `K'` when they
commute to limits of shape `K` (resp. to finite limits).

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesLimit.Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889

public section

namespace CategoryTheory

open Limits

variable {J C : Type*} (K K' : Type*)
  [Category* K] [Category* K'] [Category* J] [Category* C]

namespace ObjectProperty

variable {K} in
/-- The property of objects in the functor category `J ⥤ C`
which preserves the limit of a functor `F : K ⥤ J`. -/
abbrev preservesLimit (F : K ⥤ J) : ObjectProperty (J ⥤ C) := PreservesLimit F

@[simp]
lemma preservesLimit_iff (F : K ⥤ J) (G : J ⥤ C) :
    preservesLimit F G ↔ PreservesLimit F G := Iff.rfl

lemma congr_preservesLimit {F F' : K ⥤ J} (e : F ≅ F') :
    preservesLimit (C := C) F = preservesLimit (C := C) F' := by
  ext G
  simp_rw [preservesLimit_iff]
  exact ⟨fun h ↦ preservesLimit_of_iso_diagram _ e,
    fun h ↦ preservesLimit_of_iso_diagram _ e.symm⟩

instance (F : K ⥤ J) : (preservesLimit (C := C) F).IsClosedUnderIsomorphisms where
  of_iso e _ := preservesLimit_of_natIso _ e

variable {K} in
/-- The property of objects in the functor category `J ⥤ C`
which preserves the colimit of a functor `F : K ⥤ J`. -/
abbrev preservesColimit (F : K ⥤ J) : ObjectProperty (J ⥤ C) := PreservesColimit F

@[simp]
lemma preservesColimit_iff (F : K ⥤ J) (G : J ⥤ C) :
    preservesColimit F G ↔ PreservesColimit F G := Iff.rfl

lemma congr_preservesColimit {F F' : K ⥤ J} (e : F ≅ F') :
    preservesColimit (C := C) F = preservesColimit (C := C) F' := by
  ext G
  simp_rw [preservesColimit_iff]
  exact ⟨fun h ↦ preservesColimit_of_iso_diagram _ e,
    fun h ↦ preservesColimit_of_iso_diagram _ e.symm⟩

instance (F : K ⥤ J) : (preservesColimit (C := C) F).IsClosedUnderIsomorphisms where
  of_iso e _ := preservesColimit_of_natIso _ e

/-- The property of objects in the functor category `J ⥤ C`
which preserves limits of shape `K`. -/
abbrev preservesLimitsOfShape : ObjectProperty (J ⥤ C) := PreservesLimitsOfShape K

@[simp]
lemma preservesLimitsOfShape_iff (F : J ⥤ C) :
    preservesLimitsOfShape K F ↔ PreservesLimitsOfShape K F := Iff.rfl

lemma preservesLimitsOfShape_eq_iSup :
    preservesLimitsOfShape (J := J) (C := C) K =
      ⨅ (F : K ⥤ J), preservesLimit F := by
  ext G
  simp only [preservesLimitsOfShape_iff, iInf_apply, preservesLimit_iff, iInf_Prop_eq]
  exact ⟨fun _ ↦ inferInstance, fun _ ↦ ⟨inferInstance⟩⟩

variable (J C) {K K'} in
lemma congr_preservesLimitsOfShape (e : K ≌ K') :
    preservesLimitsOfShape (J := J) (C := C) K = preservesLimitsOfShape K' := by
  ext G
  simp only [preservesLimitsOfShape_iff]
  exact ⟨fun _ ↦ preservesLimitsOfShape_of_equiv e _,
    fun _ ↦ preservesLimitsOfShape_of_equiv e.symm _⟩

instance : (preservesLimitsOfShape (J := J) (C := C) K).IsClosedUnderIsomorphisms := by
  rw [preservesLimitsOfShape_eq_iSup]
  infer_instance

/-- The property of objects in the functor category `J ⥤ C`
which preserves colimits of shape `K`. -/
abbrev preservesColimitsOfShape : ObjectProperty (J ⥤ C) := PreservesColimitsOfShape K

@[simp]
lemma preservesColimitsOfShape_iff (F : J ⥤ C) :
    preservesColimitsOfShape K F ↔ PreservesColimitsOfShape K F := Iff.rfl

lemma preservesColimitsOfShape_eq_iSup :
    preservesColimitsOfShape (J := J) (C := C) K =
      ⨅ (F : K ⥤ J), preservesColimit F := by
  ext G
  simp only [preservesColimitsOfShape_iff, iInf_apply, preservesColimit_iff, iInf_Prop_eq]
  exact ⟨fun _ ↦ inferInstance, fun _ ↦ ⟨inferInstance⟩⟩

variable (J C) {K K'} in
lemma congr_preservesColimitsOfShape (e : K ≌ K') :
    preservesColimitsOfShape (J := J) (C := C) K = preservesColimitsOfShape K' := by
  ext G
  simp only [preservesColimitsOfShape_iff]
  exact ⟨fun _ ↦ preservesColimitsOfShape_of_equiv e _,
    fun _ ↦ preservesColimitsOfShape_of_equiv e.symm _⟩

instance : (preservesColimitsOfShape (J := J) (C := C) K).IsClosedUnderIsomorphisms := by
  rw [preservesColimitsOfShape_eq_iSup]
  infer_instance

/-- The property of objects in the functor category `J ⥤ C`
which preserves finite limits. -/
abbrev preservesFiniteLimits : ObjectProperty (J ⥤ C) := PreservesFiniteLimits

@[simp]
lemma preservesFiniteLimits_iff (F : J ⥤ C) :
    preservesFiniteLimits F ↔ PreservesFiniteLimits F := Iff.rfl

instance : (preservesFiniteLimits (J := J) (C := C)).IsClosedUnderIsomorphisms where
  of_iso e _ := preservesFiniteLimits_of_natIso e

/-- The property of objects in the functor category `J ⥤ C`
which preserves finite colimits. -/
abbrev preservesFiniteColimits : ObjectProperty (J ⥤ C) := PreservesFiniteColimits

instance : (preservesFiniteColimits (J := J) (C := C)).IsClosedUnderIsomorphisms where
  of_iso e _ := preservesFiniteColimits_of_natIso e

@[simp]
lemma preservesFiniteColimits_iff (F : J ⥤ C) :
    preservesFiniteColimits F ↔ PreservesFiniteColimits F := Iff.rfl

set_option backward.defeqAttrib.useBackward true in
instance [HasColimitsOfShape K' C]
    [PreservesLimitsOfShape K (colim (J := K') (C := C))] :
    (preservesLimitsOfShape K : ObjectProperty (J ⥤ C)).IsClosedUnderColimitsOfShape K' where
  colimitsOfShape_le := by
    rintro G ⟨h⟩
    have := h.prop_diag_obj
    have : PreservesLimitsOfShape K h.diag.flip := ⟨fun {F} ↦ ⟨fun {c} hc ↦
      ⟨evaluationJointlyReflectsLimits _
        (fun k' ↦ isLimitOfPreserves (h.diag.obj k') hc)⟩⟩⟩
    let e : h.diag.flip ⋙ colim ≅ G :=
      NatIso.ofComponents
        (fun j ↦ (colimit.isColimit (h.diag.flip.obj j)).coconePointUniqueUpToIso
          (isColimitOfPreserves ((evaluation _ _).obj j) h.isColimit))
    exact preservesLimitsOfShape_of_natIso e

instance [HasColimitsOfShape K' C] [HasExactColimitsOfShape K' C] :
    ObjectProperty.IsClosedUnderColimitsOfShape
      (preservesFiniteLimits : ObjectProperty (J ⥤ C)) K' where
  colimitsOfShape_le := by
    rintro G ⟨h⟩
    have := h.prop_diag_obj
    exact ⟨fun K _ _ ↦ (preservesLimitsOfShape K).prop_of_isColimit h.isColimit inferInstance⟩

end ObjectProperty

end CategoryTheory
```
