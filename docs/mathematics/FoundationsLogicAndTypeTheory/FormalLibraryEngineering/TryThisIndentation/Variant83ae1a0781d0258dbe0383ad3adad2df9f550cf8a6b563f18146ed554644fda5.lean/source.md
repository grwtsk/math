# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TryThisIndentation.Variant83ae1a0781d0258dbe0383ad3adad2df9f550cf8a6b563f18146ed554644fda5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd99f966c2aca35f9049a8c4e54dc64fca557d85` · SHA-256 `83ae1a0781d0258dbe0383ad3adad2df9f550cf8a6b563f18146ed554644fda5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

/--
info: Try this:

  [apply]     intro a_1 a_2
    simp_all only [ne_eq, List.mem_cons, or_self, not_false_eq_true]
-/
#guard_msgs in
example {a y : α} {l : List α} : a ≠ y → a ∉ l → a ∉ y::l := by
  aesop?

/--
info: Try this:

  [apply]   simp_all only [ne_eq, List.mem_cons, or_self, not_false_eq_true]
-/
#guard_msgs in
example {a y : α} {l : List α} : a ≠ y → a ∉ l → a ∉ y::l := by
  intros
  have : ¬ a ∈ y :: l := by
    aesop?
  exact this
```
