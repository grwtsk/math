import Boolean.Tree.Compile
import Boolean.Tree.Size
import Boolean.Tree.List
import Boolean.Tree.Polish
import Boolean.Tree.Variadic
import Boolean.Tree.Graph
import Boolean.Tree.Normalize
import Boolean.Tree.MatrixEncoding
import Boolean.Tree.SOP
import Boolean.Tree.OrderedFactor

/-!
# Boolean syntax

Formalized: Boolean formula trees, prefix tokenizations, graph extraction,
normalization, matrix encoding, ordered factor-tree syntax, and sum-of-products
syntax.

Certificate-gated: semantic interpretations beyond the Boolean valuation model.

Not claimed: syntax normalization is not a proof of downstream flow, homology,
or spectral claims.
-/
