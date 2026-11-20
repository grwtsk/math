/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.FunctionalAnalysis.CellMomentEnergy
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeKernelEnclosure

/-!
# Exact cell-energy bounds in the conductor-three radius-four window

The established midpoint-cell error contains every restricted cell in an
interval of length `8/(N+1)`. Its actual measure is therefore no larger.
The general partition estimate bounds the squared exact moments by this
mesh width times input energy. This supplies a quantitative price for an
identity coordinate metric, without comparing derivative and physical energy.
-/

set_option autoImplicit false
noncomputable section
open Set MeasureTheory
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen

open GRWTSK.FunctionalAnalysis.FiniteKernelEnclosure
open GRWTSK.FunctionalAnalysis.CellMomentEnergy

/-- Endpoint clamping does not enlarge a cell inside the source window
beyond the established mesh width. -/
theorem gridCell_mass_le (N : ℕ) (i : Fin (N + 1)) :
    kernelWindow.real {x | gridCell N x = i} ≤ 8 / (N + 1 : ℕ) := by
  change (volume.restrict (Icc (-4 : ℝ) 4)).real {x | gridCell N x = i} ≤ _
  rw [measureReal_restrict_apply (gridCell_measurableSet N i)]
  have hsub : {x | gridCell N x = i} ∩ Icc (-4 : ℝ) 4 ⊆
      Icc (gridPoint N i - 4 / (N + 1 : ℕ))
        (gridPoint N i + 4 / (N + 1 : ℕ)) := by
    intro x hx
    have hb := gridCell_error N hx.2
    rw [hx.1] at hb
    rcases abs_le.mp hb with ⟨hl, hr⟩
    constructor <;> linarith
  calc
    _ ≤ volume.real (Icc (gridPoint N i - 4 / (N + 1 : ℕ))
        (gridPoint N i + 4 / (N + 1 : ℕ))) :=
      measureReal_mono hsub (by rw [Real.volume_Icc]; exact ENNReal.ofReal_ne_top)
    _ = 8 / (N + 1 : ℕ) := by
      rw [Real.volume_real_Icc_of_le (by
        have hn : (0 : ℝ) ≤ 4 / (N + 1 : ℕ) := by positivity
        linarith)]
      ring

/-- Every complex L1/L2 input obeys the mesh-scaled exact-moment bound.
Specializing to a compact C1 derivative retains derivative energy. -/
theorem sum_gridCellMoment_sq_le (N : ℕ) {u : ℝ → ℂ}
    (hu : Integrable u kernelWindow)
    (hu2 : Integrable (fun x => ‖u x‖ ^ 2) kernelWindow) :
    (∑ i, ‖featureMoment kernelWindow (cellFeature (gridCell N)) u i‖ ^ 2) ≤
      (8 / (N + 1 : ℕ)) * ∫ x, ‖u x‖ ^ 2 ∂kernelWindow :=
  sum_cellMoment_sq_le (gridCell N) (gridCell_measurableSet N) hu hu2
    (gridCell_mass_le N)

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
