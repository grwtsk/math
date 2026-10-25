# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SolveByElim.Variant2e5b846ba5b7c19c3929a4c3de19d5d46eb0420c6bea85dea14d5d9d03d38808

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6cf61b4d33bc32a8896dce2961adfab5aabe8a3` · SHA-256 `1b7c18899fc9273c365f4651da44eb93109c5b21dfdfa5e46d1859b54bf7b143`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParseArgs.Variantc06d17e78c3aed696ff84e76811acafaeaf9d3195cdb40a68c5ed6aaf43ec44d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c06d17e78c3aed696ff84e76811acafaeaf9d3195cdb40a68c5ed6aaf43ec44d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ParseArgs.Variantc06d17e78c3aed696ff84e76811acafaeaf9d3195cdb40a68c5ed6aaf43ec44d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c06d17e78c3aed696ff84e76811acafaeaf9d3195cdb40a68c5ed6aaf43ec44d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/SolveByElim.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, David Renshaw
-/
module

prelude
public import Lean.Meta.Tactic.SolveByElim
public import Lean.LibrarySuggestions.Basic
import Lean.Elab.ConfigEval


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParseArgs.Variantc06d17e78c3aed696ff84e76811acafaeaf9d3195cdb40a68c5ed6aaf43ec44d

public section

namespace Lean.Elab.Tactic.SolveByElim
open Meta

open Lean.Parser.Tactic
open Lean.Parser.Tactic.SolveByElim

open Lean.Meta.SolveByElim (SolveByElimConfig mkAssumptionSet)

/--
Allow elaboration of `Config` arguments to tactics.

Note: does not generate a `(config := ...)` option due to the fields in the `omit`
clause, which are all function-valued and have no `EvalExpr` instances.
-/
declare_config_elab elabConfig Lean.Meta.SolveByElim.SolveByElimConfig where
  omit proc, suspend, discharge

/--
Allow elaboration of `ApplyRulesConfig` arguments to tactics.

Note: does not generate a `(config := ...)` option due to the fields in the `omit`
clause, which are all function-valued and have no `EvalExpr` instances.
-/
declare_config_elab elabApplyRulesConfig Lean.Meta.SolveByElim.ApplyRulesConfig where
  omit proc, suspend, discharge

/--
Parse the lemma argument of a call to `solve_by_elim`.
The first component should be true if `*` appears at least once.
The second component should contain each term `t`in the arguments.
The third component should contain `t` for each `-t` in the arguments.
-/
def parseArgs (s : Option (TSyntax ``args)) :
    Bool × List Term × List Term :=
  let args : Array (TSyntax ``arg) := match s with
  | some s => match s with
    | `(args| [$args,*]) => args.getElems
    | _ => #[]
  | none => #[]
  let args : Array (Option (Term ⊕ Term)) := args.map fun t => match t with
    | `(arg| $_:star) => none
    | `(arg| - $t:term) => some (Sum.inr t)
    | `(arg| $t:term) => some (Sum.inl t)
    | _ => panic! "Unreachable parse of solve_by_elim arguments."
  let args := args.toList
  (args.contains none,
    args.filterMap fun o => o.bind Sum.getLeft?,
    args.filterMap fun o => o.bind Sum.getRight?)

/-- Parse the `using ...` argument for `solve_by_elim`. -/
def parseUsing (s : Option (TSyntax ``using_)) : Array Ident :=
  match s with
  | some s => match s with
    | `(using_ | using $ids,*) => ids.getElems
    | _ => #[]
  | none => #[]

/-- Wrapper for `solveByElim` that processes a list of `Term`s
that specify the lemmas to use. -/
def processSyntax (cfg : SolveByElimConfig := {}) (only star : Bool) (add remove : List Term)
    (use : Array Ident) (goals : List MVarId) : MetaM (List MVarId) := do
  if !remove.isEmpty && goals.length > 1 then
    throwError "Removing local hypotheses is not supported when operating on multiple goals."
  let ⟨lemmas, ctx⟩ ← mkAssumptionSet only star add remove use
  SolveByElim.solveByElim cfg lemmas ctx goals

@[builtin_tactic Lean.Parser.Tactic.applyAssumption]
def evalApplyAssumption : Tactic := fun stx =>
  match stx with
  | `(tactic| apply_assumption $cfg:optConfig $[only%$o]? $[$t:args]? $[$use:using_]?) => do
    let (star, add, remove) := parseArgs t
    let use := parseUsing use
    let cfg ← elabConfig cfg
    let cfg := { cfg with
      backtracking := false
      maxDepth := 1 }
    replaceMainGoal (← processSyntax cfg o.isSome star add remove use [← getMainGoal])
  | _ => throwUnsupportedSyntax

/--
Elaborator for apply_rules.

See `Lean.MVarId.applyRules` for a `MetaM` level analogue of this tactic.
-/
@[builtin_tactic Lean.Parser.Tactic.applyRules]
def evalApplyRules : Tactic := fun stx =>
  match stx with
  | `(tactic| apply_rules $cfg:optConfig $[only%$o]? $[$t:args]? $[$use:using_]?) => do
    let (star, add, remove) := parseArgs t
    let use := parseUsing use
    let cfg ← elabApplyRulesConfig cfg
    let cfg := { cfg with backtracking := false }
    liftMetaTactic fun g => processSyntax cfg o.isSome star add remove use [g]
  | _ => throwUnsupportedSyntax

@[builtin_tactic Lean.Parser.Tactic.solveByElim]
def evalSolveByElim : Tactic
  | `(tactic| solve_by_elim $[*%$s]? $cfg:optConfig $[only%$o]? $[$t:args]? $[$use:using_]?) => do
    let (star, add, remove) := parseArgs t
    let use := parseUsing use
    let goals ← if s.isSome then
      getGoals
    else
      pure [← getMainGoal]
    let cfg ← elabConfig cfg
    -- Add library suggestions if +suggestions is enabled
    let add ← if cfg.suggestions then
      let mainGoal ← getMainGoal
      let suggestions ← LibrarySuggestions.select mainGoal { caller := some "solve_by_elim" }
      let suggestionTerms ← suggestions.toList.filterMapM fun s => do
        -- Only include suggestions for constants that exist
        let env ← getEnv
        if env.contains s.name then
          let ident := mkCIdentFrom (← getRef) s.name (canonical := true)
          return some (⟨ident⟩ : Term)
        else
          return none
      pure (add ++ suggestionTerms)
    else
      pure add
    let [] ← processSyntax cfg o.isSome star add remove use goals |
      throwError "Internal error: `solve_by_elim` unexpectedly returned subgoals"
    pure ()
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic.SolveByElim
```
