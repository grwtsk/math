# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Core.Variant8c82ae71f27477cc49bc577b2be1c45b21a131a7235381e7c0cd73b350f6ec86

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f748470858359405cfd85ddb3799f4ae27db264` · SHA-256 `05bef3368398673a60194f140e7e479591b26ac1008421e50b3fe9f5c46a3faf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SubsingletonOrNontrivialElim.Variant4584f64f9fc6c9e1add1e7b42bcb13d17ab28ae1458b3d9201ddcb60f217875f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4584f64f9fc6c9e1add1e7b42bcb13d17ab28ae1458b3d9201ddcb60f217875f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.SubsingletonOrNontrivialElim.Variant4584f64f9fc6c9e1add1e7b42bcb13d17ab28ae1458b3d9201ddcb60f217875f","mathematical_subject":"Logic.Foundations","original_sha256":"4584f64f9fc6c9e1add1e7b42bcb13d17ab28ae1458b3d9201ddcb60f217875f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/Nontriviality/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel, Mario Carneiro
-/
module

public meta import Lean.Elab.Tactic.Meta
public meta import Lean.Elab.Tactic.SolveByElim
public import Qq.Macro
public import Qq.Typ
public meta import Qq.MetaM

public import Mathlib.Basic.Nontrivial.Basic -- shake: keep (tactic dependency)
public import Mathlib.Tactic.Attr.Register -- shake: keep (tactic dependency)

/-! # The `nontriviality` tactic. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SubsingletonOrNontrivialElim.Variant4584f64f9fc6c9e1add1e7b42bcb13d17ab28ae1458b3d9201ddcb60f217875f

public meta section

universe u

namespace Mathlib.Tactic.Nontriviality
open Lean Elab Meta Tactic Qq

theorem subsingleton_or_nontrivial_elim {p : Prop} {α : Type u}
    (h₁ : Subsingleton α → p) (h₂ : Nontrivial α → p) : p :=
  (subsingleton_or_nontrivial α).elim @h₁ @h₂

/--
Tries to generate a `Nontrivial α` instance by performing case analysis on
`subsingleton_or_nontrivial α`,
attempting to discharge the subsingleton branch using lemmas with `@[nontriviality]` attribute,
including `Subsingleton.le` and `eq_iff_true_of_subsingleton`.
-/
def nontrivialityByElim {u : Level} (α : Q(Type u)) (g : MVarId) (simpArgs : Array Syntax) :
    MetaM MVarId := do
  let p : Q(Prop) ← g.getType
  guard (← instantiateMVars (← inferType p)).isProp
  g.withContext do
    let g₁ ← mkFreshExprMVarQ q(Subsingleton $α → $p)
    let (_, g₁') ← g₁.mvarId!.intro1
    g₁'.withContext try
      -- FIXME: restore after https://github.com/leanprover/lean4/issues/2054 is fixed
      -- g₁'.inferInstance <|> do
      (do g₁'.assign (← synthInstance (← g₁'.getType))) <|> do
        let simpArgs := simpArgs.push (Unhygienic.run `(Parser.Tactic.simpLemma| nontriviality))
        let stx := open TSyntax.Compat in Unhygienic.run `(tactic| simp [$simpArgs,*])
        let ([], _) ← runTactic g₁' stx | failure
    catch _ => throwError
      "Could not prove goal assuming `{q(Subsingleton $α)}`\n{MessageData.ofGoal g₁'}"
    let g₂ : Q(Nontrivial $α → $p) ← mkFreshExprMVarQ q(Nontrivial $α → $p)
    g.assign q(subsingleton_or_nontrivial_elim $g₁ $g₂)
    pure g₂.mvarId!

open Lean.Elab.Tactic.SolveByElim in
/--
Tries to generate a `Nontrivial α` instance using `nontrivial_of_ne` or `nontrivial_of_lt`
and local hypotheses.
-/
def nontrivialityByAssumption (g : MVarId) : MetaM Unit := do
  g.inferInstance <|> do
    _ ← processSyntax {maxDepth := 6}
      false false [← `(nontrivial_of_ne), ← `(nontrivial_of_lt)] [] #[] [g]

/-- `nontriviality α` generates a proof of `Nontrivial α` and adds this as a hypothesis.

The tactic first tries to find a proof of `Nontrivial α` using instance synthesis.
If this fails, it will derive this proof using `a < b`, `a ≠ b` or `a > b` hypotheses in the
local context. Otherwise it will perform a case split on `Subsingleton α ∨ Nontrivial α`, and
attempt to prove `Subsingleton α` implies the main goal using `simp [nontriviality]`.
If the `Subsingleton` goal cannot be closed automatically, `nontriviality` fails.

This tactic is extensible: tag a lemma with `@[nontriviality]` to use it in the `simp` set for the
`Subsingleton` case. All `@[simp]` lemmas are automatically used too.

* `nontriviality` (without the argument `α`) infers the type from the main goal,
  if the goal is an (in)equality.
* `nontriviality using h₁, h₂, ..., hₙ` uses `h₁`, ..., `hₙ` as extra arguments to `simp`
  in the `Subsingleton` case. This supports the typical `simp` argument syntax:
  `nontriviality using ← h` rewrites right-to-left with this argument;
  `nontriviality using -h` removes a lemma from the default `simp` set for this tactic invocation.
  `nontriviality using *` adds all local hypotheses to the `simp` set.

Examples:
```
example {R : Type} [OrderedRing R] {a : R} (h : 0 < a) : 0 < a := by
  nontriviality -- There is now a `Nontrivial R` hypothesis available.
  assumption

example {R : Type} [CommRing R] {r s : R} : r * s = s * r := by
  nontriviality -- There is now a `Nontrivial R` hypothesis available.
  apply mul_comm

example {R : Type} [OrderedRing R] {a : R} (h : 0 < a) : (2 : ℕ) ∣ 4 := by
  nontriviality R -- there is now a `Nontrivial R` hypothesis available.
  dec_trivial

def myeq {α : Type} (a b : α) : Prop := a = b

example {α : Type} (a b : α) (h : a = b) : myeq a b := by
  success_if_fail nontriviality α -- Fails
  nontriviality α using myeq -- There is now a `Nontrivial α` hypothesis available
  assumption
```
-/
syntax (name := nontriviality) "nontriviality" (ppSpace colGt term)?
  (" using " Parser.Tactic.simpArg,+)? : tactic

/-- Elaborator for the `nontriviality` tactic. -/
@[tactic nontriviality] def elabNontriviality : Tactic := fun stx => do
    let g ← getMainGoal
    let α ← match stx[1].getOptional? with
    | some e => Term.elabType e
    | none => (do
      let mut tgt ← withReducible g.getType'
      if let some tgt' := tgt.not? then tgt ← withReducible (whnf tgt')
      if let some (α, _) := tgt.eq? then return α
      if let some (α, _) := tgt.app4? ``LE.le then return α
      if let some (α, _) := tgt.app4? ``LT.lt then return α
      throwError "The goal is not an (in)equality, so you'll need to specify the desired \
        `Nontrivial α` instance by invoking `nontriviality α`.")
    let .sort u ← whnf (← inferType α) | unreachable!
    let some v := u.dec | throwError "not a type{indentExpr α}"
    let α : Q(Type v) := α
    let tac := do
      let ty := q(Nontrivial $α)
      let m ← mkFreshExprMVar (some ty)
      nontrivialityByAssumption m.mvarId!
      g.assert `inst ty m
    let g ← liftM <| tac <|> nontrivialityByElim α g stx[2][1].getSepArgs
    replaceMainGoal [(← g.intro1).2]

end Nontriviality

end Mathlib.Tactic
````
