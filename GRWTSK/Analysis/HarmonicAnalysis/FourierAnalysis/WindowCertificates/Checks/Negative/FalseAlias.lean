import GRWTSK.Algebra.LinearAlgebra.Schrodinger.Sampling
import GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.QuadraticError
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.WindowCertificates
import GRWTSK.Analysis.AsymptoticAnalysis.PolynomialClosure
import GRWTSK.CombinatoricsAndDiscreteMathematics.Sequences.QuotaDiscrepancy
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform
example : (fun x : ℝ => Real.sin x+Real.sin (2*x)) = (fun _ => (0:ℝ)) := by
  exact False.elim (sampled_alias.2 rfl)
