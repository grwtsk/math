import GRWTSK.Analysis.OperatorTheory.SpectralTheory.DirichletCut
open GRWTSK.Analysis.OperatorTheory.SpectralTheory.DirichletCut GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianFiniteVolume
example : cutHamiltonian 2 (1/2) 3 0 0 0 1 1 = hamiltonian 1 (1/2) 3 0 0 0 0 := by
  change hamiltonian 2 (1/2) 3 0 0 ⟨1,by decide⟩ ⟨1,by decide⟩ -
    joiningEdge 2 0 ⟨1,by decide⟩ ⟨1,by decide⟩ =
    hamiltonian 1 (1/2) 3 0 0 0 0
  simp only [hamiltonian, Matrix.add_apply, Matrix.diagonal_apply,
    freeDirichlet, joiningEdge]
  norm_num [
    GRWTSK.Algebra.LinearAlgebra.Sturmian.potential, GRWTSK.Algebra.LinearAlgebra.Sturmian.bit, Int.fract]
