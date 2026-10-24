# Complete source: GRWTSK.Geometry.AlgebraicGeometry.Proper.Variant050d321b1ed8481fba1579a5265ec41075adb56480ed6e337eaaafb88e59817d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `baeafbdbce3482df261820be04145682b95db171` · SHA-256 `5e76ca2af2751f6a625898ed75493908f37b0dd5e7c49914ee30c1756f5bc521`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.AlgebraicGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.AlgebraicGeometry.IsProper.Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.AlgebraicGeometry.SourceCorpus.IsProper.Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b","mathematical_subject":"Geometry.AlgebraicGeometry","original_sha256":"4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/AlgebraicGeometry/Morphisms/Proper.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Christian Merten, Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten, Andrew Yang
-/
import Mathlib.AlgebraicGeometry.Morphisms.Separated
import Mathlib.AlgebraicGeometry.Morphisms.Finite

/-!

# Proper morphisms

A morphism of schemes is proper if it is separated, universally closed and (locally) of finite type.
Note that we don't require quasi-compact, since this is implied by universally closed.

## Main results
- `AlgebraicGeometry.isField_of_universallyClosed`:
  If `X` is an integral scheme that is universally closed over `Spec K`, then `Γ(X, ⊤)` is a field.
- `AlgebraicGeometry.finite_appTop_of_universallyClosed`:
  If `X` is an integral scheme that is universally closed and of finite type over `Spec K`,
  then `Γ(X, ⊤)` is finite dimensional over `K`.

-/



namespace GRWTSK.Geometry.AlgebraicGeometry.IsProper.Variant4588e7c6cfbf8da01d60ff51afc23391afca7d15b74506ab35c476e0952b5a4b

noncomputable section

open CategoryTheory

universe u

namespace AlgebraicGeometry

variable {X Y Z : Scheme.{u}} (f : X ⟶ Y) (g : Y ⟶ Z)

/-- A morphism is proper if it is separated, universally closed and locally of finite type. -/
@[mk_iff]
class IsProper : Prop extends IsSeparated f, UniversallyClosed f, LocallyOfFiniteType f where

lemma isProper_eq : @IsProper =
    (@IsSeparated ⊓ @UniversallyClosed : MorphismProperty Scheme) ⊓ @LocallyOfFiniteType := by
  ext X Y f
  rw [isProper_iff, ← and_assoc]
  rfl

namespace IsProper

instance : MorphismProperty.RespectsIso @IsProper := by
  rw [isProper_eq]
  infer_instance

instance stableUnderComposition : MorphismProperty.IsStableUnderComposition @IsProper := by
  rw [isProper_eq]
  infer_instance

instance : MorphismProperty.IsMultiplicative @IsProper := by
  rw [isProper_eq]
  infer_instance

instance [IsProper f] [IsProper g] : IsProper (f ≫ g) where

instance (priority := 900) [IsFinite f] : IsProper f where

instance isStableUnderBaseChange : MorphismProperty.IsStableUnderBaseChange @IsProper := by
  rw [isProper_eq]
  infer_instance

instance : IsLocalAtTarget @IsProper := by
  rw [isProper_eq]
  infer_instance

end IsProper

lemma IsFinite.eq_isProper_inf_isAffineHom :
    @IsFinite = (@IsProper ⊓ @IsAffineHom : MorphismProperty _) := by
  have : (@IsAffineHom ⊓ @IsSeparated : MorphismProperty _) = @IsAffineHom :=
    inf_eq_left.mpr fun _ _ _ _ ↦ inferInstance
  rw [inf_comm, isProper_eq, inf_assoc, ← inf_assoc, this, eq_inf,
    IsIntegralHom.eq_universallyClosed_inf_isAffineHom, inf_assoc, inf_left_comm]

variable {f} in
lemma IsFinite.iff_isProper_and_isAffineHom :
    IsFinite f ↔ IsProper f ∧ IsAffineHom f := by
  rw [eq_isProper_inf_isAffineHom]
  rfl

instance (priority := 100) [IsFinite f] : IsProper f :=
  (IsFinite.iff_isProper_and_isAffineHom.mp ‹_›).1

@[stacks 01W6 "(1)"]
lemma UniversallyClosed.of_comp_of_isSeparated [UniversallyClosed (f ≫ g)] [IsSeparated g] :
    UniversallyClosed f := by
  rw [← Limits.pullback.lift_snd (𝟙 _) f (Category.id_comp (f ≫ g))]
  have := MorphismProperty.pullback_snd (P := @UniversallyClosed) (f ≫ g) g inferInstance
  infer_instance

@[stacks 01W6 "(2)"]
lemma IsProper.of_comp_of_isSeparated [IsProper (f ≫ g)] [IsSeparated g] :
    IsProper f := by
  rw [← Limits.pullback.lift_snd (𝟙 _) f (Category.id_comp (f ≫ g))]
  have := MorphismProperty.pullback_snd (P := @IsProper) (f ≫ g) g inferInstance
  infer_instance

section GlobalSection

variable (K : Type u) [Field K]

/-- If `f : X ⟶ Y` is universally closed and `Y` is affine,
then the map on global sections is integral. -/
theorem isIntegral_appTop_of_universallyClosed (f : X ⟶ Y) [UniversallyClosed f] [IsAffine Y] :
    f.appTop.hom.IsIntegral := by
  have : CompactSpace X := (quasiCompact_over_affine_iff f).mp inferInstance
  have : UniversallyClosed (X.toSpecΓ ≫ Spec.map f.appTop) := by
    rwa [← Scheme.toSpecΓ_naturality,
      MorphismProperty.cancel_right_of_respectsIso (P := @UniversallyClosed)]
  have : UniversallyClosed X.toSpecΓ := .of_comp_of_isSeparated _ (Spec.map f.appTop)
  rw [← IsIntegralHom.SpecMap_iff, IsIntegralHom.iff_universallyClosed_and_isAffineHom]
  exact ⟨.of_comp_surjective X.toSpecΓ _, inferInstance⟩

/-- If `X` is an integral scheme that is universally closed over `Spec K`,
then `Γ(X, ⊤)` is a field. -/
theorem isField_of_universallyClosed (f : X ⟶ Spec (.of K)) [IsIntegral X] [UniversallyClosed f] :
    IsField Γ(X, ⊤) := by
  let F := (Scheme.ΓSpecIso _).inv ≫ f.appTop
  have : F.hom.IsIntegral := by
    apply RingHom.isIntegral_respectsIso.2 (e := (Scheme.ΓSpecIso _).symm.commRingCatIsoToRingEquiv)
    exact isIntegral_appTop_of_universallyClosed f
  algebraize [F.hom]
  exact isField_of_isIntegral_of_isField' (Field.toIsField K)

/-- If `X` is an integral scheme that is universally closed and of finite type over `Spec K`,
then `Γ(X, ⊤)` is a finite field extension over `K`. -/
theorem finite_appTop_of_universallyClosed (f : X ⟶ Spec (.of K))
    [IsIntegral X] [UniversallyClosed f] [LocallyOfFiniteType f] :
    f.appTop.hom.Finite := by
  have x : X := Nonempty.some inferInstance
  obtain ⟨_, ⟨U, hU, rfl⟩, hxU, -⟩ :=
    (isBasis_affine_open X).exists_subset_of_mem_open (Set.mem_univ x) isOpen_univ
  letI := ((Scheme.ΓSpecIso (.of K)).commRingCatIsoToRingEquiv.toMulEquiv.isField
    _ (Field.toIsField K)).toField
  letI := (isField_of_universallyClosed K f).toField
  have : Nonempty U := ⟨⟨x, hxU⟩⟩
  apply RingHom.finite_of_algHom_finiteType_of_isJacobsonRing (A := Γ(X, U))
    (g := (X.presheaf.map (homOfLE le_top).op).hom)
  exact LocallyOfFiniteType.finiteType_of_affine_subset ⟨⊤, isAffineOpen_top _⟩ ⟨U, hU⟩ (by simp)

end GlobalSection

end AlgebraicGeometry
```
