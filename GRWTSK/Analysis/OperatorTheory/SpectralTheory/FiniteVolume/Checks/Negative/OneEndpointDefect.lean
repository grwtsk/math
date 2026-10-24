import GRWTSK.Analysis.OperatorTheory.SpectralTheory.DirichletCut
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.DirichletCut
-- This vector vanishes at the first endpoint and still has a nonzero edge image.
example : (joiningEdge 2 0).mulVec (fun j : Fin 2 => if j = 1 then 1 else 0) 0 = 0 := by
  norm_num [joiningEdge, Matrix.mulVec, dotProduct, Fin.sum_univ_two]
