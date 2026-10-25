# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShowTerm.Variant69852b21f6a45df9a91f61e41a60294324cb56050057153456ab72487615a3ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf6ccbce0421a884719505fe6c53dfedd32b7d89` · SHA-256 `69852b21f6a45df9a91f61e41a60294324cb56050057153456ab72487615a3ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/

/--
info: Try this:
  [apply] exact (n, 37)
-/
#guard_msgs in example (n : Nat) : Nat × Nat := by
  show_term
    constructor
    exact n
    exact 37

/--
info: Try this:
  [apply] refine (?_, ?_)
-/
#guard_msgs in example : Nat × Nat := by
  show_term constructor
  repeat exact 42

/--
info: Try this:
  [apply] fun {X} => X
-/
#guard_msgs in example : {_a : Nat} → Nat :=
  show_term by
    intro X
    exact X
```
