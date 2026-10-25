-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterator.Variant8a40a67f486b34521e40c60775b63a054f866b5549a84d08c50e742a9cec1d1f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a40a67f486b34521e40c60775b63a054f866b5549a84d08c50e742a9cec1d1f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Iterator.Variant8a40a67f486b34521e40c60775b63a054f866b5549a84d08c50e742a9cec1d1f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8a40a67f486b34521e40c60775b63a054f866b5549a84d08c50e742a9cec1d1f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Iterator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joe Hendrix
-/
module

prelude
public import Lean.Meta.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterator.Variant8a40a67f486b34521e40c60775b63a054f866b5549a84d08c50e742a9cec1d1f

public section

namespace Lean.Meta

/--
Provides an interface for iterating over values that are bundled with the `Meta` state
they are valid in.
-/
protected structure Iterator (α : Type) where
  /-- Function for getting next value and state pair. -/
  next : MetaM (Option (α × Meta.SavedState))

namespace Iterator

/--
Convert a list into an iterator with the current state.
-/
def ofList (l : List α) : MetaM (Meta.Iterator α) := do
  let s ← saveState
  let ref ← IO.mkRef l
  let next := do
    restoreState s
    match ← ref.get with
    | [] =>
      pure none
    | r :: l =>
      ref.set l
      pure <| some (r, ←saveState)
  pure { next }

/--
Map and filter results of iterator and returning only those values returned
by `f`.
-/
partial def filterMapM (f : α → MetaM (Option β)) (L : Meta.Iterator α) : Meta.Iterator β :=
    { next := _next }
  where _next := do
    match ← L.next with
    | none =>
      pure none
    | some (v, s) =>
      restoreState s
      let r ← f v
      match r with
      | none =>
        _next
      | some r =>
        pure <| some (r, ←saveState)

/--
Find the first value in the iterator while resetting state or call `failure`
if empty.
-/
def head (L : Meta.Iterator α) : MetaM α := do
  match ← L.next with
  | none =>
    failure
  | some (x, s) =>
    restoreState s
    pure x

/--
Return the first value returned by the iterator that `f` succeeds on.
-/
def firstM (L : Meta.Iterator α) (f : α → MetaM (Option β)) : MetaM β := L.filterMapM f |>.head

end Iterator

end Lean.Meta
