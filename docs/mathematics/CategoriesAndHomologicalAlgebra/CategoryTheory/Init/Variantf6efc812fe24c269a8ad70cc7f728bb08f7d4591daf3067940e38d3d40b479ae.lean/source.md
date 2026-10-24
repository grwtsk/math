# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Init.Variantf6efc812fe24c269a8ad70cc7f728bb08f7d4591daf3067940e38d3d40b479ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c42b8ce108818f2d4c38713f1adf8f66c03144b` · SHA-256 `f6efc812fe24c269a8ad70cc7f728bb08f7d4591daf3067940e38d3d40b479ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Mathlib.Init
import Aesop

/-!
# Category Theory Rule Set

This module defines the `CategoryTheory` Aesop rule set which is used by the
`aesop_cat` tactic. Aesop rule sets only become visible once the file in which
they're declared is imported, so we must put this declaration into its own file.
-/

declare_aesop_rule_sets [CategoryTheory]
```
