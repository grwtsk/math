# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Variant218fbfd2518fc88e622eba4812c20e30f0b405ca3aaa7e06183b8554a3c87fb1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d4de6f8f88c617382089d9360f04394b3d231bb` · SHA-256 `218fbfd2518fc88e622eba4812c20e30f0b405ca3aaa7e06183b8554a3c87fb1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Miyahara Kō. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Miyahara Kō
-/

import Mathlib.Init
import Aesop

/-!
# Measurability Rule Set

This module defines the `Measurable` Aesop rule set which is used by the
`measurability` tactic. Aesop rule sets only become visible once the file in which
they're declared is imported, so we must put this declaration into its own file.
-/

declare_aesop_rule_sets [Measurable]
```
