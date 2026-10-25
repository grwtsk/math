# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eval.Varianta42a18df62ba93e1e621ff311e98eb6147f1e49a7c5856899c80cf58f3da045f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `119d77e82b840697d157f9246b130cff12ae2b6b` · SHA-256 `a42a18df62ba93e1e621ff311e98eb6147f1e49a7c5856899c80cf58f3da045f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Sebastian Ullrich. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich
-/
module

prelude
public import Lean.Meta.Eval
public import Lean.Elab.SyntheticMVars

public section

namespace Lean.Elab.Term
open Meta

unsafe def evalTerm (α) (type : Expr) (value : Syntax) (safety := DefinitionSafety.safe) : TermElabM α := withoutModifyingEnv do
  let v ← elabTermEnsuringType value type
  synthesizeSyntheticMVarsNoPostponing
  let v ← instantiateMVars v
  if (← logUnassignedUsingErrorInfos (← getMVars v)) then throwAbortTerm
  evalExpr α type v safety

end Lean.Elab.Term
```
