-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunMetaM.Variant76f54e98e55987fc29341cd1663da1a55a5bdfe87ea84b599f64e85a6f94562d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76f54e98e55987fc29341cd1663da1a55a5bdfe87ea84b599f64e85a6f94562d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RunMetaM.Variant76f54e98e55987fc29341cd1663da1a55a5bdfe87ea84b599f64e85a6f94562d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"76f54e98e55987fc29341cd1663da1a55a5bdfe87ea84b599f64e85a6f94562d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/Meta/SavedState.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Std.Lean.Meta.Basic
import Std.Lean.MonadBacktrack


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunMetaM.Variant76f54e98e55987fc29341cd1663da1a55a5bdfe87ea84b599f64e85a6f94562d

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
    unassignedPost.filterM λ mvarId => return ! (← mvarId.isDeclared)

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
