# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EqnsUtils.Variantb41ccab09045f7c73f4459181cd91ad15bfd052fcaed823e92ea668f11630fd4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17e778dff9e1dbdfc0c9ccf261a269c6c20513f9` · SHA-256 `cd82cb74e0c78d2b1661e8aa015c1e833e6e910d403251bb87787fa575eae299`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpMatch.Variant93b80cbe54d0f992bc2494e976bca01450b4d73024bc66569c9bcd4fc1c01bad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"93b80cbe54d0f992bc2494e976bca01450b4d73024bc66569c9bcd4fc1c01bad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SimpMatch.Variant93b80cbe54d0f992bc2494e976bca01450b4d73024bc66569c9bcd4fc1c01bad","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"93b80cbe54d0f992bc2494e976bca01450b4d73024bc66569c9bcd4fc1c01bad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/PreDefinition/EqnsUtils.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module


prelude
public import Lean.Meta.Basic
import Lean.Meta.Tactic.Split
import Lean.Meta.Tactic.Refl
import Lean.Meta.Tactic.Delta
import Lean.Meta.Tactic.SplitIf
import Lean.Meta.Tactic.Contradiction

/-!
This module contains helpers useful to prove unfolding and/or equational theorems.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpMatch.Variant93b80cbe54d0f992bc2494e976bca01450b4d73024bc66569c9bcd4fc1c01bad

namespace Lean.Elab.Eqns
open Meta

public def simpMatch? (mvarId : MVarId) : MetaM (Option MVarId) := do
  let mvarId' ← Split.simpMatchTarget mvarId
  if mvarId != mvarId' then return some mvarId' else return none

/--
Simplify `if-then-expression`s in the goal target.
If `useNewSemantics` is `true`, the flag `backward.split` is ignored.
-/
public def simpIf? (mvarId : MVarId) (useNewSemantics := false) : MetaM (Option MVarId) := do
  let mvarId' ← simpIfTarget mvarId (useDecide := true) (useNewSemantics := useNewSemantics)
  if mvarId != mvarId' then return some mvarId' else return none

/-- Try to close goal using `rfl` with smart unfolding turned off. -/
public def tryURefl (mvarId : MVarId) : MetaM Bool :=
  withOptions (smartUnfolding.set · false) do
    try mvarId.refl; return true catch _ => return false

/-- Delta reduce the equation left-hand-side -/
public def deltaLHS (mvarId : MVarId) : MetaM MVarId := mvarId.withContext do
  let target ← mvarId.getType'
  let some (_, lhs, rhs) := target.eq? | throwTacticEx `deltaLHS mvarId "equality expected"
  let some lhs ← delta? lhs | throwTacticEx `deltaLHS mvarId "failed to delta reduce lhs"
  mvarId.replaceTargetDefEq (← mkEq lhs rhs)

public def tryContradiction (mvarId : MVarId) : MetaM Bool := do
  mvarId.contradictionCore { genDiseq := true }

partial def whnfAux (e : Expr) : MetaM Expr := do
  let e ← whnfR e
  let f := e.getAppFn
  match f with
  | .proj _ _ s => return mkAppN (f.updateProj! (← whnfAux s)) e.getAppArgs
  | _ => return e

/-- Apply `whnfR` to lhs, return `none` if `lhs` was not modified -/
public def whnfReducibleLHS? (mvarId : MVarId) : MetaM (Option MVarId) := mvarId.withContext do
  let target ← mvarId.getType'
  let some (_, lhs, rhs) := target.eq? | return none
  let lhs' ← whnfAux lhs
  if lhs' != lhs then
    return some (← mvarId.replaceTargetDefEq (← mkEq lhs' rhs))
  else
    return none

end Lean.Elab.Eqns
```
