# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SafePrefixExpansionRappLimit.Varianta8c0b8f6430bae8fb8649e69cc9b3c6de3b9e4ff9f5b30db56fe190c04fa1a00

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `212c94d3961174281df71445b5c39de1bda79794` · SHA-256 `a8c0b8f6430bae8fb8649e69cc9b3c6de3b9e4ff9f5b30db56fe190c04fa1a00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

@[aesop safe]
axiom loopy {α : Prop} : α ∨ α → α

/--
warning: aesop: failed to prove the goal. Some goals were not explored because the maximum rule application depth (30) was reached. Set option 'maxRuleApplicationDepth' to increase the limit.
---
warning: aesop: safe prefix was not fully expanded because the maximum number of rule applications (50) was reached.
---
error: unsolved goals
⊢ False
-/
#guard_msgs in
example : False := by
  aesop

/--
error: Tactic `aesop` failed, failed to prove the goal. Some goals were not explored because the maximum rule application depth (30) was reached. Set option 'maxRuleApplicationDepth' to increase the limit.
Initial goal:
  ⊢ False
Remaining goals after safe rules:
  ⊢ False
The safe prefix was not fully expanded because the maximum number of rule applications (50) was reached.
-/
#guard_msgs in
example : False := by
  aesop (config := { terminal := true })
```
