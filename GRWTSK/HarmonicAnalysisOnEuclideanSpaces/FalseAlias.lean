import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.Sampling
import GRWTSK.FunctionalAnalysis.QuadraticError
import GRWTSK.MeasureAndIntegration.WindowCertificates
import GRWTSK.SequencesSeriesSummability.ConvergenceAndDivergenceOfInfiniteLimitingProcesses.PolynomialClosure
import GRWTSK.Combinatorics.QuotaDiscrepancy
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform
example : (fun x : ℝ => Real.sin x+Real.sin (2*x)) = (fun _ => (0:ℝ)) := by
  exact False.elim (sampled_alias.2 rfl)
