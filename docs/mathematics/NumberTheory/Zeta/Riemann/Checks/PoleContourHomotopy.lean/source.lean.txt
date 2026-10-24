/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PoleContourHomotopy
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.PoleContourCoverage

set_option autoImplicit false

/-!
# Global contour homotopy controls

The maintained small-square fixture now supplies an ACTUAL global contraction
candidate. It is not the buffered large counting rectangle. Synthetic controls
separate free from based homotopy, closure from nonvanishing, and a self-homotopy
from a contraction. All new and inherited scripts remain unexecuted.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.PoleContourHomotopy

open scoped unitInterval
open ContinuousMap
open GRWTSK.Analysis.Complex
open GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
open CriticalStripHeightDescent RationalPoleContour
open PoleContourCoverage

noncomputable section

/-- Only the five consumed entries are needed; list defaults beyond them are not one. -/
theorem square_image_is_constant :
    GRWTSK.RiemannHypothesis.PoleContourHomotopy.imageLoop 4 constantImage =
      ContinuousMap.const I (1 : ℂ) := by
  have hv : ∀ i, i ≤ 4 →
      GRWTSK.RiemannHypothesis.PoleContourHomotopy.vertices constantImage i = 1 := by
    intro i hi
    interval_cases i <;>
      simp [GRWTSK.RiemannHypothesis.PoleContourHomotopy.vertices, constantImage, pointAt]
  change PolygonFreeHomotopy.polygonMap 4
    (GRWTSK.RiemannHypothesis.PoleContourHomotopy.vertices constantImage) = _
  rw [PolygonFreeHomotopy.polygonMap_congr 4 hv]
  ext t
  exact PolygonFreeHomotopy.constant_polygon 4 1 t

/-- No free enclosure or homotopy premise remains for this small SOURCE fixture. -/
theorem square_contracts_without_zero :
    Nonempty (HomotopyWith
      (GRWTSK.RiemannHypothesis.PoleContourHomotopy.sourceLoop 4 square)
      (ContinuousMap.const I (1 : ℂ))
      (fun g => g 0 = g 1 ∧ ∀ t, g t ≠ 0)) := by
  have h : Nonempty (HomotopyWith
      (GRWTSK.RiemannHypothesis.PoleContourHomotopy.sourceLoop 4 square)
      (GRWTSK.RiemannHypothesis.PoleContourHomotopy.imageLoop 4 constantImage)
      (fun g => g 0 = g 1 ∧ ∀ t, g t ≠ 0)) :=
    ⟨GRWTSK.RiemannHypothesis.PoleContourHomotopy.freeHomotopy image_checked square_enclosures⟩
  simpa only [square_image_is_constant] using h

/-- The exact previously inspected false-enclosure obstruction is retained. -/
theorem fictitious_values_do_not_supply_enclosures : ¬ Enclosures 4 fictitiousData :=
  fictitious_data_have_no_enclosures

/-- A free homotopy can have a moving basepoint even between constant nonzero loops. -/
theorem constant_motion_nonzero :
    PolygonFreeHomotopy.CellNonzero (fun _ : ℂ => 1) 1 (fun _ => 0) (fun _ => 2) := by
  intro i hi t lam hzero
  simp only [PolygonTube.deformation, PolygonTube.blend_self] at hzero
  have hr := congrArg Complex.re hzero
  norm_num [PolygonTube.deformation, PolygonTube.blend, Complex.real_smul] at hr
  linarith [lam.2.1]

/-- Exact unequal endpoint basepoints prohibit treating THIS deformation as based. -/
theorem free_is_not_fixed_base :
    PolygonFreeHomotopy.homotopy (fun _ : ℂ => 1) continuous_const 1
      (fun _ => 0) (fun _ => 2) (0, 0) = 1 ∧
    PolygonFreeHomotopy.homotopy (fun _ : ℂ => 1) continuous_const 1
      (fun _ => 0) (fun _ => 2) (1, 0) = 2 := by
  constructor <;> rw [PolygonFreeHomotopy.moving_basepoint] <;> simp

/-- Nonzero endpoint loops do NOT make their straight interpolation avoid zero. -/
theorem opposite_constants_cross_zero :
    (1 : ℂ) ≠ 0 ∧ (-1 : ℂ) ≠ 0 ∧
    PolygonFreeHomotopy.homotopy (fun _ : ℂ => 1) continuous_const 1
      (fun _ => 0) (fun _ => -1) (⟨1 / 2, by norm_num⟩, 0) = 0 := by
  refine ⟨by norm_num, by norm_num, ?_⟩
  rw [PolygonFreeHomotopy.moving_basepoint]
  norm_num [PolygonTube.blend, Complex.real_smul]

/-- The unused closing equation really is needed for loop closedness. -/
theorem open_chain_stays_open :
    PolygonFreeHomotopy.polygonMap 1 (fun i => if i = 0 then 1 else 2) 0 ≠
    PolygonFreeHomotopy.polygonMap 1 (fun i => if i = 0 then 1 else 2) 1 := by
  simp

/-- SYNTHETIC identity source and unchanged square: a self-deformation avoids zero
on the boundary while the analytic function still vanishes inside the square. -/
theorem identity_square_cells_nonzero :
    PolygonFreeHomotopy.CellNonzero id 4
      (fun i => toComplex (pointAt unitSquare i))
      (fun i => toComplex (pointAt unitSquare i)) := by
  intro i hi t lam
  simpa only [PolygonTube.deformation, id_eq, PolygonTube.blend_self] using
    unit_square_boundary_nonzero _
      (PolygonTube.edge_mem_carrier (fun i => toComplex (pointAt unitSquare i)) ⟨i, hi⟩ t.2)

theorem identity_still_has_interior_zero : (id : ℂ → ℂ) 0 = 0 := rfl

/-- Empty concatenation is a constant map, not a certificate for a nonempty contour. -/
theorem empty_map_is_initial_vertex (a : ℕ → ℂ) (t : I) :
    PolygonFreeHomotopy.polygonMap 0 a t = a 0 := rfl

end
end GRWTSK.RiemannHypothesis.Checks.PoleContourHomotopy
