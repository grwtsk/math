# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Linarith.Variant1080aa2ac21e7cee050f2c4cb14dc5ad82c4bfb5f1dc5a99336005c222fca025

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f618ee6078ac927d5f292054fcf83bca6146ee54` · SHA-256 `1080aa2ac21e7cee050f2c4cb14dc5ad82c4bfb5f1dc5a99336005c222fca025`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Robert Y. Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Y. Lewis
-/
import Mathlib.Tactic.Linarith.Frontend
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Hint

/-!
We register `linarith` with the `hint` tactic.
-/

register_hint linarith
```
