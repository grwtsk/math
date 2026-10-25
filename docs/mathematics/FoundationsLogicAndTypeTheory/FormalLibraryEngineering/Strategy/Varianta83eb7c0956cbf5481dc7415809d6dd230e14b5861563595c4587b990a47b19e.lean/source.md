# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Strategy.Varianta83eb7c0956cbf5481dc7415809d6dd230e14b5861563595c4587b990a47b19e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c953d86f3a44691a9d32eb03c5002a26e2b6501d` · SHA-256 `a83eb7c0956cbf5481dc7415809d6dd230e14b5861563595c4587b990a47b19e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

@[aesop 50% constructors]
inductive I₁
  | ofI₁ : I₁ → I₁
  | ofTrue : True → I₁

example : I₁ := by
  aesop

example : I₁ := by
  aesop (config := { strategy := .bestFirst })

example : I₁ := by
  aesop (config := { strategy := .breadthFirst })

/--
error: Tactic `aesop` failed, maximum number of rule applications (10) reached. Set the 'maxRuleApplications' option to increase the limit.
-/
#guard_msgs in
example : I₁ := by
  aesop (config :=
    { strategy := .depthFirst
      maxRuleApplicationDepth := 0
      maxRuleApplications := 10,
      terminal := true })

example : I₁ := by
  aesop (config := { strategy := .depthFirst, maxRuleApplicationDepth := 10 })
```
