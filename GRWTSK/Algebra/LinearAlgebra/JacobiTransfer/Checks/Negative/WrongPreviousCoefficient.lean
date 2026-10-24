import GRWTSK.Algebra.LinearAlgebra.JacobiTransfer
open GRWTSK.Algebra.LinearAlgebra.JacobiTransfer
example {K : Type*} [Field K] (E b a p previous current next : K) (ha : a ≠ 0) : jacobiRecurrence E b a p previous current next ↔ weightedState a current next = (weightedJacobiTransfer E b a).mulVec (weightedState a previous current) := jacobi_recurrence_iff_weighted_transfer E b a p previous current next ha
