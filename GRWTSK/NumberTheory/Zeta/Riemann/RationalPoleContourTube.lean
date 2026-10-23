/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.RationalPoleContour

set_option autoImplicit false

/-!
# Rational image polygons and source-bound zero-avoiding edge deformations

The shared image vertices are external data. They need not be exact function
values: EACH incident edge checks them inside its computed source-image disk.
Every disk avoids zero by the unchanged strict patch margin. Source and polygon
edges deform inside that disk, with proved adjacent and closing seam equations.
This is not a winding-number implementation or an argument-principle theorem.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.RationalPoleContourTube

open Set Metric
open GRWTSK.Analysis.Complex
open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalDyadicArithmetic
open RationalNewtonDisk (magnitude magnitude_nonneg norm_le_magnitude)
open CriticalStripHeightDescent RationalPoleContour

/-- Both sample uncertainty and WHOLE-disk source variation occur exactly once. -/
def imageRadius (d : EdgeData) : ℚ :=
  d.value.rad + RationalPolePatch.slopeBound d.center d.inner d.outer * d.inner

def Valid (n : ℕ) (vertices : List Coordinates) (data : List EdgeData)
    (images : List Coordinates) : Prop :=
  RationalPoleContour.check n vertices data = true ∧ images.length = n + 1 ∧
    pointAt images n = pointAt images 0 ∧
    ∀ i ∈ Finset.range n,
      inBall (sub (pointAt images i) (edgeAt data i).value.mid) (imageRadius (edgeAt data i)) = true ∧
      inBall (sub (pointAt images (i + 1)) (edgeAt data i).value.mid) (imageRadius (edgeAt data i)) = true

instance validDecidable (n : ℕ) (vertices : List Coordinates) (data : List EdgeData)
    (images : List Coordinates) : Decidable (Valid n vertices data images) := by
  unfold Valid
  infer_instance

def check (n : ℕ) (vertices : List Coordinates) (data : List EdgeData)
    (images : List Coordinates) : Bool := decide (Valid n vertices data images)

theorem check_iff_valid (n : ℕ) (vertices : List Coordinates) (data : List EdgeData)
    (images : List Coordinates) : check n vertices data images = true ↔ Valid n vertices data images := by
  simp [check]

/-- Derive the SAME rational Cauchy coefficient from the inherited analytic bound.
No derivative values sampled on the edge stand in for this all-point inequality. -/
theorem disk_variation {d : EdgeData}
    (hg : RationalPolePatch.check d.center d.inner d.outer d.value = true)
    {z : ℂ} (hz : z ∈ closedBall (toComplex d.center) (d.inner : ℝ)) :
    ‖poleNormalizedZeta z - poleNormalizedZeta (toComplex d.center)‖ ≤
      (RationalPolePatch.slopeBound d.center d.inner d.outer : ℝ) * (d.inner : ℝ) := by
  obtain ⟨hR, hRS, hl, _, _⟩ := (RationalPolePatch.check_iff_valid _ _ _ _).mp hg
  have hS : 0 < d.outer := lt_of_le_of_lt hR hRS
  have hleft : (RationalPolePatch.leftMargin d.center d.outer : ℝ) ≤
      (toComplex d.center).re - (d.outer : ℝ) := by simp [RationalPolePatch.leftMargin, toComplex]
  have hB : ‖toComplex d.center‖ + (d.outer : ℝ) ≤
      (RationalPolePatch.sizeBound d.center d.outer : ℝ) := by
    simpa only [RationalPolePatch.sizeBound, Rat.cast_add] using
      add_le_add_right (norm_le_magnitude d.center) (d.outer : ℝ)
  have hD : ‖toComplex d.center - 1‖ + (d.outer : ℝ) ≤
      (RationalPolePatch.factorBound d.center d.outer : ℝ) := by
    simpa only [RationalPolePatch.factorBound, Rat.cast_add, toComplex_sub, toComplex_one] using
      add_le_add_right (norm_le_magnitude (sub d.center one)) (d.outer : ℝ)
  have hderiv : ∀ w ∈ closedBall (toComplex d.center) (d.inner : ℝ),
      ‖deriv poleNormalizedZeta w‖ ≤ (RationalPolePatch.slopeBound d.center d.inner d.outer : ℝ) := by
    intro w hw
    have hb := PoleNormalizedContourBounds.derivative_bound
      (by exact_mod_cast hRS) (by exact_mod_cast hl) hleft hB hD hw
    simpa only [RationalPolePatch.slopeBound, RationalPolePatch.sourceBound,
      Rat.cast_div, Rat.cast_sub, Rat.cast_add, Rat.cast_mul] using hb
  have hc : toComplex d.center ∈ closedBall (toComplex d.center) (d.inner : ℝ) :=
    mem_closedBall_self (by exact_mod_cast hR)
  have hM : 0 ≤ (RationalPolePatch.slopeBound d.center d.inner d.outer : ℝ) :=
    (norm_nonneg _).trans (hderiv _ hc)
  have hv := Convex.norm_image_sub_le_of_norm_deriv_le
    (fun w _ => differentiable_poleNormalizedZeta w) hderiv
    (convex_closedBall (toComplex d.center) (d.inner : ℝ)) hc hz
  exact hv.trans (mul_le_mul_of_nonneg_left
    (by simpa only [mem_closedBall, dist_eq_norm] using hz) hM)

/-- Actual source containment in the rational image tube. -/
theorem source_image_bound {d : EdgeData}
    (hg : RationalPolePatch.check d.center d.inner d.outer d.value = true)
    (he : Holds d.value (poleNormalizedZeta (toComplex d.center)))
    {z : ℂ} (hz : z ∈ closedBall (toComplex d.center) (d.inner : ℝ)) :
    ‖poleNormalizedZeta z - toComplex d.value.mid‖ ≤ (imageRadius d : ℝ) := by
  calc
    _ ≤ ‖poleNormalizedZeta z - poleNormalizedZeta (toComplex d.center)‖ +
        ‖poleNormalizedZeta (toComplex d.center) - toComplex d.value.mid‖ := by
      simpa only [dist_eq_norm] using dist_triangle (poleNormalizedZeta z)
        (poleNormalizedZeta (toComplex d.center)) (toComplex d.value.mid)
    _ ≤ (RationalPolePatch.slopeBound d.center d.inner d.outer : ℝ) * (d.inner : ℝ) +
        (d.value.rad : ℝ) := add_le_add (disk_variation hg hz) he
    _ = _ := by simp only [imageRadius, Rat.cast_add, Rat.cast_mul]; ring

theorem image_disk_avoids_zero {d : EdgeData}
    (hg : RationalPolePatch.check d.center d.inner d.outer d.value = true) :
    (imageRadius d : ℝ) < ‖toComplex d.value.mid‖ := by
  have h := ((RationalPolePatch.check_iff_valid _ _ _ _).mp hg).2.2.2.2
  have hreal : (imageRadius d : ℝ) < (RationalPolePatch.sampleLower d.value.mid : ℝ) := by
    change ((d.value.rad + RationalPolePatch.slopeBound d.center d.inner d.outer * d.inner : ℚ) : ℝ) < _
    exact_mod_cast h
  exact hreal.trans_le (RationalPolePatch.sampleLower_le d.value.mid)

/-- One checked edge supplies a full TWO-parameter zero-avoiding deformation. -/
theorem edge_deformation_nonzero {n i : ℕ} {vertices images : List Coordinates}
    {data : List EdgeData} (h : check n vertices data images = true)
    (he : Enclosures n data) (hi : i < n) {t lam : ℝ}
    (ht : t ∈ Icc (0 : ℝ) 1) (hlam : lam ∈ Icc (0 : ℝ) 1) :
    PolygonTube.deformation poleNormalizedZeta
      (toComplex (pointAt vertices i)) (toComplex (pointAt vertices (i + 1)))
      (toComplex (pointAt images i)) (toComplex (pointAt images (i + 1))) t lam ≠ 0 := by
  have hv := (check_iff_valid _ _ _ _).mp h
  have hd := checked_edge hv.1 hi
  have him := hv.2.2.2 i (Finset.mem_range.mpr hi)
  apply PolygonTube.deformation_nonzero
    (c := toComplex (edgeAt data i).value.mid) (r := (imageRadius (edgeAt data i) : ℝ))
  · intro q hq
    exact source_image_bound hd.1 (he i (Finset.mem_range.mpr hi)) (edge_covered hd hq)
  · simpa only [toComplex_sub] using (inBall_iff _ _).mp him.1
  · simpa only [toComplex_sub] using (inBall_iff _ _).mp him.2
  · exact image_disk_avoids_zero hd.1
  · exact ht
  · exact hlam

/-- The actual source is entire, so every deformation cell is continuous. -/
theorem edge_deformation_continuous (a b u v : ℂ) :
    Continuous (fun p : ℝ × ℝ => PolygonTube.deformation poleNormalizedZeta a b u v p.1 p.2) :=
  PolygonTube.deformation_continuous differentiable_poleNormalizedZeta.continuous a b u v

/-- Every adjacent pair uses one shared domain vertex AND one shared image vertex. -/
theorem adjacent_seam (vertices images : List Coordinates) (i : ℕ) (lam : ℝ) :
    PolygonTube.deformation poleNormalizedZeta
      (toComplex (pointAt vertices i)) (toComplex (pointAt vertices (i + 1)))
      (toComplex (pointAt images i)) (toComplex (pointAt images (i + 1))) 1 lam =
    PolygonTube.deformation poleNormalizedZeta
      (toComplex (pointAt vertices (i + 1))) (toComplex (pointAt vertices (i + 2)))
      (toComplex (pointAt images (i + 1))) (toComplex (pointAt images (i + 2))) 0 lam := by simp

/-- The final seam uses both checked closure equations; natural subtraction is
used only AFTER the checker has established n>0. -/
theorem closing_seam {n : ℕ} {vertices images : List Coordinates} {data : List EdgeData}
    (h : check n vertices data images = true) (lam : ℝ) :
    PolygonTube.deformation poleNormalizedZeta
      (toComplex (pointAt vertices (n - 1))) (toComplex (pointAt vertices n))
      (toComplex (pointAt images (n - 1))) (toComplex (pointAt images n)) 1 lam =
    PolygonTube.deformation poleNormalizedZeta
      (toComplex (pointAt vertices 0)) (toComplex (pointAt vertices 1))
      (toComplex (pointAt images 0)) (toComplex (pointAt images 1)) 0 lam := by
  have hv := (check_iff_valid _ _ _ _).mp h
  have hc := (checked_lengths hv.1).2.2.2
  simp [hc, hv.2.2.1]

/-- The surrogate polygon itself avoids zero using only the finite geometry.
Source agreement still needs Enclosures in edge_deformation_nonzero. -/
theorem polygon_nonzero {n : ℕ} {vertices images : List Coordinates} {data : List EdgeData}
    (h : check n vertices data images = true) :
    ∀ z ∈ RationalPoleContour.carrier n images, z ≠ 0 := by
  rintro z ⟨i, t, ht, rfl⟩ hz
  have hv := (check_iff_valid _ _ _ _).mp h
  have hd := checked_edge hv.1 i.isLt
  have him := hv.2.2.2 i.val (Finset.mem_range.mpr i.isLt)
  have ha : ‖toComplex (pointAt images i.val) - toComplex (edgeAt data i.val).value.mid‖ ≤
      (imageRadius (edgeAt data i.val) : ℝ) := by
    simpa only [toComplex_sub] using (inBall_iff _ _).mp him.1
  have hb : ‖toComplex (pointAt images (i.val + 1)) - toComplex (edgeAt data i.val).value.mid‖ ≤
      (imageRadius (edgeAt data i.val) : ℝ) := by
    simpa only [toComplex_sub] using (inBall_iff _ _).mp him.2
  have hbound := PolygonTube.norm_blend_sub_le ha hb ht
  rw [hz, zero_sub, norm_neg] at hbound
  exact (not_le_of_gt (image_disk_avoids_zero hd.1)) hbound

end GRWTSK.RiemannHypothesis.RationalPoleContourTube
