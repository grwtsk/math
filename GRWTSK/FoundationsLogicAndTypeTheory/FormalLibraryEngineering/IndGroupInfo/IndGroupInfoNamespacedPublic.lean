-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndGroupInfo.Variantde2ad10e58da5cbabbfadbab0db26dbd3b3f26c182c78250445b0eeaca770808","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"de2ad10e58da5cbabbfadbab0db26dbd3b3f26c182c78250445b0eeaca770808","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IndGroupInfo.Variantde2ad10e58da5cbabbfadbab0db26dbd3b3f26c182c78250445b0eeaca770808","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"de2ad10e58da5cbabbfadbab0db26dbd3b3f26c182c78250445b0eeaca770808","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/PreDefinition/Structural/IndGroupInfo.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/
module

prelude
public import Lean.Meta.InferType


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndGroupInfo.Variantde2ad10e58da5cbabbfadbab0db26dbd3b3f26c182c78250445b0eeaca770808

public section

/-!
This module contains the types
* `IndGroupInfo`, a variant of `InductiveVal` with information that
   applies to a whole group of mutual inductives and
* `IndGroupInst` which extends `IndGroupInfo` with levels and parameters
   to indicate a instantiation of the group.

One purpose of this abstraction is to make it clear when a function operates on a group as
a whole, rather than a specific inductive within the group.
-/

namespace Lean.Elab.Structural
open Lean Meta

/--
A mutually inductive group, identified by the `all` array of the `InductiveVal` of its
constituents.
-/
structure IndGroupInfo where
  all       : Array Name
  numNested : Nat
deriving BEq, Inhabited, Repr

def IndGroupInfo.ofInductiveVal (indInfo : InductiveVal) : IndGroupInfo where
  all       := indInfo.all.toArray
  numNested := indInfo.numNested

def IndGroupInfo.numMotives (group : IndGroupInfo) : Nat :=
  group.all.size + group.numNested

/-- Instantiates the right `.brecOn` for the given type former index,
including universe parameters and fixed prefix.  -/
partial def IndGroupInfo.brecOnName (info : IndGroupInfo) (idx : Nat) : Name :=
  if let .some n := info.all[idx]? then
      mkBRecOnName n
    else
      let j := idx - info.all.size + 1
      info.brecOnName 0 |>.appendIndexAfter j

/--
An instance of an mutually inductive group of inductives, identified by the `all` array
and the level and expressions parameters.

For example this distinguishes between `List α` and `List β` so that we will not even attempt
mutual structural recursion on such incompatible types.
-/
structure IndGroupInst extends IndGroupInfo where
  levels    : List Level
  params    : Array Expr
deriving Inhabited, Repr

def IndGroupInst.toMessageData (igi : IndGroupInst) : MessageData :=
  mkAppN (.const igi.all[0]! igi.levels) igi.params

instance : ToMessageData IndGroupInst where
  toMessageData := IndGroupInst.toMessageData

def IndGroupInst.isDefEq (igi1 igi2 : IndGroupInst) : MetaM Bool := do
  unless igi1.toIndGroupInfo == igi2.toIndGroupInfo do return false
  unless igi1.levels.length = igi2.levels.length do return false
  unless (igi1.levels.zip igi2.levels).all (fun (l₁, l₂) => Level.isEquiv l₁ l₂) do return false
  unless igi1.params.size = igi2.params.size do return false
  unless (← (igi1.params.zip igi2.params).allM (fun (e₁, e₂) => Meta.isDefEqGuarded e₁ e₂)) do return false
  return true

/-- Instantiates the right `.brecOn` for the given type former index,
including universe parameters and fixed prefix.  -/
def IndGroupInst.brecOn (group : IndGroupInst) (lvl : Level) (idx : Nat) : Expr :=
  let n := group.brecOnName idx
  let us := lvl :: group.levels
  mkAppN (.const n us) group.params

/--
Figures out the nested type formers of an inductive group, with parameters instantiated
and indices still forall-abstracted.

For example given a nested inductive
```
inductive Tree α where | node : α → Vector (Tree α) n → Tree α
```
(where `n` is an index of `Vector`) and the instantiation `Tree Int` it will return
```
#[(n : Nat) → Vector (Tree Int) n]
```

-/
def IndGroupInst.nestedTypeFormers (igi : IndGroupInst) : MetaM (Array Expr) := do
  if igi.numNested = 0 then return #[]
  -- We extract this information from the motives of the recursor
  let recName := mkRecName igi.all[0]!
  let recInfo ← getConstInfoRec recName
  assert! recInfo.numMotives = igi.numMotives
  let lvls :=
    if igi.levels.length = recInfo.levelParams.length then igi.levels
    else Level.zero :: igi.levels
  let aux := mkAppN (.const recName lvls) igi.params
  let motives ← inferArgumentTypesN recInfo.numMotives aux
  let auxMotives : Array Expr := motives[igi.all.size...*]
  auxMotives.mapM fun motive =>
    forallTelescopeReducing motive fun xs _ => do
      assert! xs.size > 0
      mkForallFVars xs.pop (← inferType xs.back!)

end Lean.Elab.Structural
