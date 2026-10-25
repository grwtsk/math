# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RenameI.Variantbc0f3f4e70cd9fa38b703649bca85afb267f55c9bae17ca7f93ecfc5b2098afb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08b0daba8ed61469c59c3bdd05a6cb49ce3839e3` · SHA-256 `bc0f3f4e70cd9fa38b703649bca85afb267f55c9bae17ca7f93ecfc5b2098afb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Lars König. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lars König, Mario Carneiro, Sebastian Graf
-/
module

prelude
public import Lean.Elab.Tactic.Do.ProofMode.Basic

namespace Lean.Elab.Tactic.Do.ProofMode
open Std.Do SPred.Tactic
open Lean Elab Tactic Meta

partial def mRenameI [Monad m] [MonadControlT MetaM m] [MonadLiftT MetaM m] (goal : MGoal)
    (idents : Array (TSyntax ``binderIdent)) (k : MGoal → m (α × Expr)) : m (α × Expr) := do
  let goal ← goal.renameInaccessibleHyps idents
  k goal

@[builtin_tactic Lean.Parser.Tactic.mrenameI]
def elabMRenameI : Tactic
  | `(tactic| mrename_i $idents:binderIdent*) => do
    let (mvar, goal) ← mStartMainGoal
    mvar.withContext do
    let goals ← IO.mkRef []
    mvar.assign (← Prod.snd <$> mRenameI goal idents fun newGoal => do
      let m ← mkFreshExprSyntheticOpaqueMVar newGoal.toExpr
      goals.modify (m.mvarId! :: ·)
      return ((), m))
    replaceMainGoal (← goals.get)
  | _ => throwUnsupportedSyntax
```
