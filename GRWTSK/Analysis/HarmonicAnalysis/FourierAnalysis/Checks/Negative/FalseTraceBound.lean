import GRWTSK.Algebra.LinearAlgebra.Schrodinger.Sampling
import GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.QuadraticError
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.WindowCertificates
import GRWTSK.Analysis.AsymptoticAnalysis.PolynomialClosure
import GRWTSK.CombinatoricsAndDiscreteMathematics.Sequences.QuotaDiscrepancy
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform
example : Matrix.trace (transfer 2 0) ≤ 1 := by norm_num [transfer_trace]
