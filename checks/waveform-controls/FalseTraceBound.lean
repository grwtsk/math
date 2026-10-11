import GRWTSK.LinearAlgebra.Schrodinger.Sampling GRWTSK.Analysis.NormedSpace.QuadraticError GRWTSK.Analysis.Fourier.WindowCertificates GRWTSK.Analysis.Asymptotics.PolynomialClosure
import GRWTSK.Combinatorics.Sequences.QuotaDiscrepancy
open GRWTSK.Analysis.Waveform
example : Matrix.trace (transfer 2 0) ≤ 1 := by norm_num [transfer_trace]
