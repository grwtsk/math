# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AffineMap.Variantd9f85660cc1f98b2dacbf7e22d23669a110b44142ac32fe20d245b9d871042cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `793b314cbe1d0a74f5556a214eaa8324a8208412` · SHA-256 `9b535e1d30f71c300890174cff71376896374a8688cbe561c74a650e55f52510`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ContDiff.Variant816a0b3a414d44d1352872f7fc4f421981739188efd1a75c3d358e73cd8833f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"816a0b3a414d44d1352872f7fc4f421981739188efd1a75c3d358e73cd8833f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ContDiff.Variant816a0b3a414d44d1352872f7fc4f421981739188efd1a75c3d358e73cd8833f6","mathematical_subject":"Analysis.Calculus","original_sha256":"816a0b3a414d44d1352872f7fc4f421981739188efd1a75c3d358e73cd8833f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Calculus/AddTorsor/AffineMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
module

public import Mathlib.Analysis.Calculus.ContDiff.Operations
public import Mathlib.Topology.Algebra.ContinuousAffineMap
public import Mathlib.Analysis.Normed.Group.AddTorsor

/-!
# Smooth affine maps

This file contains results about smoothness of affine maps.

## Main results

* `ContinuousAffineMap.contDiff`: a continuous affine map is smooth.
* `AffineMap.contDiff_lineMap_uncurry`: `AffineMap.lineMap` is smooth in its three arguments,
  jointly and pointwise.

-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ContDiff.Variant816a0b3a414d44d1352872f7fc4f421981739188efd1a75c3d358e73cd8833f6

public section
namespace ContinuousAffineMap

variable {𝕜 V W : Type*} [NontriviallyNormedField 𝕜]
variable [NormedAddCommGroup V] [NormedSpace 𝕜 V]
variable [NormedAddCommGroup W] [NormedSpace 𝕜 W]

/-- A continuous affine map between normed vector spaces is smooth. -/
theorem contDiff {n : WithTop ℕ∞} (f : V →ᴬ[𝕜] W) : ContDiff 𝕜 n f := by
  rw [f.decomp]
  apply f.contLinear.contDiff.add
  exact contDiff_const

end ContinuousAffineMap

namespace AffineMap

variable {𝕜 V : Type*} [NontriviallyNormedField 𝕜]
variable [NormedAddCommGroup V] [NormedSpace 𝕜 V]

/-- `AffineMap.lineMap` is smooth in all three arguments. -/
@[fun_prop]
theorem contDiff_lineMap_uncurry {n : WithTop ℕ∞} :
    ContDiff 𝕜 n (fun pqc : V × V × 𝕜 ↦ AffineMap.lineMap pqc.1 pqc.2.1 pqc.2.2) := by
  simp only [AffineMap.lineMap_apply_module]
  fun_prop

/-- `AffineMap.lineMap` is smooth as a function `𝕜 → V`. -/
theorem contDiff_lineMap (p₀ p₁ : V) {n : WithTop ℕ∞} :
    ContDiff 𝕜 n (AffineMap.lineMap p₀ p₁ : 𝕜 → V) := by
  fun_prop

end AffineMap

section LineMapComp

variable {𝕜 V E : Type*} [NontriviallyNormedField 𝕜]
variable [NormedAddCommGroup V] [NormedSpace 𝕜 V]
variable [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {f₁ f₂ : E → V} {g : E → 𝕜} {s : Set E} {x : E} {n : WithTop ℕ∞}

@[fun_prop]
theorem ContDiffWithinAt.lineMap (h₁ : ContDiffWithinAt 𝕜 n f₁ s x)
    (h₂ : ContDiffWithinAt 𝕜 n f₂ s x) (hg : ContDiffWithinAt 𝕜 n g s x) :
    ContDiffWithinAt 𝕜 n (fun x ↦ AffineMap.lineMap (f₁ x) (f₂ x) (g x)) s x := by
  simp only [AffineMap.lineMap_apply_module]
  fun_prop

theorem ContDiffAt.lineMap (h₁ : ContDiffAt 𝕜 n f₁ x)
    (h₂ : ContDiffAt 𝕜 n f₂ x) (hg : ContDiffAt 𝕜 n g x) :
    ContDiffAt 𝕜 n (fun x ↦ AffineMap.lineMap (f₁ x) (f₂ x) (g x)) x := by
  fun_prop

theorem ContDiffOn.lineMap (h₁ : ContDiffOn 𝕜 n f₁ s)
    (h₂ : ContDiffOn 𝕜 n f₂ s) (hg : ContDiffOn 𝕜 n g s) :
    ContDiffOn 𝕜 n (fun x ↦ AffineMap.lineMap (f₁ x) (f₂ x) (g x)) s := by
  fun_prop

theorem ContDiff.lineMap (h₁ : ContDiff 𝕜 n f₁)
    (h₂ : ContDiff 𝕜 n f₂) (hg : ContDiff 𝕜 n g) :
    ContDiff 𝕜 n (fun x ↦ AffineMap.lineMap (f₁ x) (f₂ x) (g x)) := by
  fun_prop

end LineMapComp
```
