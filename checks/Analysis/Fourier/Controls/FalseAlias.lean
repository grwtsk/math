import GRWTSK.LinearAlgebra.Schrodinger.Sampling GRWTSK.Analysis.NormedSpace.QuadraticError GRWTSK.Analysis.Fourier.WindowCertificates GRWTSK.Analysis.Asymptotics.PolynomialClosure
import GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy
open GRWTSK.Analysis.Waveform
example : (fun x : ℝ => Real.sin x+Real.sin (2*x)) = (fun _ => (0:ℝ)) := by
  exact False.elim (sampled_alias.2 rfl)
