# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Conv.Variantd8dac21ea63ae2de98d290e1053580655eeb9557330dc2b8a23245423592c5eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c187d8377134630adefa8fdcd3fab54e8b9b7c9` · SHA-256 `7f1c4e161047864c0f104e2ba66be305a8a8703bfd53a48e68ba33feb4d0a9cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Conv.Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Conv.Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Conv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Mathlib.Init
import Lean.Elab.Tactic.Conv.Basic
import Lean.Elab.Command

/-!
Additional `conv` tactics.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Conv.Variantb15094d9252470394e89227d269c3d0e4e0ac1309ff88c65481da37e16ea2e46

namespace Mathlib.Tactic.Conv
open Lean Parser.Tactic Parser.Tactic.Conv Elab.Tactic Meta

syntax (name := convLHS) "conv_lhs" (" at " ident)? (" in " (occs)? term)? " => " convSeq : tactic
macro_rules
  | `(tactic| conv_lhs $[at $id]? $[in $[$occs]? $pat]? => $seq) =>
    `(tactic| conv $[at $id]? $[in $[$occs]? $pat]? => lhs; ($seq:convSeq))

syntax (name := convRHS) "conv_rhs" (" at " ident)? (" in " (occs)? term)? " => " convSeq : tactic
macro_rules
  | `(tactic| conv_rhs $[at $id]? $[in $[$occs]? $pat]? => $seq) =>
    `(tactic| conv $[at $id]? $[in $[$occs]? $pat]? => rhs; ($seq:convSeq))

macro "run_conv" e:doSeq : conv => `(conv| tactic' => run_tac $e)

/--
`conv in pat => cs` runs the `conv` tactic sequence `cs`
on the first subexpression matching the pattern `pat` in the target.
The converted expression becomes the new target subgoal, like `conv => cs`.

The arguments `in` are the same as those as the in `pattern`.
In fact, `conv in pat => cs` is a macro for `conv => pattern pat; cs`.

The syntax also supports the `occs` clause. Example:
```lean
conv in (occs := *) x + y => rw [add_comm]
```
-/
macro "conv" " in " occs?:(occs)? p:term " => " code:convSeq : conv =>
  `(conv| conv => pattern $[$occs?]? $p; ($code:convSeq))

/--
* `discharge => tac` is a conv tactic which rewrites target `p` to `True` if `tac` is a tactic
  which proves the goal `⊢ p`.
* `discharge` without argument returns `⊢ p` as a subgoal.
-/
syntax (name := dischargeConv) "discharge" (" => " tacticSeq)? : conv

/-- Elaborator for the `discharge` tactic. -/
@[tactic dischargeConv] def elabDischargeConv : Tactic := fun
  | `(conv| discharge $[=> $tac]?) => do
    let g :: gs ← getGoals | throwNoGoalsToBeSolved
    let (theLhs, theRhs) ← Conv.getLhsRhsCore g
    let .true ← isProp theLhs | throwError "target is not a proposition"
    theRhs.mvarId!.assign (mkConst ``True)
    let m ← mkFreshExprMVar theLhs
    g.assign (← mkEqTrue m)
    if let some tac := tac then
      setGoals [m.mvarId!]
      evalTactic tac; done
      setGoals gs
    else
      setGoals (m.mvarId! :: gs)
  | _ => Elab.throwUnsupportedSyntax

/-- Use `refine` in `conv` mode. -/
macro "refine " e:term : conv => `(conv| tactic => refine $e)

open Elab Tactic
/--
The command `#conv tac => e` will run a conv tactic `tac` on `e`, and display the resulting
expression (discarding the proof).
For example, `#conv rw [true_and_iff] => True ∧ False` displays `False`.
There are also shorthand commands for several common conv tactics:

* `#whnf e` is short for `#conv whnf => e`
* `#simp e` is short for `#conv simp => e`
* `#norm_num e` is short for `#conv norm_num => e`
* `#push_neg e` is short for `#conv push_neg => e`
-/
elab tk:"#conv " conv:conv " => " e:term : command =>
  Command.runTermElabM fun _ ↦ do
    let e ← Elab.Term.elabTermAndSynthesize e none
    let (rhs, g) ← Conv.mkConvGoalFor e
    _ ← Tactic.run g.mvarId! do
      evalTactic conv
      for mvarId in (← getGoals) do
        liftM <| mvarId.refl <|> mvarId.inferInstance <|> pure ()
      pruneSolvedGoals
      let e' ← instantiateMVars rhs
      logInfoAt tk e'

@[inherit_doc Parser.Tactic.withReducible]
macro (name := withReducible) tk:"with_reducible " s:convSeq : conv =>
  `(conv| tactic' => with_reducible%$tk conv' => $s)

/--
The command `#whnf e` evaluates `e` to Weak Head Normal Form, which means that the "head"
of the expression is reduced to a primitive - a lambda or forall, or an axiom or inductive type.
It is similar to `#reduce e`, but it does not reduce the expression completely,
only until the first constructor is exposed. For example:
```
open Nat List
set_option pp.notation false
#whnf [1, 2, 3].map succ
-- cons (succ 1) (map succ (cons 2 (cons 3 nil)))
#reduce [1, 2, 3].map succ
-- cons 2 (cons 3 (cons 4 nil))
```
The head of this expression is the `List.cons` constructor,
so we can see from this much that the list is not empty,
but the subterms `Nat.succ 1` and `List.map Nat.succ (List.cons 2 (List.cons 3 List.nil))` are
still unevaluated. `#reduce` is equivalent to using `#whnf` on every subexpression.
-/
macro tk:"#whnf " e:term : command => `(command| #conv%$tk whnf => $e)

/--
The command `#whnfR e` evaluates `e` to Weak Head Normal Form with Reducible transparency,
that is, it uses `whnf` but only unfolding reducible definitions.
-/
macro tk:"#whnfR " e:term : command => `(command| #conv%$tk with_reducible whnf => $e)

/--
* `#simp => e` runs `simp` on the expression `e` and displays the resulting expression after
  simplification.
* `#simp only [lems] => e` runs `simp only [lems]` on `e`.
* The `=>` is optional, so `#simp e` and `#simp only [lems] e` have the same behavior.
  It is mostly useful for disambiguating the expression `e` from the lemmas.
-/
syntax "#simp" (&" only")? (simpArgs)? " =>"? ppSpace term : command
macro_rules
  | `(#simp%$tk $[only%$o]? $[[$args,*]]? $[=>]? $e) =>
    `(#conv%$tk simp $[only%$o]? $[[$args,*]]? => $e)

end Mathlib.Tactic.Conv
````
