import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.Sampling
import GRWTSK.FunctionalAnalysis.QuadraticError
import GRWTSK.MeasureAndIntegration.WindowCertificates
import GRWTSK.SequencesSeriesSummability.ConvergenceAndDivergenceOfInfiniteLimitingProcesses.PolynomialClosure
import GRWTSK.Combinatorics.QuotaDiscrepancy
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform
example (X : ℝ → ℝ) : ∃ C p : ℝ, 0 ≤ C ∧ 0 ≤ p ∧ ∀ T, 0 ≤ T → X T ≤ C*(1+T)^p := by
  exact p04_conditional
