-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRename.Variant80d49e0b9de78fbc306c24bd492f3b8d8d60da22dd0f658ce01ee1961e25c411","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"80d49e0b9de78fbc306c24bd492f3b8d8d60da22dd0f658ce01ee1961e25c411","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RootLeanMVarIdRename.Variant80d49e0b9de78fbc306c24bd492f3b8d8d60da22dd0f658ce01ee1961e25c411","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"80d49e0b9de78fbc306c24bd492f3b8d8d60da22dd0f658ce01ee1961e25c411","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Rename.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.Util


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRename.Variant80d49e0b9de78fbc306c24bd492f3b8d8d60da22dd0f658ce01ee1961e25c411

public section

namespace Lean.Meta

/--
Rename the user-face naming for the free variable `fvarId` at `mvarId`.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdRename.Variant80d49e0b9de78fbc306c24bd492f3b8d8d60da22dd0f658ce01ee1961e25c411.Lean.MVarId.rename (mvarId : MVarId) (fvarId : FVarId) (userNameNew : Name) : MetaM MVarId := mvarId.withContext do
  mvarId.checkNotAssigned `rename
  let lctxNew := (← getLCtx).setUserName fvarId userNameNew
  let mvarNew ← mkFreshExprMVarAt lctxNew (← getLocalInstances) (← mvarId.getType) MetavarKind.syntheticOpaque (← mvarId.getTag)
  mvarId.assign mvarNew
  return mvarNew.mvarId!

end Lean.Meta
