# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoalesceRC.Variant87a2834a8822ffc5d5be4d283f5a303db12bec3c913a9595af0617238aa28b1b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `480fb4ea45a86af011b6470f4e8adb72ef1cf9f7` · SHA-256 `e0f42042521100ca71e0f343afc44326e3eef4720b0f7eb7bc794661316a2c31`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variante9e18d85500c51da48565fa25b453e72e27e071913d27691978cef718ef2bc23","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e9e18d85500c51da48565fa25b453e72e27e071913d27691978cef718ef2bc23","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.State.Variante9e18d85500c51da48565fa25b453e72e27e071913d27691978cef718ef2bc23","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e9e18d85500c51da48565fa25b453e72e27e071913d27691978cef718ef2bc23","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/CoalesceRC.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Lean.Compiler.LCNF.CompilerM
public import Lean.Compiler.LCNF.PassManager


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variante9e18d85500c51da48565fa25b453e72e27e071913d27691978cef718ef2bc23

namespace Lean.Compiler.LCNF

/-!
# Coalesce Reference Counting Operations

This pass coalesces multiple `inc`/`dec` operations on the same variable within a basic block.
Within a basic block, it is always safe to:
- Move all increments on a variable to the first `inc` location (summing the counts). Because if
  there are later `inc`s no intermediate operation can observe RC=1 (as the value must stay alive
  until the later inc) and thus doing all relevant `inc` in the beginning doesn't change
  semantics.
- Move all decrements on a variable to the last `dec` location (summing the counts). Because the
  value is guaranteed to stay alive until at least the last `dec` anyway so a similar argument to
  `inc` holds.

Crucially this pass must be placed after `expandResetReuse` as that one relies on `inc`s still being
present in their original location for optimization purposes.
-/

private structure State where
  /-- Total inc count per variable in the current basic block (accumulated going forward). -/
  incTotal : Std.HashMap FVarId Nat := {}
  /-- Total dec count per variable in the current basic block (accumulated going forward). -/
  decTotal : Std.HashMap FVarId Nat := {}
  /--
  Inc count seen so far per variable going backward. When this equals `incTotal`, we've
  reached the first inc and should emit the coalesced operation.
  -/
  incAccum : Std.HashMap FVarId Nat := {}
  /--
  Whether we've already emitted the coalesced dec for a variable (going backward, the first
  dec encountered is the last in the block).
  -/
  decPlaced : Std.HashSet FVarId := {}

private abbrev M := StateRefT State CompilerM

/--
Coalesce inc/dec operations within individual basic blocks.
-/
partial def Code.coalesceRC (code : Code .impure) : CompilerM (Code .impure) := do
  go code |>.run' {}
where
  go (code : Code .impure) : M (Code .impure) := do
    match code with
    | .inc fvarId n check persistent k _ =>
      modify fun s => { s with incTotal := s.incTotal.alter fvarId (fun v? => some ((v?.getD 0) + n)) }
      let k ← go k
      modify fun s => { s with incAccum := s.incAccum.alter fvarId (fun v? => some ((v?.getD 0) + n)) }
      let s ← get
      if s.incAccum[fvarId]! == s.incTotal[fvarId]! then
        return .inc fvarId s.incTotal[fvarId]! check persistent k
      else
        return k
    | .dec fvarId n check persistent objs? k _ =>
      modify fun s => { s with decTotal := s.decTotal.alter fvarId (fun v? => some ((v?.getD 0) + n)) }
      let k ← go k
      let s ← get
      if !s.decPlaced.contains fvarId then
        modify fun s => { s with decPlaced := s.decPlaced.insert fvarId }
        return .dec fvarId s.decTotal[fvarId]! check persistent objs? k
      else
        return k
    | .let _ k =>
      let k ← go k
      return code.updateCont! k
    | .jp decl k =>
      let value ← decl.value.coalesceRC
      let decl ← decl.updateValue value
      let k ← go k
      return code.updateFun! decl k
    | .cases c =>
      let alts ← c.alts.mapMonoM (·.mapCodeM (·.coalesceRC))
      return code.updateAlts! alts
    | .del _ k _ =>
      let k ← go k
      return code.updateCont! k
    | .oset (k := k) .. | .uset (k := k) .. | .sset (k := k) .. | .setTag (k := k) .. =>
      let k ← go k
      return code.updateCont! k
    | .return .. | .jmp .. | .unreach .. => return code

def Decl.coalesceRC (decl : Decl .impure) : CompilerM (Decl .impure) := do
  let value ← decl.value.mapCodeM Code.coalesceRC
  return { decl with value }

public def coalesceRC : Pass :=
  .mkPerDeclaration `coalesceRc .impure Decl.coalesceRC

builtin_initialize
  registerTraceClass `Compiler.coalesceRc (inherited := true)

end Lean.Compiler.LCNF
```
