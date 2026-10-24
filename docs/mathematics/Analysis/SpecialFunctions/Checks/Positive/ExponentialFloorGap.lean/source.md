# Complete source: GRWTSK.Analysis.SpecialFunctions.Checks.Positive.ExponentialFloorGap

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f267218ce13fdcff31175967f38bd7e8ea3606b` · SHA-256 `599d78209de247fc8c056a87eb8f12a82879dbec05ae29ce45880055056316aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.SpecialFunctions.ExponentialFloorGap

set_option linter.hashCommand false

namespace GRWTSK.Analysis.SpecialFunctions.ExponentialFloorGap

#print axioms one_le_natFloor_exp
#print axioms natFloor_exp_pos
#print axioms natFloor_exp_cast_pos
#print axioms natFloor_exp_le
#print axioms exp_lt_natFloor_add_one
#print axioms gap_nonneg
#print axioms gap_lt_inv_natFloor
#print axioms exp_lt_two_mul_natFloor
#print axioms exp_two_mul_div_four_lt_natFloor_sq
#print axioms cubicAllowance_le_inv_natFloor_pow_four
#print axioms natFloor_sq_le_of_cost

#check one_le_natFloor_exp
#check natFloor_exp_pos
#check natFloor_exp_cast_pos
#check natFloor_exp_le
#check exp_lt_natFloor_add_one
#check gap_nonneg
#check gap_lt_inv_natFloor
#check exp_lt_two_mul_natFloor
#check exp_two_mul_div_four_lt_natFloor_sq
#check cubicAllowance_le_inv_natFloor_pow_four
#check natFloor_sq_le_of_cost

end GRWTSK.Analysis.SpecialFunctions.ExponentialFloorGap
```
