# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FVarIdSubst.Variantde910191389809f407dc8fe55491471c623a0e12d6203a7781a6ced7b6ea43b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db19794ed3aff5ee4ceddea19c2d0966a4f50688` · SHA-256 `de910191389809f407dc8fe55491471c623a0e12d6203a7781a6ced7b6ea43b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Meta.Tactic.FVarSubst

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
```
