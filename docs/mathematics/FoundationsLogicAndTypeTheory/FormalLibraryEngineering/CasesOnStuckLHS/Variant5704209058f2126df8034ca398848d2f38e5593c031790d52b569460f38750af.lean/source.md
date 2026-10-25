# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesOnStuckLHS.Variant5704209058f2126df8034ca398848d2f38e5593c031790d52b569460f38750af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf39769c858bcd6df2fe93ba2d76cc626c3030c0` · SHA-256 `ece13ba82b2e6459c526685461e2a9e007cc2acf89d774ec2bd02aad16a16091`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesOnStuckLHS.Variant42885467e234d2926ae1d64a0c97786b49d196aa473aaec1bf5880871b31fe0f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"42885467e234d2926ae1d64a0c97786b49d196aa473aaec1bf5880871b31fe0f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CasesOnStuckLHS.Variant42885467e234d2926ae1d64a0c97786b49d196aa473aaec1bf5880871b31fe0f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"42885467e234d2926ae1d64a0c97786b49d196aa473aaec1bf5880871b31fe0f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/CasesOnStuckLHS.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Basic
import Lean.ProjFns
import Lean.Meta.Tactic.Cases

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesOnStuckLHS.Variant42885467e234d2926ae1d64a0c97786b49d196aa473aaec1bf5880871b31fe0f

namespace Lean.Meta

/-!
This module provides the `casesOnStuckLHS` tactic, used by
* match equation compilation
* equation compilation for recursive functions
-/

/--
  Helper method for `proveCondEqThm`. Given a goal of the form `C.rec ... xMajor = rhs`,
  apply `cases xMajor`. -/
public partial def casesOnStuckLHS (mvarId : MVarId) : MetaM (Array MVarId) := do
  let target ← mvarId.getType
  if let some (_, lhs) ← matchEqHEqLHS? target then
    if let some fvarId ← findFVar? lhs then
      return (←  mvarId.cases fvarId).map fun s => s.mvarId
  throwError "'casesOnStuckLHS' failed"
where
  findFVar? (e : Expr) : MetaM (Option FVarId) := do
    match e.getAppFn with
    | Expr.proj _ _ e => findFVar? e
    | f =>
      if !f.isConst then
        return none
      else
        let declName := f.constName!
        let args := e.getAppArgs
        match (← getProjectionFnInfo? declName) with
        | some projInfo =>
          if projInfo.numParams < args.size then
            findFVar? args[projInfo.numParams]!
          else
            return none
        | none =>
          matchConstRec f (fun _ => return none) fun recVal _ => do
            if recVal.getMajorIdx >= args.size then
              return none
            let major := args[recVal.getMajorIdx]!.consumeMData
            if major.isFVar then
              return some major.fvarId!
            else
              return none

public def casesOnStuckLHS? (mvarId : MVarId) : MetaM (Option (Array MVarId)) := do
  try casesOnStuckLHS mvarId catch _ => return none
```
