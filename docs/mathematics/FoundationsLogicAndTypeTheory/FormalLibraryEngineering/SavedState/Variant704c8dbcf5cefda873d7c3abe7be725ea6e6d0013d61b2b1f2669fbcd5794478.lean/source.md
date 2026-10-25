# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SavedState.Variant704c8dbcf5cefda873d7c3abe7be725ea6e6d0013d61b2b1f2669fbcd5794478

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c7f4c86e33744d6f2e1884ed24b6eccfb8cc096` · SHA-256 `fd57da950b39ff398c5bd228e846f71b12729eedebf431bca73676f1298d54f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunMetaM.Variant3d9845d3356ed537871cfcdff20419c83323fd8b559a031dca483eaf72890d43","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3d9845d3356ed537871cfcdff20419c83323fd8b559a031dca483eaf72890d43","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RunMetaM.Variant3d9845d3356ed537871cfcdff20419c83323fd8b559a031dca483eaf72890d43","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3d9845d3356ed537871cfcdff20419c83323fd8b559a031dca483eaf72890d43","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Lean/Meta/SavedState.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Batteries.Lean.Meta.Basic
public import Batteries.Lean.MonadBacktrack


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunMetaM.Variant3d9845d3356ed537871cfcdff20419c83323fd8b559a031dca483eaf72890d43

@[expose] public section

namespace Lean.Meta.SavedState

/--
Run the action `x` in state `s`. Returns the result of `x` and the state after
`x` was executed. The global state remains unchanged.
-/
def runMetaM (s : Meta.SavedState) (x : MetaM α) :
    MetaM (α × Meta.SavedState) :=
  withoutModifyingState' do restoreState s; x

/--
Run the action `x` in state `s`. Returns the result of `x`. The global state
remains unchanged.
-/
def runMetaM' (s : Meta.SavedState) (x : MetaM α) : MetaM α :=
  withoutModifyingState do restoreState s; x

end SavedState


/--
Returns the mvars that are not declared in `preState`, but declared and
unassigned in `postState`. Delayed-assigned mvars are considered assigned.
-/
def getIntroducedExprMVars (preState postState : SavedState) :
    MetaM (Array MVarId) := do
  let unassignedPost ← postState.runMetaM' getUnassignedExprMVars
  preState.runMetaM' do
    unassignedPost.filterM fun mvarId => return ! (← mvarId.isDeclared)

/--
Returns the mvars that are declared but unassigned in `preState`, and
assigned in `postState`. Delayed-assigned mvars are considered assigned.
-/
def getAssignedExprMVars (preState postState : SavedState) :
    MetaM (Array MVarId) := do
  let unassignedPre ← preState.runMetaM' getUnassignedExprMVars
  postState.runMetaM' do
    unassignedPre.filterM (·.isAssignedOrDelayedAssigned)

end Lean.Meta
```
