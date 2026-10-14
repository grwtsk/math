import GRWTSK.LinearAlgebra.JacobiTransfer
open GRWTSK.LinearAlgebra.JacobiTransfer
example {K : Type*} [Field K] (E b a p previous current next : K) (ha : a ≠ 0) : jacobiRecurrence E b a p previous current next ↔ weightedState a current next = (weightedJacobiTransfer E b a).mulVec (weightedState p previous current) := jacobi_recurrence_iff_weighted_transfer E b a p previous current next ha
example {K : Type*} [Field K] (E b a p : K) : (rawJacobiTransfer E b a p).det = p / a := det_rawJacobiTransfer E b a p
example : (rawJacobiTransfer (0 : ℚ) 0 1 2).det ≠ 1 := rawJacobiTransfer_not_det_one.2
