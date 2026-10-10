import GRWTSK.RiemannHypothesis
-- This deliberately invalid inference must be rejected by the compiler.
example : GRWTSK.RiemannHypothesis.NontrivialZetaZero (-2) := by
  refine ⟨?_, ?_, ?_⟩
  · simpa using riemannZeta_neg_two_mul_nat_add_one 0
  · norm_num
  · norm_num
