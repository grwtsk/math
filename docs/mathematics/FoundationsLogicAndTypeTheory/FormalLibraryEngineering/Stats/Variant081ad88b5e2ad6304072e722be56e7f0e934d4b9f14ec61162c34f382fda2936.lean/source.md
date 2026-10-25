# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stats.Variant081ad88b5e2ad6304072e722be56e7f0e934d4b9f14ec61162c34f382fda2936

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd157296e1b6a6e2bb36ab7b355ddfe7a9225c77` · SHA-256 `081ad88b5e2ad6304072e722be56e7f0e934d4b9f14ec61162c34f382fda2936`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

/-
Regression test for a bug involving the stats extension and async elaboration.
The commands below should not panic and should show non-zero stats.
-/

set_option aesop.collectStats true
set_option trace.aesop.stats true

#guard_msgs (drop trace) in
theorem mem_spec {o : Option α} : a ∈ o ↔ o = some a := by
  aesop (add norm simp Membership.mem)

#guard_msgs (drop info) in
#aesop_stats
```
