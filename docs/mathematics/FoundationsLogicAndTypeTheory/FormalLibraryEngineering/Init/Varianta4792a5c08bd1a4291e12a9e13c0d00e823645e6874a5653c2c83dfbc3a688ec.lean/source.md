# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Varianta4792a5c08bd1a4291e12a9e13c0d00e823645e6874a5653c2c83dfbc3a688ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c7fdd617d01774fc9f59279bee3f6fe53c25a49` · SHA-256 `a4792a5c08bd1a4291e12a9e13c0d00e823645e6874a5653c2c83dfbc3a688ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Mathlib.Init
import Aesop

/-!
# Sym2 Rule Set

This module defines the `Sym2` Aesop rule set. Aesop rule sets only become
visible once the file in which they're declared is imported, so we must put this
declaration into its own file.
-/

declare_aesop_rule_sets [Sym2]
```
