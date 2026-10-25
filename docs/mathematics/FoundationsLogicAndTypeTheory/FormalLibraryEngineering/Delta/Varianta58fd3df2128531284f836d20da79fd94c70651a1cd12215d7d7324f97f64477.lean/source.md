# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Delta.Varianta58fd3df2128531284f836d20da79fd94c70651a1cd12215d7d7324f97f64477

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea278f13967b344d91328a840fc0981ad345cac1` · SHA-256 `a58fd3df2128531284f836d20da79fd94c70651a1cd12215d7d7324f97f64477`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Tactic.Delta
public import Lean.Elab.Tactic.Conv.Basic

public section

namespace Lean.Elab.Tactic.Conv
open Meta

@[builtin_tactic Lean.Parser.Tactic.Conv.delta] def evalDelta : Tactic := fun stx => withMainContext do
  let declNames ← stx[1].getArgs.mapM fun stx => realizeGlobalConstNoOverloadWithInfo stx
  let lhsNew ← deltaExpand (← instantiateMVars (← getLhs)) declNames.contains
  changeLhs lhsNew

end Lean.Elab.Tactic.Conv
```
