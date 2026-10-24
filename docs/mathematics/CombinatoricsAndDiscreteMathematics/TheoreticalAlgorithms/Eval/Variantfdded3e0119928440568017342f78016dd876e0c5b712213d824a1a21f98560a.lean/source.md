# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Eval.Variantfdded3e0119928440568017342f78016dd876e0c5b712213d824a1a21f98560a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2111d2757a3a43c011b301fe24422fa501137106` · SHA-256 `fdded3e0119928440568017342f78016dd876e0c5b712213d824a1a21f98560a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Tree
import Boolean.Formula

namespace Boolean

universe u

/-- Bottom-up evaluation of a Boolean expression tree. -/
def Tree.eval (ν : Valuation α) : Tree α → Bool
  | .var a => ν a
  | .falsum => false
  | .truth => true
  | .neg p => !(Tree.eval ν p)
  | .conj p q => Tree.eval ν p && Tree.eval ν q
  | .disj p q => Tree.eval ν p || Tree.eval ν q
  | .impl p q => !(Tree.eval ν p) || Tree.eval ν q
  | .eqv p q => Tree.eval ν p == Tree.eval ν q
  | .nand p q => !(Tree.eval ν p && Tree.eval ν q)

end Boolean
```
