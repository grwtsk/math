# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SetLike.Variant5416b7e5dddfc7b1f12191705915811f64bce9ee4e87109b00d7f552ca89b166

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f55f3606d7d7ed2c1dfac877668892a41778bac` · SHA-256 `5416b7e5dddfc7b1f12191705915811f64bce9ee4e87109b00d7f552ca89b166`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/

import Mathlib.Init
import Aesop

/-!
# SetLike Rule Set

This module defines the `SetLike` Aesop rule set which is used by the
`SetLike` tactic. Aesop rule sets only become visible once the file in which
they're declared is imported, so we must put this declaration into its own file.
-/

declare_aesop_rule_sets [SetLike] (default := true)
```
