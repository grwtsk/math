# Complete source: GRWTSK.Topology.EffectiveEpi.Varianta32bc1773cf74aaec8ff52d289a4d56ba9eb37a6f16e0a7050fc5d68cf5eb4b2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fdcb2c0097bbfb22849aa542e048a14b4f8be3d5` · SHA-256 `7d0bf898c2f799aa8d41abc868fb01622aad0a1270f41fc995f9352af71bea33`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.EffectiveEpiTfae.Variant993e514c246d46ddb370b169f495ac9f3d1dd02acd69e5e3263fb4dd87b45976","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"993e514c246d46ddb370b169f495ac9f3d1dd02acd69e5e3263fb4dd87b45976","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.EffectiveEpiTfae.Variant993e514c246d46ddb370b169f495ac9f3d1dd02acd69e5e3263fb4dd87b45976","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"993e514c246d46ddb370b169f495ac9f3d1dd02acd69e5e3263fb4dd87b45976","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Category/Stonean/EffectiveEpi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jon Eugster. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson, Boris Bolvig Kjær, Jon Eugster, Sina Hazratpour, Nima Rasekh
-/
module

public import Mathlib.CategoryTheory.Sites.Coherent.ReflectsPreregular
public import Mathlib.Topology.Category.CompHaus.EffectiveEpi
public import Mathlib.Topology.Category.Stonean.Limits
/-!

# Effective epimorphisms in `Stonean`

This file proves that `EffectiveEpi`, `Epi` and `Surjective` are all equivalent in `Stonean`.
As a consequence we deduce from the material in
`Mathlib/Topology/Category/CompHausLike/EffectiveEpi.lean` that `Stonean` is `Preregular`
and `Precoherent`.

We also prove that for a finite family of morphisms in `Stonean` with fixed
target, the conditions jointly surjective, jointly epimorphic and effective epimorphic are all
equivalent.
-/


namespace GRWTSK.Topology.EffectiveEpiTfae.Variant993e514c246d46ddb370b169f495ac9f3d1dd02acd69e5e3263fb4dd87b45976

@[expose] public section

universe u

open CategoryTheory Limits CompHausLike

namespace Stonean

open List in
theorem effectiveEpi_tfae
    {B X : Stonean.{u}} (π : X ⟶ B) :
    TFAE
    [ EffectiveEpi π
    , Epi π
    , Function.Surjective π
    ] := by
  tfae_have 1 → 2 := fun _ ↦ inferInstance
  tfae_have 2 ↔ 3 := epi_iff_surjective π
  tfae_have 3 → 1 := fun hπ ↦ ⟨⟨effectiveEpiStruct π hπ⟩⟩
  tfae_finish

instance : Stonean.toCompHaus.PreservesEffectiveEpis where
  preserves f h :=
    ((CompHaus.effectiveEpi_tfae (Stonean.toCompHaus.map f)).out 1 3).mpr
      (((Stonean.effectiveEpi_tfae f).out 1 3).mp h)

instance : Stonean.toCompHaus.ReflectsEffectiveEpis where
  reflects f h :=
    ((Stonean.effectiveEpi_tfae f).out 1 3).mpr
      (((CompHaus.effectiveEpi_tfae (Stonean.toCompHaus.map f)).out 1 3).mp h)

/--
An effective presentation of an `X : CompHaus` with respect to the inclusion functor from `Stonean`
-/
noncomputable def stoneanToCompHausEffectivePresentation (X : CompHaus) :
    Stonean.toCompHaus.EffectivePresentation X where
  p := X.presentation
  f := CompHaus.presentation.π X
  effectiveEpi := ((CompHaus.effectiveEpi_tfae _).out 1 2).mpr (inferInstance : Epi _)

instance : Stonean.toCompHaus.EffectivelyEnough where
  presentation X := ⟨stoneanToCompHausEffectivePresentation X⟩

instance : Preregular Stonean := Stonean.toCompHaus.reflects_preregular

example : Precoherent Stonean.{u} := inferInstance

-- TODO: prove this for `Type*`
open List in
theorem effectiveEpiFamily_tfae
    {α : Type} [Finite α] {B : Stonean.{u}}
    (X : α → Stonean.{u}) (π : (a : α) → (X a ⟶ B)) :
    TFAE
    [ EffectiveEpiFamily X π
    , Epi (Sigma.desc π)
    , ∀ b : B, ∃ (a : α) (x : X a), π a x = b
    ] := by
  tfae_have 2 → 1
  | _ => by
    simpa [← effectiveEpi_desc_iff_effectiveEpiFamily, (effectiveEpi_tfae (Sigma.desc π)).out 1 2]
  tfae_have 1 → 2 := fun _ ↦ inferInstance
  tfae_have 3 ↔ 1 := by
    erw [((CompHaus.effectiveEpiFamily_tfae
      (fun a ↦ Stonean.toCompHaus.obj (X a)) (fun a ↦ Stonean.toCompHaus.map (π a))).out 3 1 :)]
    exact ⟨fun h ↦ Stonean.toCompHaus.finite_effectiveEpiFamily_of_map _ _ h,
      fun _ ↦ inferInstance⟩
  tfae_finish

theorem effectiveEpiFamily_of_jointly_surjective
    {α : Type} [Finite α] {B : Stonean.{u}}
    (X : α → Stonean.{u}) (π : (a : α) → (X a ⟶ B))
    (surj : ∀ b : B, ∃ (a : α) (x : X a), π a x = b) :
    EffectiveEpiFamily X π :=
  ((effectiveEpiFamily_tfae X π).out 3 1).mp surj

end Stonean
```
