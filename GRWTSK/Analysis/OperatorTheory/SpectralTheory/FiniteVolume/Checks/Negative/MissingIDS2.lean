import GRWTSK.Analysis.OperatorTheory.SpectralTheory.GapTransport
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.GapTransport

-- A monotone plateau alone does not supply local constancy iff outside spectrum.
example : OpenLabelGap Set.univ (fun _ : ℝ => 0) 0 (-1) 1 := by
  exact monotone_plateau_alone_is_not_a_gap.1
