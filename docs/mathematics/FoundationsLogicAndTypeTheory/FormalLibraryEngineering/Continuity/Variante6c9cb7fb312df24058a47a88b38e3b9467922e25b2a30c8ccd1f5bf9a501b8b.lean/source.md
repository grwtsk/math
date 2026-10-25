# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Continuity.Variante6c9cb7fb312df24058a47a88b38e3b9467922e25b2a30c8ccd1f5bf9a501b8b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d05f1b279099b6ecc98187eed6159c67fb41f66d` · SHA-256 `e6c9cb7fb312df24058a47a88b38e3b9467922e25b2a30c8ccd1f5bf9a501b8b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll
-/

import Mathlib.Tactic.Continuity.Init

/-!
# Continuity

We define the `continuity` tactic using `aesop`. -/

attribute [aesop (rule_sets := [Continuous]) unfold norm] Function.comp

/--
The `continuity` attribute used to tag continuity statements for the `continuity` tactic. -/
macro "continuity" : attr =>
  `(attr|aesop safe apply (rule_sets := [$(Lean.mkIdent `Continuous):ident]))

/--
The tactic `continuity` solves goals of the form `Continuous f` by applying lemmas tagged with the
`continuity` user attribute. -/
macro "continuity" : tactic =>
  `(tactic| aesop (config := { terminal := true })
     (rule_sets := [$(Lean.mkIdent `Continuous):ident]))

/--
The tactic `continuity` solves goals of the form `Continuous f` by applying lemmas tagged with the
`continuity` user attribute. -/
macro "continuity?" : tactic =>
  `(tactic| aesop? (config := { terminal := true })
    (rule_sets := [$(Lean.mkIdent `Continuous):ident]))

-- Todo: implement `continuity!` and `continuity!?` and add configuration, original
-- syntax was (same for the missing `continuity` variants):
-- syntax (name := continuity) "continuity" optConfig : tactic
```
