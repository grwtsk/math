# Complete source: GRWTSK.Topology.EffectiveEpi.Variant18176ef125153d3df7e925778b654b907dde3c7913da35b1f0909fe5de89a410

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c014885ff7e9dcd3875ba6cdbe5721715b00849c` · SHA-256 `2d435cbdeb3282b81e361e3168c58953c75454a3d090e54f03c4c0e15102169b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.EffectiveEpiStruct.Variante077a27edade69f2fdf6c002989849afe8b0d7c200fa2124eb5671109f6a0368","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e077a27edade69f2fdf6c002989849afe8b0d7c200fa2124eb5671109f6a0368","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.EffectiveEpiStruct.Variante077a27edade69f2fdf6c002989849afe8b0d7c200fa2124eb5671109f6a0368","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"e077a27edade69f2fdf6c002989849afe8b0d7c200fa2124eb5671109f6a0368","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Category/CompHausLike/EffectiveEpi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz, Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Sites.Coherent.Comparison
import Mathlib.Topology.Category.CompHausLike.Limits
/-!

# Effective epimorphisms in `CompHausLike`

In any category of compact Hausdorff spaces, continuous surjections are effective epimorphisms.

We deduce that if the converse holds and explicit pullbacks exist, then `CompHausLike P` is
preregular.

If furthermore explicit finite coproducts exist, then `CompHausLike P` is precoherent.
-/


namespace GRWTSK.Topology.EffectiveEpiStruct.Variante077a27edade69f2fdf6c002989849afe8b0d7c200fa2124eb5671109f6a0368

universe u

open CategoryTheory Limits Topology

namespace CompHausLike

variable {P : TopCat.{u} → Prop}

/--
If `π` is a surjective morphism in `CompHausLike P`, then it is an effective epi.
-/
noncomputable
def effectiveEpiStruct {B X : CompHausLike P} (π : X ⟶ B) (hπ : Function.Surjective π) :
    EffectiveEpiStruct π where
  desc e h := ofHom _ ((IsQuotientMap.of_surjective_continuous hπ π.hom.continuous).lift e.hom
    fun a b hab ↦
      CategoryTheory.congr_fun (h
        (ofHom _ ⟨fun _ ↦ a, continuous_const⟩)
        (ofHom _ ⟨fun _ ↦ b, continuous_const⟩)
      (by ext; exact hab)) a)
  fac e h := TopCat.hom_ext ((IsQuotientMap.of_surjective_continuous hπ π.hom.continuous).lift_comp
    e.hom
    fun a b hab ↦ CategoryTheory.congr_fun (h
      (ofHom _ ⟨fun _ ↦ a, continuous_const⟩)
      (ofHom _ ⟨fun _ ↦ b, continuous_const⟩)
    (by ext; exact hab)) a)
  uniq e h g hm := by
    suffices g = ofHom _ ((IsQuotientMap.of_surjective_continuous hπ π.hom.continuous).liftEquiv
      ⟨e.hom,
      fun a b hab ↦ CategoryTheory.congr_fun
        (h
          (ofHom _ ⟨fun _ ↦ a, continuous_const⟩)
          (ofHom _ ⟨fun _ ↦ b, continuous_const⟩)
          (by ext; exact hab))
        a⟩) by assumption
    apply ConcreteCategory.ext
    rw [hom_ofHom,
      ← Equiv.symm_apply_eq (IsQuotientMap.of_surjective_continuous hπ π.hom.continuous).liftEquiv]
    ext
    simp only [IsQuotientMap.liftEquiv_symm_apply_coe, ContinuousMap.comp_apply, ← hm]
    rfl

theorem preregular [HasExplicitPullbacks P]
    (hs : ∀ ⦃X Y : CompHausLike P⦄ (f : X ⟶ Y), EffectiveEpi f → Function.Surjective f) :
    Preregular (CompHausLike P) where
  exists_fac := by
    intro X Y Z f π hπ
    refine ⟨pullback f π, pullback.fst f π, ⟨⟨effectiveEpiStruct _ ?_⟩⟩, pullback.snd f π,
      (pullback.condition _ _).symm⟩
    intro y
    obtain ⟨z, hz⟩ := hs π hπ (f y)
    exact ⟨⟨(y, z), hz.symm⟩, rfl⟩

theorem precoherent [HasExplicitPullbacks P] [HasExplicitFiniteCoproducts.{0} P]
    (hs : ∀ ⦃X Y : CompHausLike P⦄ (f : X ⟶ Y), EffectiveEpi f → Function.Surjective f) :
    Precoherent (CompHausLike P) := by
  have : Preregular (CompHausLike P) := preregular hs
  infer_instance

end CompHausLike
```
