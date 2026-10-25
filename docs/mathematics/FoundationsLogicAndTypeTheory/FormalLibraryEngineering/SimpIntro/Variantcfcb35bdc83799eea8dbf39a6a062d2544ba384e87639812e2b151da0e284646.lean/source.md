# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpIntro.Variantcfcb35bdc83799eea8dbf39a6a062d2544ba384e87639812e2b151da0e284646

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a816ba1df65b2d8ab21d02246f1d312afc27f7ca` · SHA-256 `cfcb35bdc83799eea8dbf39a6a062d2544ba384e87639812e2b151da0e284646`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Lean.Elab.Tactic.Simp
import Mathlib.Init

/-! # `simp_intro` tactic -/

namespace Mathlib.Tactic
open Lean Meta Elab Tactic

/--
Main loop of the `simp_intro` tactic.
* `g`: the original goal
* `ctx`: the simp context, which is extended with local variables as we enter the binders
* `discharge?`: the discharger
* `more`: if true, we will keep introducing binders as long as we can
* `ids`: the list of binder identifiers
-/
partial def simpIntroCore (g : MVarId) (ctx : Simp.Context) (simprocs : Simp.SimprocsArray := #[])
    (discharge? : Option Simp.Discharge) (more : Bool) (ids : List (TSyntax ``binderIdent)) :
    TermElabM (Option MVarId) := do
  let done := return (← simpTargetCore g ctx simprocs discharge?).1
  let (transp, var, ids') ← match ids with
    | [] => if more then pure (.reducible, mkHole (← getRef), []) else return ← done
    | v::ids => pure (.default, v.raw[0], ids)
  let t ← withTransparency transp g.getType'
  let n := if var.isIdent then var.getId else `_
  let withFVar := fun (fvar, g) ↦ g.withContext do
    Term.addLocalVarInfo var (mkFVar fvar)
    let simpTheorems ← ctx.simpTheorems.addTheorem (.fvar fvar) (.fvar fvar)
    simpIntroCore g (ctx.setSimpTheorems simpTheorems) simprocs discharge? more ids'
  match t with
  | .letE .. => withFVar (← g.intro n)
  | .forallE (body := body) .. =>
    let (fvar, g) ← g.intro n
    if body.hasLooseBVars then withFVar (fvar, g) else
    match (← simpLocalDecl g fvar ctx simprocs discharge?).1 with
    | none =>
      g.withContext <| Term.addLocalVarInfo var (mkFVar fvar)
      return none
    | some g' => withFVar g'
  | _ =>
    if more && ids.isEmpty then done else
    throwErrorAt var "simp_intro failed to introduce {var}\n{g}"

open Parser.Tactic
/--
The `simp_intro` tactic is a combination of `simp` and `intro`: it will simplify the types of
variables as it introduces them and uses the new variables to simplify later arguments
and the goal.
* `simp_intro x y z` introduces variables named `x y z`
* `simp_intro x y z ..` introduces variables named `x y z` and then keeps introducing `_` binders
* `simp_intro (config := cfg) (discharger := tac) x y .. only [h₁, h₂]`:
  `simp_intro` takes the same options as `simp` (see `simp`)
```
example : x + 0 = y → x = z := by
  simp_intro h
  -- h: x = y ⊢ y = z
  sorry
```
-/
elab "simp_intro" cfg:optConfig disch:(discharger)?
    ids:(ppSpace colGt binderIdent)* more:" .."? only:(&" only")? args:(simpArgs)? : tactic => do
  let args := args.map fun args ↦ ⟨args.raw[1].getArgs⟩
  let stx ← `(tactic| simp $cfg:optConfig $(disch)? $[only%$only]? $[[$args,*]]?)
  let { ctx, simprocs, dischargeWrapper } ←
    withMainContext <| mkSimpContext stx (eraseLocal := false)
  dischargeWrapper.with fun discharge? ↦ do
    let g ← getMainGoal
    g.checkNotAssigned `simp_intro
    g.withContext do
      let g? ← simpIntroCore g ctx (simprocs := simprocs) discharge? more.isSome ids.toList
      replaceMainGoal <| if let some g := g? then [g] else []

end Mathlib.Tactic
````
