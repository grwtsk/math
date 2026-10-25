# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Location.Variant9c591becb297d431f37ccbfced26239568b41290c726343206820303e5b18910

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a419897036d1435dd39900549c05342f4ef98a3c` · SHA-256 `37df3e2b105d1fcc19af64cbab1c03f7ff74beec541106d9969e28a29ea37438`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Location.Variant26e239233bbeeee42a6835e403c782d20387dd1f7cff64e7ae58a4bf345f04c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"26e239233bbeeee42a6835e403c782d20387dd1f7cff64e7ae58a4bf345f04c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Location.Variant26e239233bbeeee42a6835e403c782d20387dd1f7cff64e7ae58a4bf345f04c3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"26e239233bbeeee42a6835e403c782d20387dd1f7cff64e7ae58a4bf345f04c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Location.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Tactic.ElabTerm


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Location.Variant26e239233bbeeee42a6835e403c782d20387dd1f7cff64e7ae58a4bf345f04c3

public section

namespace Lean.Elab.Tactic

/-- Denotes a set of locations where a tactic should be applied for the main goal. See also `withLocation`. -/
inductive Location where
  /-- Apply the tactic everywhere. -/
  | wildcard
  /-- `hypotheses` are hypothesis names in the main goal that the tactic should be applied to.
  If `type` is true, then the tactic should also be applied to the target type. -/
  | targets (hypotheses : Array Syntax) (type : Bool)

/-
Recall that
```
syntax locationWildcard := " *"
syntax locationType     := patternIgnore(atomic("|" noWs "-") <|> "⊢")
syntax locationHyp      := (ppSpace colGt (term:max <|> locationType))+
syntax location         := withPosition(ppGroup(" at" (locationWildcard <|> locationHyp)))
```
-/
def expandLocation (stx : Syntax) : Location :=
  let arg := stx[1]
  if arg.getKind == ``Parser.Tactic.locationWildcard then
    Location.wildcard
  else
    let locationHyps := arg[0].getArgs
    let hypotheses := locationHyps.filter (·.getKind != ``Parser.Tactic.locationType)
    let numTurnstiles := locationHyps.size - hypotheses.size
    Location.targets hypotheses (numTurnstiles > 0)

def expandOptLocation (stx : Syntax) : Location :=
  if stx.isNone then
    Location.targets #[] true
  else
    expandLocation stx[0]

open Meta

/--
Runs the given `atLocal` and `atTarget` methods on each of the locations selected by the given `loc`.
* If `loc` is a list of locations, runs at each specified hypothesis (and finally the goal if `⊢` is included),
  and fails if any of the tactic applications fail.
* If `loc` is `*`, runs at the target first and then the hypotheses in reverse order.
  If `atTarget` closes the main goal, `withLocation` does not run `atLocal`.
  If all tactic applications fail, `withLocation` with call `failed` with the main goal mvar.
-/
def withLocation (loc : Location) (atLocal : FVarId → TacticM Unit) (atTarget : TacticM Unit) (failed : MVarId → TacticM Unit) : TacticM Unit := do
  match loc with
  | Location.targets hyps type =>
    hyps.forM fun hyp => withMainContext do
      let fvarId ← getFVarId hyp
      atLocal fvarId
    if type then
      withMainContext atTarget
  | Location.wildcard =>
    let worked ← tryTactic <| withSaveInfoContext <| withMainContext <| atTarget
    let g ← try getMainGoal catch _ => return () -- atTarget closed the goal
    g.withContext do
      let mut worked := worked
      -- We must traverse backwards because the given `atLocal` may use the revert/intro idiom
      for fvarId in (← getLCtx).getFVarIds.reverse do
        if (← fvarId.getDecl).isImplementationDetail then
          continue
        worked := worked || (← tryTactic <| withSaveInfoContext <| withMainContext <| atLocal fvarId)
      unless worked do
        failed (← getMainGoal)

end Lean.Elab.Tactic
````
