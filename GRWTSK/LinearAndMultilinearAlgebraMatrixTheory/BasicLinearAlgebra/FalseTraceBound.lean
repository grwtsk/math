import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.Sampling
import GRWTSK.FunctionalAnalysis.QuadraticError
import GRWTSK.MeasureAndIntegration.WindowCertificates
import GRWTSK.SequencesSeriesSummability.ConvergenceAndDivergenceOfInfiniteLimitingProcesses.PolynomialClosure
import GRWTSK.Combinatorics.QuotaDiscrepancy
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform
example : Matrix.trace (transfer 2 0) ≤ 1 := by norm_num [transfer_trace]
