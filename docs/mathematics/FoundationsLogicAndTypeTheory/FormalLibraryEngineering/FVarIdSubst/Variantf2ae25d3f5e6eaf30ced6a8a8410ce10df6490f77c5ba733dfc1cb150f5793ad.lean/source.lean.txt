-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FVarIdSubst.Variantde910191389809f407dc8fe55491471c623a0e12d6203a7781a6ced7b6ea43b1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"de910191389809f407dc8fe55491471c623a0e12d6203a7781a6ced7b6ea43b1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FVarIdSubst.Variantde910191389809f407dc8fe55491471c623a0e12d6203a7781a6ced7b6ea43b1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"de910191389809f407dc8fe55491471c623a0e12d6203a7781a6ced7b6ea43b1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/RuleTac/FVarIdSubst.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Meta.Tactic.FVarSubst


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FVarIdSubst.Variantde910191389809f407dc8fe55491471c623a0e12d6203a7781a6ced7b6ea43b1

public section

open Lean Lean.Meta

namespace Aesop

structure FVarIdSubst where
  map : Std.HashMap FVarId FVarId
  deriving Inhabited

namespace FVarIdSubst

def isEmpty (s : FVarIdSubst) : Bool :=
  s.map.isEmpty

def contains (s : FVarIdSubst) (fvarId : FVarId) : Bool :=
  s.map.contains fvarId

def find? (s : FVarIdSubst) (fvarId : FVarId) : Option FVarId :=
  s.map[fvarId]?

def get (s : FVarIdSubst) (fvarId : FVarId) : FVarId :=
  s.find? fvarId |>.getD fvarId

def apply (s : FVarIdSubst) (e : Expr) : Expr :=
  if s.isEmpty || ! e.hasFVar then
    e
  else
    e.replace λ
      | .fvar fvarId => s.find? fvarId |>.map mkFVar
      | _ => none

def applyToLocalDecl (s : FVarIdSubst) : LocalDecl → LocalDecl
  | .cdecl i id n t bi k   => .cdecl i id n (s.apply t) bi k
  | .ldecl i id n t v nd k => .ldecl i id n (s.apply t) (s.apply v) nd k

def domain (s : FVarIdSubst) : Std.HashSet FVarId :=
  s.map.fold (init := ∅) λ r k _ => r.insert k

def codomain (s : FVarIdSubst) : Std.HashSet FVarId :=
  s.map.fold (init := ∅) λ r _ v => r.insert v

protected def empty : FVarIdSubst :=
  ⟨∅⟩

instance : EmptyCollection FVarIdSubst :=
  ⟨.empty⟩

def insert (s : FVarIdSubst) (old new : FVarId) : FVarIdSubst :=
  let map : Std.HashMap _ _ := s.map.fold (init := ∅) λ map k v =>
    map.insert k $ if v == old then new else v
  ⟨map.insert old new⟩

def erase (s : FVarIdSubst) (fvarId : FVarId) : FVarIdSubst :=
  ⟨s.map.erase fvarId⟩

def append (s t : FVarIdSubst) : FVarIdSubst :=
  let map : Std.HashMap _ _ := s.map.fold (init := ∅) λ map k v =>
    map.insert k $ t.get v
  ⟨t.map.fold (init := map) λ s k v => s.insert k v⟩

def ofFVarSubstIgnoringNonFVarIds (s : FVarSubst) : FVarIdSubst := .mk $
  s.map.foldl (init := ∅) λ map k v =>
    if let .fvar fvarId := v then map.insert k fvarId else map

def ofFVarSubst? (s : FVarSubst) : Option FVarIdSubst := Id.run do
  let mut result := ∅
  for (k, v) in s.map do
    if let .fvar fvarId := v then
      result := result.insert k fvarId
    else
      return none
  return some result

end Aesop.FVarIdSubst
