# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Extrema.Varianta35eaa6202ba73aad5333d9a957f567b2af950482ada1714157939a75b14ee67

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ee7cf044747d66980b3a1d2142a3f277581db4e` · SHA-256 `b3efd44b7bf5a24c050b9337025654dcd576e19cdecc8d9795483321d3701687`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.IsMinOnOfIsLocalMinOnOfConvexOnIcc.Variant8cf5e70165401a45ebca6eca71f2e4cd09e03e8e52b9be7b25b007ff1625e532","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8cf5e70165401a45ebca6eca71f2e4cd09e03e8e52b9be7b25b007ff1625e532","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ConvexAnalysis.SourceCorpus.IsMinOnOfIsLocalMinOnOfConvexOnIcc.Variant8cf5e70165401a45ebca6eca71f2e4cd09e03e8e52b9be7b25b007ff1625e532","mathematical_subject":"Analysis.ConvexAnalysis","original_sha256":"8cf5e70165401a45ebca6eca71f2e4cd09e03e8e52b9be7b25b007ff1625e532","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Convex/Extrema.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Frédéric Dupuis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Frédéric Dupuis
-/
import Mathlib.Analysis.Convex.Function
import Mathlib.Topology.Algebra.Affine
import Mathlib.Topology.Order.LocalExtr
import Mathlib.Topology.MetricSpace.Pseudo.Lemmas

/-!
# Minima and maxima of convex functions

We show that if a function `f : E → β` is convex, then a local minimum is also
a global minimum, and likewise for concave functions.
-/



namespace GRWTSK.Analysis.FunctionalAnalysis.IsMinOnOfIsLocalMinOnOfConvexOnIcc.Variant8cf5e70165401a45ebca6eca71f2e4cd09e03e8e52b9be7b25b007ff1625e532

variable {E β : Type*} [AddCommGroup E] [TopologicalSpace E] [Module ℝ E] [IsTopologicalAddGroup E]
  [ContinuousSMul ℝ E] [AddCommGroup β] [PartialOrder β] [IsOrderedAddMonoid β]
  [Module ℝ β] [OrderedSMul ℝ β] {s : Set E}

open Set Filter Function Topology

/-- Helper lemma for the more general case: `IsMinOn.of_isLocalMinOn_of_convexOn`.
-/
theorem IsMinOn.of_isLocalMinOn_of_convexOn_Icc {f : ℝ → β} {a b : ℝ} (a_lt_b : a < b)
    (h_local_min : IsLocalMinOn f (Icc a b) a) (h_conv : ConvexOn ℝ (Icc a b) f) :
    IsMinOn f (Icc a b) a := by
  rintro c hc
  dsimp only [mem_setOf_eq]
  rw [IsLocalMinOn, nhdsWithin_Icc_eq_nhdsGE a_lt_b] at h_local_min
  rcases hc.1.eq_or_lt with (rfl | a_lt_c)
  · exact le_rfl
  have H₁ : ∀ᶠ y in 𝓝[>] a, f a ≤ f y :=
    h_local_min.filter_mono (nhdsWithin_mono _ Ioi_subset_Ici_self)
  have H₂ : ∀ᶠ y in 𝓝[>] a, y ∈ Ioc a c := Ioc_mem_nhdsGT a_lt_c
  rcases (H₁.and H₂).exists with ⟨y, hfy, hy_ac⟩
  rcases (Convex.mem_Ioc a_lt_c).mp hy_ac with ⟨ya, yc, ya₀, yc₀, yac, rfl⟩
  suffices ya • f a + yc • f a ≤ ya • f a + yc • f c from
    (smul_le_smul_iff_of_pos_left yc₀).1 (le_of_add_le_add_left this)
  calc
    ya • f a + yc • f a = f a := by rw [← add_smul, yac, one_smul]
    _ ≤ f (ya * a + yc * c) := hfy
    _ ≤ ya • f a + yc • f c := h_conv.2 (left_mem_Icc.2 a_lt_b.le) hc ya₀ yc₀.le yac

/-- A local minimum of a convex function is a global minimum, restricted to a set `s`.
-/
theorem IsMinOn.of_isLocalMinOn_of_convexOn {f : E → β} {a : E} (a_in_s : a ∈ s)
    (h_localmin : IsLocalMinOn f s a) (h_conv : ConvexOn ℝ s f) : IsMinOn f s a := by
  intro x x_in_s
  let g : ℝ →ᵃ[ℝ] E := AffineMap.lineMap a x
  have hg0 : g 0 = a := AffineMap.lineMap_apply_zero a x
  have hg1 : g 1 = x := AffineMap.lineMap_apply_one a x
  have hgc : Continuous g := AffineMap.lineMap_continuous
  have h_maps : MapsTo g (Icc 0 1) s := by
    simpa only [g, mapsTo', ← segment_eq_image_lineMap] using h_conv.1.segment_subset a_in_s x_in_s
  have fg_local_min_on : IsLocalMinOn (f ∘ g) (Icc 0 1) 0 := by
    rw [← hg0] at h_localmin
    exact h_localmin.comp_continuousOn h_maps hgc.continuousOn (left_mem_Icc.2 zero_le_one)
  have fg_min_on : IsMinOn (f ∘ g) (Icc 0 1 : Set ℝ) 0 := by
    refine IsMinOn.of_isLocalMinOn_of_convexOn_Icc one_pos fg_local_min_on ?_
    exact (h_conv.comp_affineMap g).subset h_maps (convex_Icc 0 1)
  simpa only [hg0, hg1, comp_apply, mem_setOf_eq] using fg_min_on (right_mem_Icc.2 zero_le_one)

/-- A local maximum of a concave function is a global maximum, restricted to a set `s`. -/
theorem IsMaxOn.of_isLocalMaxOn_of_concaveOn {f : E → β} {a : E} (a_in_s : a ∈ s)
    (h_localmax : IsLocalMaxOn f s a) (h_conc : ConcaveOn ℝ s f) : IsMaxOn f s a :=
  IsMinOn.of_isLocalMinOn_of_convexOn (β := βᵒᵈ) a_in_s h_localmax h_conc

/-- A local minimum of a convex function is a global minimum. -/
theorem IsMinOn.of_isLocalMin_of_convex_univ {f : E → β} {a : E} (h_local_min : IsLocalMin f a)
    (h_conv : ConvexOn ℝ univ f) : ∀ x, f a ≤ f x := fun x =>
  (IsMinOn.of_isLocalMinOn_of_convexOn (mem_univ a) (h_local_min.on univ) h_conv) (mem_univ x)

/-- A local maximum of a concave function is a global maximum. -/
theorem IsMaxOn.of_isLocalMax_of_convex_univ {f : E → β} {a : E} (h_local_max : IsLocalMax f a)
    (h_conc : ConcaveOn ℝ univ f) : ∀ x, f x ≤ f a :=
  IsMinOn.of_isLocalMin_of_convex_univ (β := βᵒᵈ) h_local_max h_conc
```
