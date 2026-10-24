# Complete source: GRWTSK.Topology.MetricTopology.Basic.Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29906d71d40aff862123d44634945ae14980abe2` · SHA-256 `081d6522f06e050b4a20ac6df86ac26d0e07b857e31799692cd0ac6955078a35`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.Inversion.Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.Inversion.Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029","mathematical_subject":"Topology.MetricSpaces","original_sha256":"1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Geometry/Euclidean/Inversion/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Normed.Group.AddTorsor
import Mathlib.Tactic.AdaptationNote

/-!
# Inversion in an affine space

In this file we define inversion in a sphere in an affine space. This map sends each point `x` to
the point `y` such that `y -ᵥ c = (R / dist x c) ^ 2 • (x -ᵥ c)`, where `c` and `R` are the center
and the radius the sphere.

In many applications, it is convenient to assume that the inversions swaps the center and the point
at infinity. In order to stay in the original affine space, we define the map so that it sends
center to itself.

Currently, we prove only a few basic lemmas needed to prove Ptolemy's inequality, see
`EuclideanGeometry.mul_dist_le_mul_dist_add_mul_dist`.
-/


namespace GRWTSK.Topology.MetricTopology.Inversion.Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029

noncomputable section

open Metric Function AffineMap Set AffineSubspace
open scoped Topology

variable {V P : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [MetricSpace P]
  [NormedAddTorsor V P]

namespace EuclideanGeometry

variable {c x y : P} {R : ℝ}

/-- Inversion in a sphere in an affine space. This map sends each point `x` to the point `y` such
that `y -ᵥ c = (R / dist x c) ^ 2 • (x -ᵥ c)`, where `c` and `R` are the center and the radius the
sphere. -/
def inversion (c : P) (R : ℝ) (x : P) : P :=
  (R / dist x c) ^ 2 • (x -ᵥ c) +ᵥ c

theorem inversion_def :
    inversion = fun (c : P) (R : ℝ) (x : P) => (R / dist x c) ^ 2 • (x -ᵥ c) +ᵥ c :=
  rfl

/-!
### Basic properties

In this section we prove that `EuclideanGeometry.inversion c R` is involutive and preserves the
sphere `Metric.sphere c R`. We also prove that the distance to the center of the image of `x` under
this inversion is given by `R ^ 2 / dist x c`.
-/

theorem inversion_eq_lineMap (c : P) (R : ℝ) (x : P) :
    inversion c R x = lineMap c x ((R / dist x c) ^ 2) :=
  rfl

theorem inversion_vsub_center (c : P) (R : ℝ) (x : P) :
    inversion c R x -ᵥ c = (R / dist x c) ^ 2 • (x -ᵥ c) :=
  vadd_vsub _ _

@[simp]
theorem inversion_self (c : P) (R : ℝ) : inversion c R c = c := by simp [inversion]

@[simp]
theorem inversion_zero_radius (c x : P) : inversion c 0 x = c := by simp [inversion]

theorem inversion_mul (c : P) (a R : ℝ) (x : P) :
    inversion c (a * R) x = homothety c (a ^ 2) (inversion c R x) := by
  simp only [inversion_eq_lineMap, ← homothety_eq_lineMap, ← homothety_mul_apply, mul_div_assoc,
    mul_pow]

@[simp]
theorem inversion_dist_center (c x : P) : inversion c (dist x c) x = x := by
  rcases eq_or_ne x c with (rfl | hne)
  · apply inversion_self
  · rw [inversion, div_self, one_pow, one_smul, vsub_vadd]
    rwa [dist_ne_zero]

@[simp]
theorem inversion_dist_center' (c x : P) : inversion c (dist c x) x = x := by
  rw [dist_comm, inversion_dist_center]

theorem inversion_of_mem_sphere (h : x ∈ Metric.sphere c R) : inversion c R x = x :=
  h.out ▸ inversion_dist_center c x

/-- Distance from the image of a point under inversion to the center. This formula accidentally
works for `x = c`. -/
theorem dist_inversion_center (c x : P) (R : ℝ) : dist (inversion c R x) c = R ^ 2 / dist x c := by
  rcases eq_or_ne x c with (rfl | hx)
  · simp
  have : dist x c ≠ 0 := dist_ne_zero.2 hx
  -- was `field_simp [inversion, norm_smul, abs_div, ← dist_eq_norm_vsub, sq, mul_assoc]`,
  -- but really slow. Replaced by `simp only ...` to speed up.
  -- TODO(https://github.com/leanprover-community/mathlib4/issues/15486): reinstate `field_simp` once it is faster.
  simp (disch := field_simp_discharge) only [inversion, sq, mul_div_assoc', div_mul_eq_mul_div,
    div_div, dist_vadd_left, norm_smul, norm_div, norm_mul, Real.norm_eq_abs, abs_mul_abs_self,
    abs_dist, ← dist_eq_norm_vsub, mul_assoc, eq_div_iff, div_eq_iff]

/-- Distance from the center of an inversion to the image of a point under the inversion. This
formula accidentally works for `x = c`. -/
theorem dist_center_inversion (c x : P) (R : ℝ) : dist c (inversion c R x) = R ^ 2 / dist c x := by
  rw [dist_comm c, dist_comm c, dist_inversion_center]

@[simp]
theorem inversion_inversion (c : P) {R : ℝ} (hR : R ≠ 0) (x : P) :
    inversion c R (inversion c R x) = x := by
  rcases eq_or_ne x c with (rfl | hne)
  · rw [inversion_self, inversion_self]
  · rw [inversion, dist_inversion_center, inversion_vsub_center, smul_smul, ← mul_pow,
      div_mul_div_comm, div_mul_cancel₀ _ (dist_ne_zero.2 hne), ← sq, div_self, one_pow, one_smul,
      vsub_vadd]
    exact pow_ne_zero _ hR

theorem inversion_involutive (c : P) {R : ℝ} (hR : R ≠ 0) : Involutive (inversion c R) :=
  inversion_inversion c hR

theorem inversion_surjective (c : P) {R : ℝ} (hR : R ≠ 0) : Surjective (inversion c R) :=
  (inversion_involutive c hR).surjective

theorem inversion_injective (c : P) {R : ℝ} (hR : R ≠ 0) : Injective (inversion c R) :=
  (inversion_involutive c hR).injective

theorem inversion_bijective (c : P) {R : ℝ} (hR : R ≠ 0) : Bijective (inversion c R) :=
  (inversion_involutive c hR).bijective

theorem inversion_eq_center (hR : R ≠ 0) : inversion c R x = c ↔ x = c :=
  (inversion_injective c hR).eq_iff' <| inversion_self _ _

@[simp]
theorem inversion_eq_center' : inversion c R x = c ↔ x = c ∨ R = 0 := by
  by_cases hR : R = 0 <;> simp [inversion_eq_center, hR]

theorem center_eq_inversion (hR : R ≠ 0) : c = inversion c R x ↔ x = c :=
  eq_comm.trans (inversion_eq_center hR)

@[simp]
theorem center_eq_inversion' : c = inversion c R x ↔ x = c ∨ R = 0 :=
  eq_comm.trans inversion_eq_center'

/-!
### Similarity of triangles

If inversion with center `O` sends `A` to `A'` and `B` to `B'`, then the triangle `OB'A'` is similar
to the triangle `OAB` with coefficient `R ^ 2 / (|OA|*|OB|)` and the triangle `OA'B` is similar to
the triangle `OAB'` with coefficient `|OB|/|OA|`. We formulate these statements in terms of ratios
of the lengths of their sides.
-/

/-- Distance between the images of two points under an inversion. -/
theorem dist_inversion_inversion (hx : x ≠ c) (hy : y ≠ c) (R : ℝ) :
    dist (inversion c R x) (inversion c R y) = R ^ 2 / (dist x c * dist y c) * dist x y := by
  dsimp only [inversion]
  simp_rw [dist_vadd_cancel_right, dist_eq_norm_vsub V _ c]
  simpa only [dist_vsub_cancel_right] using
    dist_div_norm_sq_smul (vsub_ne_zero.2 hx) (vsub_ne_zero.2 hy) R

theorem dist_inversion_mul_dist_center_eq (hx : x ≠ c) (hy : y ≠ c) :
    dist (inversion c R x) y * dist x c = dist x (inversion c R y) * dist y c := by
  rcases eq_or_ne R 0 with rfl | hR; · simp [dist_comm, mul_comm]
  have hy' : inversion c R y ≠ c := by simp [*]
  conv in dist _ y => rw [← inversion_inversion c hR y]
  rw [dist_inversion_inversion hx hy', dist_inversion_center]
  have : dist x c ≠ 0 := dist_ne_zero.2 hx
  -- used to be `field_simp`, but was really slow; replaced by `simp only ...` to speed up
  -- TODO(https://github.com/leanprover-community/mathlib4/issues/15486): reinstate `field_simp` once it is faster.
  simp (disch := field_simp_discharge) only [mul_div_assoc', div_div_eq_mul_div, div_mul_eq_mul_div,
    div_eq_iff]
  ring

/-!
### Ptolemy's inequality
-/

include V in
/-- **Ptolemy's inequality**: in a quadrangle `ABCD`, `|AC| * |BD| ≤ |AB| * |CD| + |BC| * |AD|`. If
`ABCD` is a convex cyclic polygon, then this inequality becomes an equality, see
`EuclideanGeometry.mul_dist_add_mul_dist_eq_mul_dist_of_cospherical`. -/
theorem mul_dist_le_mul_dist_add_mul_dist (a b c d : P) :
    dist a c * dist b d ≤ dist a b * dist c d + dist b c * dist a d := by
  -- If one of the points `b`, `c`, `d` is equal to `a`, then the inequality is trivial.
  rcases eq_or_ne b a with (rfl | hb)
  · rw [dist_self, zero_mul, zero_add]
  rcases eq_or_ne c a with (rfl | hc)
  · rw [dist_self, zero_mul]
    positivity
  rcases eq_or_ne d a with (rfl | hd)
  · rw [dist_self, mul_zero, add_zero, dist_comm d, dist_comm d, mul_comm]
  /- Otherwise, we apply the triangle inequality to `EuclideanGeometry.inversion a 1 b`,
    `EuclideanGeometry.inversion a 1 c`, and `EuclideanGeometry.inversion a 1 d`. -/
  have H := dist_triangle (inversion a 1 b) (inversion a 1 c) (inversion a 1 d)
  rw [dist_inversion_inversion hb hd, dist_inversion_inversion hb hc,
    dist_inversion_inversion hc hd, one_pow] at H
  rw [← dist_pos] at hb hc hd
  rw [← div_le_div_iff_of_pos_right (mul_pos hb (mul_pos hc hd))]
  convert H using 1 <;> (field_simp [hb.ne', hc.ne', hd.ne', dist_comm a]; ring)

end EuclideanGeometry

open EuclideanGeometry

/-!
### Continuity of inversion
-/

protected theorem Filter.Tendsto.inversion {α : Type*} {x c : P} {R : ℝ} {l : Filter α}
    {fc fx : α → P} {fR : α → ℝ} (hc : Tendsto fc l (𝓝 c)) (hR : Tendsto fR l (𝓝 R))
    (hx : Tendsto fx l (𝓝 x)) (hne : x ≠ c) :
    Tendsto (fun a ↦ inversion (fc a) (fR a) (fx a)) l (𝓝 (inversion c R x)) :=
  (((hR.div (hx.dist hc) <| dist_ne_zero.2 hne).pow 2).smul (hx.vsub hc)).vadd hc

variable {X : Type*} [TopologicalSpace X] {c x : X → P} {R : X → ℝ} {a₀ : X} {s : Set X}

protected nonrec theorem ContinuousWithinAt.inversion (hc : ContinuousWithinAt c s a₀)
    (hR : ContinuousWithinAt R s a₀) (hx : ContinuousWithinAt x s a₀) (hne : x a₀ ≠ c a₀) :
    ContinuousWithinAt (fun a ↦ inversion (c a) (R a) (x a)) s a₀ :=
  hc.inversion hR hx hne

protected nonrec theorem ContinuousAt.inversion (hc : ContinuousAt c a₀) (hR : ContinuousAt R a₀)
    (hx : ContinuousAt x a₀) (hne : x a₀ ≠ c a₀) :
    ContinuousAt (fun a ↦ inversion (c a) (R a) (x a)) a₀ :=
  hc.inversion hR hx hne

protected theorem ContinuousOn.inversion (hc : ContinuousOn c s) (hR : ContinuousOn R s)
    (hx : ContinuousOn x s) (hne : ∀ a ∈ s, x a ≠ c a) :
    ContinuousOn (fun a ↦ inversion (c a) (R a) (x a)) s := fun a ha ↦
  (hc a ha).inversion (hR a ha) (hx a ha) (hne a ha)

protected theorem Continuous.inversion (hc : Continuous c) (hR : Continuous R) (hx : Continuous x)
    (hne : ∀ a, x a ≠ c a) : Continuous (fun a ↦ inversion (c a) (R a) (x a)) :=
  continuous_iff_continuousAt.2 fun _ ↦
    hc.continuousAt.inversion hR.continuousAt hx.continuousAt (hne _)
```
