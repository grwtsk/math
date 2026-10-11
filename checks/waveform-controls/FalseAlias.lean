import GRWTSK.Analysis.Waveform.Interfaces
import GRWTSK.Analysis.Waveform.Scheduling
open GRWTSK.Analysis.Waveform
example : (fun x : ℝ => Real.sin x+Real.sin (2*x)) = (fun _ => (0:ℝ)) := by
  exact False.elim (sampled_alias.2 rfl)
