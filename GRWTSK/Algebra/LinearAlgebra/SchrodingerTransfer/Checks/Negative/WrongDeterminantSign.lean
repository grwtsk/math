import GRWTSK.Algebra.LinearAlgebra.SchrodingerTransfer
open GRWTSK.Algebra.LinearAlgebra.SchrodingerTransfer
example : (schrodingerTransfer (0 : ℚ) 0).det = -1 := by norm_num [schrodingerTransfer, Matrix.det_fin_two]
