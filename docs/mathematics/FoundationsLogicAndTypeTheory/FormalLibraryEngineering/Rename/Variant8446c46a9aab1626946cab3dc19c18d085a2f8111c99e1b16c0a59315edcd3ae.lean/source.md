# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rename.Variant8446c46a9aab1626946cab3dc19c18d085a2f8111c99e1b16c0a59315edcd3ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d56eda7db2d6af7471f60167be74340e18286d4` · SHA-256 `8446c46a9aab1626946cab3dc19c18d085a2f8111c99e1b16c0a59315edcd3ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Lean.Elab.Tactic.ElabTerm
import Mathlib.Init

/-!
# The `rename'` tactic
The `rename'` tactic renames one or several hypotheses.
-/

namespace Mathlib.Tactic

open Lean Elab.Tactic Meta

/-- A parser for a single rename to perform in the `rename` tactic:
these should have the form `h => hnew` (describing a rename of a hypothesis `h` to `hnew`). -/
syntax renameArg := term " => " ident

/-- `rename' h => hnew` renames the hypothesis named `h` to `hnew`.
To rename several hypothesis, use `rename' h₁ => h₁new, h₂ => h₂new`.
You can use `rename' a => b, b => a` to swap two variables. -/
syntax (name := rename') "rename' " renameArg,+ : tactic

elab_rules : tactic
  | `(tactic| rename' $[$as:term => $bs:ident],*) => do
    let ids ← getFVarIds as
    liftMetaTactic1 fun goal ↦ do
      let mut lctx ← getLCtx
      for fvar in ids, tgt in bs do
        lctx := lctx.setUserName fvar tgt.getId
      let mvarNew ← mkFreshExprMVarAt lctx (← getLocalInstances)
        (← goal.getType) MetavarKind.syntheticOpaque (← goal.getTag)
      goal.assign mvarNew
      pure mvarNew.mvarId!
    withMainContext do
      for fvar in ids, tgt in bs do
        Elab.Term.addTermInfo' tgt (mkFVar fvar)

end Mathlib.Tactic
```
