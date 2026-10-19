import GRWTSK.Algebra.LinearAlgebra.SchrodingerTransfer
open GRWTSK.LinearAlgebra.SchrodingerTransfer
example {R : Type*} [Ring R] (E V : R) : (schrodingerTransfer E V).det = 1 := det_schrodingerTransfer E V
