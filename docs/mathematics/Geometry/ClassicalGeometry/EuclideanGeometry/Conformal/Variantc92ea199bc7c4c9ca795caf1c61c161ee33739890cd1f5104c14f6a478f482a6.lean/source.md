# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Conformal.Variantc92ea199bc7c4c9ca795caf1c61c161ee33739890cd1f5104c14f6a478f482a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a0166bf0590f5894e3fd0b5e454f2684bd5b2e7` · SHA-256 `02e2e3e0af3e0c5d053732f5023d3ea7a7a973f3217ecdc601762f16e0dcf70d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.ClassicalGeometry.EuclideanGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.IsConformalMapPreservesAngle.Variant3c2a13f15806b2e15ae522ceee508bf93e62d1f49db1a1c0b26febfe433c63a7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3c2a13f15806b2e15ae522ceee508bf93e62d1f49db1a1c0b26febfe433c63a7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.EuclideanGeometry.SourceCorpus.IsConformalMapPreservesAngle.Variant3c2a13f15806b2e15ae522ceee508bf93e62d1f49db1a1c0b26febfe433c63a7","mathematical_subject":"Geometry.EuclideanGeometry","original_sha256":"3c2a13f15806b2e15ae522ceee508bf93e62d1f49db1a1c0b26febfe433c63a7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Geometry/Euclidean/Angle/Unoriented/Conformal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yourong Zang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yourong Zang
-/
import Mathlib.Analysis.Calculus.Conformal.NormedSpace
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

/-!
# Angles and conformal maps

This file proves that conformal maps preserve angles.

-/



namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.IsConformalMapPreservesAngle.Variant3c2a13f15806b2e15ae522ceee508bf93e62d1f49db1a1c0b26febfe433c63a7

namespace InnerProductGeometry

variable {E F : Type*}
variable [NormedAddCommGroup E] [NormedAddCommGroup F]
variable [InnerProductSpace ℝ E] [InnerProductSpace ℝ F]

theorem IsConformalMap.preserves_angle {f' : E →L[ℝ] F} (h : IsConformalMap f') (u v : E) :
    angle (f' u) (f' v) = angle u v := by
  obtain ⟨c, hc, li, rfl⟩ := h
  exact (angle_smul_smul hc _ _).trans (li.angle_map _ _)

/-- If a real differentiable map `f` is conformal at a point `x`,
    then it preserves the angles at that point. -/
theorem ConformalAt.preserves_angle {f : E → F} {x : E} {f' : E →L[ℝ] F} (h : HasFDerivAt f f' x)
    (H : ConformalAt f x) (u v : E) : angle (f' u) (f' v) = angle u v :=
  let ⟨_, h₁, c⟩ := H
  h₁.unique h ▸ IsConformalMap.preserves_angle c u v

end InnerProductGeometry
```
