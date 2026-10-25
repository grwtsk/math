# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CongrInfo.Variant27be52492232a8b5aaa0a622be3d379927bf2a4f5222d604312c6ac6ba566aca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9530cf9ea30342e4ad39892ef4eb22712179932` · SHA-256 `90b5e1d43bcb3ab49eee26c1cce0aed719f2ecab64259ddca3d315446fd0de2f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsFixedPrefix.Variant3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsFixedPrefix.Variant3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/Simp/CongrInfo.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsFixedPrefix.Variant3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0

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
