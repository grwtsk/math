# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CoreAttrs.Variant60751b725052c9832b099fc83bf09e3664ebcdd6d2ce0b996b6d7153f06205bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a34b544fb3f7c13d012cb4d59e4354584b5237d7` · SHA-256 `60751b725052c9832b099fc83bf09e3664ebcdd6d2ce0b996b6d7153f06205bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Tactic.GCongr.Core

/-!
# gcongr attributes for lemmas up in the import chain

In this file we add `gcongr` attribute to lemmas in `Lean.Init`.
We may add lemmas from other files imported by `Mathlib/Tactic/GCongr/Core` later.
-/

attribute [gcongr] List.Sublist.append List.Sublist.append_left List.Sublist.append_right
  List.Sublist.reverse List.drop_sublist_drop_left List.Sublist.drop Nat.succ_le_succ
  List.Perm.append_left List.Perm.append_right List.Perm.append List.Perm.map
```
