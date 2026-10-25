# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Continuity.Variant5307012dd44db110178bce5cffb4c933f9014a1b6c885e290d6138e4804045c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7993d3206e745e312692a4818389adcd3d0a458b` · SHA-256 `5307012dd44db110178bce5cffb4c933f9014a1b6c885e290d6138e4804045c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll
-/

import Mathlib.Tactic.Continuity.Init
import Mathlib.Algebra.Group.Defs

/-!
# Continuity

We define the `continuity` tactic using `aesop`. -/

attribute [aesop (rule_sets [Continuous]) unfold norm] Function.comp
attribute [aesop (rule_sets [Continuous]) unfold norm] npowRec

/--
The `continuity` attribute used to tag continuity statements for the `continuity` tactic. -/
macro "continuity" : attr =>
  `(attr|aesop safe apply (rule_sets [$(Lean.mkIdent `Continuous):ident]))

/--
The tactic `continuity` solves goals of the form `Continuous f` by applying lemmas tagged with the
`continuity` user attribute. -/
macro "continuity" : tactic =>
  `(tactic| aesop (options := { terminal := true }) (rule_sets [$(Lean.mkIdent `Continuous):ident]))

/--
The tactic `continuity` solves goals of the form `Continuous f` by applying lemmas tagged with the
`continuity` user attribute. -/
macro "continuity?" : tactic =>
  `(tactic| aesop? (options := { terminal := true })
    (rule_sets [$(Lean.mkIdent `Continuous):ident]))

-- Todo: implement `continuity!` and `continuity!?` and add configuration, original
-- syntax was (same for the missing `continuity` variants):
-- syntax (name := continuity) "continuity" (config)? : tactic
```
