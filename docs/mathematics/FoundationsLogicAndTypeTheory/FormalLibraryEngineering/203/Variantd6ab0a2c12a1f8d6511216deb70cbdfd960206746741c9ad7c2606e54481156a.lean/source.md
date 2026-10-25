# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.203.Variantd6ab0a2c12a1f8d6511216deb70cbdfd960206746741c9ad7c2606e54481156a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d8d5b65742c95618447db854ff599001cf54fe28` · SHA-256 `d6ab0a2c12a1f8d6511216deb70cbdfd960206746741c9ad7c2606e54481156a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop.Frontend

-- Thank to Damiano Testa for this bug report.

/--
info: @[aesop (rule_sets := [builtin✝]) safe✝ apply✝]
example : True✝ :=
  trivial✝
-/
#guard_msgs in
#eval do
  let stx ← `(@[aesop (rule_sets := [builtin]) safe apply] example : True := trivial)
  Lean.logInfo stx
```
