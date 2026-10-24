# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.CrossProduct.Variant7e3be83db965697c42737cda61b66f45b1decfab23a7fa1d9ab47b52dcd4b2fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58d25c143574f1d2aa918e05d879843336f9952d` · SHA-256 `596526d76f9ccb459ccbf2814d12630d9f48b567161f38b0d16b421a9e74d74b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.ClassicalGeometry.EuclideanGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.NormWithLpEquivCrossProduct.Variantb9d8e3b62b8a2af301dc33156b34a90bb6a4cb8f506bb294cb5f00e01cfc7193","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b9d8e3b62b8a2af301dc33156b34a90bb6a4cb8f506bb294cb5f00e01cfc7193","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.EuclideanGeometry.SourceCorpus.NormWithLpEquivCrossProduct.Variantb9d8e3b62b8a2af301dc33156b34a90bb6a4cb8f506bb294cb5f00e01cfc7193","mathematical_subject":"Geometry.EuclideanGeometry","original_sha256":"b9d8e3b62b8a2af301dc33156b34a90bb6a4cb8f506bb294cb5f00e01cfc7193","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Geometry/Euclidean/Angle/Unoriented/CrossProduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Vedant Gupta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Vedant Gupta, Thomas Browning, Eric Wieser
-/
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.LinearAlgebra.CrossProduct

/-!
# Norm of cross-products

This file proves `InnerProductGeometry.norm_withLpEquiv_crossProduct`, relating the norm of the
cross-product of two real vectors with their individual norms.
-/


namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.NormWithLpEquivCrossProduct.Variantb9d8e3b62b8a2af301dc33156b34a90bb6a4cb8f506bb294cb5f00e01cfc7193

open Real
open Matrix

namespace InnerProductGeometry

open scoped RealInnerProductSpace

/-- The L2 norm of the cross product of two real vectors (of type `EuclideanSpace ℝ (Fin 3)`)
equals the product of their individual norms times the sine of the angle between them. -/
theorem norm_withLpEquiv_crossProduct (a b : EuclideanSpace ℝ (Fin 3)) :
    ‖(WithLp.equiv 2 (Fin 3 → ℝ)).symm (WithLp.equiv _ _ a ×₃ WithLp.equiv _ _ b)‖ =
    ‖a‖ * ‖b‖ * sin (angle a b) := by
  have := sin_angle_nonneg a b
  refine sq_eq_sq₀ (by positivity) (by positivity) |>.mp ?_
  trans ‖a‖^2 * ‖b‖^2 - ⟪a, b⟫ ^ 2
  · simp_rw [norm_sq_eq_re_inner (𝕜 := ℝ), EuclideanSpace.inner_eq_star_dotProduct, star_trivial,
      RCLike.re_to_real, Equiv.apply_symm_apply, cross_dot_cross,
      dotProduct_comm (WithLp.equiv _ _ b) (WithLp.equiv _ _ a), sq]
  · linear_combination (‖a‖ * ‖b‖) ^ 2 * (sin_sq_add_cos_sq (angle a b)).symm +
      congrArg (· ^ 2) (cos_angle_mul_norm_mul_norm a b)

/-- The L2 norm of the cross product of two real vectors (of type `Fin 3 → R`) equals the product
of their individual L2 norms times the sine of the angle between them. -/
theorem norm_withLpEquiv_symm_crossProduct (a b : Fin 3 → ℝ) :
    ‖(WithLp.equiv 2 (Fin 3 → ℝ)).symm (a ×₃ b)‖ =
    ‖(WithLp.equiv 2 (Fin 3 → ℝ)).symm a‖ * ‖(WithLp.equiv 2 (Fin 3 → ℝ)).symm b‖ *
      sin (angle ((WithLp.equiv 2 (Fin 3 → ℝ)).symm a) ((WithLp.equiv 2 (Fin 3 → ℝ)).symm b)) := by
  rw [← norm_withLpEquiv_crossProduct ((WithLp.equiv _ _).symm a) ((WithLp.equiv _ _).symm b)]
  simp

end InnerProductGeometry
```
