import FormalResearch.RiemannHypothesis.SignedPrefixTransfer

/-! Final-byte independent theorem type and trusted-closure audit. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option linter.hashCommand false

open FormalResearch.RiemannHypothesis.SignedPrefixTransfer

#print cumulativeSum

#check signed_sum_by_parts
#print signed_sum_by_parts
#print axioms signed_sum_by_parts

#check abs_weighted_sum_le_prefix_variation
#print abs_weighted_sum_le_prefix_variation
#print axioms abs_weighted_sum_le_prefix_variation

#check weighted_actual_le_model_add_budget
#print weighted_actual_le_model_add_budget
#print axioms weighted_actual_le_model_add_budget

#check closed_sum_eq_neg_cumulative_integral
#print closed_sum_eq_neg_cumulative_integral
#print axioms closed_sum_eq_neg_cumulative_integral
