import GRWTSK.LinearAlgebra.Schrodinger.SampledPotential
open GRWTSK.Analysis.Waveform
example : Matrix.trace (transfer 2 0) ≤ 1 := by norm_num [transfer_trace]
