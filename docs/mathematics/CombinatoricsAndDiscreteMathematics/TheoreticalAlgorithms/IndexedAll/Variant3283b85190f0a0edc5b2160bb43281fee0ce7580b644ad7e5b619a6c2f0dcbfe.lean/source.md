# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IndexedAll.Variant3283b85190f0a0edc5b2160bb43281fee0ce7580b644ad7e5b619a6c2f0dcbfe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `720365ebf1f1614b83d4bd2615d93aee47fdeb5b` · SHA-256 `3283b85190f0a0edc5b2160bb43281fee0ce7580b644ad7e5b619a6c2f0dcbfe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Heterogeneous lists indexed by judgments

`IndexedAll P js` contains one value of `P j` for every judgment `j` in
`js`.  It is the premise container shared by raw derivations and tree plans.
-/

namespace Atomize.Formal

universe u v

/-- One indexed value for every element of a list. -/
inductive IndexedAll {α : Type u} (P : α → Type v) : List α → Type (max u v)
  | nil : IndexedAll P []
  | cons {j : α} {js : List α} : P j → IndexedAll P js → IndexedAll P (j :: js)

namespace IndexedAll

/-- Pointwise transport across an indexed family. -/
def map
    {α : Type u}
    {P Q : α → Type v}
    (f : ∀ j, P j → Q j) :
    ∀ {js}, IndexedAll P js → IndexedAll Q js
  | _, .nil => .nil
  | _, .cons head tail => .cons (f _ head) (map f tail)

end IndexedAll

end Atomize.Formal
```
