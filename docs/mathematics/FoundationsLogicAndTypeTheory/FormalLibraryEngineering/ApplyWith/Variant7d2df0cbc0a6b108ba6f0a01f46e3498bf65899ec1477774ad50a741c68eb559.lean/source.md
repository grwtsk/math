# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyWith.Variant7d2df0cbc0a6b108ba6f0a01f46e3498bf65899ec1477774ad50a741c68eb559

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4ddb7097accc6e897cd4c545806901553190748` · SHA-256 `7d2df0cbc0a6b108ba6f0a01f46e3498bf65899ec1477774ad50a741c68eb559`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Init
import Lean.Elab.Eval
import Lean.Elab.Tactic.ElabTerm

/-!
# The `applyWith` tactic
The `applyWith` tactic is like `apply`, but allows passing a custom configuration to the underlying
`apply` operation.
-/

namespace Mathlib.Tactic
open Lean Meta Elab Tactic Term

/--
`apply (config := cfg) e` is like `apply e` but allows you to provide a configuration
`cfg : ApplyConfig` to pass to the underlying `apply` operation.
-/
elab (name := applyWith) "apply" " (" &"config" " := " cfg:term ") " e:term : tactic => do
  let cfg ← unsafe evalTerm ApplyConfig (mkConst ``ApplyConfig) cfg
  evalApplyLikeTactic (·.apply · cfg) e

end Mathlib.Tactic
```
