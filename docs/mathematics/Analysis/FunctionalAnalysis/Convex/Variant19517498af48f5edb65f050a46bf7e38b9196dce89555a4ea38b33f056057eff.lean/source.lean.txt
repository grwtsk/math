-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.Uniform.Variant6e86dd2cd5318a71b93137e4b028998981af06b704e4c53632f5e51b9045b2d2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e86dd2cd5318a71b93137e4b028998981af06b704e4c53632f5e51b9045b2d2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.Uniform.Variant6e86dd2cd5318a71b93137e4b028998981af06b704e4c53632f5e51b9045b2d2","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"6e86dd2cd5318a71b93137e4b028998981af06b704e4c53632f5e51b9045b2d2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/InnerProductSpace/Convex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Zhouhang Zhou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Zhouhang Zhou, Sébastien Gouëzel, Frédéric Dupuis
-/

import Mathlib.Analysis.Convex.Uniform
import Mathlib.Analysis.InnerProductSpace.Basic

/-!
# Convexity properties of inner product spaces

## Main results

- `InnerProductSpace.toUniformConvexSpace`: an inner product space is a uniformly convex space.

## Tags

inner product space, Hilbert space, norm

-/



namespace GRWTSK.Analysis.FunctionalAnalysis.Uniform.Variant6e86dd2cd5318a71b93137e4b028998981af06b704e4c53632f5e51b9045b2d2

noncomputable section

open RCLike Real Filter Topology ComplexConjugate Finsupp
open LinearMap (BilinForm)

variable {𝕜 E F : Type*} [RCLike 𝕜] [SeminormedAddCommGroup E] [InnerProductSpace 𝕜 E]
  [SeminormedAddCommGroup F] [InnerProductSpace ℝ F]

-- See note [lower instance priority]
instance (priority := 100) InnerProductSpace.toUniformConvexSpace : UniformConvexSpace F :=
  ⟨fun ε hε => by
    refine
      ⟨2 - √(4 - ε ^ 2), sub_pos_of_lt <| (sqrt_lt' zero_lt_two).2 ?_, fun x hx y hy hxy => ?_⟩
    · norm_num
      exact pow_pos hε _
    rw [sub_sub_cancel]
    refine le_sqrt_of_sq_le ?_
    rw [sq, eq_sub_iff_add_eq.2 (parallelogram_law_with_norm ℝ x y), ← sq ‖x - y‖, hx, hy]
    ring_nf
    gcongr⟩

