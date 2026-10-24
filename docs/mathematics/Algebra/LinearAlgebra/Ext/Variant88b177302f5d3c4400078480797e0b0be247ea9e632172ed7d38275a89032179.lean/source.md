# Complete source: GRWTSK.Algebra.LinearAlgebra.Ext.Variant88b177302f5d3c4400078480797e0b0be247ea9e632172ed7d38275a89032179

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66fef3812367c5cd942185c33c7d7dffc2d13ec7` · SHA-256 `88b177302f5d3c4400078480797e0b0be247ea9e632172ed7d38275a89032179`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Matrix

namespace Boolean

namespace Matrix

@[ext]
theorem ext
    {A B : Matrix rows cols}
    (h : ∀ i j, A i j = B i j) :
    A = B := by
  funext i
  funext j
  exact h i j

/-- Pointwise equality of Boolean matrices. -/
def pointwiseEq
    (A B : Matrix rows cols) :
    Prop :=
  ∀ i j, A i j = B i j

end Matrix

end Boolean
```
