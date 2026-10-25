# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Variant759903e5289d913a8d0abb4937f3d9f44159576d5e8343c0be8715dad26aeda7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b217091d6d6b2f85f76b44d89dc76e14aaaf87b` · SHA-256 `554951587980a5fae998ae4cf9b2cac31028ddb4ab9a03bd4b672ecf225fe26d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabTerm.Variante229147582bc1071219f85a831310e95e70554ec69f84c67a315b32ebe02fd40","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e229147582bc1071219f85a831310e95e70554ec69f84c67a315b32ebe02fd40","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ElabTerm.Variante229147582bc1071219f85a831310e95e70554ec69f84c67a315b32ebe02fd40","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"e229147582bc1071219f85a831310e95e70554ec69f84c67a315b32ebe02fd40","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Tactic/Init.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public meta import Lean.Elab.Tactic.ElabTerm
public meta import Lean.Meta.MatchUtil


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabTerm.Variante229147582bc1071219f85a831310e95e70554ec69f84c67a315b32ebe02fd40

public meta section

/-!
# Simple tactics that are used throughout Batteries.
-/

namespace Batteries.Tactic
open Lean Parser.Tactic Elab Elab.Tactic Meta

/--
`_` in tactic position acts like the `done` tactic: it fails and gives the list
of goals if there are any. It is useful as a placeholder after starting a tactic block
such as `by _` to make it syntactically correct and show the current goal.
-/
macro "_" : tactic => `(tactic| {})

/--
`exacts [e1, ..., en]` is like `exact`, using the terms `e1`, ..., `en` to close all the current
`n` goals. It raises an error if the number of goals does not match.
-/
elab (name := exacts) "exacts " "[" hs:term,* "]" : tactic => do
  for stx in hs.getElems do
    evalTactic (← `(tactic| exact $stx))
  evalTactic (← `(tactic| done))

/--
`by_contra_core` is the component of `by_contra` that turns the goal into the form `p → False`.
`by_contra h` is defined as `by_contra_core` followed by `rintro h`.
* If the goal is a negation `¬q`, the goal becomes `q → False`.
* If the goal has a `Decidable` instance, it uses `Decidable.byContradiction` instead of
  `Classical.byContradiction`.
-/
scoped macro "by_contra_core" : tactic => `(tactic| first
  | guard_target = Not _; change _ → False
  | refine @Decidable.byContradiction _ _ ?_
  | refine @Classical.byContradiction _ ?_)

/--
`by_contra h` proves `⊢ p` by contradiction,
introducing a hypothesis `h : ¬p` and proving `False`.
* If `p` is a negation `¬q`, `h : q` will be introduced instead of `¬¬q`.
* If `p` is decidable, it uses `Decidable.byContradiction` instead of `Classical.byContradiction`.
* If `h` is omitted, the introduced variable will be called `this`.
* `h` can be any pattern supported by `rcases`/`rintro`.
-/
syntax (name := byContra) "by_contra" (ppSpace colGt rcasesPatMed)? (" : " term)? : tactic

macro_rules
| `(tactic| by_contra $[$pat?]? $[: $ty?]?) => do
  let pat ← pat?.getDM `(rcasesPatMed| $(mkIdent `this):ident)
  `(tactic| (by_contra_core; rintro ($pat:rcasesPatMed) $[: $ty?]?))

/--
Given a proof `h` of `p`, `absurd h` changes the goal to `⊢ ¬ p`.
If `p` is a negation `¬q` then the goal is changed to `⊢ q` instead.
-/
macro "absurd " h:term : tactic =>
  -- we can't use `( :)` here as that would make `·` behave weirdly.
  `(tactic|
    first
    | refine @absurd _ _ ?_ $h
    | refine @absurd _ _ $h ?_)

/-- `split_ands` applies `And.intro` on all goals until it does not make progress. -/
syntax "split_ands" : tactic
macro_rules | `(tactic| split_ands) => `(tactic| repeat' refine And.intro ?_ ?_)

/--
`fapply e` is like `apply e` but it adds goals in the order they appear,
rather than putting the dependent goals first.
-/
elab "fapply " e:term : tactic =>
  evalApplyLikeTactic (·.apply (cfg := {newGoals := .all})) e

/--
`eapply e` is like `apply e` but it does not add subgoals for variables that appear
in the types of other goals. Note that this can lead to a failure where there are
no goals remaining but there are still metavariables in the term:
```
example (h : ∀ x : Nat, x = x → True) : True := by
  eapply h
  rfl
  -- no goals
-- (kernel) declaration has metavariables '_example'
```
-/
elab "eapply " e:term : tactic =>
  evalApplyLikeTactic (·.apply (cfg := {newGoals := .nonDependentOnly})) e

/-- Deprecated variant of `trivial`. -/
elab (name := triv) "triv" : tactic => throwError "`triv` has been removed; use `trivial` instead"

/-- The `conv` mode tactic `exact e` closes the goal `⊢ t` by rewriting it to `t'`,
where `e : t = t'`. -/
macro (name := Conv.exact) "exact " t:term : conv => `(conv| tactic => exact $t)

/-- The `conv` mode tactic `equals e` claims that the currently focused subexpression is equal
to the term `e`, and proves this claim using the given tactic.
```
example (P : (Nat → Nat) → Prop) : P (fun n => n - n) := by
  conv in (_ - _) => equals 0 =>
    -- current goal: ⊢ n - n = 0
    apply Nat.sub_self
  -- current goal: P (fun n => 0)
```
-/
elab (name := Conv.equals) "equals " t:term " => " tac:tacticSeq : conv => do
  let mvarId ← getMainGoal
  mvarId.withContext do
    let goal ← mvarId.getType
    let some (α, _, rhs) ← matchEq? goal | throwError "invalid 'conv' goal"
    let e ← Term.withSynthesize do
      Term.elabTermEnsuringType t (some α)
    unless ← isDefEq rhs e do throwError m!"failed to resolve{indentExpr rhs}\n=?={indentExpr e}"
    evalTactic <| ← `(conv| tactic => · $tac)
````
