# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeftRight.Variant2d365b41a891f47aaf633729e7b5caff3b3cb51a7495b5d4063888a9104b031a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0365af721918d85384666d4bb5768da81673adf3` · SHA-256 `deb8464bf66883e0766c2abe0ba763507e9900962ba95ffe2dc9a9ee22ee77e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MLeftRightCore.Variant98676d2e63fe3065a95ca762678f7173e645ed75634c33493becf54b6c60499f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98676d2e63fe3065a95ca762678f7173e645ed75634c33493becf54b6c60499f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MLeftRightCore.Variant98676d2e63fe3065a95ca762678f7173e645ed75634c33493becf54b6c60499f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"98676d2e63fe3065a95ca762678f7173e645ed75634c33493becf54b6c60499f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Do/ProofMode/LeftRight.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Lars König. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lars König, Mario Carneiro, Sebastian Graf
-/
module

prelude
public import Std.Tactic.Do.Syntax
public import Lean.Elab.Tactic.Do.ProofMode.MGoal


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MLeftRightCore.Variant98676d2e63fe3065a95ca762678f7173e645ed75634c33493becf54b6c60499f

public section

namespace Lean.Elab.Tactic.Do.ProofMode
open Std.Do
open Lean Elab Tactic Meta

def mLeftRightCore (right : Bool) (mvar : MVarId) : MetaM MVarId := do
  let g ← instantiateMVars <| ← mvar.getType
  let some goal := parseMGoal? g | throwError "not in proof mode"

  let mkApp3 (.const ``SPred.or _) σs L R := goal.target | throwError "target is not SPred.or"

  let (thm, keep) := if right then (``SPred.or_intro_r', R) else (``SPred.or_intro_l', L)

  let newGoal ← mkFreshExprSyntheticOpaqueMVar {goal with target := keep}.toExpr
  mvar.assign (mkApp5 (mkConst thm [goal.u]) σs goal.hyps L R newGoal)
  return newGoal.mvarId!

@[builtin_tactic Lean.Parser.Tactic.mleft]
def elabMLeft : Tactic | _ => do
  let mvar ← getMainGoal
  mvar.withContext do
  let newGoal ← mLeftRightCore (right := false) mvar
  replaceMainGoal [newGoal]

@[builtin_tactic Lean.Parser.Tactic.mright]
def elabMRight : Tactic | _ => do
  let mvar ← getMainGoal
  mvar.withContext do
  let newGoal ← mLeftRightCore (right := true) mvar
  replaceMainGoal [newGoal]
```
