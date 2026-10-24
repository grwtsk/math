# Complete source: GRWTSK.Topology.GeneralTopology.EffectiveEpi.Variant98da5123dcea1bca456b333073c8c979c7c6d7ff68a1270f15822b8ad02491c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ccfdf7bcb9956468688cef3385d809d705a6c245` · SHA-256 `ebf13632b43a15e1c41ba26772b89fdd1fda2fdb4d2f86ff4a508fd33645ecfb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.EffectiveEpiTfae.Varianta376b9e5f514c24370466f78767f38c92fb7065bd6276dd5d06c2a44645eed5b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a376b9e5f514c24370466f78767f38c92fb7065bd6276dd5d06c2a44645eed5b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.EffectiveEpiTfae.Varianta376b9e5f514c24370466f78767f38c92fb7065bd6276dd5d06c2a44645eed5b","mathematical_subject":"Topology.GeneralTopology","original_sha256":"a376b9e5f514c24370466f78767f38c92fb7065bd6276dd5d06c2a44645eed5b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Category/CompHaus/EffectiveEpi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz, Dagur Asgeirsson
-/
import Mathlib.Topology.Category.CompHaus.Limits
import Mathlib.Topology.Category.CompHausLike.EffectiveEpi
/-!

# Effective epimorphisms in `CompHaus`

This file proves that `EffectiveEpi`, `Epi` and `Surjective` are all equivalent in `CompHaus`.
As a consequence we deduce from the material in
`Mathlib/Topology/Category/CompHausLike/EffectiveEpi.lean` that `CompHaus` is `Preregular`
and `Precoherent`.

We also prove that for a finite family of morphisms in `CompHaus` with fixed
target, the conditions jointly surjective, jointly epimorphic and effective epimorphic are all
equivalent.

## Projects

- Define regular categories, and show that `CompHaus` is regular.
- Define coherent categories, and show that `CompHaus` is actually coherent.

-/


namespace GRWTSK.Topology.GeneralTopology.EffectiveEpiTfae.Varianta376b9e5f514c24370466f78767f38c92fb7065bd6276dd5d06c2a44645eed5b

universe u

open CategoryTheory Limits CompHausLike

namespace CompHaus

open List in
theorem effectiveEpi_tfae
    {B X : CompHaus.{u}} (π : X ⟶ B) :
    TFAE
    [ EffectiveEpi π
    , Epi π
    , Function.Surjective π
    ] := by
  tfae_have 1 → 2 := fun _ ↦ inferInstance
  tfae_have 2 ↔ 3 := epi_iff_surjective π
  tfae_have 3 → 1 := fun hπ ↦ ⟨⟨effectiveEpiStruct π hπ⟩⟩
  tfae_finish

instance : Preregular CompHaus :=
  preregular fun _ _ _ ↦ ((effectiveEpi_tfae _).out 0 2).mp

example : Precoherent CompHaus.{u} := inferInstance

-- TODO: prove this for `Type*`
open List in
theorem effectiveEpiFamily_tfae
    {α : Type} [Finite α] {B : CompHaus.{u}}
    (X : α → CompHaus.{u}) (π : (a : α) → (X a ⟶ B)) :
    TFAE
    [ EffectiveEpiFamily X π
    , Epi (Sigma.desc π)
    , ∀ b : B, ∃ (a : α) (x : X a), π a x = b
    ] := by
  tfae_have 2 → 1
  | _ => by
    simpa [← effectiveEpi_desc_iff_effectiveEpiFamily, (effectiveEpi_tfae (Sigma.desc π)).out 0 1]
  tfae_have 1 → 2
  | _ => inferInstance
  tfae_have 3 → 2
  | e => by
    rw [epi_iff_surjective]
    intro b
    obtain ⟨t, x, h⟩ := e b
    refine ⟨Sigma.ι X t x, ?_⟩
    change (Sigma.ι X t ≫ Sigma.desc π) x = _
    simpa using h
  tfae_have 2 → 3
  | e => by
    rw [epi_iff_surjective] at e
    let i : ∐ X ≅ finiteCoproduct X :=
      (colimit.isColimit _).coconePointUniqueUpToIso (finiteCoproduct.isColimit _)
    intro b
    obtain ⟨t, rfl⟩ := e b
    let q := i.hom t
    refine ⟨q.1,q.2,?_⟩
    have : t = i.inv (i.hom t) := show t = (i.hom ≫ i.inv) t by simp only [i.hom_inv_id]; rfl
    rw [this]
    show _ = (i.inv ≫ Sigma.desc π) (i.hom t)
    suffices i.inv ≫ Sigma.desc π = finiteCoproduct.desc X π by
      rw [this]; rfl
    rw [Iso.inv_comp_eq]
    apply colimit.hom_ext
    rintro ⟨a⟩
    simp only [i, Discrete.functor_obj, colimit.ι_desc, Cofan.mk_pt, Cofan.mk_ι_app,
      colimit.comp_coconePointUniqueUpToIso_hom_assoc]
    ext; rfl
  tfae_finish

theorem effectiveEpiFamily_of_jointly_surjective
    {α : Type} [Finite α] {B : CompHaus.{u}}
    (X : α → CompHaus.{u}) (π : (a : α) → (X a ⟶ B))
    (surj : ∀ b : B, ∃ (a : α) (x : X a), π a x = b) :
    EffectiveEpiFamily X π :=
  ((effectiveEpiFamily_tfae X π).out 2 0).mp surj

end CompHaus
```
