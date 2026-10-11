import GRWTSK.LinearAlgebra.Schrodinger.Sampling GRWTSK.Analysis.NormedSpace.QuadraticError GRWTSK.Analysis.Fourier.WindowCertificates GRWTSK.Analysis.Asymptotics.PolynomialClosure
import GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy
open GRWTSK.Analysis.Waveform
example (T : ℝ) (f : ℝ → ℂ) (F : MeasureTheory.Lp (α := ℝ) ℂ 2) :
    AngularWindowCertificate T f F := by exact l2_parseval F
