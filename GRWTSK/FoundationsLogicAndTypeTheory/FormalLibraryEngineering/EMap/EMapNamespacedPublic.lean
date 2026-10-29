-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EMap.Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"af1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EMap.Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"af1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/EMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

module

public import Aesop.Util.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EMap.Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae

public section

open Lean Lean.Meta

namespace Aesop

/-- A map whose keys are expressions. Keys are identified up to defeq. We use
`reducible` transparency and treat metavariables as rigid (i.e.,
unassignable). -/
structure EMap (α) where
  /-- The mappings stored in the map. Defeq expressions are identified, so
  for each equivalence class of defeq expressions we only store one
  representative. Missing values indicate expressions that were removed from the
  map. -/
  rep : PArray (Option (Expr × α))
  /-- An index for `rep`. For each expression `e` at index `i` in `rep`,
  `idx.getMatch` returns a list of indexes containing `i`. This is used as a
  pre-filter during lookups/insertions/modifications to reduce the number of
  defeq comparisons. -/
  idx : DiscrTree Nat
  deriving Inhabited

namespace EMap

protected def empty : EMap α where
  rep := .empty
  idx := .empty

instance : EmptyCollection (EMap α) :=
  ⟨.empty⟩

variable [Monad m] [MonadLiftT MetaM m]

instance : ForM m (EMap α) (Expr × α) where
  forM map f := map.rep.forM fun
    | none => return
    | some x => f x

instance : ForIn m (EMap α) (Expr × α) where
  forIn map init f := map.rep.forIn init fun
    | none, s => return .yield s
    | some x, s => f x s

def foldlM (init : σ) (f : σ → Expr → α → m σ) (map : EMap α) : m σ :=
  map.rep.foldlM (init := init) fun
    | s, none => return s
    | s, some (e, a) => f s e a

def foldl (init : σ) (f : σ → Expr → α → σ) (map : EMap α) : σ :=
  inline <| map.foldlM (m := Id) init f

private def getCandidates (e : Expr) (map : EMap α) : m (Array Nat) :=
  map.idx.getMatch e

@[specialize]
def alterM (e : Expr) (f : α → m (Option α × β)) (map : EMap α) :
    m (EMap α × Option β) := do
  let lctx ← show MetaM _ from getLCtx
  let mut rep := map.rep
  for i in ← map.getCandidates e do
    let some (e', old) := map.rep[i]!
      | continue
    if e'.hasAnyFVar (! lctx.contains ·) then
      rep := rep.set i none
      continue
    if ← isDefEqReducibleRigid e' e then
      let (new?, b) ← f old
      let entry := new?.map (e', ·)
      return ({ map with rep := rep.set i entry }, b)
  return ({ map with rep }, none)

def alter (e : Expr) (f : α → Option α × β) (map : EMap α) :
    MetaM (EMap α × Option β) := do
  inline <| map.alterM e fun a => return f a

@[specialize]
def insertNew (e : Expr) (a : α) (map : EMap α) : m (EMap α) := do
  let i := map.rep.size
  let rep := map.rep.push (e, a)
  let idx ← map.idx.insert e i
  return { idx, rep }

@[specialize]
def insertWithM (e : Expr) (f : Option α → m α) (map : EMap α) :
    m (EMap α × Option α × α) := do
  let (map, vals?) ← map.alterM e fun old => do
    let new ← f (some old)
    return (new, (old, new))
  match vals? with
  | none =>
    let new ← f none
    return (← map.insertNew e new, none, new)
  | some (old, new) =>
    return (map, old, new)

def insertWith (e : Expr) (f : Option α → α) (map : EMap α) :
    MetaM (EMap α × Option α × α) :=
  inline <| map.insertWithM e fun a? => return f a?

def insert (e : Expr) (a : α) (map : EMap α) : MetaM (EMap α) :=
  (·.fst) <$> inline (map.insertWithM e (fun _ => return a))

def singleton (e : Expr) (a : α) : m (EMap α) :=
  EMap.empty.insertNew e a

def findWithKey? (e : Expr) (map : EMap α) : MetaM (Option (Expr × α)) := do
  let lctx ← getLCtx
  for i in ← map.getCandidates e do
    let some (e', a) := map.rep[i]!
      | continue
    if e'.hasAnyFVar (! lctx.contains ·) then
      continue
    if ← isDefEqReducibleRigid e e' then
      return some (e', a)
  return none

def find? (e : Expr) (map : EMap α) : MetaM (Option α) := do
  return (← inline <| map.findWithKey? e).map (·.2)

@[specialize]
def mapM (f : Expr → α → m β) (map : EMap α) : m (EMap β) := do
  let rep ← map.rep.mapM fun x? => x?.mapM fun (e, a) => return (e, ← f e a)
  return { map with rep }

def map (f : Expr → α → β) (map : EMap α) : EMap β :=
  map.mapM (m := Id) f

end EMap
end Aesop
