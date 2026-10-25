# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Exfalso.Variant4a644e69365001f8cbbca7dd97ace22279ad12563de4fa567fe65b9d8510e976

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a47489d98a88b9fa0077ac5334ec3601fc9e73fb` · SHA-256 `4a644e69365001f8cbbca7dd97ace22279ad12563de4fa567fe65b9d8510e976`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Lars König. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lars König, Mario Carneiro, Sebastian Graf
-/
module

prelude
public import Lean.Elab.Tactic.Do.ProofMode.Basic

public section

namespace Lean.Elab.Tactic.Do.ProofMode
open Std.Do
open Lean Elab Tactic Meta


-- set_option pp.all true in
-- #check ⌜False⌝
private def falseProp (u : Level) (σs : Expr) : Expr := -- ⌜False⌝ standing in for an empty conjunction of hypotheses
  SPred.mkPure u σs (mkConst ``False)

@[builtin_tactic Lean.Parser.Tactic.mexfalso]
def elabMExfalso : Tactic | _ => do
  let mvar ← getMainGoal
  mvar.withContext do
  let g ← instantiateMVars <| ← mvar.getType
  let some goal := parseMGoal? g | throwError "not in proof mode"
  let newGoal := { goal with target := falseProp goal.u goal.σs }
  let m ← mkFreshExprSyntheticOpaqueMVar newGoal.toExpr
  let prf := mkApp4 (mkConst ``SPred.exfalso [goal.u]) goal.σs goal.hyps goal.target m
  mvar.assign prf
  replaceMainGoal [m.mvarId!]
```
