# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Variant612221f65ece4a39a8a14100041ae5bae367d9f91414219e0626b88f0bfa17c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fad0482e9171fa38a29f8bfd0ae09726d08bdee3` · SHA-256 `612221f65ece4a39a8a14100041ae5bae367d9f91414219e0626b88f0bfa17c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/

import Mathlib.Init
import Aesop

/-!
# Rule sets related to topological (pre)sheaves

This module defines the `Restrict` Aesop rule set. Aesop rule sets only become
visible once the file in which they're declared is imported, so we must put this
declaration into its own file.
-/

/- to prove subset relations -/
declare_aesop_rule_sets [Restrict]
```
