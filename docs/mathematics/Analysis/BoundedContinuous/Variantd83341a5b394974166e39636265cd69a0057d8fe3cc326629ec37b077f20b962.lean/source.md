# Complete source: GRWTSK.Analysis.BoundedContinuous.Variantd83341a5b394974166e39636265cd69a0057d8fe3cc326629ec37b077f20b962

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbf35faed31147d6ff852fb48bba39fe7a7d43b1` · SHA-256 `ad19ddbc277b22d553b6960d7509b93d20dfe3d77623219882fde32699739df4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RestrictToContinuousMapEqToContinuousMapStarRestrict.Variant93b47dc634795cdeb915236bca878c722723af409a4465498500f1c0402208c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"93b47dc634795cdeb915236bca878c722723af409a4465498500f1c0402208c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.RestrictToContinuousMapEqToContinuousMapStarRestrict.Variant93b47dc634795cdeb915236bca878c722723af409a4465498500f1c0402208c7","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"93b47dc634795cdeb915236bca878c722723af409a4465498500f1c0402208c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/RCLike/BoundedContinuous.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jakob Stiefel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob Stiefel
-/
import Mathlib.Algebra.Algebra.Subalgebra.Tower
import Mathlib.Analysis.NormedSpace.OperatorNorm.NNNorm
import Mathlib.Analysis.RCLike.Basic
import Mathlib.Topology.ContinuousMap.Bounded.Star

/-! # Results on bounded continuous functions with `RCLike` values -/


namespace GRWTSK.Analysis.RestrictToContinuousMapEqToContinuousMapStarRestrict.Variant93b47dc634795cdeb915236bca878c722723af409a4465498500f1c0402208c7

open Filter Real RCLike BoundedContinuousFunction

open scoped Topology

variable (𝕜 E : Type*) [RCLike 𝕜] [PseudoEMetricSpace E]

namespace RCLike

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
    StarSubalgebra.mem_toSubalgebra, toContinuousMapₐ_apply, StarSubalgebra.mem_map]
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
        (x.comp reCLM (@reCLM 𝕜 _).lipschitz) = x := by
      ext a
      simp [hg_apply]
    use x.comp reCLM (@reCLM 𝕜 _).lipschitz
    refine ⟨by rwa [h_comp_eq], ?_⟩
    ext a
    simp [hg_apply]

end RCLike
```
