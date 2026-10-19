import Surface.Boolean.Syntax.Basic
import Surface.Boolean.Syntax.Polish
import Surface.Boolean.Syntax.Cambridge
import Surface.Boolean.Syntax.Graph
import Surface.Boolean.Syntax.Normalize
import Surface.Boolean.Syntax.MatrixEncoding
import Surface.Boolean.Syntax.SOP
import Surface.Boolean.Syntax.OrderedFactorTree

/-!
# Boolean syntax

Formalized: Boolean formula trees, prefix tokenizations, graph extraction,
normalization, matrix encoding, ordered factor-tree syntax, and sum-of-products
syntax.

Certificate-gated: semantic interpretations beyond the Boolean valuation model.

Not claimed: syntax normalization is not a proof of downstream flow, homology,
or spectral claims.
-/
