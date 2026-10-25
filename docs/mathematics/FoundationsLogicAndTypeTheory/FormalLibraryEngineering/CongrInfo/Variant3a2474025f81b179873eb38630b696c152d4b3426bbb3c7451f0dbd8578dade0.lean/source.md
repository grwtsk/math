# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CongrInfo.Variant3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48a1a630d5dd5224bdb2a7603f6dba790f0c9d57` · SHA-256 `3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.SymM
import Lean.Meta.FunInfo
import Init.Omega
namespace Lean.Meta.Sym

def isFixedPrefix? (argKinds : Array CongrArgKind) : Option Nat :=
  go 0
where
  goEq (pre : Nat) (i : Nat) : Option Nat :=
    if h : i < argKinds.size then
      match argKinds[i] with
      | .fixed => none
      | .eq => goEq pre (i+1)
      | _ => none
    else
      some pre

  go (i : Nat) : Option Nat :=
    if h : i < argKinds.size then
      match argKinds[i] with
      | .fixed => go (i+1)
      | .eq => goEq i (i+1)
      | _ => none
    else
      none

def mkCongrInfo (f : Expr) : SymM CongrInfo := do
  if (← isProof f) then
    return .none
  let info ← getFunInfo f
  let argKinds ← getCongrSimpKinds f info
  if argKinds.all fun k => match k with | .fixed | .eq => true | _ => false then
    if argKinds.all (· == .fixed) then
      return .none
    else if let some prefixSize := isFixedPrefix? argKinds then
      return .fixedPrefix prefixSize (argKinds.size - prefixSize)
    else
      return .interlaced (argKinds.map (· == .eq))
  else if let .const declName us := f then
    if let some thm ← mkCongrSimpForConst? declName us then
      if thm.argKinds == argKinds then
        return .congrTheorem thm
  let some thm ← mkCongrSimpCore? f info argKinds | return .none
  return .congrTheorem thm

public def getCongrInfo (f : Expr) : SymM CongrInfo := do
  if let some info := (← get).congrInfo.find? { expr := f } then
    return info
  let info ← mkCongrInfo f
  modify fun s => { s with congrInfo := s.congrInfo.insert { expr := f } info }
  return info

protected def CongrInfo.toMessageData : CongrInfo → MessageData
  | .none => "none"
  | .fixedPrefix pre suf => m!"fixedPrefix {pre} {suf}"
  | .interlaced mask => m!"interlaced {mask}"
  | .congrTheorem thm => m!"congrTheorem {thm.proof}"

instance : ToMessageData CongrInfo where
  toMessageData := CongrInfo.toMessageData

end Lean.Meta.Sym
```
