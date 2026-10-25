# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VarRename.Variant000c5d87ee12961812781bac52458602265153cc4cdffb5b7f98d01ba1a13a40

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3dcc1dbe3ef12d971e44f68ae4ad9627a97d56d` · SHA-256 `000c5d87ee12961812781bac52458602265153cc4cdffb5b7f98d01ba1a13a40`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Data.Array.QSort
public import Std.Data.HashSet
public import Init.Data.Hashable

public section
namespace Lean.Meta.Grind

abbrev Var : Type := Nat
abbrev FoundVars := Std.HashSet Nat

abbrev VarCollector := FoundVars → FoundVars

def collectVar (x : Var) : VarCollector := (·.insert x)

instance : AndThen VarCollector where
  andThen c₁ c₂ := fun s => c₂ () (c₁ s)

def collectMapVars {_ : BEq α} {_ : Hashable α} (m : Std.HashMap α Expr) (k : α → VarCollector) : VarCollector := fun s => Id.run do
  let mut s := s
  for (a, _) in m do
    s := k a s
  return s

def FoundVars.toArray (s : FoundVars) : Array Var :=
  Std.HashSet.toArray s |>.qsort

structure VarRename where
  map : Std.HashMap Var Var

instance : CoeFun VarRename (fun _ => Var → Var) where
  coe := fun s x => s.map[x]?.getD 0

def mkVarRename (new2old : Array Var) : VarRename := Id.run do
  let mut old2new : Std.HashMap Var Var := {}
  let mut new := 0
  for old in new2old do
    old2new := old2new.insert old new
    new := new + 1
  { map := old2new }

end Lean.Meta.Grind
```
