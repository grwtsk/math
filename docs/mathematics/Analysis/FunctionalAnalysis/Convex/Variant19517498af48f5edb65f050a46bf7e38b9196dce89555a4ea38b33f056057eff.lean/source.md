# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Convex.Variant19517498af48f5edb65f050a46bf7e38b9196dce89555a4ea38b33f056057eff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6270af53cfec601eebf44d5b8ccbfdf75a99656c` · SHA-256 `6b044df49b4f3a137932c856e11e72503dba9ea11efdeb05f63f3a7c313dc3a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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

```
