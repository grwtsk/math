# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.EnoughProjectives.Variant42a3bc07e42afc971163e4adc88b5fa687e0b1071328b3930e79c62a1ee4e5b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c6842cd9cdf5d90a3d19ce07e38f735dd1abbc9` · SHA-256 `dc069a93c8679f72c700c59c852b9b7ccbf9bfc65f81cdbd323980238efe5966`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.IsSplitEpiToSingleFunctorObjOfProjective.Variantf9f34878232355553bdef97bbd5f59bf0c8e7d57dca357bf7a105e794333f160","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f9f34878232355553bdef97bbd5f59bf0c8e7d57dca357bf7a105e794333f160","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.IsSplitEpiToSingleFunctorObjOfProjective.Variantf9f34878232355553bdef97bbd5f59bf0c8e7d57dca357bf7a105e794333f160","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"f9f34878232355553bdef97bbd5f59bf0c8e7d57dca357bf7a105e794333f160","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Homology/DerivedCategory/Ext/EnoughProjectives.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Homology.DerivedCategory.Ext.ExactSequences

/-!
# Smallness of Ext-groups from the existence of enough projectives

Let `C : Type u` be an abelian category (`Category.{v} C`) that has enough projectives.
If `C` is locally `w`-small, i.e. the type of morphisms in `C` are `Small.{w}`,
then we show that the condition `HasExt.{w}` holds, which means that for `X` and `Y` in `C`,
and `n : ℕ`, we may define `Ext X Y n : Type w`. In particular, this holds for `w = v`.

However, the main lemma `hasExt_of_enoughProjectives` is not made an instance:
for a given category `C`, there may be different reasonable choices for the universe `w`,
and if we have two `HasExt.{w₁}` and `HasExt.{w₂}` instances, we would have
to specify the universe explicitly almost everywhere, which would be an inconvenience.
So we must be very selective regarding `HasExt` instances.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.IsSplitEpiToSingleFunctorObjOfProjective.Variantf9f34878232355553bdef97bbd5f59bf0c8e7d57dca357bf7a105e794333f160

universe w v u

open CategoryTheory Category

variable {C : Type u} [Category.{v} C] [Abelian C]

namespace CochainComplex

open HomologicalComplex

lemma isSplitEpi_to_singleFunctor_obj_of_projective
    {P : C} [Projective P] {K : CochainComplex C ℤ} {i : ℤ}
    (π : K ⟶ (CochainComplex.singleFunctor C i).obj P) [K.IsStrictlyLE i] [QuasiIsoAt π i] :
    IsSplitEpi π := by
  let e := K.iCyclesIso i (i + 1) (by simp)
    ((K.isZero_of_isStrictlyLE i (i + 1) (by simp)).eq_of_tgt _ _)
  let α := e.inv ≫ K.homologyπ i ≫ homologyMap π i ≫ (singleObjHomologySelfIso _ _ _).hom
  have : π.f i = α ≫ (singleObjXSelf (ComplexShape.up ℤ) i P).inv := by
    rw [← cancel_epi e.hom]
    dsimp [α, e]
    rw [assoc, assoc, assoc, iCyclesIso_hom_inv_id_assoc,
      homologyπ_naturality_assoc]
    dsimp [singleFunctor, singleFunctors]
    rw [homologyπ_singleObjHomologySelfIso_hom_assoc,
      ← singleObjCyclesSelfIso_inv_iCycles, Iso.hom_inv_id_assoc, ← cyclesMap_i]
  exact ⟨⟨{
    section_ := mkHomFromSingle (Projective.factorThru (𝟙 P) α) (by
      rintro _ rfl
      apply (K.isZero_of_isStrictlyLE i (i + 1) (by simp)).eq_of_tgt)
    id := by
      apply HomologicalComplex.from_single_hom_ext
      rw [comp_f, mkHomFromSingle_f, assoc, id_f, this, Projective.factorThru_comp_assoc,
        id_comp, Iso.hom_inv_id]
      rfl }⟩⟩

end CochainComplex

namespace DerivedCategory

variable [HasDerivedCategory.{w} C]

lemma from_singleFunctor_obj_eq_zero_of_projective {P : C} [Projective P]
    {L : CochainComplex C ℤ} {i : ℤ}
    (φ : Q.obj ((CochainComplex.singleFunctor C i).obj P) ⟶ Q.obj L)
    (n : ℤ) (hn : n < i) [L.IsStrictlyLE n] :
    φ = 0 := by
  obtain ⟨K, _, π, h, g, rfl⟩:= right_fac_of_isStrictlyLE φ i
  have hπ : IsSplitEpi π := by
    rw [isIso_Q_map_iff_quasiIso] at h
    exact CochainComplex.isSplitEpi_to_singleFunctor_obj_of_projective π
  have h₁ : inv (Q.map π) = Q.map (section_ π) := by
    rw [← cancel_mono (Q.map π), IsIso.inv_hom_id, ← Q.map_comp, IsSplitEpi.id, Q.map_id]
  have h₂ : section_ π ≫ g = 0 := by
    apply HomologicalComplex.from_single_hom_ext
    apply (L.isZero_of_isStrictlyLE n i hn).eq_of_tgt
  rw [h₁, ← Q.map_comp, h₂, Q.map_zero]

end DerivedCategory

namespace CategoryTheory

open Limits

variable {C : Type u} [Category.{v} C] [Abelian C]

namespace Abelian.Ext

open DerivedCategory

lemma eq_zero_of_projective [HasExt.{w} C] {P Y : C} {n : ℕ} [Projective P]
    (e : Ext P Y (n + 1)) : e = 0 := by
  letI := HasDerivedCategory.standard C
  apply homEquiv.injective
  simp only [← cancel_mono (((singleFunctors C).shiftIso (n + 1) (- (n + 1)) 0
    (by omega)).hom.app _), zero_hom, Limits.zero_comp]
  apply from_singleFunctor_obj_eq_zero_of_projective
    (L := (CochainComplex.singleFunctor C (-(n + 1))).obj Y) (n := - (n + 1)) _ (by omega)

end Abelian.Ext

variable (C)

open Abelian

/-- If `C` is a locally `w`-small abelian category with enough projectives,
then `HasExt.{w} C` holds. We do not make this an instance though:
for a given category `C`, there may be different reasonable choices for
the universe `w`, and if we have two `HasExt.{w₁} C` and `HasExt.{w₂} C`
instances, we would have to specify the universe explicitly almost
everywhere, which would be an inconvenience. Then, we must be
very selective regarding `HasExt` instances. -/
lemma hasExt_of_enoughProjectives [LocallySmall.{w} C] [EnoughProjectives C] :
  HasExt.{w} C := by
    letI := HasDerivedCategory.standard C
    have := hasExt_of_hasDerivedCategory C
    rw [hasExt_iff_small_ext.{w}]
    intro X Y n
    induction n generalizing X Y with
    | zero =>
      rw [small_congr Ext.homEquiv₀]
      infer_instance
    | succ n hn =>
      let S := ShortComplex.mk _ _ (kernel.condition (Projective.π X))
      have hS : S.ShortExact :=
        { exact := ShortComplex.exact_of_f_is_kernel _ (kernelIsKernel S.g) }
      have : Function.Surjective (Ext.precomp hS.extClass Y (add_comm 1 n)) := fun x₃ ↦
        Ext.contravariant_sequence_exact₃ hS Y x₃
          (Ext.eq_zero_of_projective _) (by omega)
      exact small_of_surjective.{w} this

end CategoryTheory
```
