# Complete source: GRWTSK.Geometry.DifferentialGeometry.Tangent.Variant5d65fc0ad6270889fef6ffa219194399dfaa88733171137ba3067288f0017a50

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2cf2492c26aa09b2160529af10aabf04aa3b45b8` · SHA-256 `d4dc7861e678cbe0dab6916b17764f7dc6edd34000f2b5b2db14bf3eed180230`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.DifferentialGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.DifferentialGeometry.TangentMapChart.Variant3e9d412b66fa2df9d37817e0f21aac4e299e9baa88217f0ad665fe28da2e1d79","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e9d412b66fa2df9d37817e0f21aac4e299e9baa88217f0ad665fe28da2e1d79","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.DifferentialGeometry.SourceCorpus.TangentMapChart.Variant3e9d412b66fa2df9d37817e0f21aac4e299e9baa88217f0ad665fe28da2e1d79","mathematical_subject":"Geometry.DifferentialGeometry","original_sha256":"3e9d412b66fa2df9d37817e0f21aac4e299e9baa88217f0ad665fe28da2e1d79","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Geometry/Manifold/MFDeriv/Tangent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel, Floris van Doorn
-/
import Mathlib.Geometry.Manifold.MFDeriv.Atlas
import Mathlib.Geometry.Manifold.MFDeriv.UniqueDifferential
import Mathlib.Geometry.Manifold.VectorBundle.Tangent
import Mathlib.Geometry.Manifold.Diffeomorph

/-!
# Derivatives of maps in the tangent bundle

This file contains properties of derivatives which need the manifold structure of the tangent
bundle. Notably, it includes formulas for the tangent maps to charts, and unique differentiability
statements for subsets of the tangent bundle.
-/


namespace GRWTSK.Geometry.DifferentialGeometry.TangentMapChart.Variant3e9d412b66fa2df9d37817e0f21aac4e299e9baa88217f0ad665fe28da2e1d79

open Bundle Set
open scoped Manifold

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
  {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E] {H : Type*} [TopologicalSpace H]
  {I : ModelWithCorners 𝕜 E H} {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
  [IsManifold I 1 M]
  {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E'] {H' : Type*} [TopologicalSpace H']
  {I' : ModelWithCorners 𝕜 E' H'} {M' : Type*} [TopologicalSpace M'] [ChartedSpace H' M']
  [IsManifold I' 1 M']


/-- The derivative of the chart at a base point is the chart of the tangent bundle, composed with
the identification between the tangent bundle of the model space and the product space. -/
theorem tangentMap_chart {p q : TangentBundle I M} (h : q.1 ∈ (chartAt H p.1).source) :
    tangentMap I I (chartAt H p.1) q =
      (TotalSpace.toProd _ _).symm
        ((chartAt (ModelProd H E) p : TangentBundle I M → ModelProd H E) q) := by
  dsimp [tangentMap]
  rw [MDifferentiableAt.mfderiv]
  · rfl
  · exact mdifferentiableAt_atlas (chart_mem_atlas _ _) h

/-- The derivative of the inverse of the chart at a base point is the inverse of the chart of the
tangent bundle, composed with the identification between the tangent bundle of the model space and
the product space. -/
theorem tangentMap_chart_symm {p : TangentBundle I M} {q : TangentBundle I H}
    (h : q.1 ∈ (chartAt H p.1).target) :
    tangentMap I I (chartAt H p.1).symm q =
      (chartAt (ModelProd H E) p).symm (TotalSpace.toProd H E q) := by
  dsimp only [tangentMap]
  rw [MDifferentiableAt.mfderiv (mdifferentiableAt_atlas_symm (chart_mem_atlas _ _) h)]
  simp only [ContinuousLinearMap.coe_coe, TangentBundle.chartAt, h, tangentBundleCore,
    mfld_simps, (· ∘ ·)]
  -- `simp` fails to apply `PartialEquiv.prod_symm` with `ModelProd`
  congr
  exact ((chartAt H (TotalSpace.proj p)).right_inv h).symm

lemma mfderiv_chartAt_eq_tangentCoordChange {x y : M} (hsrc : x ∈ (chartAt H y).source) :
    mfderiv I I (chartAt H y) x = tangentCoordChange I x y x := by
  have := mdifferentiableAt_atlas (I := I) (ChartedSpace.chart_mem_atlas _) hsrc
  simp [mfderiv, if_pos this, Function.comp_assoc]

/-- The preimage under the projection from the tangent bundle of a set with unique differential in
the basis also has unique differential. -/
theorem UniqueMDiffOn.tangentBundle_proj_preimage {s : Set M} (hs : UniqueMDiffOn I s) :
    UniqueMDiffOn I.tangent (π E (TangentSpace I) ⁻¹' s) :=
  hs.bundle_preimage _

/-- To write a linear map between tangent spaces in coordinates amounts to precomposing and
postcomposing it with derivatives of extended charts.
Concrete version of `inTangentCoordinates_eq`. -/
lemma inTangentCoordinates_eq_mfderiv_comp
    {N : Type*} {f : N → M} {g : N → M'}
    {ϕ : Π x : N, TangentSpace I (f x) →L[𝕜] TangentSpace I' (g x)} {x₀ : N} {x : N}
    (hx : f x ∈ (chartAt H (f x₀)).source) (hy : g x ∈ (chartAt H' (g x₀)).source) :
    inTangentCoordinates I I' f g ϕ x₀ x =
    (mfderiv I' 𝓘(𝕜, E') (extChartAt I' (g x₀)) (g x)) ∘L (ϕ x) ∘L
      (mfderivWithin 𝓘(𝕜, E) I (extChartAt I (f x₀)).symm (range I)
        (extChartAt I (f x₀) (f x))) := by
  rw [inTangentCoordinates_eq _ _ _ hx hy, tangentBundleCore_coordChange]
  congr
  · have : MDifferentiableAt I' 𝓘(𝕜, E') (extChartAt I' (g x₀)) (g x) :=
      mdifferentiableAt_extChartAt hy
    simp_all [mfderiv]
  · simp only [mfderivWithin, writtenInExtChartAt, modelWithCornersSelf_coe, range_id, inter_univ]
    rw [if_pos]
    · simp [Function.comp_def, PartialHomeomorph.left_inv (chartAt H (f x₀)) hx]
    · apply mdifferentiableWithinAt_extChartAt_symm
      apply (extChartAt I (f x₀)).map_source
      simpa using hx

open Bundle
variable (I) in
/-- The canonical identification between the tangent bundle to the model space and the product,
as a diffeomorphism -/
def tangentBundleModelSpaceDiffeomorph (n : ℕ∞) :
    TangentBundle I H ≃ₘ^n⟮I.tangent, I.prod 𝓘(𝕜, E)⟯ ModelProd H E where
  __ := TotalSpace.toProd H E
  contMDiff_toFun := contMDiff_tangentBundleModelSpaceHomeomorph
  contMDiff_invFun := contMDiff_tangentBundleModelSpaceHomeomorph_symm
```
