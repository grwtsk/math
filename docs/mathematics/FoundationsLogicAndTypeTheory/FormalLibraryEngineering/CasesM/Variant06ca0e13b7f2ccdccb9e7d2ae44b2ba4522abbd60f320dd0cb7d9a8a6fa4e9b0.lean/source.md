# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesM.Variant06ca0e13b7f2ccdccb9e7d2ae44b2ba4522abbd60f320dd0cb7d9a8a6fa4e9b0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d63fc8054b4633468a20dd86e88cc1432b9a7688` · SHA-256 `7118d4bc756697a84ea4db6e812726973c9e7f510b6dda140bf8511a89a5fd0e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesMatching.Variant0aee0f02d74e8f8e7e1ebcf205e56eea99500531a4d27467ddb1b4cd308f8a4d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0aee0f02d74e8f8e7e1ebcf205e56eea99500531a4d27467ddb1b4cd308f8a4d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CasesMatching.Variant0aee0f02d74e8f8e7e1ebcf205e56eea99500531a4d27467ddb1b4cd308f8a4d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0aee0f02d74e8f8e7e1ebcf205e56eea99500531a4d27467ddb1b4cd308f8a4d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/CasesM.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Init
import Lean.Elab.Tactic.Conv.Pattern

/-!
# `casesm`, `cases_type`, `constructorm` tactics

These tactics implement repeated `cases` / `constructor` on anything satisfying a predicate.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesMatching.Variant0aee0f02d74e8f8e7e1ebcf205e56eea99500531a4d27467ddb1b4cd308f8a4d

namespace Lean.MVarId

/--
Core tactic for `casesm` and `cases_type`. Calls `cases` on all fvars in `g` for which
`matcher ldecl.type` returns true.
* `recursive`: if true, it calls itself repeatedly on the resulting subgoals
* `allowSplit`: if false, it will skip any hypotheses where `cases` returns more than one subgoal.
* `throwOnNoMatch`: if true, then throws an error if no match is found
-/
partial def casesMatching (matcher : Expr → MetaM Bool) (recursive := false) (allowSplit := true)
    (throwOnNoMatch := true) (g : MVarId) : MetaM (List MVarId) := do
  let result := (← go g).toList
  if throwOnNoMatch && result == [g] then
    throwError "no match"
  else
    return result
where
  /-- Auxiliary for `casesMatching`. Accumulates generated subgoals in `acc`. -/
  go (g : MVarId) (acc : Array MVarId := #[]) : MetaM (Array MVarId) :=
    g.withContext do
      for ldecl in ← getLCtx do
        if ldecl.isImplementationDetail then continue
        if ← matcher ldecl.type then
          let mut acc := acc
          let subgoals ← if allowSplit then
            g.cases ldecl.fvarId
          else
            let s ← saveState
            let subgoals ← g.cases ldecl.fvarId (givenNames := #[⟨true, [ldecl.userName]⟩])
            if subgoals.size > 1 then
              s.restore
              continue
            else
              pure subgoals
          for subgoal in subgoals do
            -- If only one new hypothesis is generated, rename it to the original name.
            let g ← match subgoal.fields with
            | #[.fvar fvarId] => subgoal.mvarId.rename fvarId ldecl.userName
            | _ => pure subgoal.mvarId
            if recursive then
              acc ← go g acc
            else
              acc := acc.push g
          return acc
      return (acc.push g)

def casesType (heads : Array Name) (recursive := false) (allowSplit := true) :
    MVarId → MetaM (List MVarId) :=
  let matcher ty := pure <|
    if let .const n .. := ty.headBeta.getAppFn then heads.contains n else false
  casesMatching matcher recursive allowSplit

end Lean.MVarId

namespace Mathlib.Tactic
open Lean Meta Elab Tactic MVarId

/-- Elaborate a list of terms with holes into a list of patterns. -/
def elabPatterns (pats : Array Term) : TermElabM (Array AbstractMVarsResult) :=
  withTheReader Term.Context (fun ctx ↦ { ctx with ignoreTCFailures := true }) <|
  Term.withoutErrToSorry <|
  pats.mapM fun p ↦ Term.withoutModifyingElabMetaStateWithInfo do
    withRef p <| abstractMVars (← Term.elabTerm p none)

/-- Returns true if any of the patterns match the expression. -/
def matchPatterns (pats : Array AbstractMVarsResult) (e : Expr) : MetaM Bool := do
  let e ← instantiateMVars e
  pats.anyM fun p ↦ return (← Conv.matchPattern? p e) matches some (_, #[])

/-- Common implementation of `casesm` and `casesm!`. -/
def elabCasesM (pats : Array Term) (recursive allowSplit : Bool) : TacticM Unit := do
  let pats ← elabPatterns pats
  liftMetaTactic (casesMatching (matchPatterns pats) recursive allowSplit)

/--
* `casesm p` applies the `cases` tactic to a hypothesis `h : type`
  if `type` matches the pattern `p`.
* `casesm p_1, ..., p_n` applies the `cases` tactic to a hypothesis `h : type`
  if `type` matches one of the given patterns.
* `casesm* p` is a more efficient and compact version of `· repeat casesm p`.
  It is more efficient because the pattern is compiled once.
* `casesm! p` only applies `cases` if the number of resulting subgoals is <= 1.

Example: The following tactic destructs all conjunctions and disjunctions in the current context.
```
casesm* _ ∨ _, _ ∧ _
```
-/
elab (name := casesM) "casesm" recursive:"*"? ppSpace pats:term,+ : tactic => do
  elabCasesM pats recursive.isSome true

@[inherit_doc casesM]
elab (name := casesm!) "casesm!" recursive:"*"? ppSpace pats:term,+ : tactic => do
  elabCasesM pats recursive.isSome false

/-- Common implementation of `cases_type` and `cases_type!`. -/
def elabCasesType (heads : Array Ident)
    (recursive := false) (allowSplit := true) : TacticM Unit := do
  let heads ← heads.mapM (fun stx => realizeGlobalConstNoOverloadWithInfo stx)
  liftMetaTactic (casesType heads recursive allowSplit)

/--
* `cases_type I` applies the `cases` tactic to a hypothesis `h : (I ...)`
* `cases_type I_1 ... I_n` applies the `cases` tactic to a hypothesis
  `h : (I_1 ...)` or ... or `h : (I_n ...)`
* `cases_type* I` is shorthand for `· repeat cases_type I`
* `cases_type! I` only applies `cases` if the number of resulting subgoals is <= 1.

Example: The following tactic destructs all conjunctions and disjunctions in the current goal.
```
cases_type* Or And
```
-/
elab (name := casesType) "cases_type" recursive:"*"? heads:(ppSpace colGt ident)+ : tactic =>
  elabCasesType heads recursive.isSome true

@[inherit_doc casesType]
elab (name := casesType!) "cases_type!" recursive:"*"? heads:(ppSpace colGt ident)+ : tactic =>
  elabCasesType heads recursive.isSome false

/--
Core tactic for `constructorm`. Calls `constructor` on all subgoals for which
`matcher ldecl.type` returns true.
* `recursive`: if true, it calls itself repeatedly on the resulting subgoals
* `throwOnNoMatch`: if true, throws an error if no match is found
-/
partial def constructorMatching (g : MVarId) (matcher : Expr → MetaM Bool)
    (recursive := false) (throwOnNoMatch := true) : MetaM (List MVarId) := do
  let result ←
    (if recursive then (do
      let result ← go g
      pure result.toList)
     else
      (g.withContext do
          if ← matcher (← g.getType) then g.constructor else pure [g]))
  if throwOnNoMatch && [g] == result then
    throwError "no match"
  else
    return result
where
  /-- Auxiliary for `constructorMatching`. Accumulates generated subgoals in `acc`. -/
  go (g : MVarId) (acc : Array MVarId := #[]) : MetaM (Array MVarId) :=
    g.withContext do
      if ← matcher (← g.getType) then
        let mut acc := acc
        for g' in ← g.constructor do
          acc ← go g' acc
        return acc
      return (acc.push g)

/--
* `constructorm p_1, ..., p_n` applies the `constructor` tactic to the main goal
  if `type` matches one of the given patterns.
* `constructorm* p` is a more efficient and compact version of `· repeat constructorm p`.
  It is more efficient because the pattern is compiled once.

Example: The following tactic proves any theorem like `True ∧ (True ∨ True)` consisting of
and/or/true:
```
constructorm* _ ∨ _, _ ∧ _, True
```
-/
elab (name := constructorM) "constructorm" recursive:"*"? ppSpace pats:term,+ : tactic => do
  let pats ← elabPatterns pats.getElems
  liftMetaTactic (constructorMatching · (matchPatterns pats) recursive.isSome)

end Mathlib.Tactic
````
