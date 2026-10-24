import GRWTSK.Algebra.LinearAlgebra.OrderedProductDeterminant
open GRWTSK.Algebra.LinearAlgebra.OrderedProductDeterminant GRWTSK.Algebra GRWTSK.Algebra.LinearAlgebra.JacobiTransfer

example : (orderedProduct (fun _ => !![(2 : ℚ), 0; 0, 1]) 0 1).det = 1 := by
  norm_num [orderedProduct, Matrix.det_fin_two]
