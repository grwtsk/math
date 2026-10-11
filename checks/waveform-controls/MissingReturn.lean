import GRWTSK.Analysis.Waveform.Interfaces
import GRWTSK.Analysis.Waveform.Scheduling
open GRWTSK.Analysis.Waveform
example (X : ℝ → ℝ) : ∃ C p : ℝ, 0 ≤ C ∧ 0 ≤ p ∧ ∀ T, 0 ≤ T → X T ≤ C*(1+T)^p := by
  exact p04_conditional
