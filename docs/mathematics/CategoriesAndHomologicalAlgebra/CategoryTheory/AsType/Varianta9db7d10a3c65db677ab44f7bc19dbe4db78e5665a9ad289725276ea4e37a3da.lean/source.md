# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AsType.Varianta9db7d10a3c65db677ab44f7bc19dbe4db78e5665a9ad289725276ea4e37a3da

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ad3e5a6dcf10fc390c2742c468d72bd6f69612f` · SHA-256 `1d6eedcecfe4ce25d016fe158df3210598fe00f291da3fb8e9ca72c9bddf1e1c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ObjAsType.Variant16c7eb33e78439933b1f33eb992e487a2323140d223c46379e236c1400b232d2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"16c7eb33e78439933b1f33eb992e487a2323140d223c46379e236c1400b232d2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ObjAsType.Variant16c7eb33e78439933b1f33eb992e487a2323140d223c46379e236c1400b232d2","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"16c7eb33e78439933b1f33eb992e487a2323140d223c46379e236c1400b232d2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/FinCategory/AsType.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.FinCategory.Basic
import Mathlib.Data.Fintype.EquivFin

/-!
# Finite categories are equivalent to category in `Type 0`.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ObjAsType.Variant16c7eb33e78439933b1f33eb992e487a2323140d223c46379e236c1400b232d2

universe w v u

noncomputable section

namespace CategoryTheory

namespace FinCategory

variable (α : Type*) [Fintype α] [SmallCategory α] [FinCategory α]

/-- A FinCategory `α` is equivalent to a category with objects in `Type`. -/
--@[nolint unused_arguments]
abbrev ObjAsType : Type :=
  InducedCategory α (Fintype.equivFin α).symm

instance {i j : ObjAsType α} : Fintype (i ⟶ j) :=
  FinCategory.fintypeHom ((Fintype.equivFin α).symm i) _

/-- The constructed category is indeed equivalent to `α`. -/
noncomputable def objAsTypeEquiv : ObjAsType α ≌ α :=
  (inducedFunctor (Fintype.equivFin α).symm).asEquivalence

/-- A FinCategory `α` is equivalent to a fin_category with in `Type`. -/
--@[nolint unused_arguments]
abbrev AsType : Type :=
  Fin (Fintype.card α)

@[simps -isSimp id comp]
noncomputable instance categoryAsType : SmallCategory (AsType α) where
  Hom i j := Fin (Fintype.card (@Quiver.Hom (ObjAsType α) _ i j))
  id _ := Fintype.equivFin _ (𝟙 _)
  comp f g := Fintype.equivFin _ ((Fintype.equivFin _).symm f ≫ (Fintype.equivFin _).symm g)

attribute [local simp] categoryAsType_id categoryAsType_comp

/-- The "identity" functor from `AsType α` to `ObjAsType α`. -/
@[simps]
noncomputable def asTypeToObjAsType : AsType α ⥤ ObjAsType α where
  obj := id
  map {_ _} := (Fintype.equivFin _).symm

/-- The "identity" functor from `ObjAsType α` to `AsType α`. -/
@[simps]
noncomputable def objAsTypeToAsType : ObjAsType α ⥤ AsType α where
  obj := id
  map {_ _} := Fintype.equivFin _

/-- The constructed category (`AsType α`) is equivalent to `ObjAsType α`. -/
noncomputable def asTypeEquivObjAsType : AsType α ≌ ObjAsType α where
  functor := asTypeToObjAsType α
  inverse := objAsTypeToAsType α
  unitIso := NatIso.ofComponents Iso.refl
  counitIso := NatIso.ofComponents Iso.refl

noncomputable instance asTypeFinCategory : FinCategory (AsType α) where
  fintypeHom := fun _ _ => show Fintype (Fin _) from inferInstance

/-- The constructed category (`ObjAsType α`) is indeed equivalent to `α`. -/
noncomputable def equivAsType : AsType α ≌ α :=
  (asTypeEquivObjAsType α).trans (objAsTypeEquiv α)

end FinCategory

end CategoryTheory
```
