# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesMatch.Variant9832102b6f29ddbc55a3d0f1eecda4aa3a824c99c08e13642110ecbb9bfc5aa8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a989024dd4ef62a9c0cbd23974cad4b38e8b071c` · SHA-256 `74303b31c8fe18c2dbcf6ab493dd62db61efb0125716b24dc2b86bb91c5a478f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsMatchCondCandidate.Variant258cd277c2656a5a0d7a66c97b66d5813f73c5d83b085d322eb96137585aa035","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"258cd277c2656a5a0d7a66c97b66d5813f73c5d83b085d322eb96137585aa035","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsMatchCondCandidate.Variant258cd277c2656a5a0d7a66c97b66d5813f73c5d83b085d322eb96137585aa035","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"258cd277c2656a5a0d7a66c97b66d5813f73c5d83b085d322eb96137585aa035","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/CasesMatch.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Util
import Lean.Meta.Tactic.Grind.Util
import Lean.Meta.Match.MatcherApp
import Lean.Meta.Tactic.Cases

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsMatchCondCandidate.Variant258cd277c2656a5a0d7a66c97b66d5813f73c5d83b085d322eb96137585aa035

public section
namespace Lean.Meta.Grind

/--
Returns `true` if `e` is of the form `∀ ..., _ = _ ... -> False`.
The lhs of each equation must not have loose bound variables.
Recall that the `lhs` should correspond to variables in a given alternative.
For example, the given match-condition
```
∀ (head : Nat) (tail : List Nat), a = 1 → as = head :: tail → False
```
is generated for the second alternative at
```
def f : List Nat → List Nat → Nat
  | _, 1 :: _ :: _ => ...
  | _, a :: as => ...
  | _, _  => ...
```
That is, `a` must be different from `1`, or `as` must not be of the form `_ :: _`. That is,
they must not be a match for the first alternative.
**Note**: We were *not* previously checking whether the `lhs` did not have loose bound variables.
This missing check caused a panic at `tryToProveFalse` function at `MatchCond.lean` because
it assumes the `lhs` does not have loose bound variables.
**Note**: This function is an approximation. It may return `true` for terms that do not
correspond to match-conditions.
-/
partial def isMatchCondCandidate (e : Expr) : Bool :=
  e.isForall && go e
where
  go (e : Expr) : Bool :=
    if let .forallE _ d b _ := e then
      match_expr d with
      | Eq _ lhs _ => !lhs.hasLooseBVars && go b
      | HEq _ lhs _ _ => !lhs.hasLooseBVars && go b
      | _ => b.hasLooseBVar 0 && go b
    else
      e.isFalse

/--
Given a splitter alternative, annotate the terms that are `match`-expression
conditions corresponding to overlapping patterns.
-/
private def addMatchCondsToAlt (alt : Expr) : Expr := Id.run do
  let .forallE _ d b _ := alt
    | return alt
  let d := if isMatchCondCandidate d then markAsPreMatchCond d else d
  return alt.updateForallE! d (addMatchCondsToAlt b)

/--
Annotates the `match`-expression conditions in the alternatives in the given
`match` splitter type.
-/
private def addMatchCondsToSplitter (splitterType : Expr) (numAlts : Nat) : Expr := Id.run do
  if numAlts == 0 then return splitterType
  let .forallE _ alt b _ := splitterType
    | return splitterType
  return splitterType.updateForallE! (addMatchCondsToAlt alt) (addMatchCondsToSplitter b (numAlts-1))

def casesMatch (mvarId : MVarId) (e : Expr) : MetaM (List MVarId) := mvarId.withContext do
  let some app ← matchMatcherApp? e
    | throwTacticEx `grind.casesMatch mvarId m!"`match`-expression expected{indentExpr e}"
  let (motive, eqRefls) ← mkMotiveAndRefls app
  let target ← mvarId.getType
  let mut us := app.matcherLevels
  if let some i := app.uElimPos? then
    us := us.set! i (← getLevel target)
  let splitterName := (← Match.getEquationsFor app.matcherName).splitterName
  let splitterApp := mkConst splitterName us.toList
  let splitterApp := mkAppN splitterApp app.params
  let splitterApp := mkApp splitterApp motive
  let splitterApp := mkAppN splitterApp app.discrs
  let numAlts := app.alts.size
  let splitterType ← inferType splitterApp
  let splitterType := addMatchCondsToSplitter splitterType app.alts.size
  let (mvars, _, _) ← forallMetaBoundedTelescope splitterType numAlts (kind := .syntheticOpaque)
  let splitterApp := mkAppN splitterApp mvars
  let val := mkAppN splitterApp eqRefls
  mvarId.assign val
  updateTags mvars
  return mvars.toList.map (·.mvarId!)
where
  mkMotiveAndRefls (app : MatcherApp) : MetaM (Expr × Array Expr) := do
    let dummy := mkSort 0
    let aux := mkApp (mkAppN e.getAppFn app.params) dummy
    forallBoundedTelescope (← inferType aux) app.discrs.size fun xs _ => do
    withNewEqs app.discrs xs fun eqs eqRefls => do
      let type ← mvarId.getType
      let type ← mkForallFVars eqs type
      let motive ← mkLambdaFVars xs type
      return (motive, eqRefls)

  updateTags (mvars : Array Expr) : MetaM Unit := do
    let tag ← mvarId.getTag
    if mvars.size == 1 then
      mvars[0]!.mvarId!.setTag tag
    else
      let mut idx := 1
      for mvar in mvars do
        mvar.mvarId!.setTag (Name.num tag idx)
        idx := idx + 1

end Lean.Meta.Grind
````
