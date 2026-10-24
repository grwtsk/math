-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ModuleFinitePresentationExistsBasisLocalizedModulePowers.Variant08f036a15c66adb0bdb03c82700758ad56d9658e3cd6c28da8278a0d7afd114b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"08f036a15c66adb0bdb03c82700758ad56d9658e3cd6c28da8278a0d7afd114b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ModuleFinitePresentationExistsBasisLocalizedModulePowers.Variant08f036a15c66adb0bdb03c82700758ad56d9658e3cd6c28da8278a0d7afd114b","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"08f036a15c66adb0bdb03c82700758ad56d9658e3cd6c28da8278a0d7afd114b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Localization/Free.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.Algebra.Module.FinitePresentation
import Mathlib.RingTheory.Localization.Finiteness
import Mathlib.LinearAlgebra.FreeModule.StrongRankCondition
import Mathlib.LinearAlgebra.Dimension.StrongRankCondition

/-!
# Free modules and localization

## Main result
- `Module.FinitePresentation.exists_free_localizedModule_powers`:
  If `M` is a finitely presented `R`-module
  such that `Mₛ` is free over `Rₛ` for some `S : Submonoid R`,
  then `Mᵣ` is already free over `Rᵣ` for some `r ∈ S`.

## Future projects
- Show that a finitely presented flat module has locally constant dimension.
- Show that the flat locus of a finitely presented module is open.

-/


namespace GRWTSK.Algebra.LinearAlgebra.ModuleFinitePresentationExistsBasisLocalizedModulePowers.Variant08f036a15c66adb0bdb03c82700758ad56d9658e3cd6c28da8278a0d7afd114b

variable {R M N N'} [CommRing R] [AddCommGroup M] [Module R M] [AddCommGroup N] [Module R N]
variable (S : Submonoid R) [AddCommGroup N'] [Module R N']

variable {M' : Type*} [AddCommGroup M'] [Module R M'] (f : M →ₗ[R] M') [IsLocalizedModule S f]
variable {N' : Type*} [AddCommGroup N'] [Module R N'] (g : N →ₗ[R] N') [IsLocalizedModule S g]

include f in
/--
If `M` is a finitely presented `R`-module,
then any `Rₛ`-basis of `Mₛ` for some `S : Submonoid R` can be lifted to
a `Rᵣ`-basis of `Mᵣ` for some `r ∈ S`.
-/
lemma Module.FinitePresentation.exists_basis_localizedModule_powers
    (Rₛ) [CommRing Rₛ] [Algebra R Rₛ] [Module Rₛ M'] [IsScalarTower R Rₛ M']
    [IsLocalization S Rₛ] [Module.FinitePresentation R M]
    {I} [Finite I] (b : Basis I Rₛ M') :
    ∃ (r : R) (hr : r ∈ S)
      (b' : Basis I (Localization (.powers r)) (LocalizedModule (.powers r) M)),
      ∀ i, (LocalizedModule.lift (.powers r) f fun s ↦ IsLocalizedModule.map_units f
        ⟨s.1, SetLike.le_def.mp (Submonoid.powers_le.mpr hr) s.2⟩) (b' i) = b i := by
  have : Module.FinitePresentation R (I →₀ R) := Module.finitePresentation_of_projective _ _
  obtain ⟨r, hr, e, he⟩ := Module.FinitePresentation.exists_lift_equiv_of_isLocalizedModule S f
    (Finsupp.mapRange.linearMap (Algebra.linearMap R Rₛ)) (b.repr.restrictScalars R)
  let e' := IsLocalizedModule.iso (.powers r) (Finsupp.mapRange.linearMap (α := I)
    (Algebra.linearMap R (Localization (.powers r))))
  refine ⟨r, hr, .ofRepr (e ≪≫ₗ ?_), ?_⟩
  · exact
    { __ := e',
      toLinearMap := e'.extendScalarsOfIsLocalization (.powers r) (Localization (.powers r)) }
  · intro i
    have : e'.symm _ = _ := LinearMap.congr_fun (IsLocalizedModule.iso_symm_comp (.powers r)
      (Finsupp.mapRange.linearMap (Algebra.linearMap R (Localization (.powers r)))))
      (Finsupp.single i 1)
    simp only [Finsupp.mapRange.linearMap_apply, Finsupp.mapRange_single, Algebra.linearMap_apply,
      map_one, LocalizedModule.mkLinearMap_apply] at this
    show LocalizedModule.lift _ _ _ (e.symm (e'.symm _)) = _
    replace he := LinearMap.congr_fun he (e.symm (e'.symm (Finsupp.single i 1)))
    simp only [LinearMap.coe_comp, LinearMap.coe_restrictScalars, LinearEquiv.coe_coe,
      Function.comp_apply, LinearEquiv.apply_symm_apply, LinearEquiv.restrictScalars_apply] at he
    apply b.repr.injective
    rw [← he, Basis.repr_self, this, LocalizedModule.lift_mk]
    simp

include f in
/--
If `M` is a finitely presented `R`-module
such that `Mₛ` is free over `Rₛ` for some `S : Submonoid R`,
then `Mᵣ` is already free over `Rᵣ` for some `r ∈ S`.
-/
lemma Module.FinitePresentation.exists_free_localizedModule_powers
    (Rₛ) [CommRing Rₛ] [Algebra R Rₛ] [Module Rₛ M'] [IsScalarTower R Rₛ M'] [Nontrivial Rₛ]
    [IsLocalization S Rₛ] [Module.FinitePresentation R M] [Module.Free Rₛ M'] :
    ∃ r, r ∈ S ∧
      Module.Free (Localization (.powers r)) (LocalizedModule (.powers r) M) ∧
      Module.finrank (Localization (.powers r)) (LocalizedModule (.powers r) M) =
        Module.finrank Rₛ M' := by
  let I := Module.Free.ChooseBasisIndex Rₛ M'
  let b : Basis I Rₛ M' := Module.Free.chooseBasis Rₛ M'
  have : Module.Finite Rₛ M' := Module.Finite.of_isLocalizedModule S (Rₚ := Rₛ) f
  obtain ⟨r, hr, b', _⟩ := Module.FinitePresentation.exists_basis_localizedModule_powers S f Rₛ b
  have := (show Localization (.powers r) →+* Rₛ from IsLocalization.map (M := .powers r) (T := S) _
    (RingHom.id _) (Submonoid.powers_le.mpr hr)).domain_nontrivial
  refine ⟨r, hr, .of_basis b', ?_⟩
  rw [Module.finrank_eq_nat_card_basis b, Module.finrank_eq_nat_card_basis b']
