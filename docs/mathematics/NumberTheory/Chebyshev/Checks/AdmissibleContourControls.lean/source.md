# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.AdmissibleContourControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b847cf9f847174feec7fa7d65627a7f2348fb750` · SHA-256 `6f13517b97b120a5f4c8abb7111ea9b8cf36f34053fe09ae6a27b373fc6efec4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.TentAdmissibleContours

set_option autoImplicit false

/-! Scope controls for #189/#261. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. -/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.AdmissibleContourControls

open Set
open GRWTSK.Analysis.Complex.OrientedRectangle
open GRWTSK.RiemannHypothesis.AdmissibleRectangles
open GRWTSK.RiemannHypothesis.TrivialZeroResidues
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

noncomputable section

/-- The first rectangle has no negative-even zero, but does contain the zeta pole. -/
theorem stage_zero_inventory :
    (1 : ℂ) ∈ interior 0 ∧ ∀ k : ℕ, trivialPoint k ∉ interior 0 := by
  exact ⟨one_mem_interior 0, fun k => by rw [trivial_mem_interior_iff]; omega⟩

/-- Moving the left edge from -1 to -3 admits -2, not -4. -/
theorem stage_one_trivial_inventory :
    trivialPoint 0 ∈ interior 1 ∧ trivialPoint 1 ∉ interior 1 := by
  simp only [trivial_mem_interior_iff]
  omega

/-- A zero at a generic cutoff belongs to the closed head; it cannot define a safe edge. -/
theorem own_height_not_admissible (z : ZeroPoint) (N : ℕ) :
    z ∈ heightHead (height z) ∧ height z ≠ contourHeight N :=
  ⟨point_mem_own_head z, contourHeight_avoids N z⟩

/-- Boundary nonvanishing does not remove the interior pole. -/
theorem boundary_safe_not_interior_pole_free (N : ℕ) :
    ¬ (∀ s ∈ interior N, s ≠ (1 : ℂ)) := by
  intro h
  exact h 1 (one_mem_interior N) rfl

/-- This exhaustion ends at Re=2; the right edge is not in the interior. -/
theorem right_edge_not_interior (N : ℕ) (t : ℝ) :
    (2 : ℂ) + (t : ℂ) * Complex.I ∉ interior N := by
  intro h
  have hr := h.2.1
  norm_num at hr

/-- Every corner is protected by the same closed-boundary theorem. -/
theorem upper_left_corner_nonzero (N : ℕ) :
    riemannZeta ((leftEdge N : ℂ) + (contourHeight N : ℂ) * Complex.I) ≠ 0 := by
  apply zeta_ne_zero_on_boundary N
  exact horizontal_mem_boundary N (leftEdge N) (contourHeight N)
    ⟨le_rfl, (leftEdge_neg N).le.trans (by norm_num)⟩
    (abs_of_pos (contourHeight_pos N))

/-- For a constant, the horizontal difference vanishes but the left edge does not. -/
theorem constant_vertical_nonzero (N : ℕ) :
    vertical (fun _ : ℂ => 1) (leftEdge N) (contourHeight N) ≠ 0 := by
  simp only [vertical, intervalIntegral.integral_const, Complex.real_smul, mul_one, sub_neg_eq_add]
  exact Complex.ofReal_ne_zero.mpr (by linarith [contourHeight_pos N])

/-- Entire additions have zero closed-contour integral, not zero on each edge. -/
theorem constant_closed_contour_zero (N : ℕ) :
    boundaryIntegral (fun _ : ℂ => 1) (leftEdge N) 2 (contourHeight N) = 0 :=
  boundaryIntegral_eq_zero_of_differentiable _ (by fun_prop) _ _ _

/-- A bounded height schedule does not supply the cofinality proved for contourHeight. -/
theorem bounded_schedule_misses_height (B : ℝ) (H : ℕ → ℝ) (hH : ∀ N, H N ≤ B) :
    ∀ N, ¬ (B + 1 < H N) := by
  intro N hn
  linarith [hH N]

end
end GRWTSK.NumberTheory.Chebyshev.Checks.AdmissibleContourControls
```
