# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Delta.Variant1bbe4cd5452adcec36a2f84727d9c95d48caa0ba6b0dd83b949499f494f38927

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `798fb46330fdae861a84358368be960327560449` · SHA-256 `32c79c5a6bbfc822ace6ab3d55a4a1138958149b957d0463f19935690447cbcc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Delta.Variantacd4741581de413ed29c0ac0bba4f28debed7f6b144002abce9f146f5612a131","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"acd4741581de413ed29c0ac0bba4f28debed7f6b144002abce9f146f5612a131","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Delta.Variantacd4741581de413ed29c0ac0bba4f28debed7f6b144002abce9f146f5612a131","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"acd4741581de413ed29c0ac0bba4f28debed7f6b144002abce9f146f5612a131","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Delta.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Replace
import Lean.Meta.Transform

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Delta.Variantacd4741581de413ed29c0ac0bba4f28debed7f6b144002abce9f146f5612a131

public section
namespace Lean.Meta

def delta? (e : Expr) (p : Name → Bool := fun _ => true) (allowOpaque := false) : CoreM (Option Expr) :=
  matchConst e.getAppFn (fun _ => return none) fun fInfo fLvls => do
    if p fInfo.name && fInfo.hasValue (allowOpaque := allowOpaque) && fInfo.levelParams.length == fLvls.length then
      let f ← instantiateValueLevelParams fInfo fLvls (allowOpaque := allowOpaque)
      return some (f.betaRev e.getAppRevArgs (useZeta := true))
    else
      return none

/-- Low-level delta expansion. It is used to implement equation lemmas and elimination principles for recursive definitions. -/
def deltaExpand (e : Expr) (p : Name → Bool) (allowOpaque := false) : CoreM Expr :=
  Core.transform e fun e => do
    match (← delta? e p (allowOpaque := allowOpaque)) with
    | some e' => return .visit e'
    | none    => return .continue

/--
Delta expand declarations that satisfy `p` at `mvarId` type.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Delta.Variantacd4741581de413ed29c0ac0bba4f28debed7f6b144002abce9f146f5612a131.Lean.MVarId.deltaTarget (mvarId : MVarId) (p : Name → Bool) : MetaM MVarId :=
  mvarId.withContext do
    mvarId.checkNotAssigned `delta
    mvarId.change (← deltaExpand (← mvarId.getType) p) (checkDefEq := false)

/--
Delta expand declarations that satisfy `p` at `fvarId` type.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Delta.Variantacd4741581de413ed29c0ac0bba4f28debed7f6b144002abce9f146f5612a131.Lean.MVarId.deltaLocalDecl (mvarId : MVarId) (fvarId : FVarId) (p : Name → Bool) : MetaM MVarId :=
  mvarId.withContext do
    mvarId.checkNotAssigned `delta
    mvarId.changeLocalDecl fvarId (← deltaExpand (← fvarId.getType) p) (checkDefEq := false)

end Lean.Meta
```
