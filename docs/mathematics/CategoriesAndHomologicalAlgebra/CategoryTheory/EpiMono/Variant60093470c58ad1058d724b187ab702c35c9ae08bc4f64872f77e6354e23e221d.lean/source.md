# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variant60093470c58ad1058d724b187ab702c35c9ae08bc4f64872f77e6354e23e221d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `53cfc92075cd8da8896521af794af48df5f987bf` · SHA-256 `292af0058f21f78f655011b17cb2f11e820c6d715eb7be6724ff82b059597704`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonoIffFstEqSnd.Variantcb76adaecb9ebcb69f97af22dc9a942a54fb5165786e304caa98ec2bb28a7b2f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb76adaecb9ebcb69f97af22dc9a942a54fb5165786e304caa98ec2bb28a7b2f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.MonoIffFstEqSnd.Variantcb76adaecb9ebcb69f97af22dc9a942a54fb5165786e304caa98ec2bb28a7b2f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"cb76adaecb9ebcb69f97af22dc9a942a54fb5165786e304caa98ec2bb28a7b2f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/EpiMono.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq

/-!
# Relation between mono/epi and pullback/pushout squares

In this file, monomorphisms and epimorphisms are characterized in terms
of pullback and pushout squares. For example, we obtain `mono_iff_isPullback`
which asserts that a morphism `f : X ⟶ Y` is a monomorphism iff the obvious
square

```
X ⟶ X
|   |
v   v
X ⟶ Y
```

is a pullback square.


-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonoIffFstEqSnd.Variantcb76adaecb9ebcb69f97af22dc9a942a54fb5165786e304caa98ec2bb28a7b2f

namespace CategoryTheory

open Category Limits

variable {C : Type*} [Category C] {X Y : C} {f : X ⟶ Y}

section Mono

variable {c : PullbackCone f f}

lemma mono_iff_fst_eq_snd (hc : IsLimit c) : Mono f ↔ c.fst = c.snd := by
  constructor
  · intro hf
    simpa only [← cancel_mono f] using c.condition
  · intro hf
    constructor
    intro Z g g' h
    obtain ⟨φ, rfl, rfl⟩ := PullbackCone.IsLimit.lift' hc g g' h
    rw [hf]

lemma mono_iff_isIso_fst (hc : IsLimit c) : Mono f ↔ IsIso c.fst := by
  rw [mono_iff_fst_eq_snd hc]
  constructor
  · intro h
    obtain ⟨φ, hφ₁, hφ₂⟩ := PullbackCone.IsLimit.lift' hc (𝟙 X) (𝟙 X) (by simp)
    refine ⟨φ, PullbackCone.IsLimit.hom_ext hc ?_ ?_, hφ₁⟩
    · dsimp
      simp only [assoc, hφ₁, id_comp, comp_id]
    · dsimp
      simp only [assoc, hφ₂, id_comp, comp_id, h]
  · intro
    obtain ⟨φ, hφ₁, hφ₂⟩ := PullbackCone.IsLimit.lift' hc (𝟙 X) (𝟙 X) (by simp)
    have : IsSplitEpi φ := IsSplitEpi.mk ⟨SplitEpi.mk c.fst (by
      rw [← cancel_mono c.fst, assoc, id_comp, hφ₁, comp_id])⟩
    rw [← cancel_epi φ, hφ₁, hφ₂]

lemma mono_iff_isIso_snd (hc : IsLimit c) : Mono f ↔ IsIso c.snd :=
  mono_iff_isIso_fst (PullbackCone.flipIsLimit hc)

variable (f)

lemma mono_iff_isPullback : Mono f ↔ IsPullback (𝟙 X) (𝟙 X) f f := by
  constructor
  · intro
    exact IsPullback.of_isLimit (PullbackCone.isLimitMkIdId f)
  · intro hf
    exact (mono_iff_fst_eq_snd hf.isLimit).2 rfl

end Mono

section Epi

variable {c : PushoutCocone f f}

lemma epi_iff_inl_eq_inr (hc : IsColimit c) : Epi f ↔ c.inl = c.inr := by
  constructor
  · intro hf
    simpa only [← cancel_epi f] using c.condition
  · intro hf
    constructor
    intro Z g g' h
    obtain ⟨φ, rfl, rfl⟩ := PushoutCocone.IsColimit.desc' hc g g' h
    rw [hf]

lemma epi_iff_isIso_inl (hc : IsColimit c) : Epi f ↔ IsIso c.inl := by
  rw [epi_iff_inl_eq_inr hc]
  constructor
  · intro h
    obtain ⟨φ, hφ₁, hφ₂⟩ := PushoutCocone.IsColimit.desc' hc (𝟙 Y) (𝟙 Y) (by simp)
    refine ⟨φ, hφ₁, PushoutCocone.IsColimit.hom_ext hc ?_ ?_⟩
    · dsimp
      simp only [comp_id, reassoc_of% hφ₁]
    · dsimp
      simp only [comp_id, h, reassoc_of% hφ₂]
  · intro
    obtain ⟨φ, hφ₁, hφ₂⟩ := PushoutCocone.IsColimit.desc' hc (𝟙 Y) (𝟙 Y) (by simp)
    have : IsSplitMono φ := IsSplitMono.mk ⟨SplitMono.mk c.inl (by
      rw [← cancel_epi c.inl, reassoc_of% hφ₁, comp_id])⟩
    rw [← cancel_mono φ, hφ₁, hφ₂]

lemma epi_iff_isIso_inr (hc : IsColimit c) : Epi f ↔ IsIso c.inr :=
  epi_iff_isIso_inl (PushoutCocone.flipIsColimit hc)

variable (f)

lemma epi_iff_isPushout : Epi f ↔ IsPushout f f (𝟙 Y) (𝟙 Y) := by
  constructor
  · intro
    exact IsPushout.of_isColimit (PushoutCocone.isColimitMkIdId f)
  · intro hf
    exact (epi_iff_inl_eq_inr hf.isColimit).2 rfl

end Epi

end CategoryTheory
````
