# Complete source: GRWTSK.Topology.GeneralTopology.BoundedContinuous.Variant3d04e80f4f1e429e91167aa27428930dc81a1dd92d35b450cf2f7f518bc224e2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a93a67ec32e58b34c718e1e4f43e94a783a3608f` · SHA-256 `abdd1c8c789bc2bd732cbd4eb6ef99c2667effe8a5f70c339aa76cdc220c74db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.RestrictToContinuousMapEqToContinuousMapStarRestrict.Variantf8678ac31dfa0f87091b871a4288431ebfc86012167bd00376f40d256a9c968b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f8678ac31dfa0f87091b871a4288431ebfc86012167bd00376f40d256a9c968b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.RestrictToContinuousMapEqToContinuousMapStarRestrict.Variantf8678ac31dfa0f87091b871a4288431ebfc86012167bd00376f40d256a9c968b","mathematical_subject":"Topology.GeneralTopology","original_sha256":"f8678ac31dfa0f87091b871a4288431ebfc86012167bd00376f40d256a9c968b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/RCLike/BoundedContinuous.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jakob Stiefel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob Stiefel
-/
module

public import Mathlib.Algebra.Algebra.Subalgebra.Tower
public import Mathlib.Analysis.Normed.Operator.NNNorm
public import Mathlib.Analysis.RCLike.Basic
public import Mathlib.Topology.ContinuousMap.Bounded.Star

/-! # Results on bounded continuous functions with `RCLike` values -/


namespace GRWTSK.Topology.GeneralTopology.RestrictToContinuousMapEqToContinuousMapStarRestrict.Variantf8678ac31dfa0f87091b871a4288431ebfc86012167bd00376f40d256a9c968b

public section

open Real RCLike BoundedContinuousFunction

open scoped Topology

variable (𝕜 E : Type*) [RCLike 𝕜] [PseudoEMetricSpace E]

namespace RCLike

set_option backward.isDefEq.respectTransparency false in
/-- On a star subalgebra of bounded continuous functions, the operations "restrict scalars to ℝ"
and "forget that a bounded continuous function is a bounded" commute. -/
theorem restrict_toContinuousMap_eq_toContinuousMapStar_restrict
    {A : StarSubalgebra 𝕜 (E →ᵇ 𝕜)} :
    ((A.restrictScalars ℝ).comap
    (AlgHom.compLeftContinuousBounded ℝ ofRealAm lipschitzWith_ofReal)).map (toContinuousMapₐ ℝ) =
    ((A.map (toContinuousMapStarₐ 𝕜)).restrictScalars ℝ).comap
    (ofRealAm.compLeftContinuous ℝ continuous_ofReal) := by
  ext g
  simp only [Subalgebra.mem_map, Subalgebra.mem_comap, Subalgebra.mem_restrictScalars,
    StarSubalgebra.mem_toSubalgebra, StarSubalgebra.mem_map]
  constructor
  · intro ⟨x, hxA, hxg⟩
    use (@ofRealAm 𝕜 _).compLeftContinuousBounded ℝ lipschitzWith_ofReal x, hxA
    ext a
    simp only [toContinuousMapStarₐ_apply_apply, AlgHom.compLeftContinuousBounded_apply_apply,
      ofRealAm_coe, AlgHom.compLeftContinuous_apply_apply, algebraMap.coe_inj]
    exact DFunLike.congr_fun hxg a
  · intro ⟨x, hxA, hxg⟩
    have hg_apply (a : E) := DFunLike.congr_fun hxg a
    simp only [toContinuousMapStarₐ_apply_apply, AlgHom.compLeftContinuous_apply_apply,
      ofRealAm_coe] at hg_apply
    have h_comp_eq : (@ofRealAm 𝕜 _).compLeftContinuousBounded ℝ lipschitzWith_ofReal
        (x.comp reCLM (@reCLM 𝕜 _).lipschitzWith) = x := by
      ext a
      simp [hg_apply]
    use x.comp reCLM (@reCLM 𝕜 _).lipschitzWith
    refine ⟨by rwa [h_comp_eq], ?_⟩
    ext a
    simp [hg_apply]

end RCLike
```
