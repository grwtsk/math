# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.BritishFlag.Variant1996c4d773ff19d6f7ae75cf80cc4ae28b985fdda34fb8ccd373d5c5c3a5ece5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `852864ff28d8308493ea2ef932c0608e3956c2fc` · SHA-256 `62cec6cf6e323b163072e618a29ce3768cd585f6e1cd5a7e2f3fbc523c237f35`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.ClassicalGeometry.EuclideanGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.NormSqAddNormSubAddSqEqNormSubSqAddNormSubSqAddTwoMulInner.Variant190ec3714759a597eb27078cf508d3dbfe4a830accd2854a1e78676238f0f1da","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"190ec3714759a597eb27078cf508d3dbfe4a830accd2854a1e78676238f0f1da","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.EuclideanGeometry.SourceCorpus.NormSqAddNormSubAddSqEqNormSubSqAddNormSubSqAddTwoMulInner.Variant190ec3714759a597eb27078cf508d3dbfe4a830accd2854a1e78676238f0f1da","mathematical_subject":"Geometry.EuclideanGeometry","original_sha256":"190ec3714759a597eb27078cf508d3dbfe4a830accd2854a1e78676238f0f1da","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Geometry/Euclidean/BritishFlag.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Daniel Liao. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Daniel Liao
-/
module

public import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine

/-!
# British flag theorem

This file proves the British flag theorem: for a rectangle `a b c d` and any point `p`, the sum
of the squares of the distances from `p` to the opposite corners `a` and `c` equals the sum of
the squares of the distances from `p` to `b` and `d`. The point `p` need not lie in the plane
of the rectangle.

The rectangle is expressed as a (possibly degenerate) parallelogram, in the form that the
diagonals `a c` and `b d` have the same midpoint, with a right angle at `a`. A generalization to
an arbitrary parallelogram, with a correction term involving the cosine of the angle at `a`, is
proved along the way.

## Main results

* `EuclideanGeometry.dist_sq_add_dist_sq_eq_dist_sq_add_dist_sq_of_angle_eq_pi_div_two`: the
  **British flag theorem**.
* `EuclideanGeometry.dist_sq_add_dist_sq_eq_dist_sq_add_dist_sq_iff_angle_eq_pi_div_two`: the
  if-and-only-if form: among parallelograms, the conclusion of the British flag theorem
  characterizes rectangles.

## References

* https://en.wikipedia.org/wiki/British_flag_theorem

-/


namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.NormSqAddNormSubAddSqEqNormSubSqAddNormSubSqAddTwoMulInner.Variant190ec3714759a597eb27078cf508d3dbfe4a830accd2854a1e78676238f0f1da

public section

open scoped EuclideanGeometry Real RealInnerProductSpace

namespace InnerProductGeometry

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]

/-- The identity underlying the British flag theorem, for the parallelogram with vertices `0`,
`u`, `u + v` and `v` and any point `x`, vector form. -/
theorem norm_sq_add_norm_sub_add_sq_eq_norm_sub_sq_add_norm_sub_sq_add_two_mul_inner (x u v : V) :
    ‖x‖ ^ 2 + ‖x - (u + v)‖ ^ 2 = ‖x - u‖ ^ 2 + ‖x - v‖ ^ 2 + 2 * ⟪u, v⟫ := by
  simp only [← real_inner_self_eq_norm_sq, inner_sub_left, inner_sub_right, inner_add_left,
    inner_add_right, real_inner_comm u x, real_inner_comm v x, real_inner_comm v u]
  ring

/-- British flag theorem, if-and-only-if vector form. -/
theorem norm_sq_add_norm_sub_add_sq_eq_norm_sub_sq_add_norm_sub_sq_iff_inner_eq_zero (x u v : V) :
    ‖x‖ ^ 2 + ‖x - (u + v)‖ ^ 2 = ‖x - u‖ ^ 2 + ‖x - v‖ ^ 2 ↔ ⟪u, v⟫ = 0 := by
  rw [norm_sq_add_norm_sub_add_sq_eq_norm_sub_sq_add_norm_sub_sq_add_two_mul_inner, add_eq_left,
    mul_eq_zero_iff_left two_ne_zero]

end InnerProductGeometry

namespace EuclideanGeometry

open InnerProductGeometry

variable {V : Type*} {P : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [MetricSpace P]
  [NormedAddTorsor V P]

/-- The British flag identity for a parallelogram, with the correction term written as an inner
product. -/
theorem dist_sq_add_dist_sq_eq_dist_sq_add_dist_sq_add_two_mul_inner {a b c d : P}
    (h : midpoint ℝ a c = midpoint ℝ b d) (p : P) :
    dist p a ^ 2 + dist p c ^ 2 = dist p b ^ 2 + dist p d ^ 2 + 2 * ⟪b -ᵥ a, d -ᵥ a⟫ := by
  have hd : c -ᵥ a = b -ᵥ a + (d -ᵥ a) := by
    rw [← vsub_add_vsub_cancel c d a, ← neg_vsub_eq_vsub_rev d c,
      ← (midpoint_eq_midpoint_iff_vsub_eq_vsub ℝ).mp h, neg_vsub_eq_vsub_rev]
  rw [dist_eq_norm_vsub V p a, dist_eq_norm_vsub V p b, dist_eq_norm_vsub V p c,
    dist_eq_norm_vsub V p d, ← vsub_sub_vsub_cancel_right p b a,
    ← vsub_sub_vsub_cancel_right p d a, ← vsub_sub_vsub_cancel_right p c a, hd,
    norm_sq_add_norm_sub_add_sq_eq_norm_sub_sq_add_norm_sub_sq_add_two_mul_inner]

/-- The British flag theorem generalized to parallelograms, with a correction term of twice the
product of the sides at `a` and the cosine of the angle at `a`. -/
theorem dist_sq_add_dist_sq_eq_dist_sq_add_dist_sq_add_two_mul_dist_mul_dist_mul_cos_angle
    {a b c d : P} (h : midpoint ℝ a c = midpoint ℝ b d) (p : P) :
    dist p a ^ 2 + dist p c ^ 2 =
      dist p b ^ 2 + dist p d ^ 2 + 2 * dist b a * dist d a * Real.cos (∠ b a d) := by
  rw [dist_sq_add_dist_sq_eq_dist_sq_add_dist_sq_add_two_mul_inner h p, dist_eq_norm_vsub V b a,
    dist_eq_norm_vsub V d a, angle, ← cos_angle_mul_norm_mul_norm]
  ring

/-- **British flag theorem**, if-and-only-if form: for a parallelogram `a b c d` and any point
`p`, the British flag identity holds if and only if the angle at `a` is a right angle. -/
theorem dist_sq_add_dist_sq_eq_dist_sq_add_dist_sq_iff_angle_eq_pi_div_two {a b c d : P}
    (h : midpoint ℝ a c = midpoint ℝ b d) (p : P) :
    dist p a ^ 2 + dist p c ^ 2 = dist p b ^ 2 + dist p d ^ 2 ↔ ∠ b a d = π / 2 := by
  rw [angle, ← inner_eq_zero_iff_angle_eq_pi_div_two,
    dist_sq_add_dist_sq_eq_dist_sq_add_dist_sq_add_two_mul_inner h p, add_eq_left,
    mul_eq_zero_iff_left two_ne_zero]

/-- **British flag theorem**: for a rectangle `a b c d` and any point `p` (not necessarily in
the plane of the rectangle), the sum of the squares of the distances from `p` to the opposite
corners `a` and `c` equals the sum of the squares of the distances from `p` to `b` and `d`. -/
theorem dist_sq_add_dist_sq_eq_dist_sq_add_dist_sq_of_angle_eq_pi_div_two {a b c d : P}
    (h : midpoint ℝ a c = midpoint ℝ b d) (ha : ∠ b a d = π / 2) (p : P) :
    dist p a ^ 2 + dist p c ^ 2 = dist p b ^ 2 + dist p d ^ 2 :=
  (dist_sq_add_dist_sq_eq_dist_sq_add_dist_sq_iff_angle_eq_pi_div_two h p).mpr ha

end EuclideanGeometry
```
