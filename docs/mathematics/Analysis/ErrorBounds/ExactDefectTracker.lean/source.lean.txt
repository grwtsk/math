import GRWTSK.Analysis.ErrorBounds.SourceResidualConvergence

/-! A constructed exact-defect tracker for the S4 conditional interface.
The recursion reads the actual source's next state through its exact stage defect.
No arithmetic access, computability, positive model or source-defect estimate is supplied.
This is not an executable arithmetic approximation or an RH supplier. -/
namespace GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution
open GRWTSK.Analysis.ErrorBounds
open GRWTSK.Analysis.ErrorBounds.ContractingResidualBudget
variable {ι : Type*} [Fintype ι]

/-- Start at an arbitrary initial state and inject the actual source defect at each stage. -/
noncomputable def exactDefectTracker (gain : ℕ → ι → ι → ℝ)
    (source : ℕ → ι → ℝ) (initial : ι → ℝ) : ℕ → ι → ℝ
  | 0 => initial
  | n + 1 => fun i => (∑ j, gain n i j * exactDefectTracker gain source initial n j) +
      stageDefect gain source n i

/-- The supplied initialization is preserved. -/
theorem exactDefectTracker_initial (gain : ℕ → ι → ι → ℝ)
    (source : ℕ → ι → ℝ) (initial : ι → ℝ) :
    exactDefectTracker gain source initial 0 = initial := rfl

/-- The model update is constructed, not admitted as a recurrence premise. -/
theorem exactDefectTracker_step (gain : ℕ → ι → ι → ℝ)
    (source : ℕ → ι → ℝ) (initial : ι → ℝ) (n : ℕ) (i : ι) :
    exactDefectTracker gain source initial (n + 1) i =
      (∑ j, gain n i j * exactDefectTracker gain source initial n j) +
        stageDefect gain source n i := rfl

/-- The first update exposes its dependence on the source's next value explicitly. -/
theorem exactDefectTracker_first_step (gain : ℕ → ι → ι → ℝ)
    (source : ℕ → ι → ℝ) (initial : ι → ℝ) (i : ι) :
    exactDefectTracker gain source initial 1 i = source 1 i +
      ∑ j, gain 0 i j * (initial j - source 0 j) := by
  rw [show (1 : ℕ) = 0 + 1 from rfl, exactDefectTracker_step]
  simp only [exactDefectTracker_initial, stageDefect, mul_sub, Finset.sum_sub_distrib]
  ring

/-- The actual signed source/model defect difference is exactly zero. -/
theorem exactDefectTracker_net_forcing_zero (gain : ℕ → ι → ι → ℝ)
    (source : ℕ → ι → ℝ) (initial : ι → ℝ) (n : ℕ) (i : ι) :
    residualForcing gain source (exactDefectTracker gain source initial) n i = 0 := by
  unfold residualForcing stageDefect
  rw [exactDefectTracker_step]
  unfold stageDefect
  ring

/-- The constructed residual therefore follows the homogeneous gain exactly. -/
theorem exactDefectTracker_residual_step (gain : ℕ → ι → ι → ℝ)
    (source : ℕ → ι → ℝ) (initial : ι → ℝ) (n : ℕ) (i : ι) :
    sourceResidual source (exactDefectTracker gain source initial) (n + 1) i =
      ∑ j, gain n i j * sourceResidual source (exactDefectTracker gain source initial) n j := by
  simpa only [exactDefectTracker_net_forcing_zero, add_zero] using
    sourceResidual_evolution gain source (exactDefectTracker gain source initial) n i

/-- Strict weighted column contraction gives convergence without a forcing-decay premise.
Exact source-defect access is built into the model and is not an arithmetic supplier. -/
theorem exactDefectTracker_residual_vanishes (weight : ι → ℝ)
    (gain : ℕ → ι → ι → ℝ) (source : ℕ → ι → ℝ) (initial : ι → ℝ) (r : ℝ)
    (hw : ∀ i, 0 ≤ weight i) (hr : 0 ≤ r) (hr1 : r < 1)
    (hcolumns : ∀ n j, (∑ i, weight i * |gain n i j|) ≤ r * weight j) :
    VanishesAtInfinity (fun n => channelMass weight
      (sourceResidual source (exactDefectTracker gain source initial) n)) := by
  apply source_residual_vanishes weight gain source (exactDefectTracker gain source initial)
    r hw hr hr1 hcolumns
  simpa only [channelMass, exactDefectTracker_net_forcing_zero, abs_zero, mul_zero,
    Finset.sum_const_zero] using VanishesAtInfinity.zero
end GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution
