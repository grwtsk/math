# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DimOne.Variant12f64db03e2416fce670f33c51e74182cd406ae29acce056304a0a547a79c47f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e2e34c6ad04894a4b181341e79f000f40a6a751` · SHA-256 `6622f67b4ae24948e294f3355f6ab9b1670e409998ac4913f4cef5011de9827a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.TangentConeAtEqUniv.Variantb1b337c4131b891723efd29aa33c6327d9da35d0c31905c3818c865cbfb9d78f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b1b337c4131b891723efd29aa33c6327d9da35d0c31905c3818c865cbfb9d78f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.TangentConeAtEqUniv.Variantb1b337c4131b891723efd29aa33c6327d9da35d0c31905c3818c865cbfb9d78f","mathematical_subject":"Analysis.Calculus","original_sha256":"b1b337c4131b891723efd29aa33c6327d9da35d0c31905c3818c865cbfb9d78f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Calculus/TangentCone/DimOne.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel, Yury Kudryashov
-/
module

public import Mathlib.Analysis.Calculus.TangentCone.Defs
import Mathlib.Analysis.Calculus.TangentCone.Basic
import Mathlib.Analysis.Normed.Group.Uniform
public import Mathlib.Analysis.Normed.Field.Basic

/-!
# Unique differentiability property of a set in the base field

In this file we prove that a set in the base field has the unique differentiability property at `x`
iff `x` is an accumulation point of the set, see `uniqueDiffWithinAt_iff_accPt`.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.TangentConeAtEqUniv.Variantb1b337c4131b891723efd29aa33c6327d9da35d0c31905c3818c865cbfb9d78f

public section

open Filter Set
open scoped Topology

variable {𝕜 : Type*} [NormedDivisionRing 𝕜]

/-- The tangent cone at a non-isolated point in dimension 1 is the whole space. -/
theorem tangentConeAt_eq_univ {s : Set 𝕜} {x : 𝕜} (hx : AccPt x (𝓟 s)) :
    tangentConeAt 𝕜 s x = univ := by
  refine eq_univ_of_forall fun y ↦ ?_
  apply mem_tangentConeAt_of_frequently (𝓝[≠] x) (fun z ↦ y / (z - x)) (· - x)
  · exact Continuous.tendsto' (by fun_prop) _ _ (by simp) |>.mono_left inf_le_left
  · simpa [accPt_iff_frequently_nhdsNE] using hx
  · apply tendsto_nhds_of_eventually_eq
    refine eventually_mem_nhdsWithin.mono fun z hz ↦ ?_
    have : z - x ≠ 0 := by simpa [sub_eq_zero] using hz
    simp [div_mul_cancel₀ _ this]

/-- In one dimension, a point is a point of unique differentiability of a set
iff it is an accumulation point of the set. -/
theorem uniqueDiffWithinAt_iff_accPt {s : Set 𝕜} {x : 𝕜} :
    UniqueDiffWithinAt 𝕜 s x ↔ AccPt x (𝓟 s) :=
  ⟨UniqueDiffWithinAt.accPt, fun h ↦
    ⟨by simp [tangentConeAt_eq_univ h], mem_closure_iff_clusterPt.mpr h.clusterPt⟩⟩

alias ⟨_, AccPt.uniqueDiffWithinAt⟩ := uniqueDiffWithinAt_iff_accPt
```
