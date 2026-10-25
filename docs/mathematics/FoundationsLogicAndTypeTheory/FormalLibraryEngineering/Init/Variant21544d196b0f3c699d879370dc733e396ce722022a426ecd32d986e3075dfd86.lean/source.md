# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Variant21544d196b0f3c699d879370dc733e396ce722022a426ecd32d986e3075dfd86

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40a20040c7bdc13dfee750177db6e600aeee4b8d` · SHA-256 `21544d196b0f3c699d879370dc733e396ce722022a426ecd32d986e3075dfd86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Arend Mellendijk. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arend Mellendijk
-/

import Mathlib.Init
import Aesop

/-!
# arith_mult Rule Set

This module defines the `IsMultiplicative` Aesop rule set which is used by the
`arith_mult` tactic. Aesop rule sets only become visible once the file in which
they're declared is imported, so we must put this declaration into its own file.
-/

declare_aesop_rule_sets [IsMultiplicative]
```
