# Complete source: GRWTSK.Analysis.InnerProductSpace.Checks.Positive.CausalContactOperatorCost

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18036547563001ec88969e7514b988b55099b00f` · SHA-256 `764bca1e75cb731d92d4eeb56481be8e459a0327fad2a3c4453c0853a20f4368`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.InnerProductSpace.CausalContactOperatorCost

set_option linter.hashCommand false

namespace GRWTSK.Analysis.InnerProductSpace.CausalContactOperatorCost

#print axioms inverse_half_square
#print axioms response_after_contact_bounds
#print axioms gram_diagonal_eq_post_contact
#print axioms gram_diagonal_cubic_upper
#print axioms original_window_L2_norm_square
#print axioms prescribed_source_L2_norm_square
#print axioms continuous_linear_realization_cubic_cost
#print axioms no_uniform_bounded_realization_for_scale_family
#print axioms log_eight_near_contact_scale_bounds
#print axioms prescribed_horizon_no_uniform_bounded_realization

#check inverse_half_square
#check response_after_contact_bounds
#check gram_diagonal_eq_post_contact
#check gram_diagonal_cubic_upper
#check original_window_L2_norm_square
#check prescribed_source_L2_norm_square
#check continuous_linear_realization_cubic_cost
#check no_uniform_bounded_realization_for_scale_family
#check log_eight_near_contact_scale_bounds
#check prescribed_horizon_no_uniform_bounded_realization

end GRWTSK.Analysis.InnerProductSpace.CausalContactOperatorCost
```
