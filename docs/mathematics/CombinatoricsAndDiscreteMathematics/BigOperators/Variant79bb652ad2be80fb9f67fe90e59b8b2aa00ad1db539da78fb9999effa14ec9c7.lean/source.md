# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant79bb652ad2be80fb9f67fe90e59b8b2aa00ad1db539da78fb9999effa14ec9c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52d8c1aaa155f977dbe671348378373586084abd` · SHA-256 `79bb652ad2be80fb9f67fe90e59b8b2aa00ad1db539da78fb9999effa14ec9c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.GroupTheory.Congruence.BigOperators
import Mathlib.RingTheory.Congruence.Defs

/-!
# Interactions between `∑, ∏` and `RingCon`

-/

namespace RingCon

/-- Congruence relation of a ring preserves finite sum indexed by a list. -/
protected lemma listSum {ι S : Type*} [AddMonoid S] [Mul S]
    (t : RingCon S) (l : List ι) {f g : ι → S} (h : ∀ i ∈ l, t (f i) (g i)) :
    t (l.map f).sum (l.map g).sum :=
  t.toAddCon.list_sum h

/-- Congruence relation of a ring preserves finite sum indexed by a multiset. -/
protected lemma multisetSum {ι S : Type*} [AddCommMonoid S] [Mul S] (t : RingCon S)
    (s : Multiset ι) {f g : ι → S} (h : ∀ i ∈ s, t (f i) (g i)) :
    t (s.map f).sum (s.map g).sum :=
  t.toAddCon.multiset_sum h

/-- Congruence relation of a ring preserves finite sum. -/
protected lemma finsetSum {ι S : Type*} [AddCommMonoid S] [Mul S] (t : RingCon S) (s : Finset ι)
    {f g : ι → S} (h : ∀ i ∈ s, t (f i) (g i)) :
    t (s.sum f) (s.sum g) :=
  t.toAddCon.finset_sum s h

end RingCon
```
