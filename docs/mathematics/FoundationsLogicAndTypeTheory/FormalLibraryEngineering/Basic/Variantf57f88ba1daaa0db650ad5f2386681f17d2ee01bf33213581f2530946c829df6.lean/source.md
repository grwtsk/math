# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantf57f88ba1daaa0db650ad5f2386681f17d2ee01bf33213581f2530946c829df6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4048032b1086463ef16e44daee49df978ba5da3` · SHA-256 `f57f88ba1daaa0db650ad5f2386681f17d2ee01bf33213581f2530946c829df6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
module

prelude
public import Init.Prelude
public import Init.Data.Nat.Log2
public import Init.Data.Nat.Bitwise.Basic
public import Init.WFTactics

public section

namespace Nat

/--
Integer square root function. Implemented via Newton's method.
-/
@[expose]
def sqrt (n : Nat) : Nat :=
  if n ≤ 1 then n else
  iter n (1 <<< ((n.log2 / 2) + 1))
where
  /-- Auxiliary for `sqrt`. If `guess` is greater than the integer square root of `n`,
  returns the integer square root of `n`. -/
  iter (n guess : Nat) : Nat :=
    let next := (guess + n / guess) / 2
    if _h : next < guess then
      iter n next
    else
      guess
  termination_by guess

end Nat
```
