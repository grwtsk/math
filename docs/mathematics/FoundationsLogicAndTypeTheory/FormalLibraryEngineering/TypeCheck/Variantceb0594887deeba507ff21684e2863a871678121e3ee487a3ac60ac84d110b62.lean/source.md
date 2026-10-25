# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeCheck.Variantceb0594887deeba507ff21684e2863a871678121e3ee487a3ac60ac84d110b62

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `027d17e403e204e307164acdd360281907d34e9e` · SHA-256 `ceb0594887deeba507ff21684e2863a871678121e3ee487a3ac60ac84d110b62`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Init
import Lean.Elab.Tactic.Basic
import Lean.Elab.SyntheticMVars

/-!
# The `type_check` tactic
Define the `type_check` tactic: it type checks a given expression, and traces its type.
-/

open Lean Elab Meta

/-- Type check the given expression, and trace its type. -/
elab tk:"type_check " e:term : tactic => do
  Tactic.withMainContext do
    let e ← Term.elabTermAndSynthesize e none
    check e
    let type ← inferType e
    Lean.logInfoAt tk m!"{← Lean.instantiateMVars type}"
```
