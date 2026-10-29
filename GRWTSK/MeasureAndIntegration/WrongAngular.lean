import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.Sampling
import GRWTSK.FunctionalAnalysis.QuadraticError
import GRWTSK.MeasureAndIntegration.WindowCertificates
import GRWTSK.SequencesSeriesSummability.ConvergenceAndDivergenceOfInfiniteLimitingProcesses.PolynomialClosure
import GRWTSK.Combinatorics.QuotaDiscrepancy
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform
example (T : ℝ) (f : ℝ → ℂ) (F : MeasureTheory.Lp (α := ℝ) ℂ 2) :
    AngularWindowCertificate T f F := by exact l2_parseval F
