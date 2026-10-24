# Complete source: GRWTSK.Algebra.LinearAlgebra.Localization.Variant62fc0194900675c3d412576548d96cc8cc5b496ae60fe3f048c1ad4722e269e0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `079e456223d199bf7a84af994938864ef754e5eb` · SHA-256 `dc79105cfcf8d31eaf6b03ba6e05df85311a1c7f61929790503092b1a600b7f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LocalizedModule.Variantde4ce537c8f2d03d0250d7aaf3ec6788c5ed346e6f5d0a4586769319b9220229","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"de4ce537c8f2d03d0250d7aaf3ec6788c5ed346e6f5d0a4586769319b9220229","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LocalizedModule.Variantde4ce537c8f2d03d0250d7aaf3ec6788c5ed346e6f5d0a4586769319b9220229","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"de4ce537c8f2d03d0250d7aaf3ec6788c5ed346e6f5d0a4586769319b9220229","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/ModuleCat/Localization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Nailin Guan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nailin Guan
-/
module

public import Mathlib.Algebra.Category.ModuleCat.Basic
public import Mathlib.Algebra.Homology.ShortComplex.ModuleCat
public import Mathlib.Algebra.Module.LocalizedModule.Exact
public import Mathlib.RingTheory.Localization.Module

/-!

# Localized Module in ModuleCat

For a ring `R` satisfying `[Small.{v} R]` and a submonoid `S` of `R`,
this file defines an exact functor `ModuleCat.{v} R ⥤ ModuleCat.{v} (Localization S)`,
see `ModuleCat.localizedModuleFunctor`.

-/


namespace GRWTSK.Algebra.LinearAlgebra.LocalizedModule.Variantde4ce537c8f2d03d0250d7aaf3ec6788c5ed346e6f5d0a4586769319b9220229

@[expose] public section

universe v u

variable (R : Type u) [CommRing R]

open CategoryTheory

local instance [Small.{v} R] (M : Type v) [AddCommGroup M] [Module R M] (S : Submonoid R) :
    Small.{v} (LocalizedModule S M) :=
  small_of_surjective (IsLocalizedModule.mk'_surjective S (LocalizedModule.mkLinearMap S M))

variable {R}

namespace ModuleCat

/-- Shrink of `LocalizedModule S M` in category which `M` belongs. -/
noncomputable def localizedModule [Small.{v} R] (M : ModuleCat.{v} R) (S : Submonoid R) :
    ModuleCat.{v} (Localization S) :=
  ModuleCat.of.{v} _ (Shrink.{v} (LocalizedModule S M))

/-- The `R` module structure on `M.localizedModule S` given by the
`R` module structure on `Shrink.{v} (LocalizedModule S M)` -/
noncomputable instance [Small.{v} R] (M : ModuleCat.{v} R) (S : Submonoid R) :
    Module R (M.localizedModule S) :=
  inferInstanceAs (Module R (Shrink.{v} (LocalizedModule S M)))

instance [Small.{v} R] (M : ModuleCat.{v} R) (S : Submonoid R) :
    IsScalarTower R (Localization S) (M.localizedModule S) :=
  (equivShrink (LocalizedModule S M)).symm.isScalarTower R (Localization S)

/-- The linear map `M →ₗ[R] (M.localizedModule S)` which
exhibits `M.localizedModule S` as a localized module of `M`. -/
noncomputable def localizedModuleMkLinearMap [Small.{v} R] (M : ModuleCat.{v} R)
    (S : Submonoid R) : M →ₗ[R] (M.localizedModule S) :=
  (Shrink.linearEquiv.{v} R _).symm.toLinearMap.comp (LocalizedModule.mkLinearMap S M)

set_option backward.isDefEq.respectTransparency false in
instance localizedModule_isLocalizedModule [Small.{v} R] (M : ModuleCat.{v} R)
    (S : Submonoid R) : IsLocalizedModule S (M.localizedModuleMkLinearMap S) := by
  dsimp only [localizedModuleMkLinearMap]
  infer_instance

/-- `IsLocalizedModule.mapExtendScalars` as a morphism in `ModuleCat`. -/
@[simps!]
noncomputable def localizedModuleMap [Small.{v} R] {M N : ModuleCat.{v} R}
    (S : Submonoid R) (f : M ⟶ N) : (M.localizedModule S) ⟶ (N.localizedModule S) :=
  ModuleCat.ofHom.{v} <| IsLocalizedModule.mapExtendScalars S (M.localizedModuleMkLinearMap S)
    (N.localizedModuleMkLinearMap S) (Localization S) f.hom

/-- The functor `ModuleCat.{v} R ⥤ ModuleCat.{v} (Localization S)` sending
`M` to `M.localizedModule S` and `f : M1 ⟶ M2` to
`IsLocalizedModule.mapExtendScalars S _ _ (Localization S) f.hom`. -/
@[simps]
noncomputable def localizedModuleFunctor [Small.{v} R] (S : Submonoid R) :
    ModuleCat.{v} R ⥤ ModuleCat.{v} (Localization S) where
  obj M := M.localizedModule S
  map := ModuleCat.localizedModuleMap S
  map_comp {X Y Z} f g := by
    ext
    simp [IsLocalizedModule.map_comp' S _ (Y.localizedModuleMkLinearMap S)]

instance [Small.{v} R] (S : Submonoid R) : (ModuleCat.localizedModuleFunctor S).Additive where

lemma localizedModuleFunctor_map_exact [Small.{v} R] (S : Submonoid R)
    (T : ShortComplex (ModuleCat.{v} R)) (h : T.Exact) :
    (T.map (ModuleCat.localizedModuleFunctor S)).Exact := by
  rw [CategoryTheory.ShortComplex.ShortExact.moduleCat_exact_iff_function_exact] at h ⊢
  exact IsLocalizedModule.map_exact S (T.X₁.localizedModuleMkLinearMap S)
    (T.X₂.localizedModuleMkLinearMap S) (T.X₃.localizedModuleMkLinearMap S) _ _ h

instance [Small.{v} R] (S : Submonoid R) :
    Limits.PreservesFiniteLimits (ModuleCat.localizedModuleFunctor.{v} S) := by
  have := ((Functor.exact_tfae _).out 2 4).mp (ModuleCat.localizedModuleFunctor_map_exact S)
  exact this.1

instance [Small.{v} R] (S : Submonoid R) :
    Limits.PreservesFiniteColimits (ModuleCat.localizedModuleFunctor.{v} S) := by
  have := ((Functor.exact_tfae _).out 2 4).mp (ModuleCat.localizedModuleFunctor_map_exact S)
  exact this.2

lemma isIso_of_isLocalizedModule_comp {S : Submonoid R} {M₁ M₂ M₃ : ModuleCat R} {f₁ : M₁ ⟶ M₂}
    {f₂ : M₂ ⟶ M₃} (h₁ : IsLocalizedModule S f₁.hom) (h₂ : IsLocalizedModule S (f₁ ≫ f₂).hom) :
    IsIso f₂ := by
  have : Function.Bijective f₂.hom := by
    rw [← IsLocalizedModule.linearEquiv_of_isLocalizedModule_comp S f₁.hom f₂.hom]
    exact (IsLocalizedModule.linearEquiv ..).bijective
  simpa [ConcreteCategory.isIso_iff_bijective]

end ModuleCat
```
