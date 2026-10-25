# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SortLocalDecls.Variantb73aed8d4b313d65be8cf44921a21040b54f95d8ceb04f03d76a7677d724c268

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d719b4c8cdafa77f9a6981d0c0246b792dc119c9` · SHA-256 `b73aed8d4b313d65be8cf44921a21040b54f95d8ceb04f03d76a7677d724c268`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

public import Lean.Meta.Basic

public section

open Lean Meta

namespace Qq

namespace SortLocalDecls

structure Context where
  localDecls : NameMap LocalDecl := {}

structure State where
  visited : NameSet := {}
  result  : Array LocalDecl := #[]

abbrev M := ReaderT Context $ StateRefT State MetaM

mutual
  partial def visitExpr (e : Expr) : M Unit := do
    match e with
    | .proj _ _ e    => visitExpr e
    | .forallE _ d b _ => visitExpr d; visitExpr b
    | .lam _ d b _     => visitExpr d; visitExpr b
    | .letE _ t v b _  => visitExpr t; visitExpr v; visitExpr b
    | .app f a       => visitExpr f; visitExpr a
    | .mdata _ b     => visitExpr b
    | .mvar _        => let v ← instantiateMVars e; unless v.isMVar do visitExpr v
    | .fvar fvarId   => if let some localDecl := (← read).localDecls.find? fvarId.name then visitLocalDecl localDecl
    | _              => return ()

  partial def visitLocalDecl (localDecl : LocalDecl) : M Unit := do
    unless (← get).visited.contains localDecl.fvarId.name do
      modify fun s => { s with visited := s.visited.insert localDecl.fvarId.name }
      visitExpr localDecl.type
      if let some val := localDecl.value? then
        visitExpr val
      modify fun s => { s with result := s.result.push localDecl }
end

end SortLocalDecls

open SortLocalDecls in
def sortLocalDecls (localDecls : Array LocalDecl) : MetaM (Array LocalDecl) :=
  let aux : M (Array LocalDecl) := do localDecls.forM visitLocalDecl; return (← get).result
  aux.run { localDecls := localDecls.foldl (init := {}) fun s d => s.insert d.fvarId.name d } |>.run' {}
```
