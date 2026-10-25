# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Variant634f3780238d76bed355915ced090e136794d915ce2a1cde98c962449d062fc0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8ff04a4ed852434302eaa060086cec596ca08d4` · SHA-256 `634f3780238d76bed355915ced090e136794d915ce2a1cde98c962449d062fc0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Mathlib.Init
import Aesop

/-!
# Continuity Rule Set

This module defines the `Continuous` Aesop rule set which is used by the
`continuity` tactic. Aesop rule sets only become visible once the file in which
they're declared is imported, so we must put this declaration into its own file.
-/

declare_aesop_rule_sets [Continuous]
```
