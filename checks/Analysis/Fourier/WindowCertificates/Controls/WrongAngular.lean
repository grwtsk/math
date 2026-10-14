import GRWTSK.Analysis.Fourier.Parseval
import GRWTSK.Analysis.Fourier.WindowCertificates
open GRWTSK.Analysis.Waveform
example (T : ℝ) (f : ℝ → ℂ) (F : MeasureTheory.Lp (α := ℝ) ℂ 2) :
    AngularWindowCertificate T f F := by exact l2_parseval F
