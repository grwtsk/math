# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Variantfc370ee3bd509d6b7edb3aa37be460ca326fc0613a071cfdd7228fa3849f0c17

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ca4a86975928f1d9c32e31339600004968c3fcc` · SHA-256 `fc370ee3bd509d6b7edb3aa37be460ca326fc0613a071cfdd7228fa3849f0c17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Geoffrey Irving. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Geoffrey Irving
-/

import Mathlib.Init
import Aesop.Frontend.Command

/-!
# Bound Rule Set

This module defines the `Bound` Aesop rule set which is used by the
`bound` tactic. Aesop rule sets only become visible once the file in which
they're declared is imported, so we must put this declaration into its own file.
-/

declare_aesop_rule_sets [Bound]
```
