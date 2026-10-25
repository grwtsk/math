# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Varianta5b72d768373db5d0674e4b959759abe63aabdfb311966f82fc375460c24a3e1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `349009999ed4357731f0ca9b242d326668df225b` · SHA-256 `a5b72d768373db5d0674e4b959759abe63aabdfb311966f82fc375460c24a3e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Mathlib.Init
import Aesop

/-!
# SimpleGraph Rule Set

This module defines the `SimpleGraph` Aesop rule set which is used by the
`aesop_graph` tactic. Aesop rule sets only become visible once the file in which
they're declared is imported, so we must put this declaration into its own file.
-/

declare_aesop_rule_sets [SimpleGraph]
```
