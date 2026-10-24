# Complete source: GRWTSK.Analysis.MeasureTheory.FactorsThrough.Variant23fc27f0e43881c3d43f1980326489b5ad674632dd42d2e33435fdd6a69e5629

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e85ab9f249884e11f827ccf6772aefe47de295f` · SHA-256 `ce2866b2bb4cc0a29847ed9c88580fd0b869ecbf072a17694ee274054018b961`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.RootMeasurableFactorsThrough.Variant489d058b951576f7f7b598155089b5119ffb9f2d38c69d427cb5cba251fc5a37","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"489d058b951576f7f7b598155089b5119ffb9f2d38c69d427cb5cba251fc5a37","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.RootMeasurableFactorsThrough.Variant489d058b951576f7f7b598155089b5119ffb9f2d38c69d427cb5cba251fc5a37","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"489d058b951576f7f7b598155089b5119ffb9f2d38c69d427cb5cba251fc5a37","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/MeasureTheory/Function/FactorsThrough.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Etienne Marion. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Etienne Marion
-/
module

public import Mathlib.Probability.Process.Filtration

/-!
# Factorization of a map from measurability

Consider `f : X → Y` and `g : X → Z` and assume that `g` is measurable with respect to the pullback
along `f`. Then `g` factors through `f`, which means that (if `Z` is nonempty)
there exists `h : Y → Z` such that `g = h ∘ f`.

If `Z` is completely metrizable, the factorization map `h` can be taken to be measurable.
This is the content of the [Doob-Dynkin lemma](https://en.wikipedia.org/wiki/Doob–Dynkin_lemma):
see `exists_eq_measurable_comp`.
-/


namespace GRWTSK.Analysis.MeasureTheory.RootMeasurableFactorsThrough.Variant489d058b951576f7f7b598155089b5119ffb9f2d38c69d427cb5cba251fc5a37

public section

namespace MeasureTheory

open Filter Filtration Set TopologicalSpace

open scoped Topology

variable {X Y Z : Type*} [mY : MeasurableSpace Y] {f : X → Y} {g : X → Z}

section FactorsThrough

/-- If a function `g` is measurable with respect to the pullback along some function `f`,
then to prove `g x = g y` it is enough to prove `f x = f y`. -/
theorem _root_.GRWTSK.Analysis.MeasureTheory.RootMeasurableFactorsThrough.Variant489d058b951576f7f7b598155089b5119ffb9f2d38c69d427cb5cba251fc5a37.Measurable.factorsThrough [MeasurableSpace Z] [MeasurableSingletonClass Z]
    (hg : Measurable[mY.comap f] g) : g.FactorsThrough f := by
  refine fun x₁ x₂ h ↦ eq_of_mem_singleton ?_
  obtain ⟨s, -, hs⟩ := hg (measurableSet_singleton (g x₂))
  rw [← mem_preimage, ← hs, mem_preimage, h, ← mem_preimage, hs, mem_preimage, mem_singleton_iff]

/-- If a function `g` is strongly measurable with respect to the pullback along some function `f`,
then to prove `g x = g y` it is enough to prove `f x = f y`.

If `Z` is not empty there exists `h : Y → Z` such that `g = h ∘ f`.
If `Z` is also completely metrizable, the factorization map `h` can be taken to be measurable
(see `exists_eq_measurable_comp`). -/
theorem StronglyMeasurable.factorsThrough [TopologicalSpace Z]
    [PseudoMetrizableSpace Z] [T1Space Z] (hg : StronglyMeasurable[mY.comap f] g) :
    g.FactorsThrough f := by
  borelize Z
  exact hg.measurable.factorsThrough

/-- If a function `g` is strongly measurable with respect to the pullback along some function `f`,
then there exists some strongly measurable function `h : Y → Z` such that `g = h ∘ f`. -/
theorem StronglyMeasurable.exists_eq_measurable_comp [Nonempty Z] [TopologicalSpace Z]
    [IsCompletelyMetrizableSpace Z] (hg : StronglyMeasurable[mY.comap f] g) :
    ∃ h : Y → Z, StronglyMeasurable h ∧ g = h ∘ f := by
  let mX : MeasurableSpace X := mY.comap f
  induction g, hg using StronglyMeasurable.induction' with
  | const z => exact ⟨fun _ ↦ z, stronglyMeasurable_const, rfl⟩
  | @pcw g₁ g₂ s hg₁ hg₂ hs h₁ h₂ =>
    obtain ⟨t, ht, rfl⟩ := hs
    obtain ⟨h₁, mh₁, rfl⟩ := h₁
    obtain ⟨h₂, mh₂, rfl⟩ := h₂
    classical
    exact ⟨t.piecewise h₁ h₂, mh₁.piecewise ht mh₂, by rw [piecewise_comp]⟩
  | @lim g i hg hi h₁ h₂ =>
    choose h mh hh using h₁
    refine ⟨fun y ↦ limUnder atTop (h · y), StronglyMeasurable.limUnder mh, ?_⟩
    ext x
    rw [Function.comp_apply, Tendsto.limUnder_eq]
    simp_all

/-- If a function `g` is measurable with respect to the pullback along some function `f`,
then there exists some measurable function `h : Y → Z` such that `g = h ∘ f`. -/
theorem _root_.GRWTSK.Analysis.MeasureTheory.RootMeasurableFactorsThrough.Variant489d058b951576f7f7b598155089b5119ffb9f2d38c69d427cb5cba251fc5a37.Measurable.exists_eq_measurable_comp [Nonempty Z] [MeasurableSpace Z]
    [StandardBorelSpace Z] (hg : Measurable[mY.comap f] g) :
    ∃ h : Y → Z, Measurable h ∧ g = h ∘ f := by
  let := upgradeStandardBorel Z
  obtain ⟨h, mh, hh⟩ := hg.stronglyMeasurable.exists_eq_measurable_comp
  exact ⟨h, mh.measurable, hh⟩

end FactorsThrough

variable {ι : Type*} {X : ι → Type*} [∀ i, MeasurableSpace (X i)] {f : (Π i, X i) → Z}

section piLE

variable [Preorder ι] {i : ι}

/-- If a function is measurable with respect to the σ-algebra generated by the
first coordinates, then it only depends on those first coordinates. -/
theorem _root_.GRWTSK.Analysis.MeasureTheory.RootMeasurableFactorsThrough.Variant489d058b951576f7f7b598155089b5119ffb9f2d38c69d427cb5cba251fc5a37.Measurable.dependsOn_of_piLE [MeasurableSpace Z] [MeasurableSingletonClass Z]
    (hf : Measurable[piLE i] f) : DependsOn f (Iic i) :=
  dependsOn_iff_factorsThrough.2 hf.factorsThrough

/-- If a function is strongly measurable with respect to the σ-algebra generated by the
first coordinates, then it only depends on those first coordinates. -/
theorem StronglyMeasurable.dependsOn_of_piLE [TopologicalSpace Z] [PseudoMetrizableSpace Z]
    [T1Space Z] (hf : StronglyMeasurable[piLE i] f) : DependsOn f (Iic i) :=
  dependsOn_iff_factorsThrough.2 hf.factorsThrough

end piLE

section piFinset

variable {s : Finset ι}

/-- If a function is measurable with respect to the σ-algebra generated by the
first coordinates, then it only depends on those first coordinates. -/
theorem _root_.GRWTSK.Analysis.MeasureTheory.RootMeasurableFactorsThrough.Variant489d058b951576f7f7b598155089b5119ffb9f2d38c69d427cb5cba251fc5a37.Measurable.dependsOn_of_piFinset [MeasurableSpace Z] [MeasurableSingletonClass Z]
    (hf : Measurable[piFinset s] f) : DependsOn f s :=
  dependsOn_iff_factorsThrough.2 hf.factorsThrough

/-- If a function is strongly measurable with respect to the σ-algebra generated by the
first coordinates, then it only depends on those first coordinates. -/
theorem StronglyMeasurable.dependsOn_of_piFinset [TopologicalSpace Z] [PseudoMetrizableSpace Z]
    [T1Space Z] (hf : StronglyMeasurable[piFinset s] f) : DependsOn f s :=
  dependsOn_iff_factorsThrough.2 hf.factorsThrough

end piFinset

end MeasureTheory
```
