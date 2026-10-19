import GRWTSK.Algebra.LinearAlgebra.OrderedTransfer
open GRWTSK.LinearAlgebra.OrderedTransfer GRWTSK.Algebra

example : (![1, 0] : Fin 2 → ℚ) =
    (orderedTransfer (fun _ => !![(2 : ℚ), 0; 0, 1]) 0 1).mulVec ![2, 0] := by
  norm_num [orderedTransfer, orderedProduct, funext_iff, Fin.forall_fin_two]
