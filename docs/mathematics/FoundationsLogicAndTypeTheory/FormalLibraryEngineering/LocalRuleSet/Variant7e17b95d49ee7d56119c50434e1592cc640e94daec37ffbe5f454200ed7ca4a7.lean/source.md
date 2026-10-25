# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LocalRuleSet.Variant7e17b95d49ee7d56119c50434e1592cc640e94daec37ffbe5f454200ed7ca4a7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb062ed285dc70ec53194cec332947eee2127bd1` · SHA-256 `7e17b95d49ee7d56119c50434e1592cc640e94daec37ffbe5f454200ed7ca4a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

-- We used to add local rules to the `default` rule set, but this doesn't work
-- well when the default rule set is disabled.

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : Unit := by
  aesop (rule_sets := [-default, -builtin]) (config := { terminal := true })

example : Unit := by
  aesop (add safe PUnit.unit) (rule_sets := [-default, -builtin])
```
