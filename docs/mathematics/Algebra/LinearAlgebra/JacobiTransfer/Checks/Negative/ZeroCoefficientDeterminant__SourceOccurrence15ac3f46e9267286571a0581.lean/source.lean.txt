import GRWTSK.LinearAlgebra.JacobiTransfer
open GRWTSK.LinearAlgebra.JacobiTransfer
example : (weightedJacobiTransfer (0 : ℚ) 0 0).det = 1 := by norm_num [weightedJacobiTransfer, Matrix.det_fin_two]
