# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BestFirst.Varianted3bdbf76dca72515ecb1798f3914a6099e64866b6fa1bd7b07bf65ddca56880

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b89959c565f0fd2457f8823ec2d09ec2400b379` · SHA-256 `ed3bdbf76dca72515ecb1798f3914a6099e64866b6fa1bd7b07bf65ddca56880`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.MLList.BestFirst
import Mathlib.Data.Nat.Sqrt

/-!
# Testing best first search and beam search.

We check that `bestFirstSearch` can find its way around a wall.
-/

open Lean MLList

def wall : Int × Int → Bool :=
  fun ⟨x, y⟩ => x ≤ 3 || y ≤ 3 || x ≥ 20 || y ≥ 20 || (x ≥ 6 && y ≥ 6)

def nbhd : Int × Int → MLList MetaM (Int × Int) :=
  fun ⟨x, y⟩ => MLList.ofList
      ([(x+1,y), (x-1,y), (x,y+1), (x,y-1)].filter wall)

instance : Ord (Int × Int) where
  compare p q :=
    let rp := p.1^2 + p.2^2
    let rq := q.1^2 + q.2^2
    if rp < rq then .lt
    else if rq < rp then .gt
    else if p.1 < q.1 then .lt
    else if q.1 < p.1 then .gt
    else if p.2 < q.2 then .lt
    else if q.2 < p.2 then .gt
    else .eq

#eval bestFirstSearch nbhd (10, 10) (maxQueued := some 4) |>.takeUpToFirst (· = (0,0)) |>.force
```
