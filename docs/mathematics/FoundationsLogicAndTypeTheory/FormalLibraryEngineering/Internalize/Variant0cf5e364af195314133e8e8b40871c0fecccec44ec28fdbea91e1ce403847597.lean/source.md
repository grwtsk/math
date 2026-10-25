# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Internalize.Variant0cf5e364af195314133e8e8b40871c0fecccec44ec28fdbea91e1ce403847597

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b70a16389d498e5f61089153766eb3c1536e42c` · SHA-256 `db1a163154dc524f22d72d68ca44a507710920b1aa9e5ff4a26e07113a1acc03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsParentSameOpApp.Variant68ef56d17055479f5a40fc52947d91aa44ca41333d034e40c227f313842a7ced","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"68ef56d17055479f5a40fc52947d91aa44ca41333d034e40c227f313842a7ced","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsParentSameOpApp.Variant68ef56d17055479f5a40fc52947d91aa44ca41333d034e40c227f313842a7ced","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"68ef56d17055479f5a40fc52947d91aa44ca41333d034e40c227f313842a7ced","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/AC/Internalize.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.AC.Util
import Lean.Meta.Tactic.Grind.AC.DenoteExpr

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsParentSameOpApp.Variant68ef56d17055479f5a40fc52947d91aa44ca41333d034e40c227f313842a7ced

public section
namespace Lean.Meta.Grind.AC

private def isParentSameOpApp (parent? : Option Expr) (op : Expr) : GoalM Bool := do
  let some e := parent? | return false
  unless e.isApp && e.appFn!.isApp do return false
  return isSameExpr e.appFn!.appFn! op

partial def reify (e : Expr) : ACM Grind.AC.Expr := do
  if let some (a, b) ← isOp? e then
    return .op (← reify a) (← reify b)
  else
    return .var (← mkVar e)

def internalize (e : Expr) (parent? : Option Expr) : GoalM Unit := do
  unless (← getConfig).ac do return ()
  unless e.isApp && e.appFn!.isApp do return ()
  let op := e.appFn!.appFn!
  let some id ← getOpId? op | return ()
  if (← isParentSameOpApp parent? op) then return ()
  ACM.run id do
    if (← getStruct).denote.contains { expr := e } then return ()
    let e' ← reify e
    modifyStruct fun s => { s with
      denote := s.denote.insert { expr := e } e'
      denoteEntries := s.denoteEntries.push (e, e')
      recheck := true -- new equalities may be found by normalization
    }
    trace[grind.ac.internalize] "[{id}] {← e'.denoteExpr}"
    addTermOpId e
    acExt.markTerm e

end Lean.Meta.Grind.AC
```
