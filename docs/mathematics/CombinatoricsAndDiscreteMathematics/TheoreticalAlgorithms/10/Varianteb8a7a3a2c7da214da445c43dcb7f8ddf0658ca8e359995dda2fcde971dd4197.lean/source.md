# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.10.Varianteb8a7a3a2c7da214da445c43dcb7f8ddf0658ca8e359995dda2fcde971dd4197

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d22d068a4ad60bcaffb6ff45eb388e1ba838fbdd` · SHA-256 `eb8a7a3a2c7da214da445c43dcb7f8ddf0658ca8e359995dda2fcde971dd4197`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Asta H. From, Jannis Limperg
-/
import Aesop

set_option aesop.check.all true

attribute [aesop unsafe [50% constructors, 50% cases]] List.Mem

theorem Mem.map (f : α → β) (x : α) (xs : List α) (h : x ∈ xs) :
    f x ∈ xs.map f := by
  induction h <;> aesop
```
