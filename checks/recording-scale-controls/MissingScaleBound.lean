import GRWTSK.RiemannHypothesis.CCC.RecordingScale
open GRWTSK.RiemannHypothesis.CCC
example : _root_.RiemannHypothesis := by
  exact riemannHypothesis_of_recordingScaleBound (C := 0) (r := 0) (by norm_num)
