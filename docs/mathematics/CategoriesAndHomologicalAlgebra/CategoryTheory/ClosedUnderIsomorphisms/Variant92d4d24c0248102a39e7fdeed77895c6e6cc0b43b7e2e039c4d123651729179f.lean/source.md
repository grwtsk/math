# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ClosedUnderIsomorphisms.Variant92d4d24c0248102a39e7fdeed77895c6e6cc0b43b7e2e039c4d123651729179f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7e85cd732ddc6a7f4d5d9f518ae310fd33cfe29` · SHA-256 `f57f0a632e224bbb5f27cadf265877249551fdd2ff3eff6d8f01286f5329c554`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsClosedUnderIsomorphisms.Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsClosedUnderIsomorphisms.Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/ObjectProperty/ClosedUnderIsomorphisms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Iso
import Mathlib.CategoryTheory.ObjectProperty.Basic
import Mathlib.Order.Basic

/-! # Properties of objects which are closed under isomorphisms

Given a category `C` and `P : ObjectProperty C` (i.e. `P : C → Prop`),
this file introduces the type class `P.IsClosedUnderIsomorphisms`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsClosedUnderIsomorphisms.Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6

universe v v' u u'

namespace CategoryTheory

variable {C : Type u} [Category.{v} C] {D : Type u'} [Category.{v'} D]
  (P Q : ObjectProperty C)

namespace ObjectProperty

/-- A predicate `C → Prop` on the objects of a category is closed under isomorphisms
if whenever `P X`, then all the objects `Y` that are isomorphic to `X` also satisfy `P Y`. -/
class IsClosedUnderIsomorphisms : Prop where
  of_iso {X Y : C} (_ : X ≅ Y) (_ : P X) : P Y

@[deprecated (since := "2025-02-25")] alias ClosedUnderIsomorphisms := IsClosedUnderIsomorphisms

lemma prop_of_iso [IsClosedUnderIsomorphisms P] {X Y : C} (e : X ≅ Y) (hX : P X) : P Y :=
  IsClosedUnderIsomorphisms.of_iso e hX

lemma prop_iff_of_iso [IsClosedUnderIsomorphisms P] {X Y : C} (e : X ≅ Y) : P X ↔ P Y :=
  ⟨prop_of_iso P e, prop_of_iso P e.symm⟩

lemma prop_of_isIso [IsClosedUnderIsomorphisms P] {X Y : C} (f : X ⟶ Y) [IsIso f] (hX : P X) :
    P Y :=
  prop_of_iso P (asIso f) hX

lemma prop_iff_of_isIso [IsClosedUnderIsomorphisms P] {X Y : C} (f : X ⟶ Y) [IsIso f] : P X ↔ P Y :=
  prop_iff_of_iso P (asIso f)

/-- The closure by isomorphisms of a predicate on objects in a category. -/
def isoClosure : ObjectProperty C := fun X => ∃ (Y : C) (_ : P Y), Nonempty (X ≅ Y)

lemma prop_isoClosure_iff (X : C) :
    isoClosure P X ↔ ∃ (Y : C) (_ : P Y), Nonempty (X ≅ Y) := by rfl

variable {P} in
lemma prop_isoClosure {X Y : C} (h : P X) (e : X ⟶ Y) [IsIso e] : isoClosure P Y :=
  ⟨X, h, ⟨(asIso e).symm⟩⟩

lemma le_isoClosure : P ≤ isoClosure P :=
  fun X hX => ⟨X, hX, ⟨Iso.refl X⟩⟩

variable {P Q} in
lemma monotone_isoClosure (h : P ≤ Q) : isoClosure P ≤ isoClosure Q := by
  rintro X ⟨X', hX', ⟨e⟩⟩
  exact ⟨X', h _ hX', ⟨e⟩⟩

lemma isoClosure_eq_self [IsClosedUnderIsomorphisms P] : isoClosure P = P := by
  apply le_antisymm
  · intro X ⟨Y, hY, ⟨e⟩⟩
    exact prop_of_iso P e.symm hY
  · exact le_isoClosure P

lemma isoClosure_le_iff [IsClosedUnderIsomorphisms Q] : isoClosure P ≤ Q ↔ P ≤ Q :=
  ⟨(le_isoClosure P).trans,
    fun h => (monotone_isoClosure h).trans (by rw [isoClosure_eq_self])⟩

instance : IsClosedUnderIsomorphisms (isoClosure P) where
  of_iso := by
    rintro X Y e ⟨Z, hZ, ⟨f⟩⟩
    exact ⟨Z, hZ, ⟨e.symm.trans f⟩⟩

instance (F : C ⥤ D) : IsClosedUnderIsomorphisms (P.map F) where
  of_iso := by
    rintro _ _ e ⟨X, hX, ⟨e'⟩⟩
    exact ⟨X, hX, ⟨e' ≪≫ e⟩⟩

instance (F : D ⥤ C) [P.IsClosedUnderIsomorphisms] :
    IsClosedUnderIsomorphisms (P.inverseImage F) where
  of_iso e hX := P.prop_of_iso (F.mapIso e) hX

end ObjectProperty

open ObjectProperty

@[deprecated (since := "2025-02-25")] alias mem_of_iso := prop_of_iso
@[deprecated (since := "2025-02-25")] alias mem_iff_of_iso := prop_iff_of_iso
@[deprecated (since := "2025-02-25")] alias mem_of_isIso := prop_of_isIso
@[deprecated (since := "2025-02-25")] alias mem_iff_of_isIso := prop_iff_of_isIso
@[deprecated (since := "2025-02-25")] alias isoClosure := isoClosure
@[deprecated (since := "2025-02-25")] alias mem_isoClosure_iff := prop_isoClosure_iff
@[deprecated (since := "2025-02-25")] alias mem_isoClosure := prop_isoClosure

end CategoryTheory
```
