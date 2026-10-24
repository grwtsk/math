# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Size.Variant7372e2ee356244fe6b738f7d15609c4ce7e2c43bcd0f66f241468870201920c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `552037cc16644cd1c7bfefdd1c5f3d25aa84e548` · SHA-256 `7372e2ee356244fe6b738f7d15609c4ce7e2c43bcd0f66f241468870201920c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Tree

namespace Boolean

universe u

/-- Number of syntax nodes in a Boolean tree. -/
def Tree.nodeCount : Tree α → Nat
  | .var _ => 1
  | .falsum => 1
  | .truth => 1
  | .neg p => Tree.nodeCount p + 1
  | .conj p q => Tree.nodeCount p + Tree.nodeCount q + 1
  | .disj p q => Tree.nodeCount p + Tree.nodeCount q + 1
  | .impl p q => Tree.nodeCount p + Tree.nodeCount q + 1
  | .eqv p q => Tree.nodeCount p + Tree.nodeCount q + 1
  | .nand p q => Tree.nodeCount p + Tree.nodeCount q + 1

end Boolean
```
