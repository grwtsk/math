import GRWTSK.Analysis.Waveform.Interfaces
import GRWTSK.Analysis.Waveform.Scheduling
open GRWTSK.Analysis.Waveform
example (T : ℝ) (f : ℝ → ℂ) (F : MeasureTheory.Lp (α := ℝ) ℂ 2) :
    AngularWindowCertificate T f F := by exact l2_parseval F
