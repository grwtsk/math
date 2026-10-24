# Complete source: GRWTSK.Analysis.ComplexAnalysis.AnalyticManifold.Variant7c7b7d1b7b8ce45791c5bbf82a3eb45a73f81422eb6e1da5d9036c416768711a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1dd0f05ea6de964945846af5f766a4b5c3e59dde` · SHA-256 `3b4f680744a80405ce3426b875e1041354eca937e5a8f6d7e5498035eaeebdd1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.AnalyticManifold.Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.AnalyticManifold.Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Deprecated/AnalyticManifold.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Michael Lee. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Lee, Geoffrey Irving
-/
import Mathlib.Analysis.Analytic.Constructions
import Mathlib.Geometry.Manifold.IsManifold.Basic

/-!
# Analytic manifolds (possibly with boundary or corners)

An analytic manifold is a manifold modelled on a normed vector space, or a subset like a
half-space (to get manifolds with boundaries) for which changes of coordinates are analytic
everywhere.  The definition mirrors `IsManifold`, but using an `analyticGroupoid` in
place of `contDiffGroupoid`.  All analytic manifolds are smooth manifolds.

This file is deprecated: one should use `IsManifold I ω M` instead
-/


namespace GRWTSK.Analysis.ComplexAnalysis.AnalyticManifold.Variant8cf1b7879b36f1a8480149f3e77f4e639d1ca27af1d8cef39641f1156f2cfffb

noncomputable section

/- Deactivate the linter as we don't want to change the statements inside the file, only warn
the user that the definitions they are using are deprecated. -/
set_option linter.deprecated false

open Set Filter Function

open scoped Manifold Filter Topology ContDiff

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E] {H : Type*}
  [TopologicalSpace H] {I : ModelWithCorners 𝕜 E H} {M : Type*} [TopologicalSpace M]

/-!
## `analyticGroupoid`

`f ∈ PartialHomeomorph H H` is in `analyticGroupoid I` if `f` and `f.symm` are smooth everywhere,
analytic on the interior, and map the interior to itself.  This allows us to define
`AnalyticManifold` including in cases with boundary.
-/

section analyticGroupoid

variable (I) in
/-- Given a model with corners `(E, H)`, we define the pregroupoid of analytic transformations of
`H` as the maps that are `AnalyticOn` when read in `E` through `I`.  Using `AnalyticOn`
rather than `AnalyticOnNhd` gives us meaningful definitions at boundary points. -/
@[deprecated "use instead `contDiffPregroupoid ω`" (since := "2025-04-13")]
def analyticPregroupoid : Pregroupoid H where
  property f s := AnalyticOn 𝕜 (I ∘ f ∘ I.symm) (I.symm ⁻¹' s ∩ range I)
  comp {f g u v} hf hg _ _ _ := by
    have : I ∘ (g ∘ f) ∘ I.symm = (I ∘ g ∘ I.symm) ∘ I ∘ f ∘ I.symm := by ext x; simp
    simp only [this]
    apply hg.comp
    · exact hf.mono fun _ ⟨hx1, hx2⟩ ↦ ⟨hx1.1, hx2⟩
    · rintro x ⟨hx1, _⟩
      simpa only [mfld_simps] using hx1.2
  id_mem := by
    apply analyticOn_id.congr
    rintro x ⟨_, hx2⟩
    obtain ⟨y, hy⟩ := mem_range.1 hx2
    simp only [mfld_simps, ← hy]
  locality {f u} _ H := by
    apply analyticOn_of_locally_analyticOn
    rintro y ⟨hy1, hy2⟩
    obtain ⟨x, hx⟩ := mem_range.1 hy2
    simp only [mfld_simps, ← hx] at hy1 ⊢
    obtain ⟨v, v_open, xv, hv⟩ := H x hy1
    have : I.symm ⁻¹' (u ∩ v) ∩ range I = I.symm ⁻¹' u ∩ range I ∩ I.symm ⁻¹' v := by
      rw [preimage_inter, inter_assoc, inter_assoc, inter_comm _ (range I)]
    exact ⟨I.symm ⁻¹' v, v_open.preimage I.continuous_symm, by simpa, this ▸ hv⟩
  congr {f g u} _ fg hf := by
    apply hf.congr
    rintro y ⟨hy1, hy2⟩
    obtain ⟨x, hx⟩ := mem_range.1 hy2
    simp only [mfld_simps, ← hx] at hy1 ⊢
    rw [fg _ hy1]

variable (I) in
/-- Given a model with corners `(E, H)`, we define the groupoid of analytic transformations of
`H` as the maps that are `AnalyticOn` when read in `E` through `I`.  Using `AnalyticOn`
rather than `AnalyticOnNhd` gives us meaningful definitions at boundary points. -/
@[deprecated "use instead `contDiffGroupoid ω`" (since := "2025-04-13")]
def analyticGroupoid : StructureGroupoid H :=
  (analyticPregroupoid I).groupoid

/-- An identity partial homeomorphism belongs to the analytic groupoid. -/
theorem ofSet_mem_analyticGroupoid {s : Set H} (hs : IsOpen s) :
    PartialHomeomorph.ofSet s hs ∈ analyticGroupoid I := by
  rw [analyticGroupoid, mem_groupoid_of_pregroupoid]
  suffices h : AnalyticOn 𝕜 (I ∘ I.symm) (I.symm ⁻¹' s ∩ range I) by
    simp [h, analyticPregroupoid]
  have hi : AnalyticOn 𝕜 id (univ : Set E) := analyticOn_id
  exact (hi.mono (subset_univ _)).congr (fun x hx ↦ I.right_inv hx.2)

/-- The composition of a partial homeomorphism from `H` to `M` and its inverse belongs to
the analytic groupoid. -/
theorem symm_trans_mem_analyticGroupoid (e : PartialHomeomorph M H) :
    e.symm.trans e ∈ analyticGroupoid I :=
  haveI : e.symm.trans e ≈ PartialHomeomorph.ofSet e.target e.open_target :=
    PartialHomeomorph.symm_trans_self _
  StructureGroupoid.mem_of_eqOnSource _ (ofSet_mem_analyticGroupoid e.open_target) this

/-- The analytic groupoid is closed under restriction. -/
instance : ClosedUnderRestriction (analyticGroupoid I) :=
  (closedUnderRestriction_iff_id_le _).mpr
    (by
      rw [StructureGroupoid.le_iff]
      rintro e ⟨s, hs, hes⟩
      exact (analyticGroupoid I).mem_of_eqOnSource' _ _ (ofSet_mem_analyticGroupoid hs) hes)

/-- `f ∈ analyticGroupoid` iff it and its inverse are analytic within `range I`. -/
lemma mem_analyticGroupoid {I : ModelWithCorners 𝕜 E H} {f : PartialHomeomorph H H} :
    f ∈ analyticGroupoid I ↔
      AnalyticOn 𝕜 (I ∘ f ∘ I.symm) (I.symm ⁻¹' f.source ∩ range I) ∧
      AnalyticOn 𝕜 (I ∘ f.symm ∘ I.symm) (I.symm ⁻¹' f.target ∩ range I) := by
  rfl

/-- The analytic groupoid on a boundaryless charted space modeled on a complete vector space
consists of the partial homeomorphisms which are analytic and have analytic inverse. -/
theorem mem_analyticGroupoid_of_boundaryless [I.Boundaryless] (e : PartialHomeomorph H H) :
    e ∈ analyticGroupoid I ↔ AnalyticOnNhd 𝕜 (I ∘ e ∘ I.symm) (I '' e.source) ∧
      AnalyticOnNhd 𝕜 (I ∘ e.symm ∘ I.symm) (I '' e.target) := by
  simp only [mem_analyticGroupoid, I.range_eq_univ, inter_univ, I.image_eq]
  rw [IsOpen.analyticOn_iff_analyticOnNhd, IsOpen.analyticOn_iff_analyticOnNhd]
  · exact I.continuous_symm.isOpen_preimage _ e.open_target
  · exact I.continuous_symm.isOpen_preimage _ e.open_source

/-- `analyticGroupoid` is closed under products -/
theorem analyticGroupoid_prod {E A : Type} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [TopologicalSpace A] {F B : Type} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [TopologicalSpace B] {I : ModelWithCorners 𝕜 E A} {J : ModelWithCorners 𝕜 F B}
    {f : PartialHomeomorph A A} {g : PartialHomeomorph B B}
    (fa : f ∈ analyticGroupoid I) (ga : g ∈ analyticGroupoid J) :
    f.prod g ∈ analyticGroupoid (I.prod J) := by
  have pe : range (I.prod J) = (range I).prod (range J) := I.range_prod
  simp only [mem_analyticGroupoid, Function.comp, image_subset_iff] at fa ga ⊢
  exact ⟨AnalyticOn.prod
      (fa.1.comp analyticOn_fst fun _ m ↦ ⟨m.1.1, (pe ▸ m.2).1⟩)
      (ga.1.comp analyticOn_snd fun _ m ↦ ⟨m.1.2, (pe ▸ m.2).2⟩),
    AnalyticOn.prod
      (fa.2.comp analyticOn_fst fun _ m ↦ ⟨m.1.1, (pe ▸ m.2).1⟩)
      (ga.2.comp analyticOn_snd fun _ m ↦ ⟨m.1.2, (pe ▸ m.2).2⟩)⟩

end analyticGroupoid

section AnalyticManifold

/-- An analytic manifold w.r.t. a model `I : ModelWithCorners 𝕜 E H` is a charted space over `H`
s.t. all extended chart conversion maps are analytic. -/
@[deprecated "use instead `IsManifold ω`" (since := "2025-04-13")]
class AnalyticManifold (I : ModelWithCorners 𝕜 E H) (M : Type*) [TopologicalSpace M]
  [ChartedSpace H M] : Prop extends HasGroupoid M (analyticGroupoid I)

/-- Normed spaces are analytic manifolds over themselves. -/
instance AnalyticManifold.self : AnalyticManifold 𝓘(𝕜, E) E where

/-- `M × N` is an analytic manifold if `M` and `N` are -/
instance AnalyticManifold.prod {E A : Type} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [TopologicalSpace A] {F B : Type} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
    [TopologicalSpace B] {I : ModelWithCorners 𝕜 E A} {J : ModelWithCorners 𝕜 F B}
    {M : Type} [TopologicalSpace M] [ChartedSpace A M] [m : AnalyticManifold I M]
    {N : Type} [TopologicalSpace N] [ChartedSpace B N] [n : AnalyticManifold J N] :
    AnalyticManifold (I.prod J) (M × N) where
  compatible := by
    intro f g ⟨f1, f2, hf1, hf2, fe⟩ ⟨g1, g2, hg1, hg2, ge⟩
    rw [← fe, ← ge, PartialHomeomorph.prod_symm, PartialHomeomorph.prod_trans]
    exact analyticGroupoid_prod (m.toHasGroupoid.compatible f2 g2)
      (n.toHasGroupoid.compatible hf2 hg2)

/-- Analytic manifolds are smooth manifolds. -/
instance AnalyticManifold.isManifold [ChartedSpace H M]
    [cm : AnalyticManifold I M] :
    IsManifold I ∞ M where
  compatible hf hg := ⟨(cm.compatible hf hg).1.contDiffOn I.uniqueDiffOn_preimage_source,
    (cm.compatible hg hf).1.contDiffOn I.uniqueDiffOn_preimage_source⟩


end AnalyticManifold
```
