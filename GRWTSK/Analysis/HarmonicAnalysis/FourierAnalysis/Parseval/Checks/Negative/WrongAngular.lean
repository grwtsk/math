import GRWTSK.Algebra.LinearAlgebra.Schrodinger.Sampling
import GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.QuadraticError
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.WindowCertificates
import GRWTSK.Analysis.AsymptoticAnalysis.PolynomialClosure
import GRWTSK.CombinatoricsAndDiscreteMathematics.Sequences.QuotaDiscrepancy
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform
example (T : ℝ) (f : ℝ → ℂ) (F : MeasureTheory.Lp (α := ℝ) ℂ 2) :
    AngularWindowCertificate T f F := by exact l2_parseval F
