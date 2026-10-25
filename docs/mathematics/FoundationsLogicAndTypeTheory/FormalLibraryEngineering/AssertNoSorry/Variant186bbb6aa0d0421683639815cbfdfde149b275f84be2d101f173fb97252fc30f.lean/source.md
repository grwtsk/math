# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertNoSorry.Variant186bbb6aa0d0421683639815cbfdfde149b275f84be2d101f173fb97252fc30f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f320192712f472ddc6a0bd070c2b9b887220907` · SHA-256 `186bbb6aa0d0421683639815cbfdfde149b275f84be2d101f173fb97252fc30f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 David Renshaw. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Renshaw
-/

import Mathlib.Init
import Lean.Util.CollectAxioms
import Lean.Elab.Command

/-!
# Defines the `assert_no_sorry` command.

Throws an error if the given identifier uses sorryAx.
-/

open Lean Meta Elab Command

/-- Throws an error if the given identifier uses sorryAx. -/
elab "assert_no_sorry " n:ident : command => do
  let name ← liftCoreM <| Lean.Elab.realizeGlobalConstNoOverloadWithInfo n
  let axioms ← Lean.collectAxioms name
  if axioms.contains ``sorryAx
  then throwError "{n} contains sorry"
```
