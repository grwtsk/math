# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Core.Variant98b57197f5a1318d5541493f2d380445a8de422131b1ec53812b05bdc43db464

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `875ff17ff86d027d9527f764c6472881ec022c31` · SHA-256 `35eae66773aee1b51376bf64f480ebcc3a0b1af312cd909d856545293dc414fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SubsingletonOrNontrivialElim.Variant9f220424a2f028ebdeada794f16a1d2a1942d86ee1faadd0d756fa17cd8c7f82","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9f220424a2f028ebdeada794f16a1d2a1942d86ee1faadd0d756fa17cd8c7f82","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.SubsingletonOrNontrivialElim.Variant9f220424a2f028ebdeada794f16a1d2a1942d86ee1faadd0d756fa17cd8c7f82","mathematical_subject":"Logic.Foundations","original_sha256":"9f220424a2f028ebdeada794f16a1d2a1942d86ee1faadd0d756fa17cd8c7f82","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/Nontriviality/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel, Mario Carneiro
-/
import Qq.MetaM
import Mathlib.Logic.Nontrivial
import Mathlib.Tactic.SolveByElim

/-! # The `nontriviality` tactic. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SubsingletonOrNontrivialElim.Variant9f220424a2f028ebdeada794f16a1d2a1942d86ee1faadd0d756fa17cd8c7f82

set_option autoImplicit true

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
def nontrivialityByElim (α : Q(Type u)) (g : MVarId) (simpArgs : Array Syntax) : MetaM MVarId := do
  let p : Q(Prop) ← g.getType
  guard (←instantiateMVars (← inferType p)).isProp
  g.withContext do
    let g₁ ← mkFreshExprMVarQ q(Subsingleton $α → $p)
    let (_, g₁') ← g₁.mvarId!.intro1
    g₁'.withContext try
      -- FIXME: restore after lean4#2054 is fixed
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

/--
Tries to generate a `Nontrivial α` instance using `nontrivial_of_ne` or `nontrivial_of_lt`
and local hypotheses.
-/
def nontrivialityByAssumption (g : MVarId) : MetaM Unit := do
  g.inferInstance <|> do
    _ ← SolveByElim.solveByElim.processSyntax {maxDepth := 6}
      false false [← `(nontrivial_of_ne), ← `(nontrivial_of_lt)] [] #[] [g]

/-- Attempts to generate a `Nontrivial α` hypothesis.

The tactic first looks for an instance using `infer_instance`.

If the goal is an (in)equality, the type `α` is inferred from the goal.
Otherwise, the type needs to be specified in the tactic invocation, as `nontriviality α`.

The `nontriviality` tactic will first look for strict inequalities amongst the hypotheses,
and use these to derive the `Nontrivial` instance directly.

Otherwise, it will perform a case split on `Subsingleton α ∨ Nontrivial α`, and attempt to discharge
the `Subsingleton` goal using `simp [h₁, h₂, ..., hₙ, nontriviality]`, where `[h₁, h₂, ..., hₙ]` is
a list of additional `simp` lemmas that can be passed to `nontriviality` using the syntax
`nontriviality α using h₁, h₂, ..., hₙ`.

```
example {R : Type} [OrderedRing R] {a : R} (h : 0 < a) : 0 < a := by
  nontriviality -- There is now a `nontrivial R` hypothesis available.
  assumption
```

```
example {R : Type} [CommRing R] {r s : R} : r * s = s * r := by
  nontriviality -- There is now a `nontrivial R` hypothesis available.
  apply mul_comm
```

```
example {R : Type} [OrderedRing R] {a : R} (h : 0 < a) : (2 : ℕ) ∣ 4 := by
  nontriviality R -- there is now a `nontrivial R` hypothesis available.
  dec_trivial
```

```
def myeq {α : Type} (a b : α) : Prop := a = b

example {α : Type} (a b : α) (h : a = b) : myeq a b := by
  success_if_fail nontriviality α -- Fails
  nontriviality α using myeq -- There is now a `nontrivial α` hypothesis available
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
      throwError "The goal is not an (in)equality, so you'll need to specify the desired {""
        }`Nontrivial α` instance by invoking `nontriviality α`.")
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
````
