import GRWTSK.LinearAlgebra.LinearAlgebra.SchrodingerTransfer
open GRWTSK.LinearAlgebra.SchrodingerTransfer
example : (schrodingerTransfer (0 : ℚ) 0).det = -1 := by norm_num [schrodingerTransfer, Matrix.det_fin_two]
