# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Varianta97e95a51beac2a3c2667bb02121f86701f89592af0260c4c9254a40f081b445

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e66e7cfc19a5ce3bf953109b42a185c49822ccd4` · SHA-256 `a97e95a51beac2a3c2667bb02121f86701f89592af0260c4c9254a40f081b445`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Tree

namespace Boolean

universe u

/-- Build an n-ary conjunction as a right-nested binary tree. -/
def Tree.conjList : List (Tree α) → Tree α
  | [] => .truth
  | p :: ps => .conj p (Tree.conjList ps)

/-- Build an n-ary disjunction as a right-nested binary tree. -/
def Tree.disjList : List (Tree α) → Tree α
  | [] => .falsum
  | p :: ps => .disj p (Tree.disjList ps)

end Boolean
```
