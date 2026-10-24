# Complete source: GRWTSK.Analysis.MeasureTheory.HasCondDistrib.Variant6c4f47b52b9eac9396b2a0757e77f358aba4d35fe704c580bfb38515846c1456

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d736771e5a73adcc1344767ba5aa6ea3eca32d0` · SHA-256 `18addeda13860af869b3a97af0dc7a9a027435901610eced199cf8710a95324f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.HasCondDistrib.Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"badcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.HasCondDistrib.Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"badcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Probability/HasCondDistrib.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Rémy Degenne. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rémy Degenne, Paulo Rauber
-/

module

public import Mathlib.Probability.HasLaw

import Mathlib.Probability.Kernel.Composition.Lemmas

/-!
# A predicate for having a specified conditional distribution

We introduce a predicate `HasCondDistrib Y X κ P` stating that the conditional distribution of `Y`
given `X` under the measure `P` is equal to the kernel `κ`.
The statement uses `HasLaw` to express that the law of the pair `(X, Y)` under `P` is equal to
`(P.map X) ⊗ₘ κ`, the product of the law of `X` under `P` and the kernel `κ`.
The use of `HasLaw` also implies that `Y` and `X` are a.e. measurable.

## Main definitions

* `HasCondDistrib Y X κ P` : predicate stating that the conditional distribution of `Y` given `X`
  under the measure `P` is equal to the kernel `κ`.

-/


namespace GRWTSK.Analysis.MeasureTheory.HasCondDistrib.Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f

@[expose] public section

open MeasureTheory

namespace ProbabilityTheory

variable {Ω 𝓧 𝓨 𝓩 : Type*} {mΩ : MeasurableSpace Ω}
  {m𝓧 : MeasurableSpace 𝓧} {m𝓨 : MeasurableSpace 𝓨} {m𝓩 : MeasurableSpace 𝓩}
  {P : Measure Ω} {X : Ω → 𝓧} {Y : Ω → 𝓨} {κ : Kernel 𝓧 𝓨}

/-- Predicate stating that the conditional distribution of `Y` given `X` under the measure `P`
is equal to the kernel `κ`. -/
def HasCondDistrib (Y : Ω → 𝓨) (X : Ω → 𝓧) (κ : Kernel 𝓧 𝓨) (P : Measure Ω) : Prop :=
  HasLaw (fun ω ↦ (X ω, Y ω)) ((P.map X) ⊗ₘ κ) P

@[fun_prop]
lemma HasCondDistrib.aemeasurable_fst (h : HasCondDistrib Y X κ P) :
    AEMeasurable X P := h.aemeasurable.fst

@[fun_prop]
lemma HasCondDistrib.aemeasurable_snd (h : HasCondDistrib Y X κ P) :
    AEMeasurable Y P := h.aemeasurable.snd

lemma HasLaw.prodMk_of_hasCondDistrib {Q : Measure 𝓧}
    (h1 : HasLaw X Q P) (h2 : HasCondDistrib Y X κ P) :
    HasLaw (fun ω ↦ (X ω, Y ω)) (Q ⊗ₘ κ) P := by rwa [← h1.map_eq]

lemma HasCondDistrib.hasLaw_of_const [IsProbabilityMeasure P] {Q : Measure 𝓨} [SFinite Q]
    (h : HasCondDistrib Y X (Kernel.const 𝓧 Q) P) :
    HasLaw Y Q P where
  map_eq := by
    have h_snd : (P.map (fun ω ↦ (X ω, Y ω))).snd = Q := by
      rw [h.map_eq, Measure.snd_compProd]
      simp [Measure.map_apply_of_aemeasurable h.aemeasurable_fst]
    rwa [Measure.snd_map_prodMk₀ h.aemeasurable_fst (by fun_prop)] at h_snd

variable [SFinite P] [IsSFiniteKernel κ]

lemma HasCondDistrib.comp_left (h : HasCondDistrib Y X κ P) {f : 𝓨 → 𝓩} (hf : Measurable f) :
    HasCondDistrib (f ∘ Y) X (κ.map f) P where
  map_eq := calc
    P.map (fun ω ↦ (X ω, f (Y ω)))
    _ = (P.map (fun ω ↦ (X ω, Y ω))).map (Prod.map id f) := by
      rw [AEMeasurable.map_map_of_aemeasurable (by fun_prop) (by fun_prop)]
      congr
    _ = (P.map X ⊗ₘ κ).map (Prod.map id f) := by rw [h.map_eq]
    _ = P.map X ⊗ₘ κ.map f := by rw [Measure.compProd_map hf]

lemma HasCondDistrib.fst {Y : Ω → 𝓨 × 𝓩} {κ : Kernel 𝓧 (𝓨 × 𝓩)} [IsSFiniteKernel κ]
    (h : HasCondDistrib Y X κ P) :
    HasCondDistrib (fun ω ↦ (Y ω).1) X κ.fst P := by
  rw [Kernel.fst_eq]
  exact h.comp_left measurable_fst

lemma HasCondDistrib.snd {Y : Ω → 𝓨 × 𝓩} {κ : Kernel 𝓧 (𝓨 × 𝓩)} [IsSFiniteKernel κ]
    (h : HasCondDistrib Y X κ P) :
    HasCondDistrib (fun ω ↦ (Y ω).2) X κ.snd P := by
  rw [Kernel.snd_eq]
  exact h.comp_left measurable_snd

lemma HasCondDistrib.comp_right {f : 𝓩 → 𝓧}
    {hf : Measurable f} {Z : Ω → 𝓩} (h : HasCondDistrib Y Z (κ.comap f hf) P) :
    HasCondDistrib Y (f ∘ Z) κ P where
  map_eq := calc
    P.map (fun a ↦ ((f ∘ Z) a, Y a))
    _ = (P.map (fun a ↦ (Z a, Y a))).map (Prod.map f id) := by
        rw [AEMeasurable.map_map_of_aemeasurable (by fun_prop) (by fun_prop)]
        rfl
    _ = (P.map Z ⊗ₘ κ.comap f hf).map (Prod.map f id) := by rw [h.map_eq]
    _ = (P.map Z).map f ⊗ₘ κ := by
        ext s hs
        rw [Measure.map_apply (by fun_prop) hs, Measure.compProd_apply (by measurability),
          Measure.compProd_apply hs, lintegral_map (Kernel.measurable_kernel_prodMk_left hs) hf]
        rfl
    _ = P.map (f ∘ Z) ⊗ₘ κ := by
        rw [AEMeasurable.map_map_of_aemeasurable hf.aemeasurable (by fun_prop)]

lemma HasCondDistrib.measurableEquiv_comp_right (h : HasCondDistrib Y X κ P) (f : 𝓧 ≃ᵐ 𝓩) :
    HasCondDistrib Y (f ∘ X) (κ.comap f.symm f.symm.measurable) P := by
  apply HasCondDistrib.comp_right (hf := f.measurable)
  simpa [← Kernel.comap_comp_right]

lemma HasCondDistrib.of_compProd {Z : Ω → 𝓩} {η : Kernel (𝓧 × 𝓨) 𝓩} [IsMarkovKernel η]
    (h : HasCondDistrib (fun a ↦ (Y a, Z a)) X (κ ⊗ₖ η) P) :
    HasCondDistrib Z (fun a ↦ (X a, Y a)) η P := by
  have hZ : AEMeasurable Z P := h.aemeasurable_snd.snd
  have hY : AEMeasurable Y P := h.aemeasurable_snd.fst
  refine ⟨by fun_prop, ?_⟩
  calc P.map (fun a ↦ ((X a, Y a), Z a))
  _ = (P.map X ⊗ₘ (κ ⊗ₖ η)).map MeasurableEquiv.prodAssoc.symm := by
      rw [← h.map_eq, AEMeasurable.map_map_of_aemeasurable (by fun_prop) (by fun_prop)]
      rfl
  _ = P.map X ⊗ₘ κ ⊗ₘ η := Measure.compProd_assoc
  _ = P.map (fun a ↦ (X a, Y a)) ⊗ₘ η := by simp [h.fst.map_eq]

end ProbabilityTheory
```
