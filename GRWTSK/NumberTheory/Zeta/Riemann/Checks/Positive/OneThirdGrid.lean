/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.OneThirdSeed
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.CoverDepth
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripOneThirdGrid

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.OneThirdGridChecks

open CriticalStripHeightDescent RationalPatchCover

-- The concrete index function is finite rational arithmetic, not a chosen enumeration.
example : 512 * 768 = (393216 : ℕ) := by norm_num
example : (OneThirdGrid.row (393215 : Fin 393216)).val = 511 := by decide
example : (OneThirdGrid.column (393215 : Fin 393216)).val = 767 := by decide
example (k : Fin 393216) :
    OneThirdGrid.join (OneThirdGrid.row k) (OneThirdGrid.column k) = k :=
  OneThirdGrid.join_row_column k

-- CLOSED interval endpoints are included by the clamped-floor proof.
example : ∃ i : Fin 2, |(1 : ℝ) - (((i.val : ℝ) + 1 / 2) * (1 / 2))| ≤ 1 / 4 := by
  simpa using exists_near_grid_midpoint (n := 2) (lo := (0 : ℝ))
    (step := (1 / 2 : ℝ)) (x := (1 : ℝ))
    (by norm_num) (by norm_num) (by norm_num) (by norm_num)

example : ∃ i : Fin 2, |(0 : ℝ) - (((i.val : ℝ) + 1 / 2) * (1 / 2))| ≤ 1 / 4 := by
  simpa using exists_near_grid_midpoint (n := 2) (lo := (0 : ℝ))
    (step := (1 / 2 : ℝ)) (x := (0 : ℝ))
    (by norm_num) (by norm_num) (by norm_num) (by norm_num)

-- Zero cells and zero spacing are not admissible midpoint-cover parameters.
example : ¬ (0 < (0 : ℕ)) := by norm_num
example : ¬ (0 < (0 : ℝ)) := by norm_num

noncomputable section

example : OneThirdGrid.box.carrier = oneThirdRightSeed := OneThirdGrid.box_carrier_eq_seed
example (k : Fin 393216) : (OneThirdGrid.disks k).center ∈ oneThirdRightSeed :=
  OneThirdGrid.center_mem_seed k

example {k : Fin 393216} {z : ℂ} (hz : z ∈ (OneThirdGrid.disks k).carrier) :
    (15 / 32 : ℝ) ≤ z.re ∧ ‖z‖ ≤ (9 / 8 : ℝ) := OneThirdGrid.disk_domain hz

example {k : Fin 393216} {z : ℂ} (hz : z ∈ (OneThirdGrid.disks k).carrier) :
    ‖deriv poleNormalizedZeta z‖ ≤ (20 : ℝ) := OneThirdGrid.derivative_bound hz

-- Every leaf has its analytic witness without an additional enclosure-array premise.
example (k : Fin 393216) :
    SampleVariationPatch poleNormalizedZeta (OneThirdGrid.disks k).carrier := OneThirdGrid.patch k

example {k : Fin 393216} {z : ℂ} (hz : z ∈ (OneThirdGrid.disks k).carrier) :
    (23 / 5376 : ℝ) ≤ ‖poleNormalizedZeta z‖ := OneThirdGrid.norm_lower_on_disk hz

example : UniformDiskClearance OneThirdGrid.disks OneThirdGrid.box (1 / 18432 : ℝ) :=
  OneThirdGrid.clearance

example : FiniteVariationCover poleNormalizedZeta oneThirdRightSeed := OneThirdGrid.seedCover
example : OneThirdGrid.directCover.count = 393216 := rfl
example : NoTargetZero OneThirdGrid.box.carrier := OneThirdGrid.noTargetZero_box

-- Use the universal depth theorem; DO NOT reduce or run the full grid search here.
example : (SquaredCover.search OneThirdGrid.disks 35 OneThirdGrid.box).isSome = true :=
  OneThirdGrid.search_succeeds

example : SquaredCover.CheckedTree OneThirdGrid.disks OneThirdGrid.box := OneThirdGrid.checkedTree

-- These are numerical bound checks only; failure at fuel34 is NOT asserted.
example : (3 / 4 : ℝ) ^ 35 * (7 / 6) ≤ (1 / 18432 : ℝ) := by norm_num
example : ¬ (3 / 4 : ℝ) ^ 34 * (7 / 6) ≤ (1 / 18432 : ℝ) := by norm_num

example : (1 / 2048 : ℝ) + 1 / 2304 + 1 / 18432 = 1 / 1024 := by norm_num
example : (1 / 42 : ℝ) - 20 / 1024 = 23 / 5376 := by norm_num
example : 0 < (23 / 5376 : ℝ) := by norm_num
example : (1 + (2 * (9 / 8 : ℝ) + 1) / (15 / 32) +
    (9 / 8) * (9 / 8 + 1) / ((15 / 32) * (15 / 32 - 1 / 32))) = 2057 / 105 := by norm_num
example : (2057 / 105 : ℝ) ≤ 20 := by norm_num

-- Using disks of radius1/512 with the SAME b=1/42 and M=20 loses this margin.
example : ¬ (20 * (1 / 512 : ℝ) < 1 / 42) := by norm_num

-- The target is still height1/3, not a full natural-height window.
example : (1 / 3 : ℝ) < 1 := by norm_num

end

end GRWTSK.RiemannHypothesis.Checks.OneThirdGridChecks
