import GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeIDS
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeDirichletSpectrum

-- Using N instead of N+1 loses the paid Dirichlet boundary condition.
example : eigenvalue 1 0 = 2*Real.cos Real.pi := by
  norm_num [eigenvalue, angle]
