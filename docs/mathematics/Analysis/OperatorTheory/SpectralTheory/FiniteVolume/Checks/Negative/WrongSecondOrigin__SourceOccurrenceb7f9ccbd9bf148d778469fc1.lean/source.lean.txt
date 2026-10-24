import GRWTSK.Spectral.DirichletCut
open GRWTSK.Spectral.DirichletCut GRWTSK.Spectral.SturmianFiniteVolume
example : cutHamiltonian 2 (1/2) 3 0 0 0 1 1 = hamiltonian 1 (1/2) 3 0 0 0 0 := by
  change hamiltonian 2 (1/2) 3 0 0 ⟨1,by decide⟩ ⟨1,by decide⟩ -
    joiningEdge 2 0 ⟨1,by decide⟩ ⟨1,by decide⟩ =
    hamiltonian 1 (1/2) 3 0 0 0 0
  simp only [hamiltonian, Matrix.add_apply, Matrix.diagonal_apply,
    freeDirichlet, joiningEdge]
  norm_num [
    GRWTSK.LinearAlgebra.Sturmian.potential, GRWTSK.LinearAlgebra.Sturmian.bit, Int.fract]
