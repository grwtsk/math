# Complete source: GRWTSK.Analysis.InnerProductSpace.Checks.Positive.CausalContactSeparation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `603f6a494b95fc4ad1449ca36eac9b51c690e515` · SHA-256 `1a4ef50430a5a0bf803ebe8c74639129aca7bf505f3e4008505b71d995e7b865`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.InnerProductSpace.CausalContactSeparation

set_option linter.hashCommand false

namespace GRWTSK.Analysis.InnerProductSpace.CausalContactSeparation

#print axioms response_zero_before_or_at_contact
#print axioms window_response_eq_zero_of_before_contact
#print axioms touching_window_response_eq_zero
#print axioms native_before_contact_row_zero
#print axioms prescribed_source_vector_ne_zero
#print axioms zero_preserving_contact_map_ne_source
#print axioms linear_contact_map_ne_source
#print axioms diagonal_scaled_native_ne_source
#print axioms native_contact_no_source_quadratic_domination
#print axioms prescribed_horizon_restricted_obstructions

#check response_zero_before_or_at_contact
#check window_response_eq_zero_of_before_contact
#check touching_window_response_eq_zero
#check native_before_contact_row_zero
#check prescribed_source_vector_ne_zero
#check zero_preserving_contact_map_ne_source
#check linear_contact_map_ne_source
#check diagonal_scaled_native_ne_source
#check native_contact_no_source_quadratic_domination
#check prescribed_horizon_restricted_obstructions

end GRWTSK.Analysis.InnerProductSpace.CausalContactSeparation
```
